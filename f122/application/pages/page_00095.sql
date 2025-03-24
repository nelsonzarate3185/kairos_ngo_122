prompt --application/pages/page_00095
begin
--   Manifest
--     PAGE: 00095
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
 p_id=>95
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Movimiento de Caja'
,p_alias=>'MOVIMIENTO-DE-CAJA'
,p_page_mode=>'MODAL'
,p_step_title=>'Movimiento de Caja'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P95_ACCION'',''AGREGAR'');',
'      $s(''P95_AUX_SEQ_ID_COBRO'', cb.value,false);',
'  } else {',
'      $s(''P95_ACCION'',''QUITAR'');',
'      $s(''P95_AUX_SEQ_ID_COBRO'', cb.value,false);',
'  }',
'}',
'',
'',
'function deshabilitar(){',
'    var v_cargar_otros = apex.item("P95_CARGA_OTROS").getValue();',
'    var v_cargar_valores = apex.item("P95_CARGA_VALORES").getValue();',
'    var v_sub_tipo_trans = apex.item("P95_SUB_TIPO_TRANS").getValue();',
'    var v_fec_amision = apex.item("P95_FEC_EMISION").getValue();',
'    var v_tarjeta_cobro = apex.item("P95_TARJETA_COBRO").getValue();',
'    var v_moneda_cobro = apex.item("P95_COD_MONEDA_COBRO").getValue();',
'    var v_moneda_base = apex.item("P95_COD_MONEDA_BASE").getValue();',
'    var v_modifica_cambio = apex.item("P95_MODIFICA_CAMBIO").getValue();',
'',
'    ',
'	if (v_cargar_valores!= "S") {',
'		apex.item("P95_NRO_TIMBRADO").disable();',
'		if (v_sub_tipo_trans != "10" && v_sub_tipo_trans != "20"){',
'			apex.item("P95_COD_PER_JURIDICA").disable();',
'		}else{',
'            apex.item("P95_COD_PER_JURIDICA").enable();',
'        }',
'    }else{',
'        apex.item("P95_NRO_TIMBRADO").enable();',
'        apex.item("P95_COD_PER_JURIDICA").enable();',
'    }',
'	if (v_cargar_valores != "S" && v_cargar_otros != "S"){',
'	 	apex.item(''P95_FEC_EMISION'').disable();',
'		if (v_sub_tipo_trans != "10" && v_sub_tipo_trans != "20"){',
'			apex.item("P95_NRO_VALOR").disable();',
'		}else{',
'            apex.item("P95_NRO_VALOR").enable();',
'        }',
'    }else{',
'        apex.item(''P95_FEC_EMISION'').enable();',
'		if (v_fec_amision== null) {',
'			apex.item("P95_FEC_EMISION").setValue(apex.item("P95_FEC_MOV_CAJ").getValue());',
'		}',
'	}',
'',
'	if (v_cargar_valores  != "S" || v_sub_tipo_trans != v_tarjeta_cobro ){',
'		apex.item("P95_FEC_VENCIMIENTO").disable();',
'	}else{',
'        apex.item("P95_FEC_VENCIMIENTO").enable();',
'    }',
'	',
'	if (v_moneda_cobro == v_moneda_base){',
'		if (v_modifica_cambio != "S" ){',
'		    apex.item("P95_DETALLE_TIP_CAMBIO").disable();',
'	    }else{',
'            apex.item("P95_DETALLE_TIP_CAMBIO").enable();',
'        }',
'	}',
'}',
'',
'',
'function soloNumeros(e) {',
'  var key = e.charCode;',
'  var char = String.fromCharCode(key);',
'',
unistr('  // Permite n\00FAmeros del 0 al 9'),
'  if (key >= 48 && key <= 57) {',
'    return true;',
'  }',
'  // // Permite el punto decimal (ASCII 46) o coma decimal (ASCII 44) solo si no se ha ingresado previamente ',
'else if ((key === 46 || key === 44|| key === 45) //&& e.target.value.indexOf(''-'') === -1 && e.target.value.indexOf('','') === -1',
') {',
'    return true;',
'',
'  }',
unistr('  // Bloquea cualquier otro car\00E1cter'),
'  e.preventDefault();',
'  return false;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1500'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'PABLOALV'
,p_last_upd_yyyymmddhh24miss=>'20250304071249'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20998639937158201)
,p_plug_name=>'Movimiento de Caja'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11521344284287810)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(20998639937158201)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>35
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11521498339287811)
,p_plug_name=>'B_MOVCAJ_1'
,p_parent_plug_id=>wwv_flow_imp.id(20998639937158201)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11522330782287820)
,p_plug_name=>'B_MOVCAJ_2'
,p_parent_plug_id=>wwv_flow_imp.id(20998639937158201)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>31
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16689406137277226)
,p_plug_name=>'PARAMETROS'
,p_parent_plug_id=>wwv_flow_imp.id(20998639937158201)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>15
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17120095452637609)
,p_plug_name=>'Comprobantes'
,p_parent_plug_id=>wwv_flow_imp.id(20998639937158201)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>65
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17121825769637627)
,p_plug_name=>'COMPROBANTES_1'
,p_parent_plug_id=>wwv_flow_imp.id(17120095452637609)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 COD_EMPRESA, ',
'	   C002 TIPO_COMPROBANTE, ',
'	   C003 SER_COMPROBANTE, ',
'	   C004 COD_MONEDA,',
'	   C005 TIP_MOV_CAJ, ',
'	   C006 SER_MOV_CAJ, ',
'	   N001 NRO_COMPROBANTE, ',
'	   N002 TIP_CAMBIO, ',
'	   N003 TOT_COMPROBANTE, ',
'       N004 IMPORTE,',
'       NULL ELIMINAR',
'  FROM APEX_COLLECTIONS',
'  WHERE COLLECTION_NAME = ''COL_COMPROBANTES'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COMPROBANTES_1'
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
 p_id=>wwv_flow_imp.id(17121911863637628)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>unistr('Debe seleccionar un tipo, serie y n\00FAmero de comprobante.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_detail_view_enabled_yn=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>17121911863637628
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20468974056383616)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'V'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20147338702839947)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20147450642839948)
,p_db_column_name=>'TIPO_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20147532156839949)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'M'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20467656572383603)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'Q'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20147667611839950)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>60
,p_column_identifier=>'N'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20467730925383604)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>70
,p_column_identifier=>'R'
,p_column_label=>'Cambio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G999D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20467851828383605)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'S'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20467990560383606)
,p_db_column_name=>'IMPORTE'
,p_display_order=>90
,p_column_identifier=>'T'
,p_column_label=>'Importe'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20467433576383601)
,p_db_column_name=>'TIP_MOV_CAJ'
,p_display_order=>100
,p_column_identifier=>'O'
,p_column_label=>'Tip Mov Caj'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20467576553383602)
,p_db_column_name=>'SER_MOV_CAJ'
,p_display_order=>110
,p_column_identifier=>'P'
,p_column_label=>'Ser Mov Caj'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20468442619383611)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>120
,p_column_identifier=>'U'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P95_AUX_SEQ_ID'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-irrow" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(17492672378064851)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'174927'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_MONEDA:TIP_CAMBIO:TOT_COMPROBANTE:IMPORTE:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17123731719637646)
,p_plug_name=>'COMPROBANTES_2'
,p_parent_plug_id=>wwv_flow_imp.id(17120095452637609)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17121008159637619)
,p_plug_name=>'MSJES'
,p_parent_plug_id=>wwv_flow_imp.id(20998639937158201)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>105
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18409145722201302)
,p_plug_name=>'Forma de Cobro'
,p_parent_plug_id=>wwv_flow_imp.id(20998639937158201)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>85
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18413246265201343)
,p_plug_name=>'B_DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001||'' - ''|| C002 TRANSACCION,',
'		C003 TIP_DOCUMENTO,',
'		C004||'' - ''||C005 BANCO,',
'		C006 NRO_TIMBRADO,',
'		C007 NRO_VALOR,',
'		C008 COD_MONEDA_COBRO,',
'        APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                            p_value       => seq_id,',
'                            p_attributes  => (case C009',
'                                                when ''S'' then ''checked ''',
'                                                else null',
'                                              end ) ||''onclick="seleccionar(this)"'' )as "casilla",',
'		--C009 IND_NO_RETIENE_VALOR,',
'		C010 CARGA_VALORES,',
'		C011 CARGA_OTROS,',
'    C012 FEC_EMISION,',
'    C013 FEC_VENCIMIENTO,',
'		N001 TIP_CAMBIO,',
'		N002 DECIMALES,',
'        N003 MONTO,',
'        N004 IMPORTE,',
'        NULL ELIMINAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_FORMA_COBRO'';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_DETALLE'
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
 p_id=>wwv_flow_imp.id(18413347522201344)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>18413347522201344
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20468875464383615)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'AG'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20147122579839945)
,p_db_column_name=>'TRANSACCION'
,p_display_order=>20
,p_column_identifier=>'AD'
,p_column_label=>unistr('Transacci\00F3n')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20143791766839911)
,p_db_column_name=>'TIP_DOCUMENTO'
,p_display_order=>30
,p_column_identifier=>'Q'
,p_column_label=>'Doc.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20147202691839946)
,p_db_column_name=>'BANCO'
,p_display_order=>40
,p_column_identifier=>'AE'
,p_column_label=>'Banco'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20144047544839914)
,p_db_column_name=>'NRO_TIMBRADO'
,p_display_order=>50
,p_column_identifier=>'T'
,p_column_label=>'Nro. Timbrado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20144134071839915)
,p_db_column_name=>'NRO_VALOR'
,p_display_order=>60
,p_column_identifier=>'U'
,p_column_label=>'Nro. Valor'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20144211194839916)
,p_db_column_name=>'COD_MONEDA_COBRO'
,p_display_order=>70
,p_column_identifier=>'V'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20144653136839920)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>80
,p_column_identifier=>'Z'
,p_column_label=>'Cambio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20144722361839921)
,p_db_column_name=>'MONTO'
,p_display_order=>90
,p_column_identifier=>'AA'
,p_column_label=>'Monto Documento'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20147056326839944)
,p_db_column_name=>'IMPORTE'
,p_display_order=>100
,p_column_identifier=>'AC'
,p_column_label=>'Importe'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20142939476839903)
,p_db_column_name=>'casilla'
,p_display_order=>110
,p_column_identifier=>'I'
,p_column_label=>'No Ret.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20144442883839918)
,p_db_column_name=>'CARGA_VALORES'
,p_display_order=>130
,p_column_identifier=>'X'
,p_column_label=>'Carga Valores'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20144525114839919)
,p_db_column_name=>'CARGA_OTROS'
,p_display_order=>140
,p_column_identifier=>'Y'
,p_column_label=>'Carga Otros'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20146908817839943)
,p_db_column_name=>'DECIMALES'
,p_display_order=>150
,p_column_identifier=>'AB'
,p_column_label=>'Decimales'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171716203394910434)
,p_db_column_name=>'FEC_EMISION'
,p_display_order=>158
,p_column_identifier=>'AH'
,p_column_label=>'Fec Emision'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171716373169910435)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>159
,p_column_identifier=>'AI'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20468635721383613)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>160
,p_column_identifier=>'AF'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P95_AUX_SEQ_ID_ELIMINAR'',#SEQ_ID#)'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-irrow" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(20399146828278992)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'203992'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TRANSACCION:TIP_DOCUMENTO:BANCO:NRO_TIMBRADO:NRO_VALOR:FEC_EMISION:FEC_VENCIMIENTO:COD_MONEDA_COBRO:TIP_CAMBIO:MONTO:IMPORTE:casilla:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20145964519839933)
,p_plug_name=>'B_DETALLE_2'
,p_parent_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20145063126839924)
,p_plug_name=>'Cheques/ Tarjetas'
,p_parent_plug_id=>wwv_flow_imp.id(20998639937158201)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>90
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20146026590839934)
,p_plug_name=>'B_MOVCAJ_3'
,p_parent_plug_id=>wwv_flow_imp.id(20998639937158201)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>95
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20146466885839938)
,p_plug_name=>'Administrativo'
,p_parent_plug_id=>wwv_flow_imp.id(20998639937158201)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110475311112213420)
,p_plug_name=>'Botoneras'
,p_parent_plug_id=>wwv_flow_imp.id(20998639937158201)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>115
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20470996534383636)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(110475311112213420)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P95_P_NRO_MOV_CAJ'
,p_button_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_grid_new_row=>'Y'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20471456252383641)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17123731719637646)
,p_button_name=>'BT_IMPORTAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Importar'
,p_button_redirect_url=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:::'
,p_button_cattributes=>'style="margin-top:9px; width:100%"'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17121263190637621)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17121008159637619)
,p_button_name=>'BT_CERRAR'
,p_button_static_id=>'CERRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(878430857703603804)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(110475311112213420)
,p_button_name=>'BT_Eliminar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'if :P95_P_NRO_MOV_CAJ is null then',
'        RETURN FALSE;',
'',
'end if;',
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
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-trash-o'
,p_grid_new_row=>'Y'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17120716554637616)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(17120095452637609)
,p_button_name=>'BT_INSERTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-top:9px; width:100%"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20468079314383607)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(17120095452637609)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limpiar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-top:9px; width:100%"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18412006343201331)
,p_button_sequence=>250
,p_button_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_button_name=>'BT_INSERTAR_FORMA_COBRO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24031383602736905)
,p_button_sequence=>260
,p_button_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_button_name=>'BT_LIMPIAR_FORMAS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(110475260775213419)
,p_branch_name=>unistr('Ir a P\00E1gina 95')
,p_branch_action=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.::P99_SER_COMPROBANTE_AUX,P99_NRO_COMPROBANTE_AUX,P99_TIP_COMPROBANTE_AUX2,P95_REPORTE,P99_IMPRIMIR_REPORTE,P99_SER_COMPROBANTE_AUX,P99_COD_CLIENTE:&P95_SER_COMPROBANTE.,&P95_NRO_COMPRO.,&P95_TIP_COMPRO.,&P95_IMPRIMIR_REPORTE.,P,&P95_SER_COMP.,&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11521648650287813)
,p_name=>'P95_MOVCAJ_TIP_MOV_CAJ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11521498339287811)
,p_prompt=>'Tipo'
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
 p_id=>wwv_flow_imp.id(11521844102287815)
,p_name=>'P95_MOVCAJ_SER_MOV_CAJ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11521498339287811)
,p_prompt=>'Serie'
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
 p_id=>wwv_flow_imp.id(11521976617287816)
,p_name=>'P95_FEC_MOV_CAJ'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11521498339287811)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(11522075817287817)
,p_name=>'P95_MOVCAJ_COD_MONEDA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11521498339287811)
,p_item_default=>'1'
,p_prompt=>'Moneda'
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
 p_id=>wwv_flow_imp.id(11522297869287819)
,p_name=>'P95_MOVCAJ_COD_CLIENTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11521498339287811)
,p_prompt=>'Cliente'
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
 p_id=>wwv_flow_imp.id(11522487367287821)
,p_name=>'P95_COD_CUSTODIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11522330782287820)
,p_prompt=>'Custodio'
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
 p_id=>wwv_flow_imp.id(11522512063287822)
,p_name=>'P95_DESC_CUSTODIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11522330782287820)
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
 p_id=>wwv_flow_imp.id(11522676935287823)
,p_name=>'P95_MOVCAJ_NRO_MOV_CAJ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11521498339287811)
,p_prompt=>unistr('N\00FAmero')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11522807531287825)
,p_name=>'P95_COD_CUSTODIO_ENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_prompt=>'Custodio Destino'
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
 p_id=>wwv_flow_imp.id(11522955838287826)
,p_name=>'P95_NRO_PLANILLA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_prompt=>'Planilla'
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
 p_id=>wwv_flow_imp.id(11523087022287827)
,p_name=>'P95_GENERA_MD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Generar traslado de documentos;S'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11523157859287828)
,p_name=>'P95_ORDEN_DET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11523218358287829)
,p_name=>'P95_CONSULTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11523354800287830)
,p_name=>'P95_DERECHOS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11523505469287832)
,p_name=>'P95_COD_MODULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11523676732287833)
,p_name=>'P95_NOM_MODULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11523735203287834)
,p_name=>'P95_COD_FORMA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11523853820287835)
,p_name=>'P95_COD_SUCURSAL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11523983343287836)
,p_name=>'P95_COD_EMPRESA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11524165297287838)
,p_name=>'P95_NOM_FORMA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11524291639287839)
,p_name=>'P95_NOM_EMPRESA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11524390974287840)
,p_name=>'P95_NRO_HABILITACION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16686917540277201)
,p_name=>'P95_MODIFICA_CAMBIO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16687013869277202)
,p_name=>'P95_VER_FECHA_CHEQUE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16687113903277203)
,p_name=>'P95_COD_IDIOMA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16687261572277204)
,p_name=>'P95_CHEQUE_COBRO'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16687344906277205)
,p_name=>'P95_COD_USUARIO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16687464354277206)
,p_name=>'P95_TIPO_TRANS_VBLE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16687522811277207)
,p_name=>'P95_TIP_DOCUMENTO_CHE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16687646768277208)
,p_name=>'P95_EFECTIVO_COBRO'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16687712165277209)
,p_name=>'P95_NOM_SUCURSAL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16687857738277210)
,p_name=>'P95_COD_MONEDA_BASE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16687953907277211)
,p_name=>'P95_MONTO_ANT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16688018607277212)
,p_name=>'P95_TIPO_COMPROBANTE_VBLE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16688173925277213)
,p_name=>'P95_TIPO_EXTRACCION'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16688253176277214)
,p_name=>'P95_NOTA_CREDITO'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16688380309277215)
,p_name=>'P95_CHEQUE_A_FECHA'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16688402849277216)
,p_name=>'P95_TARJETA_COBRO'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16688569581277217)
,p_name=>'P95_SECTOR_BANCARIO'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16688636187277218)
,p_name=>'P95_MODIFICA_FECHA_ANT'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16688775952277219)
,p_name=>'P95_COD_CAJA'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16688972057277221)
,p_name=>'P95_SECTOR_TARJETAS'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16689019802277222)
,p_name=>'P95_COD_CUSTODIOS_ALT'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16689196109277223)
,p_name=>'P95_CAMBIA_FECHA'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16689635651277228)
,p_name=>'P95_P_TIPO_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16689406137277226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16689779854277229)
,p_name=>'P95_P_TIP_PLANILLA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16689406137277226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16689850382277230)
,p_name=>'P95_P_NRO_MOV_CAJ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(16689406137277226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16689972276277231)
,p_name=>'P95_P_TIP_MOV_CAJ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(16689406137277226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16690003411277232)
,p_name=>'P95_P_SER_COMPROBANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(16689406137277226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16690192578277233)
,p_name=>'P95_P_SER_MOV_CAJ'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(16689406137277226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16690255645277234)
,p_name=>'P95_P_NRO_PLANILLA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(16689406137277226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16690305048277235)
,p_name=>'P95_P_NRO_COMPROBANTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(16689406137277226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16690479038277236)
,p_name=>'P95_P_FECHA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(16689406137277226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16690545269277237)
,p_name=>'P95_P_COD_SUCURSAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(16689406137277226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16690686191277238)
,p_name=>'P95_P_COD_CLIENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(16689406137277226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16690781440277239)
,p_name=>'P95_P_COD_CUSTODIO_ENT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(16689406137277226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16690857373277240)
,p_name=>'P95_P_COD_CUSTODIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(16689406137277226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16690916976277241)
,p_name=>'P95_P_IND_GENERA_MD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(16689406137277226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16691049442277242)
,p_name=>'P95_P_COD_USUARIO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(16689406137277226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16691111828277243)
,p_name=>'P95_P_NRO_ORT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(16689406137277226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16691261941277244)
,p_name=>'P95_P_SENIA_FCR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(16689406137277226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16691340392277245)
,p_name=>'P95_P_SER_ORT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(16689406137277226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16691459550277246)
,p_name=>'P95_TIP_CONTADO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16691508064277247)
,p_name=>'P95_TIP_MOV_CAJ_VBLE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17120117920637610)
,p_name=>'P95_TIPO_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17120095452637609)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:REC;REC,FCO;FCO,NCR;NCR,CCH;CCH,TKT;TKT'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17120207659637611)
,p_name=>'P95_SER_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17120095452637609)
,p_item_default=>'A'
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P95_TIPO_COMPROBANTE NOT IN (''REC'',''CCH'') THEN',
'    RETURN (''SELECT DISTINCT SER_COMPROBANTE R, ',
'                   SER_COMPROBANTE D',
'              FROM VT_COMPROBANTES_CABECERA C,',
'                   MONEDAS M, ',
'                   CC_CONDICIONES_VENTAS CV ',
'             WHERE C.COD_EMPRESA = :P95_COD_EMPRESA ',
'               AND TIP_COMPROBANTE = :P95_TIPO_COMPROBANTE ',
'               AND C.SER_COMPROBANTE <> '''' '''' ',
'               AND C.NRO_COMPROBANTE > 0 ',
'               AND C.NRO_MOV_CAJ IS NULL ',
'               AND NVL( C.ESTADO,'''' '''' ) <> ''''A''''',
'               AND C.COD_MONEDA = M.COD_MONEDA',
'               AND C.COD_EMPRESA = CV.COD_EMPRESA ',
'               AND C.COD_CONDICION_VENTA = CV.COD_CONDICION_VENTA ',
'               /*AND NVL( CV.NRO_CUOTAS, 0 ) = 0 */',
'               AND (C.COD_CLIENTE = :P95_MOVCAJ_COD_CLIENTE OR :P95_MOVCAJ_COD_CLIENTE IS NULL)'');',
'ELSE',
'    RETURN(''SELECT DISTINCT C.SER_RECIBO R,',
'            	   C.SER_RECIBO D            	   ',
'              FROM CC_RECIBOS C, ',
'            	   MONEDAS M ',
'             WHERE C.COD_EMPRESA = :P95_COD_EMPRESA ',
'               AND C.NRO_MOV_CAJ IS NULL ',
'               AND ( ESTADO IS NULL OR ESTADO <> ''''C'''') ',
'               AND ( ESTADO IS NULL OR ESTADO <> ''''A'''' ) ',
'               AND C.COD_MONEDA = M.COD_MONEDA ',
'             ORDER BY C.SER_RECIBO'');',
'',
'END IF;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_lov_cascade_parent_items=>'P95_TIPO_COMPROBANTE'
,p_ajax_items_to_submit=>'P95_TIPO_COMPROBANTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17120360739637612)
,p_name=>'P95_NRO_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17120095452637609)
,p_prompt=>unistr('N\00FAmero')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P95_TIPO_COMPROBANTE NOT IN (''REC'',''CCH'') THEN',
'    RETURN (''SELECT NRO_COMPROBANTE R, ',
'                   NRO_COMPROBANTE D',
'              FROM VT_COMPROBANTES_CABECERA C,',
'                   MONEDAS M, ',
'                   CC_CONDICIONES_VENTAS CV ',
'             WHERE C.COD_EMPRESA = :P95_COD_EMPRESA ',
'               AND TIP_COMPROBANTE = :P95_TIPO_COMPROBANTE ',
'               AND C.SER_COMPROBANTE <> '''' '''' ',
'               AND C.NRO_COMPROBANTE > 0 ',
'               AND C.NRO_MOV_CAJ IS NULL ',
'               AND NVL( C.ESTADO,'''' '''' ) <> ''''A''''',
'               AND C.COD_MONEDA = M.COD_MONEDA ',
'               AND C.COD_EMPRESA = CV.COD_EMPRESA ',
'               AND C.COD_CONDICION_VENTA = CV.COD_CONDICION_VENTA ',
'              /* AND NVL( CV.NRO_CUOTAS, 0 ) = 0 */',
'               AND (C.COD_CLIENTE = :P95_MOVCAJ_COD_CLIENTE OR :P95_MOVCAJ_COD_CLIENTE IS NULL)',
'               ORDER BY TO_NUMBER(NRO_COMPROBANTE)'');',
'ELSE',
'    RETURN(''SELECT C.NRO_RECIBO R,',
'            	   C.NRO_RECIBO D            	   ',
'              FROM CC_RECIBOS C, ',
'            	   MONEDAS M ',
'             WHERE C.COD_EMPRESA = :P95_COD_EMPRESA ',
'               AND C.NRO_MOV_CAJ IS NULL ',
'               AND ( ESTADO IS NULL OR ESTADO <> ''''C'''') ',
'               AND ( ESTADO IS NULL OR ESTADO <> ''''A'''' ) ',
'               AND C.COD_MONEDA = M.COD_MONEDA ',
'             ORDER BY C.SER_RECIBO,',
'                      C.NRO_RECIBO'');',
'',
'END IF;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_lov_cascade_parent_items=>'P95_TIPO_COMPROBANTE'
,p_ajax_items_to_submit=>'P95_TIPO_COMPROBANTE,P95_MOVCAJ_COD_CLIENTE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Comprobantes Pendientes de Cobros'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17121107005637620)
,p_name=>'P95_MSJE_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17121008159637619)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17121693116637625)
,p_name=>'P95_ERROR'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17123530033637644)
,p_name=>'P95_TOT_NRO_MOV_CAJ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17123731719637646)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17123821303637647)
,p_name=>'P95_MOVCAJ_DECIMALES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11521498339287811)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17123948098637648)
,p_name=>'P95_MOVCAJ_TIP_CAMBIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11521498339287811)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18409026678201301)
,p_name=>'P95_COD_CLIENTE_VBLE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18409432908201305)
,p_name=>'P95_NRO_TIMBRADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_prompt=>'Nro. Timbrado'
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
 p_id=>wwv_flow_imp.id(18409549359201306)
,p_name=>'P95_NRO_SECUENCIA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18409642068201307)
,p_name=>'P95_MOVCAJ_NRO_SECUENCIA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11521498339287811)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18409754355201308)
,p_name=>'P95_TIPO_TRANS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18409992939201310)
,p_name=>'P95_COD_MONEDA_COBRO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_use_cache_before_default=>'NO'
,p_item_default=>'P95_MOVCAJ_COD_MONEDA'
,p_item_default_type=>'ITEM'
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_moneda, descripcion',
'  FROM monedas',
'ORDER BY cod_moneda'))
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
 p_id=>wwv_flow_imp.id(18410097958201311)
,p_name=>'P95_IND_NO_RETIENE_VALOR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18410299772201313)
,p_name=>'P95_MOVCAJ_TOTAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20146026590839934)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18410517666201316)
,p_name=>'P95_DESC_TRANSACCION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18410600190201317)
,p_name=>'P95_TIP_DOCUMENTO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18410730527201318)
,p_name=>'P95_CARGA_VALORES'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18410804872201319)
,p_name=>'P95_CARGA_OTROS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18411034981201321)
,p_name=>'P95_SUB_TIPO_TRANS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_prompt=>unistr('Transacci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBTIPO_TRANS||'' - ''||DESCRIPCION D,',
'       SUBTIPO_TRANS R',
'  FROM SUBTIPOS_TRANS ',
' WHERE COD_EMPRESA = :P95_COD_EMPRESA ',
'   AND COD_MODULO = :P95_COD_MODULO ',
'   AND TIPO_TRANS = :P95_TIPO_TRANS',
' ORDER BY TO_NUMBER(SUBTIPO_TRANS)'))
,p_lov_cascade_parent_items=>'P95_TIPO_TRANS'
,p_ajax_items_to_submit=>'P95_COD_EMPRESA,P95_COD_MODULO,P95_TIPO_TRANS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18411470114201325)
,p_name=>'P95_COD_PER_JURIDICA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_prompt=>'Banco'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'            IF :P95_SUB_TIPO_TRANS = :P95_CHEQUE_COBRO AND :P95_SUB_TIPO_TRANS <> :P95_CHEQUE_A_FECHA THEN',
'               RETURN ''SELECT COD_PER_JURIDICA|| '''' - ''''||NOM_COMERCIAL AS D,',
'        					   COD_PER_JURIDICA AS R',
'        				  FROM PERSONAS_JURIDICAS ',
'        				 WHERE COD_SECTOR = :P95_SECTOR_BANCARIO'';',
'            ELSIF :P95_SUB_TIPO_TRANS = :P95_TARJETA_COBRO THEN',
'        		RETURN ''SELECT NOM_COMERCIAL AS D, ',
'        						COD_PER_JURIDICA AS R ',
'        				   FROM PERSONAS_JURIDICAS ',
'        				  WHERE COD_SECTOR = :P95_SECTOR_TARJETAS'';',
'            ELSE ',
'                RETURN ''SELECT COD_PER_JURIDICA|| '''' - ''''||NOM_COMERCIAL AS D,',
'        					   COD_PER_JURIDICA AS R',
'        				  FROM PERSONAS_JURIDICAS ',
'        				 WHERE COD_SECTOR = :P95_SECTOR_BANCARIO'';',
'            END IF;',
'END;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P95_SECTOR_BANCARIO,P95_SECTOR_TARJETAS'
,p_ajax_items_to_submit=>'P95_SECTOR_BANCARIO,P95_SECTOR_TARJETAS,P95_CARGA_VALORES,P95_SUB_TIPO_TRANS,P95_CHEQUE_COBRO,P95_CHEQUE_A_FECHA,P95_TARJETA_COBRO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(18411558135201326)
,p_name=>'P95_DECIMALES_DETALLE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18411693901201327)
,p_name=>'P95_NOM_PER_JURIDICA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18412343577201334)
,p_name=>'P95_MOVCAJ_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20145964519839933)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'ReadOnly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18412453271201335)
,p_name=>'P95_NRO_VALOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_prompt=>unistr('N\00FAmero Valor')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onkeyup = "soloNumeros(this);"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18412737116201338)
,p_name=>'P95_MOVCAJ_COD_SUCURSAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11521498339287811)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18412888503201339)
,p_name=>'P95_MONTO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_prompt=>'Monto'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18412913517201340)
,p_name=>'P95_TIP_CAMBIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20144879989839922)
,p_name=>'P95_DETALLE_TOTAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20145964519839933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20144918660839923)
,p_name=>'P95_MOVCAJ_VUELTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20145964519839933)
,p_prompt=>'Vuelto'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'ReadOnly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(20145148187839925)
,p_name=>'P95_FEC_EMISION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20145063126839924)
,p_prompt=>unistr('Emisi\00F3n')
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
 p_id=>wwv_flow_imp.id(20145265758839926)
,p_name=>'P95_FEC_VENCIMIENTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20145063126839924)
,p_prompt=>'Vencimiento'
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
 p_id=>wwv_flow_imp.id(20146183305839935)
,p_name=>'P95_NRO_TICKET_VBLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20146026590839934)
,p_prompt=>'Nro. Ticket'
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
 p_id=>wwv_flow_imp.id(20146237303839936)
,p_name=>'P95_FEC_ANULACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20146026590839934)
,p_prompt=>unistr('Fecha Anulaci\00F3n')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20146305963839937)
,p_name=>'P95_ANULADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20146026590839934)
,p_prompt=>'Anulado'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;S'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20146594901839939)
,p_name=>'P95_MOVCAJ_COD_CAJA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20146466885839938)
,p_prompt=>'Caja'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'ReadOnly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20146676042839940)
,p_name=>'P95_MOVCAJ_NRO_HABILITACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20146466885839938)
,p_prompt=>unistr('Habilitaci\00F3n')
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
 p_id=>wwv_flow_imp.id(20468562815383612)
,p_name=>'P95_AUX_SEQ_ID'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20468760875383614)
,p_name=>'P95_AUX_SEQ_ID_COBRO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20469149966383618)
,p_name=>'P95_ACCION'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20470733572383634)
,p_name=>'P95_MOVCAJ_COD_EMPRESA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(11521498339287811)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20470869250383635)
,p_name=>'P95_COD_CUSTODIO_VBLE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(11521344284287810)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20999467059158209)
,p_name=>'P95_MOVCAJ_FEC_ALTA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(11521498339287811)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20999662848158211)
,p_name=>'P95_DETALLE_SER_MOV_CAJ'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21000042674158215)
,p_name=>'P95_COMPROBANTES_IMPORTE_ANT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17123731719637646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21000161588158216)
,p_name=>'P95_DETALLE_IMPORTE_ANT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21001092220158225)
,p_name=>'P95_NRO_COMPROBANTE_AUX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17120095452637609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21001704075158232)
,p_name=>'P95_DETALLE_NRO_MOV_CAJ'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21002039133158235)
,p_name=>'P95_DETALLE_TIP_MOV_CAJ'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21002348135158238)
,p_name=>'P95_MOVCAJ_TOTAL_AUX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(20146026590839934)
,p_prompt=>'Total'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21002653564158241)
,p_name=>'P95_TOT_NRO_MOV_CAJ_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17123731719637646)
,p_prompt=>'Total'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_column=>10
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21003224810158247)
,p_name=>'P95_DETALLE_TIP_CAMBIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Cambio'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24031884929736910)
,p_name=>'P95_AUX_SEQ_ID_ELIMINAR'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24031902308736911)
,p_name=>'P95_DETALLE_TOTAL_AUX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20145964519839933)
,p_prompt=>'Total'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24032814337736920)
,p_name=>'P95_MOVCAJ_TIP_CAMBIO_AUX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11521498339287811)
,p_prompt=>'Cambio'
,p_format_mask=>'99G999D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110474610753213413)
,p_name=>'P95_TIP_COMPROB'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(11521498339287811)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114139649031544418)
,p_name=>'P95_IMPRIMIR_REPORTE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(11521498339287811)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114140719893544429)
,p_name=>'P95_NRO_COMPRO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(11521498339287811)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114140863514544430)
,p_name=>'P95_TIP_COMPRO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(11521498339287811)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114141047573544432)
,p_name=>'P95_SER_COMP'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(11521498339287811)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121597061842098010)
,p_name=>'P95_DES_MONEDA'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121597113717098011)
,p_name=>'P95_DECIMALES'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121597251946098012)
,p_name=>'P95_TIP_CAMBIO_COMPRA'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121597329519098013)
,p_name=>'P95_DESC_MONEDA'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(175478539183656523)
,p_name=>'P95_IMPORTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(18409145722201302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17120893383637617)
,p_name=>'DA_INSERTAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17120716554637616)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17120939235637618)
,p_event_id=>wwv_flow_imp.id(17120893383637617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P95_TIPO_COMPROBANTE IS NULL THEN',
'    :P95_MSJE_ERROR := ''Debe seleccionar un tipo de comprobante'';',
'    :P95_ERROR := 1;',
'ELSE',
'    IF  :P95_SER_COMPROBANTE IS NULL THEN',
'        :P95_MSJE_ERROR := ''Debe seleccionar una serie'';',
'        :P95_ERROR := 1;',
'    ELSE',
'        IF :P95_NRO_COMPROBANTE IS NULL THEN',
unistr('            :P95_MSJE_ERROR := ''Debe seleccionar un n\00FAmero de comprobante'';'),
'            :P95_ERROR := 1;',
'        END IF;',
'    END IF;',
'END IF;',
''))
,p_attribute_02=>'P95_TIPO_COMPROBANTE ,P95_SER_COMPROBANTE,P95_NRO_COMPROBANTE'
,p_attribute_03=>'P95_MSJE_ERROR,P95_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17123072080637639)
,p_event_id=>wwv_flow_imp.id(17120893383637617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17121008159637619)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P95_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17122990151637638)
,p_event_id=>wwv_flow_imp.id(17120893383637617)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'IF APEX_COLLECTION.COLLECTION_MEMBER_COUNT (p_collection_name => ''COL_COMPROBANTES'') = 0 THEN',
'    CCMOVCAJ.INSERTAR_COLECCION_COMPROBANTE(PI_TIPO_COMPROBANTE  => :P95_TIP_COMPRO,',
'    										PI_SER_COMPROBANTE   => :P95_SER_COMPROBANTE,',
'    										PI_NRO_COMPROBANTE   => TO_NUMBER(:P95_NRO_COMPROBANTE),',
'    										PI_COD_EMPRESA 	     => :P95_COD_EMPRESA,',
'    										PI_MOVCAJ_COD_MONEDA => :P95_MOVCAJ_COD_MONEDA,',
'    										PI_TIP_CAMBIO 		 => :P95_MOVCAJ_TIP_CAMBIO_AUX,',
'    										PI_TOT_NRO_MOV_CAJ	 => :P95_TOT_NRO_MOV_CAJ,',
'    										PI_COD_CLIENTE		 => :P95_MOVCAJ_COD_CLIENTE,',
'                                            PI_COD_CLIENTE_VBLE  => :P95_COD_CLIENTE_VBLE,',
'    										PI_NOTA_CREDITO	 	 => :P95_NOTA_CREDITO,',
'                                            PI_CONSULTA		     => :P95_CONSULTA,',
'    										PO_TOTAL			 => :P95_MOVCAJ_TOTAL,',
'                                            PO_COMPROBANTE_IMPORTE_ANT => :P95_DETALLE_IMPORTE_ANT,',
'    										PO_MOVCAJ_COD_MONEDA => :P95_MOVCAJ_COD_MONEDA,',
'    										PO_TIP_CAMBIO		 => :P95_MOVCAJ_TIP_CAMBIO_AUX,',
'    										PO_DECIMALES		 => :P95_MOVCAJ_DECIMALES,',
'                                            PO_COD_CLIENTE		 => :P95_MOVCAJ_COD_CLIENTE,',
'                                            PO_COD_CLIENTE_VBLE  => :P95_COD_CLIENTE_VBLE);',
'ELSE ',
'    FOR C IN (SELECT SEQ_ID,',
'                     C001 COD_EMPRESA, ',
'            	     C002 TIPO_COMPROBANTE, ',
'            	     C003 SER_COMPROBANTE, ',
'            	     C004 COD_MONEDA,',
'            	     C005 TIP_MOV_CAJ, ',
'            	     C006 SER_MOV_CAJ, ',
'            	     N001 NRO_COMPROBANTE, ',
'            	     N002 TIP_CAMBIO, ',
'            	     N003 TOT_COMPROBANTE, ',
'                     N004 IMPORTE ',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''COL_COMPROBANTES'')',
'    LOOP',
'        IF :P95_NRO_COMPROBANTE IS NOT NULL THEN',
'            IF C.TIPO_COMPROBANTE != :P95_TIPO_COMPROBANTE AND C.SER_COMPROBANTE != :P95_SER_COMPROBANTE AND C.NRO_COMPROBANTE != :P95_NRO_COMPROBANTE THEN ',
'                CCMOVCAJ.INSERTAR_COLECCION_COMPROBANTE(PI_TIPO_COMPROBANTE  => :P95_TIPO_COMPROBANTE,',
'                										PI_SER_COMPROBANTE   => :P95_SER_COMPROBANTE,',
'                										PI_NRO_COMPROBANTE   => TO_NUMBER(:P95_NRO_COMPROBANTE),',
'                										PI_COD_EMPRESA 	     => :P95_COD_EMPRESA,',
'                										PI_MOVCAJ_COD_MONEDA => :P95_MOVCAJ_COD_MONEDA,',
'                										PI_TIP_CAMBIO 		 => :P95_MOVCAJ_TIP_CAMBIO,',
'                										PI_TOT_NRO_MOV_CAJ	 => :P95_TOT_NRO_MOV_CAJ,',
'                										PI_COD_CLIENTE		 => :P95_MOVCAJ_COD_CLIENTE,',
'                                                        PI_COD_CLIENTE_VBLE  => :P95_COD_CLIENTE_VBLE,',
'                										PI_NOTA_CREDITO	 	 => :P95_NOTA_CREDITO,',
'                                                        PI_CONSULTA		     => :P95_CONSULTA,',
'                										PO_TOTAL			 => :P95_MOVCAJ_TOTAL,',
'                                                        PO_COMPROBANTE_IMPORTE_ANT => :P95_DETALLE_IMPORTE_ANT,',
'                										PO_MOVCAJ_COD_MONEDA => :P95_MOVCAJ_COD_MONEDA,',
'                										PO_TIP_CAMBIO		 => :P95_MOVCAJ_TIP_CAMBIO,',
'                										PO_DECIMALES		 => :P95_MOVCAJ_DECIMALES,',
'                                                        PO_COD_CLIENTE		 => :P95_MOVCAJ_COD_CLIENTE,',
'                                                        PO_COD_CLIENTE_VBLE  => :P95_COD_CLIENTE_VBLE);',
'            ELSE',
'                RAISE_APPLICATION_ERROR(-20000,''El comprobante que intenta ingresar ya se encuentra cargado.'');',
'            END IF;',
'        END IF;',
'    END LOOP;',
'END IF;',
'END;'))
,p_attribute_02=>'P95_TIPO_COMPROBANTE,P95_SER_COMPROBANTE,P95_NRO_COMPROBANTE,P95_COD_EMPRESA,P95_MOVCAJ_COD_MONEDA,P95_TOT_NRO_MOV_CAJ,P95_MOVCAJ_COD_CLIENTE,P95_NOTA_CREDITO,P95_MOVCAJ_TIP_CAMBIO,P95_CONSULTA,P95_MOVCAJ_TIP_CAMBIO_AUX,P95_TIP_COMPROB,P95_TIP_COMPRO'
,p_attribute_03=>'P95_MOVCAJ_TOTAL,P95_MOVCAJ_TIP_CAMBIO,P95_MOVCAJ_DECIMALES,P95_COD_CLIENTE_VBLE,P95_DETALLE_IMPORTE_ANT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P95_TIPO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17123194623637640)
,p_event_id=>wwv_flow_imp.id(17120893383637617)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17121825769637627)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17123276675637641)
,p_event_id=>wwv_flow_imp.id(17120893383637617)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P95_TIPO_COMPROBANTE := NULL;',
':P95_NRO_COMPROBANTE := NULL;',
':P95_SER_COMPROBANTE := NULL;'))
,p_attribute_03=>'P95_TIPO_COMPROBANTE,P95_NRO_COMPROBANTE,P95_SER_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20469022543383617)
,p_event_id=>wwv_flow_imp.id(17120893383637617)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P95_NRO_SECUENCIA 		  := NVL(:P95_MOVCAJ_NRO_SECUENCIA,0) + 1;',
':P95_MOVCAJ_NRO_SECUENCIA := :P95_NRO_SECUENCIA;',
':P95_TIPO_TRANS 		  := :P95_TIPO_TRANS_VBLE;',
':P95_SUB_TIPO_TRANS 	  := :P95_EFECTIVO_COBRO;',
':P95_IND_NO_RETIENE_VALOR := ''N'';'))
,p_attribute_02=>'P95_MOVCAJ_NRO_SECUENCIA,P95_NRO_SECUENCIA,P95_TIPO_TRANS_VBLE,P95_EFECTIVO_COBRO'
,p_attribute_03=>'P95_NRO_SECUENCIA,P95_MOVCAJ_NRO_SECUENCIA,P95_TIPO_TRANS,P95_SUB_TIPO_TRANS,P95_IND_NO_RETIENE_VALOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20469679191383623)
,p_event_id=>wwv_flow_imp.id(17120893383637617)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VTOTAL NUMBER := 0;',
'BEGIN',
'    FOR C IN (SELECT SEQ_ID,',
'                     N004 IMPORTE',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''COL_COMPROBANTES'')',
'    LOOP',
'        VTOTAL := VTOTAL + C.IMPORTE;',
'    END LOOP;',
'    ',
'    :P95_TOT_NRO_MOV_CAJ := VTOTAL;',
'    :P95_MOVCAJ_TOTAL := VTOTAL;',
'END;'))
,p_attribute_02=>'P95_TOT_NRO_MOV_CAJ'
,p_attribute_03=>'P95_TOT_NRO_MOV_CAJ,P95_MOVCAJ_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17121381984637622)
,p_name=>'DA_CLOSE'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17121263190637621)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17121479010637623)
,p_event_id=>wwv_flow_imp.id(17121381984637622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P95_ERROR := 2;'
,p_attribute_03=>'P95_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17121725127637626)
,p_event_id=>wwv_flow_imp.id(17121381984637622)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17121008159637619)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18410384269201314)
,p_name=>'WHEN_VALIDATE_ITEM'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_SUB_TIPO_TRANS'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18410449908201315)
,p_event_id=>wwv_flow_imp.id(18410384269201314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT DESCRIPCION,',
'		 TIP_DOCUMENTO, ',
'		 NVL(CARGA_VALORES,''N''), ',
'		 NVL(CARGA_OTROS,''N'')',
'    INTO :P95_DESC_TRANSACCION, ',
'	     :P95_TIP_DOCUMENTO, ',
'		 :P95_CARGA_VALORES, ',
'		 :P95_CARGA_OTROS',
'	FROM SUBTIPOS_TRANS',
'   WHERE COD_EMPRESA = :P95_COD_EMPRESA',
'     AND COD_MODULO = :P95_COD_MODULO',
'     AND TIPO_TRANS = :P95_TIPO_TRANS',
'     AND SUBTIPO_TRANS = :P95_SUB_TIPO_TRANS ;',
'    -- :P95_COD_MONEDA_COBRO := 1;',
'--:P95_DETALLE_TIP_CAMBIO := 1;',
':P95_MONTO:= nvl(to_number(:P95_TOT_NRO_MOV_CAJ),0) -nvl(to_number( :P95_DETALLE_TOTAL),0);',
'',
':P95_COD_MONEDA_COBRO := nvl(:P95_MOVCAJ_COD_MONEDA,1);',
':P95_DETALLE_TIP_CAMBIO :=  nvl( to_number(replace(:P95_MOVCAJ_TIP_CAMBIO_AUX,''.'',null)),1);--nvl(:P95_MOVCAJ_TIP_CAMBIO_AUX,1);',
'',
'EXCEPTION',
'	WHEN NO_DATA_FOUND THEN',
'		:P95_DESC_TRANSACCION := NULL;',
unistr('		RAISE_APPLICATION_ERROR(-20000, ''No se encuentra subtipo de transacci\00F3n'' );'),
'  WHEN OTHERS THEN',
'		:P95_DESC_TRANSACCION := NULL;',
'		RAISE_APPLICATION_ERROR(-20000, ''Error en la tabla de subtipos de transacciones '' || SQLERRM );',
'END;',
'IF :P95_NRO_SECUENCIA IS NULL THEN',
'   :P95_NRO_SECUENCIA := NVL(:P95_MOVCAJ_NRO_SECUENCIA,0) + 1;',
'   :P95_MOVCAJ_NRO_SECUENCIA := :P95_NRO_SECUENCIA;',
'END IF;'))
,p_attribute_02=>'P95_COD_EMPRESA,P95_COD_MODULO,P95_TIPO_TRANS,P95_SUB_TIPO_TRANS,P95_NRO_SECUENCIA,P95_MOVCAJ_NRO_SECUENCIA,P95_TOT_NRO_MOV_CAJ,P95_DETALLE_TOTAL'
,p_attribute_03=>'P95_DESC_TRANSACCION,P95_TIP_DOCUMENTO,P95_CARGA_VALORES,P95_CARGA_OTROS,P95_NRO_SECUENCIA,P95_MOVCAJ_NRO_SECUENCIA,P95_MONTO,P95_DETALLE_TIP_CAMBIO,P95_COD_MONEDA_COBRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P95_SUB_TIPO_TRANS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18411749783201328)
,p_name=>'RECUPERA_DATOS_COD_PER'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_COD_PER_JURIDICA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18411829339201329)
,p_event_id=>wwv_flow_imp.id(18411749783201328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P95_COD_PER_JURIDICA IS NOT NULL THEN',
'	IF  :P95_SUB_TIPO_TRANS = :P95_CHEQUE_COBRO OR :P95_SUB_TIPO_TRANS = :P95_CHEQUE_A_FECHA THEN',
'		BEGIN',
'			SELECT NOM_COMERCIAL',
'			  INTO :P95_NOM_PER_JURIDICA   ',
'			  FROM PERSONAS_JURIDICAS',
'			 WHERE COD_PER_JURIDICA = :P95_COD_PER_JURIDICA',
'			   AND COD_SECTOR = :P95_SECTOR_BANCARIO ;',
'		EXCEPTION',
'			WHEN NO_DATA_FOUND THEN',
unistr('				RAISE_APPLICATION_ERROR(-20000,''No se encuentra persona jur\00EDdica'');'),
'		END;',
'	END IF;',
'	IF  :P95_SUB_TIPO_TRANS = :P95_TARJETA_COBRO THEN',
'		 BEGIN',
'			SELECT NOM_COMERCIAL',
'			  INTO :P95_NOM_PER_JURIDICA   ',
'			  FROM PERSONAS_JURIDICAS',
'			 WHERE COD_PER_JURIDICA = :P95_COD_PER_JURIDICA',
'			   AND COD_SECTOR = :P95_SECTOR_TARJETAS ;',
'		EXCEPTION',
'			WHEN NO_DATA_FOUND THEN',
unistr('				RAISE_APPLICATION_ERROR(-20000,''No se encuentra persona jur\00EDdica'');'),
'		END;',
'	END IF;',
'END IF;'))
,p_attribute_02=>'P95_COD_PER_JURIDICA,P95_SUB_TIPO_TRANS ,P95_CHEQUE_COBRO,P95_CHEQUE_A_FECHA,P95_TARJETA_COBRO,P95_SECTOR_TARJETAS'
,p_attribute_03=>'P95_NOM_PER_JURIDICA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18412544899201336)
,p_name=>'DA_VALIDATE_ITEM'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_NRO_VALOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18412600321201337)
,p_event_id=>wwv_flow_imp.id(18412544899201336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE VALOR VARCHAR2(20);',
'EXISTE VARCHAR2(1);',
'BEGIN',
'	BEGIN',
'		SELECT NRO_VALOR',
'		  INTO VALOR',
'		  FROM CC_VALORES',
'		 WHERE COD_EMPRESA = :P95_COD_EMPRESA',
'		   AND COD_PER_JURIDICA = :P95_COD_PER_JURIDICA',
'		   AND TIP_DOCUMENTO = :P95_TIP_DOCUMENTO',
'		   AND COD_CLIENTE = :P95_MOVCAJ_COD_CLIENTE',
'		   AND NRO_VALOR = :P95_NRO_VALOR',
'		   AND ROWNUM = 1;',
'		   ',
'		EXISTE := ''S'';',
'	EXCEPTION',
'		WHEN NO_DATA_FOUND THEN',
'			EXISTE := ''N'';',
'	END;',
'		IF EXISTE = ''S'' THEN',
'			RAISE_APPLICATION_ERROR(-20000,''Ya existe este documento'');',
'		ELSE',
'			EXISTE := ''N'';',
'		END IF;',
'END;'))
,p_attribute_02=>'P95_COD_EMPRESA,P95_COD_PER_JURIDICA,P95_TIP_DOCUMENTO,P95_MOVCAJ_COD_CLIENTE,P95_NRO_VALOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(175477836408656516)
,p_name=>'DA_solo_car_val'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_NRO_VALOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175478051594656518)
,p_event_id=>wwv_flow_imp.id(175477836408656516)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20145389608839927)
,p_name=>'DA_NEW_ITEM_FEC_EMISION'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20145404640839928)
,p_event_id=>wwv_flow_imp.id(20145389608839927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P95_CARGA_VALORES = ''S'' AND :P95_CARGA_OTROS = ''S'' THEN',
'    IF :P95_FEC_EMISION IS NULL THEN',
'        :P95_FEC_EMISION := :P95_FEC_MOV_CAJ;',
'    END IF;',
'END IF;'))
,p_attribute_02=>'P95_CARGA_VALORES ,P95_CARGA_OTROS,P95_FEC_EMISION,P95_FEC_MOV_CAJ'
,p_attribute_03=>'P95_FEC_EMISION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20145521238839929)
,p_name=>'DA_VALIDA_FECHA'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_FEC_EMISION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20145655508839930)
,p_event_id=>wwv_flow_imp.id(20145521238839929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(:P95_CARGA_VALORES,''N'') = ''S'' AND NVL(:P95_VER_FECHA_CHEQUE,''N'') = ''S'' THEN',
'    IF :P95_FEC_EMISION IS NULL THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000,''La fecha de emisi\00F3n no puede quedar en blanco.'');'),
'    ELSE',
'        ',
'',
'        IF to_date(:P95_FEC_EMISION,''DD/MM/YYYY'') > TRUNC(SYSDATE) AND :P95_SUB_TIPO_TRANS NOT IN (''16'') THEN',
unistr('            RAISE_APPLICATION_ERROR(-20000,''La fecha de emisi\00F3n no puede ser mayor al de la fecha.'');'),
'        END IF;',
'    END IF;',
'END IF;'))
,p_attribute_02=>'P95_CARGA_VALORES,P95_VER_FECHA_CHEQUE,P95_FEC_EMISION,P95_FEC_MOV_CAJ'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20146785423839941)
,p_name=>'DA_INSERTA_FORMA_COBRO'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18412006343201331)
,p_condition_element=>'P95_MONTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(115344387530984201)
,p_event_id=>wwv_flow_imp.id(20146785423839941)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.NOTIFICATIONS'
,p_attribute_01=>'warning'
,p_attribute_02=>'static'
,p_attribute_03=>unistr('Atenci\00F3n')
,p_attribute_04=>'Debe ingresar el monto'
,p_attribute_07=>'autodismiss:prevent-duplicates:remove-notifications:escape-html:newest-on-top:client-side-substitutions:dismiss-on-click:dismiss-on-button'
,p_attribute_08=>'top-right'
,p_attribute_09=>'Y'
,p_attribute_11=>'3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149026253709268841)
,p_event_id=>wwv_flow_imp.id(20146785423839941)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P95_SUB_TIPO_TRANS IS NULL THEN ',
unistr('    RAISE_APPLICATION_ERROR(-20001, ''Debe seleccionar la transacci\00F3n'');'),
'END IF;',
'',
' ',
'',
'IF :P95_SUB_TIPO_TRANS in (''15'',''17'',''18'') and :P95_NRO_TIMBRADO IS NULL  THEN ',
'    RAISE_APPLICATION_ERROR(-20001, ''Debe ingresar el numero de timbrado'');',
'END IF;',
'IF :P95_SUB_TIPO_TRANS not in (''15'',''17'',''18'') and :P95_NRO_TIMBRADO IS not NULL  THEN ',
'    RAISE_APPLICATION_ERROR(-20001, ''El numero de timbrado es solo para las retenciones'');',
'END IF;',
'IF :P95_SUB_TIPO_TRANS in (''1'') and (  (:P95_COD_PER_JURIDICA IS  not NULL or :P95_NRO_VALOR IS not NULL ))  THEN ',
'    RAISE_APPLICATION_ERROR(-20001, ''Debe eliminar el banco y valor para la forma de cobro efectivo'');',
'END IF;',
'',
'',
'IF NVL(:P95_CARGA_VALORES,''N'')=''S'' and (:P95_COD_PER_JURIDICA IS  NULL or :P95_NRO_VALOR IS NULL ) THEN ',
'    RAISE_APPLICATION_ERROR(-20001, ''Debe ingresar el banco y/o numero de valor'');',
'END IF;',
'',
'IF NVL(:P95_CARGA_VALORES,''N'')=''S'' and (:P95_FEC_EMISION IS  NULL or :P95_FEC_VENCIMIENTO IS NULL ) THEN ',
'    RAISE_APPLICATION_ERROR(-20001, ''Debe ingresar las fechas para el comprobante'');',
'END IF;',
'',
'IF :P95_TIP_DOCUMENTO IS NULL THEN ',
unistr('    RAISE_APPLICATION_ERROR(-20001, ''Debe seleccionar la transacci\00F3n'');'),
'END IF;',
'/*IF :P95_SUB_TIPO_TRANS not in (''1'', ''35'') THEN ',
'    IF :P95_COD_PER_JURIDICA IS NULL THEN ',
'        RAISE_APPLICATION_ERROR(-20001, ''Debe seleccionar el banco'');',
'    ELSIF :P95_NRO_VALOR IS NULL THEN ',
'        RAISE_APPLICATION_ERROR(-20001, ''Debe ingresar el valor'');',
'    END IF;',
'ELSE ',
'    :P95_COD_PER_JURIDICA := NULL;',
'    :P95_NRO_VALOR :=  NULL;',
'END IF;*/',
'        ',
'IF :P95_MONTO IS NULL THEN ',
'    RAISE_APPLICATION_ERROR(-20001, ''Debe ingresar el monto'');',
'END IF;',
'',
'  IF :P95_COD_PER_JURIDICA IS NOT NULL THEN ',
'  IF   :P95_FEC_VENCIMIENTO  IS NULL THEN',
'  :P95_FEC_VENCIMIENTO:=SYSDATE;',
'  END IF;',
'   IF   :P95_FEC_EMISION  IS NULL THEN',
'  :P95_FEC_EMISION:=SYSDATE;',
'  END IF;',
'  END IF;'))
,p_attribute_02=>'P95_SUB_TIPO_TRANS,P95_COD_PER_JURIDICA,P95_NRO_VALOR,P95_MONTO,P95_NRO_TIMBRADO,P95_CARGA_VALORES,P95_FEC_EMISION,P95_FEC_VENCIMIENTO'
,p_attribute_03=>'P95_COD_PER_JURIDICA,P95_NRO_VALOR,P95_FEC_EMISION,P95_FEC_VENCIMIENTO'
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
 p_id=>wwv_flow_imp.id(20146896618839942)
,p_event_id=>wwv_flow_imp.id(20146785423839941)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  CCMOVCAJ.INSERTAR_COBRO(PI_SUB_TIPO_TRANS       => :P95_SUB_TIPO_TRANS,',
'                          PI_DESC_TRANSACCION     => :P95_DESC_TRANSACCION,',
'                          PI_TIP_DOCUMENTO        => :P95_TIP_DOCUMENTO,',
'                          PI_COD_PER_JURIDICA     => :P95_COD_PER_JURIDICA,',
'                          PI_NOM_PER_JURIDICA     => :P95_NOM_PER_JURIDICA,',
'                          PI_NRO_TIMBRADO         => :P95_NRO_TIMBRADO,',
'                          PI_NRO_VALOR            => :P95_NRO_VALOR,',
'                          PI_COD_MONEDA_COBRO     => :P95_COD_MONEDA_COBRO,',
'                          PI_IND_NO_RETIENE_VALOR => :P95_IND_NO_RETIENE_VALOR,',
'                          PI_CARGA_VALORES        => :P95_CARGA_VALORES,',
'                          PI_CARGA_OTROS          => :P95_CARGA_OTROS,',
'                          PI_TIP_CAMBIO           => nvl( to_number(replace(:P95_MOVCAJ_TIP_CAMBIO_AUX,''.'',null)),1),--TO_NUMBER(:P95_TIP_CAMBIO),',
'                          PI_MONTO                => TO_NUMBER(:P95_MONTO),',
'                          PI_IMPORTE              => TO_NUMBER(:P95_IMPORTE),',
'                          PI_MOVCAJ_COD_MONEDA    => :P95_MOVCAJ_COD_MONEDA,',
'                          PI_MOVCAJ_TIP_CAMBIO    =>  nvl( to_number(replace(:P95_MOVCAJ_TIP_CAMBIO_AUX,''.'',null)),1),--TO_NUMBER(:P95_DETALLE_TIP_CAMBIO),',
'                          PI_MOVCAJ_DECIMALES     => TO_NUMBER(:P95_MOVCAJ_DECIMALES),',
'                          PI_MOVCAJ_TOTAL         => TO_NUMBER(:P95_MOVCAJ_TOTAL),',
'                          PI_IMPORTE_ANT          => TO_NUMBER(:P95_DETALLE_IMPORTE_ANT),',
'                          PI_TOT_NRO_MOV_CAJ      => TO_NUMBER(:P95_TOT_NRO_MOV_CAJ),',
'                          PI_DETALLE_TOTAL        => TO_NUMBER(:P95_DETALLE_TOTAL),',
'                          PI_EFECTIVO_COBRO       => :P95_EFECTIVO_COBRO,',
'                          PI_COD_MONEDA_BASE      => :P95_COD_MONEDA_BASE,',
'                          PO_MOVCAJ_TOTAL         => :P95_MOVCAJ_TOTAL,',
'                          PO_MOVCAJ_VUELTO        => :P95_MOVCAJ_VUELTO,',
'                          PO_IMPORTE_ANT          => :P95_DETALLE_IMPORTE_ANT,',
'                          pi_fec_emision          => :P95_FEC_EMISION,',
'                          pi_fec_vencimiento      => :P95_FEC_VENCIMIENTO,',
'                          pi_ser_documento        => :P95_MOVCAJ_SER_MOV_CAJ);',
'end;',
''))
,p_attribute_02=>'P95_SUB_TIPO_TRANS,P95_DESC_TRANSACCION,P95_TIP_DOCUMENTO,P95_COD_PER_JURIDICA,P95_NOM_PER_JURIDICA,P95_NRO_TIMBRADO,P95_NRO_VALOR,P95_COD_MONEDA_COBRO,P95_IND_NO_RETIENE_VALOR,P95_CARGA_VALORES,P95_CARGA_OTROS,P95_DETALLE_TIP_CAMBIO,P95_MOVCAJ_TIP_C'
||'AMBIO,P95_MOVCAJ_DECIMALES,P95_MOVCAJ_TOTAL,P95_DETALLE_IMPORTE_ANT,P95_TOT_NRO_MOV_CAJ,P95_DETALLE_TOTAL,P95_EFECTIVO_COBRO,P95_COD_MONEDA_BASE,P95_MONTO,P95_MOVCAJ_COD_MONEDA,P95_FEC_EMISION,P95_FEC_VENCIMIENTO,P95_MOVCAJ_TIP_CAMBIO_AUX,P95_COD_MON'
||'EDA_COBRO,P95_MOVCAJ_TIP_CAMBIO_AUX,P95_MOVCAJ_SER_MOV_CAJ'
,p_attribute_03=>'P95_MOVCAJ_TOTAL,P95_MOVCAJ_VUELTO,P95_DETALLE_IMPORTE_ANT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20469724669383624)
,p_event_id=>wwv_flow_imp.id(20146785423839941)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VTOTAL NUMBER := 0;',
'BEGIN',
'    FOR C IN (SELECT SEQ_ID,',
'                     N003 MONTO,',
'                     N004 IMPORTE',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''COL_FORMA_COBRO'')',
'    LOOP',
'        VTOTAL := VTOTAL + C.IMPORTE;',
'    END LOOP;',
'    :P95_DETALLE_TOTAL := VTOTAL;',
'END;'))
,p_attribute_03=>'P95_DETALLE_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20470230375383629)
,p_event_id=>wwv_flow_imp.id(20146785423839941)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18413246265201343)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24031613698736908)
,p_event_id=>wwv_flow_imp.id(20146785423839941)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P95_SUB_TIPO_TRANS := NULL;',
':P95_COD_PER_JURIDICA := NULL;',
':P95_NRO_TIMBRADO := NULL;',
':P95_NRO_VALOR := NULL;',
':P95_DETALLE_TIP_CAMBIO := NULL;',
':P95_MONTO := NULL;',
':P95_TIP_DOCUMENTO := NULL;'))
,p_attribute_03=>'P95_SUB_TIPO_TRANS ,P95_COD_PER_JURIDICA,P95_NRO_TIMBRADO ,P95_NRO_VALOR,P95_DETALLE_TIP_CAMBIO,P95_MONTO,P95_TIP_DOCUMENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24033169973736923)
,p_event_id=>wwv_flow_imp.id(20146785423839941)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P95_MOVCAJ_TOTAL := :P95_DETALLE_TOTAL;'
,p_attribute_02=>'P95_DETALLE_TOTAL'
,p_attribute_03=>'P95_MOVCAJ_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20468163759383608)
,p_name=>'DA_LIMPIAR_COL_COMPROBANTE'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20468079314383607)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20468223957383609)
,p_event_id=>wwv_flow_imp.id(20468163759383608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_COMPROBANTES'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_FORMA_COBRO'');'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20468384417383610)
,p_event_id=>wwv_flow_imp.id(20468163759383608)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17121825769637627)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20472183852383648)
,p_event_id=>wwv_flow_imp.id(20468163759383608)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18413246265201343)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20469208917383619)
,p_name=>'DA_CAMBIO_SEQ_ID'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_AUX_SEQ_ID_COBRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20469385720383620)
,p_event_id=>wwv_flow_imp.id(20469208917383619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.CCMOVCAJ.PR_CHECK(P_SEQ_ID    => :P95_AUX_SEQ_ID_COBRO, ',
'        				  P_ACCION    => :P95_ACCION, ',
'        				  P_COLECCION => ''COL_FORMA_COBRO'');',
'    EXCEPTION',
'        WHEN OTHERS THEN ',
unistr('            RAISE_APPLICATION_ERROR(-20010,''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte.'');'),
'END;'))
,p_attribute_02=>'P95_AUX_SEQ_ID_COBRO,P95_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20469895816383625)
,p_name=>'DA_REMOVE_COMPROBANTE'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_AUX_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20470022554383627)
,p_event_id=>wwv_flow_imp.id(20469895816383625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--RESTAR EL IMPORTE DEL REGISTRO A ELIMINAR ANTES DE ELIMINAR',
'DECLARE',
'V_IMPORTE NUMBER;',
'BEGIN',
'    SELECT N004 IMPORTE',
'      INTO V_IMPORTE',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COL_COMPROBANTES''',
'       AND SEQ_ID = :P95_AUX_SEQ_ID;',
'    --WHEN-REMOVE-RECORD',
'    :P95_TOT_NRO_MOV_CAJ := ROUND(NVL(:P95_TOT_NRO_MOV_CAJ,0) - NVL(V_IMPORTE,0),2);',
'    :P95_MOVCAJ_TOTAL := :P95_TOT_NRO_MOV_CAJ;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,''No existe registro con seq_id ''||:P95_AUX_SEQ_ID);',
'END;',
''))
,p_attribute_02=>'P95_AUX_SEQ_ID,P95_TOT_NRO_MOV_CAJ'
,p_attribute_03=>'P95_TOT_NRO_MOV_CAJ,P95_MOVCAJ_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20469923854383626)
,p_event_id=>wwv_flow_imp.id(20469895816383625)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.DELETE_MEMBER (p_collection_name => ''COL_COMPROBANTES'',',
'                               p_seq             => :P95_AUX_SEQ_ID);'))
,p_attribute_02=>'P95_AUX_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20470177833383628)
,p_event_id=>wwv_flow_imp.id(20469895816383625)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17121825769637627)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20470325274383630)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_AUX_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24031793146736909)
,p_event_id=>wwv_flow_imp.id(20470325274383630)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P95_AUX_SEQ_ID_ELIMINAR,P95_DETALLE_TOTAL,P95_ACCION,P95_MOVCAJ_TOTAL,P95_DETALLE_IMPORTE_ANT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20470486353383631)
,p_event_id=>wwv_flow_imp.id(20470325274383630)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_IMPORTE NUMBER := 0;',
'BEGIN',
'    SELECT N004 IMPORTE ',
'      INTO V_IMPORTE',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COL_FORMA_COBRO''',
'       AND SEQ_ID = :P95_AUX_SEQ_ID_ELIMINAR;',
'',
'     :P95_DETALLE_TOTAL := :P95_DETALLE_TOTAL - V_IMPORTE;',
'     --WHEN-REMOVE-RECORD',
'    :P95_MOVCAJ_TOTAL := ROUND( NVL(:P95_MOVCAJ_TOTAL,0) - NVL(V_IMPORTE,0), 2);',
'',
'    APEX_COLLECTION.DELETE_MEMBER (p_collection_name => ''COL_FORMA_COBRO'',',
'                                   p_seq             => :P95_AUX_SEQ_ID_ELIMINAR);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,''Error con el registro ''|| :P95_AUX_SEQ_ID_ELIMINAR);',
'END;',
'',
''))
,p_attribute_02=>'P95_AUX_SEQ_ID_ELIMINAR,P95_AUX_SEQ_ID_COBRO,P95_DETALLE_TOTAL,P95_ACCION,P95_MOVCAJ_TOTAL,P95_DETALLE_IMPORTE_ANT'
,p_attribute_03=>'P95_DETALLE_TOTAL,P95_MOVCAJ_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20470690119383633)
,p_event_id=>wwv_flow_imp.id(20470325274383630)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18413246265201343)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20471066988383637)
,p_name=>'DA_PRE_INSERT_MOVCAJ'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20470996534383636)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149026185197268840)
,p_event_id=>wwv_flow_imp.id(20471066988383637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_contador NUMBER := 0;',
'BEGIN ',
'    BEGIN ',
'        SELECT COUNT(*)',
'                INTO v_contador',
'                FROM apex_collections',
'               WHERE collection_name = ''COL_FORMA_COBRO'';',
'    EXCEPTION ',
'        WHEN NO_DATA_FOUND  THEN ',
'            v_contador := 0;',
'        WHEN OTHERS THEN ',
'            v_contador := 0;',
'    END;',
'    IF v_contador = 0 THEN ',
'        RAISE_APPLICATION_ERROR(-20001, ''Debe ingresar la forma de conbro'');',
'    END IF;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20999229766158207)
,p_event_id=>wwv_flow_imp.id(20471066988383637)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-INSERT B_MOVCAJ',
'BEGIN',
'    BEGIN',
'        IF NVL(TO_NUMBER(REPLACE(:P95_TOT_NRO_MOV_CAJ, ''.'')), 0 ) <> NVL(TO_NUMBER(REPLACE(:P95_MOVCAJ_TOTAL, ''.'')), 0 ) THEN',
'            RAISE_APPLICATION_ERROR(-20000,''Los totales de comprobantes y pagos deben ser iguales.'');',
'        END IF;',
'    END;',
'    DECLARE',
'    VINFERIOR NUMBER := TO_NUMBER( RTRIM( LTRIM( ''01'' ) ) ) * 1000;',
'    VSUPERIOR NUMBER := ( ( TO_NUMBER( RTRIM( LTRIM( ''01'' ) ) ) + 1 ) * 10000 ) - 1;',
'    BEGIN',
'    :P95_MOVCAJ_TOTAL := :P95_DETALLE_TOTAL;',
'    :P95_MOVCAJ_COD_EMPRESA  := :P95_COD_EMPRESA;',
'    :P95_MOVCAJ_COD_SUCURSAL := :P95_COD_SUCURSAL;',
'    :P95_MOVCAJ_COD_USUARIO  := :P95_COD_USUARIO;',
'    :P95_MOVCAJ_COD_CAJA     := :P95_COD_CAJA;',
'    :P95_MOVCAJ_FEC_ALTA     := SYSDATE;',
'        BEGIN',
'            SELECT NRO_HABILITACION',
'              INTO :P95_NRO_HABILITACION',
'              FROM CC_HABILITACIONES',
'             WHERE COD_EMPRESA  = :P95_COD_EMPRESA',
'               AND COD_SUCURSAL = :P95_COD_SUCURSAL',
'               AND COD_CAJA     = :P95_COD_CAJA',
'               AND COD_USUARIO  = :P95_COD_USUARIO',
'               AND FEC_CIERRE IS NULL;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                RAISE_APPLICATION_ERROR(-20000,''Su caja no se encuentra habilitada.'' || CHR(13) ||',
unistr('                                        ''Habil\00EDtela y vuelva a intentarlo m\00E1s tarde.'');'),
'        WHEN OTHERS THEN',
'           RAISE_APPLICATION_ERROR(-20000,''Error en tabla de habilitaciones de cajas ''||SQLERRM);',
'        END;',
'',
'        BEGIN',
'            SELECT MAX( NRO_MOV_CAJ )',
'              INTO :P95_MOVCAJ_NRO_MOV_CAJ',
'              FROM CC_MOVIMIENTOS_CAJAS',
'             WHERE COD_EMPRESA = :P95_COD_EMPRESA;',
'            IF :P95_MOVCAJ_NRO_MOV_CAJ IS NOT NULL THEN',
'                :P95_MOVCAJ_NRO_MOV_CAJ := NVL( :P95_MOVCAJ_NRO_MOV_CAJ, 0 ) + 1;',
'            ELSE',
'                :P95_MOVCAJ_NRO_MOV_CAJ := VINFERIOR + 1;',
'            END IF;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                :P95_MOVCAJ_NRO_MOV_CAJ := VINFERIOR + 1;',
'            WHEN OTHERS THEN',
'                RAISE_APPLICATION_ERROR(-20000,''Error en tabla de movimientos de cajas ''||SQLERRM); ',
'        END;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            RAISE_APPLICATION_ERROR(-20000,''Error al tratar de insertar el registro '' || SQLERRM );',
'    END;',
'END;',
''))
,p_attribute_02=>'P95_DETALLE_TOTAL,P95_COD_EMPRESA,P95_COD_SUCURSAL,P95_COD_USUARIO,P95_COD_CAJA,,P95_MOVCAJ_NRO_MOV_CAJ,P95_TOT_NRO_MOV_CAJ,,A'
,p_attribute_03=>'P95_MOVCAJ_TOTAL ,P95_MOVCAJ_COD_EMPRESA ,P95_MOVCAJ_COD_SUCURSAL,P95_MOVCAJ_COD_USUARIO ,P95_MOVCAJ_COD_CAJA,P95_MOVCAJ_FEC_ALTA,P95_MOVCAJ_NRO_MOV_CAJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20999559581158210)
,p_event_id=>wwv_flow_imp.id(20471066988383637)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-INSERT B_DETALLE',
'BEGIN',
'    IF :P95_CHEQUE_COBRO = :P95_SUB_TIPO_TRANS OR :P95_CHEQUE_A_FECHA = :P95_SUB_TIPO_TRANS THEN',
'        IF :P95_FEC_VENCIMIENTO IS NULL THEN',
'            :P95_FEC_VENCIMIENTO := NVL(:P95_FEC_EMISION, SYSDATE);',
'        END IF;',
'    END IF;',
'',
'    IF NVL( :P95_GENERA_MD, ''N'' ) = ''S'' AND NVL( :P95_COD_CUSTODIO_ENT, ''N'' ) <> :P95_COD_CUSTODIO AND :P95_TIP_DOCUMENTO IN(''RET'',''CST'',''CPU'') THEN',
'        CCMOVCAJ.CARGA_PLANILLA(PI_COD_EMPRESA 	       => :P95_COD_EMPRESA,',
'    						    PI_COD_CUSTODIO 	   => :P95_COD_CUSTODIO,',
'    						    PI_COD_CUSTODIO_ENT    => :P95_COD_CUSTODIO_ENT,',
'    						    PI_TOT_NRO_MOV_CAJ     => :P95_TOT_NRO_MOV_CAJ,',
'    						    PI_P_NRO_COMPROBANTE   => :P95_P_NRO_COMPROBANTE,',
'    						    PI_MOVCAJ_COD_MONEDA   => :P95_MOVCAJ_COD_MONEDA,',
'    						    PI_DETALLE_SER_MOV_CAJ => :P95_SER_COMP,',
'    						    PI_MOVCAJ_TIP_MOV_CAJ  => :P95_MOVCAJ_TIP_MOV_CAJ,',
'    						    PI_MOVCAJ_SER_MOV_CAJ  => :P95_MOVCAJ_SER_MOV_CAJ,',
'    						    PI_MOVCAJ_NRO_MOV_CAJ  => :P95_MOVCAJ_NRO_MOV_CAJ,',
'    						    PI_MOVCAJ_COD_CLIENTE  => :P95_MOVCAJ_COD_CLIENTE,',
'    						    PO_NRO_PLANILLA		   => :P95_NRO_PLANILLA);',
'    END IF ;',
'',
'    IF NVL( :P95_GENERA_MD, ''N'' ) = ''S'' AND NVL( :P95_COD_CUSTODIO_ENT, ''N'' ) <> :P95_COD_CUSTODIO AND :P95_MOVCAJ_COD_SUCURSAL IN (''248'',''65'') THEN',
'        CCMOVCAJ.CARGA_PLANILLA(PI_COD_EMPRESA 	       => :P95_COD_EMPRESA,',
'    						    PI_COD_CUSTODIO 	   => :P95_COD_CUSTODIO,',
'    						    PI_COD_CUSTODIO_ENT    => :P95_COD_CUSTODIO_ENT,',
'    						    PI_TOT_NRO_MOV_CAJ     => :P95_TOT_NRO_MOV_CAJ,',
'    						    PI_P_NRO_COMPROBANTE   => :P95_P_NRO_COMPROBANTE,',
'    						    PI_MOVCAJ_COD_MONEDA   => :P95_MOVCAJ_COD_MONEDA,',
'    						    PI_DETALLE_SER_MOV_CAJ => :P95_SER_COMP,',
'    						    PI_MOVCAJ_TIP_MOV_CAJ  => :P95_MOVCAJ_TIP_MOV_CAJ,',
'    						    PI_MOVCAJ_SER_MOV_CAJ  => :P95_MOVCAJ_SER_MOV_CAJ,',
'    						    PI_MOVCAJ_NRO_MOV_CAJ  => :P95_MOVCAJ_NRO_MOV_CAJ,',
'    						    PI_MOVCAJ_COD_CLIENTE  => :P95_MOVCAJ_COD_CLIENTE,',
'    						    PO_NRO_PLANILLA		   => :P95_NRO_PLANILLA);                              ',
'    END IF ;',
'',
'    IF :P95_SUB_TIPO_TRANS IN (''16'') THEN',
'        CCMOVCAJ.CARGA_PLANILLA_365(PI_COD_EMPRESA 	       => :P95_COD_EMPRESA,',
'        							PI_COD_CUSTODIO 	   => :P95_COD_CUSTODIO,',
'        							PI_TOT_NRO_MOV_CAJ     => :P95_TOT_NRO_MOV_CAJ,',
'        							PI_P_NRO_COMPROBANTE   => :P95_P_NRO_COMPROBANTE,',
'        							PI_MOVCAJ_COD_MONEDA   => :P95_MOVCAJ_COD_MONEDA,',
'        							PI_DETALLE_SER_MOV_CAJ => :P95_SER_COMP,',
'        							PI_MOVCAJ_TIP_MOV_CAJ  => :P95_MOVCAJ_TIP_MOV_CAJ,',
'        							PI_MOVCAJ_SER_MOV_CAJ  => :P95_MOVCAJ_SER_MOV_CAJ,',
'        							PI_MOVCAJ_NRO_MOV_CAJ  => :P95_MOVCAJ_NRO_MOV_CAJ,',
'        							PI_MOVCAJ_COD_CLIENTE  => :P95_MOVCAJ_COD_CLIENTE,',
'        							PI_ORDEN_DET		   => :P95_ORDEN_DET,',
'        							PO_ORDEN_DET		   => :P95_ORDEN_DET,',
'        							PO_NRO_PLANILLA		   => :P95_NRO_PLANILLA) ;                                    ',
'    END IF ;',
'    DECLARE',
'     	VVENDEDOR VARCHAR2(10);',
'     	VERROR EXCEPTION;',
'    BEGIN',
'        BEGIN',
'            SELECT COD_VENDEDOR',
'              INTO VVENDEDOR',
'              FROM VT_COMPROBANTES_CABECERA V ',
'             WHERE V.COD_EMPRESA = :P95_COD_EMPRESA ',
'               AND V.TIP_COMPROBANTE = :P95_P_TIPO_COMPROBANTE',
'               AND V.SER_COMPROBANTE = :P95_P_SER_COMPROBANTE',
'               AND V.NRO_COMPROBANTE = :P95_P_NRO_COMPROBANTE ;   ',
'            IF VVENDEDOR IN (''195'',''199'',''198'',''225'') AND :P95_SUB_TIPO_TRANS NOT IN (''29'',''31'',''30'',''32'') THEN',
'                RAISE VERROR;',
'            END IF;',
'    	EXCEPTION ',
'            WHEN VERROR THEN ',
'    			RAISE_APPLICATION_ERROR(-20000,''El comprobante no puede tener la forma de cobro actual!'');',
'    		WHEN OTHERS THEN NULL;',
'    	END;     ',
'    END;',
'END;',
'    '))
,p_attribute_02=>'P95_CHEQUE_COBRO,P95_SUB_TIPO_TRANS,P95_CHEQUE_A_FECHA,P95_FEC_VENCIMIENTO,P95_FEC_EMISION,P95_GENERA_MD,P95_COD_CUSTODIO_ENT,P95_COD_CUSTODIO,P95_TIP_DOCUMENTO,P95_MOVCAJ_COD_SUCURSAL,P95_P_TIPO_COMPROBANTE,P95_P_SER_COMPROBANTE,P95_P_NRO_COMPROBANT'
||'E,:P95_COD_EMPRESA,:P95_COD_CUSTODIO,:P95_TOT_NRO_MOV_CAJ,:P95_MOVCAJ_COD_MONEDA,:P95_DETALLE_SER_MOV_CAJ,:P95_MOVCAJ_TIP_MOV_CAJ,:P95_MOVCAJ_SER_MOV_CAJ,:P95_MOVCAJ_NRO_MOV_CAJ,:P95_MOVCAJ_COD_CLIENTE,:P95_ORDEN_DET,P95_SER_COMP'
,p_attribute_03=>'P95_FEC_VENCIMIENTO,P95_NRO_PLANILLA,P95_ORDEN_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20999970224158214)
,p_event_id=>wwv_flow_imp.id(20471066988383637)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'CCMOVCAJ.BUSCA_COMPROBANTE; ',
'',
'    IF :P95_NRO_TICKET_VBLE IS NOT NULL AND :P95_P_NRO_ORT IS NOT NULL THEN',
'    	 INSERT INTO INV.CA_ORT_TICKET(FECHA, ',
'    								   COD_USUARIO, ',
'    								   NRO_TICKET,',
'    								   NRO_ORT, SER_ORT)',
'    						   VALUES (SYSDATE,',
'    								   :APP_USER, ',
'    								   :P95_NRO_TICKET_VBLE, ',
'    								   :P95_P_NRO_ORT, ',
'    								   :P95_P_SER_ORT);',
'    END IF;',
'END;'))
,p_attribute_02=>'P95_NRO_TICKET_VBLE,P95_P_NRO_ORT,P95_P_NRO_ORT,P95_P_SER_ORT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21002931037158244)
,p_event_id=>wwv_flow_imp.id(20471066988383637)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'BT_GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20471950351383646)
,p_name=>'DA_REFRESH_DETALLE'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20471456252383641)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21003491080158249)
,p_event_id=>wwv_flow_imp.id(20471950351383646)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FOR C IN (SELECT SEQ_ID,',
'                   C001 SUB_TIPO_TRANS,',
'                   C002 DESC_TRANSACCION,',
'            		C003 TIP_DOCUMENTO,',
'            		C004 COD_PER_JURIDICA,',
'                    C005 NOM_JURIDICA,',
'            		C006 NRO_TIMBRADO,',
'            		C007 NRO_VALOR,',
'            		C008 COD_MONEDA_COBRO,',
'            		C009 IND_NO_RETIENE_VALOR,',
'            		C010 CARGA_VALORES,',
'            		C011 CARGA_OTROS,',
'            		N001 TIP_CAMBIO,',
'            		N002 DECIMALES,',
'                    N003 MONTO,',
'                    N004 IMPORTE',
'              FROM APEX_COLLECTIONS',
'             WHERE COLLECTION_NAME = ''COL_FORMA_COBRO'')',
'LOOP',
'    APEX_COLLECTION.UPDATE_MEMBER (P_COLLECTION_NAME => ''COL_FORMA_COBRO'',',
'                                  P_SEQ  => C.SEQ_ID,',
'                                  P_C001 => ''15'',',
unistr('                                  P_C002 => ''Retenci\00F3n de IVA'','),
'                            	  P_C003 => ''RET'',',
'                            	  P_C004 => ''32053'',',
'                                  P_C005 => ''RETENCIONES DE IVA'',',
'                            	  P_C006 => C.NRO_TIMBRADO,',
'                            	  P_C007 => C.NRO_VALOR,',
'                            	  P_C008 => C.COD_MONEDA_COBRO,',
'                            	  P_C009 => C.IND_NO_RETIENE_VALOR,',
'                            	  P_C010 => C.CARGA_VALORES,',
'                            	  P_C011 => C.CARGA_OTROS,',
'                            	  P_N001 => TO_NUMBER(C.COD_MONEDA_COBRO),',
'                            	  P_N002 => C.DECIMALES,',
'                                  P_N003 => C.IMPORTE,',
'                                  P_N004 => C.IMPORTE);',
'END LOOP;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20472035152383647)
,p_event_id=>wwv_flow_imp.id(20471950351383646)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18413246265201343)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20472378446383650)
,p_event_id=>wwv_flow_imp.id(20471950351383646)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VTOTAL NUMBER := 0;',
'BEGIN',
'    FOR C IN (SELECT SEQ_ID,',
'                     N003 MONTO,',
'                     N004 IMPORTE',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''COL_FORMA_COBRO'')',
'    LOOP',
'        VTOTAL := VTOTAL + C.IMPORTE;',
'    END LOOP;',
'    :P95_DETALLE_TOTAL := VTOTAL;',
'END;'))
,p_attribute_02=>'P95_DETALLE_TOTAL'
,p_attribute_03=>'P95_DETALLE_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20998945440158204)
,p_event_id=>wwv_flow_imp.id(20471950351383646)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20145964519839933)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20999778031158212)
,p_name=>'DA_ASIGNA_SER_MOV_CAJ'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_MOVCAJ_SER_MOV_CAJ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20999829871158213)
,p_event_id=>wwv_flow_imp.id(20999778031158212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P95_DETALLE_SER_MOV_CAJ := :P95_MOVCAJ_SER_MOV_CAJ;'
,p_attribute_02=>'P95_MOVCAJ_SER_MOV_CAJ'
,p_attribute_03=>'P95_DETALLE_SER_MOV_CAJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21001430148158229)
,p_name=>'DA_HIDE'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_P_NRO_ORT'
,p_condition_element=>'P95_P_NRO_ORT'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21001580178158230)
,p_event_id=>wwv_flow_imp.id(21001430148158229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P95_NRO_TICKET_VBLE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21001669160158231)
,p_event_id=>wwv_flow_imp.id(21001430148158229)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P95_NRO_TICKET_VBLE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21001877888158233)
,p_name=>'DA_ASIGNA_NRO_MOV_CAJ'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_MOVCAJ_NRO_MOV_CAJ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21001941354158234)
,p_event_id=>wwv_flow_imp.id(21001877888158233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P95_DETALLE_NRO_MOV_CAJ := :P95_MOVCAJ_NRO_MOV_CAJ;'
,p_attribute_02=>'P95_MOVCAJ_NRO_MOV_CAJ'
,p_attribute_03=>'P95_DETALLE_NRO_MOV_CAJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21002187741158236)
,p_name=>'DA_ASIGNA_TIP_MOV_CAJ'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_MOVCAJ_TIP_MOV_CAJ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21002272034158237)
,p_event_id=>wwv_flow_imp.id(21002187741158236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P95_DETALLE_TIP_MOV_CAJ := :P95_MOVCAJ_TIP_MOV_CAJ;'
,p_attribute_02=>'P95_MOVCAJ_TIP_MOV_CAJ'
,p_attribute_03=>'P95_DETALLE_TIP_MOV_CAJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21002426981158239)
,p_name=>'DA_ASIGNA_TOTAL'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_MOVCAJ_TOTAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21002596877158240)
,p_event_id=>wwv_flow_imp.id(21002426981158239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P95_MOVCAJ_TOTAL_AUX := :P95_MOVCAJ_TOTAL;'
,p_attribute_02=>'P95_MOVCAJ_TOTAL'
,p_attribute_03=>'P95_MOVCAJ_TOTAL_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21002720160158242)
,p_name=>'DA_ASIGNA_TOTAL_COMP'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_TOT_NRO_MOV_CAJ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21002866573158243)
,p_event_id=>wwv_flow_imp.id(21002720160158242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P95_TOT_NRO_MOV_CAJ_AUX := :P95_TOT_NRO_MOV_CAJ;'
,p_attribute_02=>'P95_TOT_NRO_MOV_CAJ'
,p_attribute_03=>'P95_TOT_NRO_MOV_CAJ_AUX'
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
 p_id=>wwv_flow_imp.id(21003038684158245)
,p_name=>'DA_REFRESH_COMP'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_P_NRO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P95_P_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24030911283736901)
,p_event_id=>wwv_flow_imp.id(21003038684158245)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  CCMOVCAJ.INSERTAR_COLECCION_COMPROBANTE(PI_TIPO_COMPROBANTE        => :P95_P_TIPO_COMPROBANTE,',
'                                          PI_SER_COMPROBANTE         => :P95_P_SER_COMPROBANTE,',
'                                          PI_NRO_COMPROBANTE         => TO_NUMBER(:P95_P_NRO_COMPROBANTE),',
'                                          PI_COD_EMPRESA             => :P95_COD_EMPRESA,',
'                                          PI_MOVCAJ_COD_MONEDA       => :P95_MOVCAJ_COD_MONEDA,',
'                                          PI_TIP_CAMBIO              => :P95_MOVCAJ_TIP_CAMBIO,',
'                                          PI_TOT_NRO_MOV_CAJ         => :P95_TOT_NRO_MOV_CAJ,',
'                                          PI_COD_CLIENTE             => :P95_MOVCAJ_COD_CLIENTE,',
'                                          PI_COD_CLIENTE_VBLE        => :P95_COD_CLIENTE_VBLE,',
'                                          PI_NOTA_CREDITO            => :P95_NOTA_CREDITO,',
'                                          PI_CONSULTA                => :P95_CONSULTA,',
'                                          PO_TOTAL                   => :P95_MOVCAJ_TOTAL,',
'                                          PO_COMPROBANTE_IMPORTE_ANT => :P95_DETALLE_IMPORTE_ANT,',
'                                          PO_MOVCAJ_COD_MONEDA       => :P95_MOVCAJ_COD_MONEDA,',
'                                          PO_TIP_CAMBIO              => :P95_MOVCAJ_TIP_CAMBIO,',
'                                          PO_DECIMALES               => :P95_MOVCAJ_DECIMALES,',
'                                          PO_COD_CLIENTE             => :P95_MOVCAJ_COD_CLIENTE,',
'                                          PO_COD_CLIENTE_VBLE        => :P95_COD_CLIENTE_VBLE);',
'                                          :P95_MOVCAJ_TIP_CAMBIO_AUX:=:P95_MOVCAJ_TIP_CAMBIO;',
'                                          ',
'                                          ',
'END;',
''))
,p_attribute_02=>'P95_P_TIPO_COMPROBANTE,P95_P_SER_COMPROBANTE,P95_P_NRO_COMPROBANTE,P95_COD_EMPRESA,P95_MOVCAJ_COD_MONEDA,,P95_MOVCAJ_TIP_CAMBIO,P95_TOT_NRO_MOV_CAJ,P95_MOVCAJ_COD_CLIENTE,P95_COD_CLIENTE_VBLE,P95_NOTA_CREDITO,P95_CONSULTA'
,p_attribute_03=>'P95_MOVCAJ_TOTAL,P95_DETALLE_IMPORTE_ANT,P95_MOVCAJ_COD_MONEDA,P95_MOVCAJ_TIP_CAMBIO,P95_MOVCAJ_DECIMALES,P95_MOVCAJ_COD_CLIENTE,P95_COD_CLIENTE_VBLE, P95_MOVCAJ_TIP_CAMBIO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24031185975736903)
,p_event_id=>wwv_flow_imp.id(21003038684158245)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P95_NRO_SECUENCIA 		  := NVL(:P95_MOVCAJ_NRO_SECUENCIA,0) + 1;',
':P95_MOVCAJ_NRO_SECUENCIA := :P95_NRO_SECUENCIA;',
':P95_TIPO_TRANS 		  := :P95_TIPO_TRANS_VBLE;',
'--:P95_SUB_TIPO_TRANS 	  := :P95_EFECTIVO_COBRO;',
':P95_COD_MONEDA_COBRO 	  := :P95_MOVCAJ_COD_MONEDA;',
':P95_IND_NO_RETIENE_VALOR := ''N'';'))
,p_attribute_02=>'P95_MOVCAJ_NRO_SECUENCIA,P95_NRO_SECUENCIA,P95_TIPO_TRANS_VBLE,P95_EFECTIVO_COBRO'
,p_attribute_03=>'P95_NRO_SECUENCIA,P95_MOVCAJ_NRO_SECUENCIA,P95_TIPO_TRANS,P95_SUB_TIPO_TRANS,P95_COD_MONEDA_COBRO,P95_IND_NO_RETIENE_VALOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24031209484736904)
,p_event_id=>wwv_flow_imp.id(21003038684158245)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VTOTAL NUMBER := 0;',
'BEGIN',
'    FOR C IN (SELECT SEQ_ID,',
'                     N004 IMPORTE',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''COL_COMPROBANTES'')',
'    LOOP',
'        VTOTAL := VTOTAL + C.IMPORTE;',
'    END LOOP;',
'    ',
'    :P95_TOT_NRO_MOV_CAJ := VTOTAL;',
'    :P95_MOVCAJ_TOTAL := VTOTAL;',
'END;'))
,p_attribute_02=>'P95_MOVCAJ_TOTAL'
,p_attribute_03=>'P95_TOT_NRO_MOV_CAJ,P95_MOVCAJ_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21003148368158246)
,p_event_id=>wwv_flow_imp.id(21003038684158245)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17121825769637627)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24031473937736906)
,p_name=>'DA_LIMPIAR_ITEMS_FORMAS'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24031383602736905)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24031598714736907)
,p_event_id=>wwv_flow_imp.id(24031473937736906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P95_SUB_TIPO_TRANS := NULL;',
':P95_COD_PER_JURIDICA := NULL;',
':P95_NRO_TIMBRADO := NULL;',
':P95_NRO_VALOR := NULL;',
':P95_DETALLE_TIP_CAMBIO := NULL;',
':P95_MONTO := NULL;'))
,p_attribute_03=>'P95_SUB_TIPO_TRANS ,P95_COD_PER_JURIDICA,P95_NRO_TIMBRADO ,P95_NRO_VALOR,P95_DETALLE_TIP_CAMBIO,P95_MONTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24032120596736913)
,p_name=>'DA_ASIGNA_DETALLE_TOTAL'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_DETALLE_TOTAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24032214331736914)
,p_event_id=>wwv_flow_imp.id(24032120596736913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P95_DETALLE_TOTAL_AUX := :P95_DETALLE_TOTAL;'
,p_attribute_02=>'P95_DETALLE_TOTAL'
,p_attribute_03=>'P95_DETALLE_TOTAL_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24032306821736915)
,p_name=>'DA_DESHABILITAR'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_SUB_TIPO_TRANS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24032505818736917)
,p_event_id=>wwv_flow_imp.id(24032306821736915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P95_COD_PER_JURIDICA := NULL;',
':P95_NRO_TIMBRADO := NULL;',
':P95_NRO_VALOR := NULL;',
''))
,p_attribute_03=>'P95_COD_PER_JURIDICA,P95_NRO_TIMBRADO,P95_NRO_VALOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21003349469158248)
,p_event_id=>wwv_flow_imp.id(24032306821736915)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'//deshabilitar();'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24032620665736918)
,p_name=>'DA_REFRESH_COMPR'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_NRO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24032731048736919)
,p_event_id=>wwv_flow_imp.id(24032620665736918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17121825769637627)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24032949694736921)
,p_name=>'DA_ASIGNA_MOVCAJ_TIP_CAMBIO'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_MOVCAJ_TIP_CAMBIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24033016154736922)
,p_event_id=>wwv_flow_imp.id(24032949694736921)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P95_MOVCAJ_TIP_CAMBIO_AUX := :P95_MOVCAJ_TIP_CAMBIO;'
,p_attribute_02=>'P95_MOVCAJ_TIP_CAMBIO'
,p_attribute_03=>'P95_MOVCAJ_TIP_CAMBIO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31070139359852809)
,p_name=>'DA_REFRESH_COMP_X_MOV_CAJ'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_P_NRO_MOV_CAJ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P95_P_NRO_MOV_CAJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31070287199852810)
,p_event_id=>wwv_flow_imp.id(31070139359852809)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  CCMOVCAJ.INSERTAR_COLECCION_COMPROBANTE(PI_TIPO_COMPROBANTE        => :P95_P_TIPO_COMPROBANTE,',
'                                          PI_SER_COMPROBANTE         => :P95_P_SER_COMPROBANTE,',
'                                          PI_NRO_COMPROBANTE         => TO_NUMBER(:P95_P_NRO_COMPROBANTE),',
'                                          PI_COD_EMPRESA             => :P95_COD_EMPRESA,',
'                                          PI_MOVCAJ_COD_MONEDA       => :P95_MOVCAJ_COD_MONEDA,',
'                                          PI_TIP_CAMBIO              => :P95_MOVCAJ_TIP_CAMBIO,',
'                                          PI_TOT_NRO_MOV_CAJ         => :P95_TOT_NRO_MOV_CAJ,',
'                                          PI_COD_CLIENTE             => :P95_MOVCAJ_COD_CLIENTE,',
'                                          PI_COD_CLIENTE_VBLE        => :P95_COD_CLIENTE_VBLE,',
'                                          PI_NOTA_CREDITO            => :P95_NOTA_CREDITO,',
'                                          PI_CONSULTA                => :P95_CONSULTA,',
'                                          PO_TOTAL                   => :P95_MOVCAJ_TOTAL,',
'                                          PO_COMPROBANTE_IMPORTE_ANT => :P95_DETALLE_IMPORTE_ANT,',
'                                          PO_MOVCAJ_COD_MONEDA       => :P95_MOVCAJ_COD_MONEDA,',
'                                          PO_TIP_CAMBIO              => :P95_MOVCAJ_TIP_CAMBIO,',
'                                          PO_DECIMALES               => :P95_MOVCAJ_DECIMALES,',
'                                          PO_COD_CLIENTE             => :P95_MOVCAJ_COD_CLIENTE,',
'                                          PO_COD_CLIENTE_VBLE        => :P95_COD_CLIENTE_VBLE);',
'end;',
''))
,p_attribute_02=>'P95_P_TIPO_COMPROBANTE,P95_P_SER_COMPROBANTE,P95_P_NRO_COMPROBANTE,P95_COD_EMPRESA,P95_MOVCAJ_COD_MONEDA,,P95_MOVCAJ_TIP_CAMBIO,P95_TOT_NRO_MOV_CAJ,P95_MOVCAJ_COD_CLIENTE,P95_COD_CLIENTE_VBLE,P95_NOTA_CREDITO,P95_CONSULTA'
,p_attribute_03=>'P95_MOVCAJ_TOTAL,P95_DETALLE_IMPORTE_ANT,P95_MOVCAJ_COD_MONEDA,P95_MOVCAJ_TIP_CAMBIO,P95_MOVCAJ_DECIMALES,P95_MOVCAJ_COD_CLIENTE,P95_COD_CLIENTE_VBLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31070306607852811)
,p_event_id=>wwv_flow_imp.id(31070139359852809)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P95_NRO_SECUENCIA 		  := NVL(:P95_MOVCAJ_NRO_SECUENCIA,0) + 1;',
':P95_MOVCAJ_NRO_SECUENCIA := :P95_NRO_SECUENCIA;',
':P95_TIPO_TRANS 		  := :P95_TIPO_TRANS_VBLE;',
':P95_SUB_TIPO_TRANS 	  := :P95_EFECTIVO_COBRO;',
':P95_COD_MONEDA_COBRO 	  := :P95_MOVCAJ_COD_MONEDA;',
':P95_IND_NO_RETIENE_VALOR := ''N'';'))
,p_attribute_02=>'P95_MOVCAJ_NRO_SECUENCIA,P95_NRO_SECUENCIA,P95_TIPO_TRANS_VBLE,P95_EFECTIVO_COBRO'
,p_attribute_03=>'P95_NRO_SECUENCIA,P95_MOVCAJ_NRO_SECUENCIA,P95_TIPO_TRANS,P95_SUB_TIPO_TRANS,P95_COD_MONEDA_COBRO,P95_IND_NO_RETIENE_VALOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31070442251852812)
,p_event_id=>wwv_flow_imp.id(31070139359852809)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VTOTAL NUMBER := 0;',
'BEGIN',
'    FOR C IN (SELECT SEQ_ID,',
'                     N004 IMPORTE',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''COL_COMPROBANTES'')',
'    LOOP',
'        VTOTAL := VTOTAL + C.IMPORTE;',
'    END LOOP;',
'    ',
'    :P95_TOT_NRO_MOV_CAJ := VTOTAL;',
'    :P95_MOVCAJ_TOTAL := VTOTAL;',
'END;'))
,p_attribute_02=>'P95_MOVCAJ_TOTAL'
,p_attribute_03=>'P95_TOT_NRO_MOV_CAJ,P95_MOVCAJ_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31070529575852813)
,p_event_id=>wwv_flow_imp.id(31070139359852809)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17121825769637627)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(171716493059910436)
,p_event_id=>wwv_flow_imp.id(31070139359852809)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18413246265201343)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110474470672213411)
,p_name=>'Obtiene datos de monedas'
,p_event_sequence=>310
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110474537477213412)
,p_event_id=>wwv_flow_imp.id(110474470672213411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P95_MOVCAJ_COD_MONEDA IS NOT NULL THEN',
'  ',
'     begin',
'       select tipo_cambio_dia, decimales',
'         into :P95_MOVCAJ_TIP_CAMBIO_AUX, :P95_MOVCAJ_DECIMALES',
'         from monedas',
'         where cod_moneda = :P95_MOVCAJ_COD_MONEDA;',
'     exception',
'       when no_data_found then',
'            :P95_MOVCAJ_TIP_CAMBIO_AUX := 1;',
'            :P95_MOVCAJ_DECIMALES := 0;',
unistr('            :P0_MENSAJE_VALIDACION :=  ''No se encuentra c\00F3digo de moneda'';'),
'       when others then',
'           :P95_MOVCAJ_TIP_CAMBIO_AUX := 1;',
'            :P95_MOVCAJ_DECIMALES := 0;',
'           :P0_MENSAJE_VALIDACION :=''Error en la tabla de monedas cabecera'' || sqlerrm;',
'     end;',
'END IF;',
'',
'',
'',
' begin',
'/*',
'     select cod_custodio',
'        into :P95_COD_CUSTODIO',
'        from usuarios',
'        where cod_empresa = :P95_COD_EMPRESA',
'          and cod_usuario = :app_user;',
'          */',
'     select c.cod_custodio',
'        into :P95_COD_CUSTODIO',
'        from usuarios u, cc_custodios c',
'        where cod_usuario = :P95_COD_USUARIO ',
'        and c.cod_empresa = :P95_COD_EMPRESA',
'        and c.cod_persona = u.cod_persona;',
'  exception',
'     when others then',
'        :P95_COD_CUSTODIO := null ;',
'  end ;',
''))
,p_attribute_02=>'P95_MOVCAJ_COD_MONEDA,P95_COD_EMPRESA'
,p_attribute_03=>'P95_MOVCAJ_TIP_CAMBIO_AUX,P95_MOVCAJ_DECIMALES,P0_MENSAJE_VALIDACION,P95_COD_CUSTODIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121597457028098014)
,p_event_id=>wwv_flow_imp.id(110474470672213411)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P95_COD_MONEDA_COBRO := nvl(:P95_MOVCAJ_COD_MONEDA,1);',
':P95_DETALLE_TIP_CAMBIO := nvl(:P95_MOVCAJ_TIP_CAMBIO_AUX,1);'))
,p_attribute_03=>'P95_COD_MONEDA_COBRO,P95_DETALLE_TIP_CAMBIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119708974174278408)
,p_name=>'Clear botones'
,p_event_sequence=>320
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119709096203278409)
,p_event_id=>wwv_flow_imp.id(119708974174278408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.POPUPLOV_ACTIONS'
,p_attribute_01=>'add-clear-item-button'
,p_attribute_02=>'P95_SUB_TIPO_TRANS'
,p_attribute_03=>'fa-times'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(121596846428098008)
,p_name=>'Setea montos'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_TOT_NRO_MOV_CAJ_AUX'
,p_condition_element=>'P95_TOT_NRO_MOV_CAJ_AUX'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121596956478098009)
,p_event_id=>wwv_flow_imp.id(121596846428098008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P95_MONTO := :P95_TOT_NRO_MOV_CAJ_AUX;'
,p_attribute_02=>'P95_TOT_NRO_MOV_CAJ_AUX'
,p_attribute_03=>'P95_MONTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(121637964145925065)
,p_name=>'Valida monedas'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_COD_MONEDA_COBRO'
,p_condition_element=>'P95_COD_MONEDA_COBRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121638308596925070)
,p_event_id=>wwv_flow_imp.id(121637964145925065)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P95_COD_MONEDA_COBRO IS NULL THEN',
'    RETURN;',
'  END IF;',
'',
'  DECLARE',
'    VALERTA NUMBER;',
'  BEGIN',
'    SELECT DESCRIPCION,',
'           to_char(TIPO_CAMBIO_DIA),',
'           to_char(NVL(DECIMALES, 0)),',
'           to_char(TIPO_CAMBIO_COMPRA)',
'      INTO :P95_DES_MONEDA,',
'           :P95_DETALLE_TIP_CAMBIO,',
'           :P95_DECIMALES,',
'           :P95_TIP_CAMBIO_COMPRA',
'      FROM MONEDAS',
'     WHERE COD_MONEDA = :P95_COD_MONEDA_COBRO;',
'    IF NVL(:P95_DECIMALES, 0) > 0 THEN',
'      :P95_DECIMALES := 2;',
'    END IF;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      :P95_DES_MONEDA      := NULL;',
'      :P95_DECIMALES        := 0;',
unistr('      :P0_MENSAJE_VALIDACION := ''No se encuentra c\00F3digo de moneda.'';'),
'      RETURN;',
'    WHEN OTHERS THEN',
'      :P95_DES_MONEDA      := NULL;',
'      :P95_DECIMALES        := 0;',
'      :P0_MENSAJE_VALIDACION := ''Error en la tabla de Monedas cobros: '' ||',
'                                SQLERRM;',
'      RETURN;',
'  END;'))
,p_attribute_02=>'P95_COD_MONEDA_COBRO,P95_DECIMALES'
,p_attribute_03=>'P95_DESC_MONEDA,P95_TIP_CAMBIO,P95_DECIMALES,P95_TIP_CAMBIO_COMPRA,P0_MENSAJE_VALIDACION,P95_DETALLE_TIP_CAMBIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(175478391806656521)
,p_name=>'Valida tipo_cambio_detalle'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_COD_MONEDA_COBRO'
,p_condition_element=>'P95_COD_MONEDA_COBRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175478441986656522)
,p_event_id=>wwv_flow_imp.id(175478391806656521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
':P95_MONTO :=nvl(to_number(:P95_TOT_NRO_MOV_CAJ),0) -nvl(to_number( :P95_DETALLE_TOTAL),0);',
'if :P95_COD_MONEDA_COBRO <> :P95_MOVCAJ_COD_MONEDA then',
'   ',
'    :P95_MONTO :=',
'    round( ( nvl(to_number(:P95_TOT_NRO_MOV_CAJ),0)- nvl(to_number( :P95_DETALLE_TOTAL),0) ) * ',
'    nvl( to_number(replace(:P95_MOVCAJ_TIP_CAMBIO_AUX,''.'',null)),1)/ nvl(to_number(:P95_DETALLE_TIP_CAMBIO),1), nvl(to_number(:P95_DECIMALES),0) ) ;',
'',
'',
'end if;',
'',
'if :P95_COD_MONEDA_COBRO <> :P95_MOVCAJ_COD_MONEDA then',
'   :P95_importe := round( nvl( :P95_MONTO ,0) * nvl(to_number(:P95_DETALLE_TIP_CAMBIO),1) / nvl( to_number(replace(:P95_MOVCAJ_TIP_CAMBIO_AUX,''.'',null)),1),',
'   nvl(to_number(:P95_MOVCAJ_DECIMALES),0) );',
'else',
'   :P95_importe:= nvl( :P95_MONTO,0) ;',
'end if;',
'',
' exception when others then      ',
' RAISE_APPLICATION_ERROR(-20000,:P95_MOVCAJ_TIP_CAMBIO_AUX ||''  ''||SQLERRM);',
'end;'))
,p_attribute_02=>'P95_DETALLE_TIP_CAMBIO,P95_MOVCAJ_TIP_CAMBIO_AUX,P95_DETALLE_TOTAL,P95_TOT_NRO_MOV_CAJ,P95_COD_MONEDA_COBRO,P95_DECIMALES,P95_MOVCAJ_COD_MONEDA'
,p_attribute_03=>'P95_MONTO,P95_IMPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21001384140158228)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN   ',
'    --INSERCION EN CC_MOVIMIENTOS_CAJAS',
'    begin ',
'        INSERT INTO CC_MOVIMIENTOS_CAJAS(COD_EMPRESA,',
'                                         COD_SUCURSAL,',
'                                         SER_MOV_CAJ,',
'                                         NRO_MOV_CAJ,',
'                                         FEC_MOV_CAJ,',
'                                         COD_CAJA,',
'                                         NRO_HABILITACION,',
'                                         NUM_ASIENTO,',
'                                         ANULADO,',
'                                         FEC_ANULACION,',
'                                         COD_USUARIO,',
'                                         NUM_ASIENTO_ANUL,',
'                                         TOT_NRO_MOV_CAJ,',
'                                         COD_MONEDA,',
'                                         TIPO_CAMBIO,',
'                                         TIP_CAMBIO,',
'                                         FEC_ALTA,',
'                                         COD_CLIENTE,',
'                                         VUELTO,',
'                                         TIP_MOV_CAJ,',
'                                         TIP_PLANILLA,',
'                                         NRO_PLANILLA,',
'                                         COD_CUSTODIO)',
'                                 VALUES (:P95_COD_EMPRESA,',
'                                         :P95_MOVCAJ_COD_SUCURSAL,',
'                                         :P95_MOVCAJ_SER_MOV_CAJ,',
'                                         :P95_MOVCAJ_NRO_MOV_CAJ,',
'                                         :P95_FEC_MOV_CAJ,',
'                                         :P95_COD_CAJA,',
'                                         :P95_NRO_HABILITACION,',
'                                         NULL,',
'                                         :P95_ANULADO,',
'                                         :P95_FEC_ANULACION,',
'                                         :P95_COD_USUARIO,',
'                                         NULL,',
'                                         :P95_TOT_NRO_MOV_CAJ,',
'                                         :P95_MOVCAJ_COD_MONEDA,',
'                                         NULL,',
'                                         :P95_MOVCAJ_TIP_CAMBIO,',
'                                         :P95_MOVCAJ_FEC_ALTA,',
'                                         :P95_MOVCAJ_COD_CLIENTE,',
'                                         NULL,',
'                                         :P95_MOVCAJ_TIP_MOV_CAJ,',
'                                         :P95_P_TIP_PLANILLA,',
'                                         :P95_NRO_PLANILLA,',
'                                         :P95_COD_CUSTODIO);',
'                                                exception ',
'                                WHEN OTHERS THEN',
'--        :P95_IMPRIMIR_REPORTE := ''N'';',
'        RAISE_APPLICATION_ERROR(-20000, SQLERRM||''  CC_MOVIMIENTOS_CAJAS '');',
'    ',
'    end;',
'',
'    --INSERCION DE COMPROBANTES ',
'    FOR C IN (SELECT SEQ_ID,',
'                     C001 COD_EMPRESA, ',
'                   C002 TIPO_COMPROBANTE, ',
'                   C003 SER_COMPROBANTE, ',
'                   C004 COD_MONEDA,',
'                   C005 TIP_MOV_CAJ, ',
'                   C006 SER_MOV_CAJ, ',
'                   N001 NRO_COMPROBANTE, ',
'                   N002 TIP_CAMBIO, ',
'                   N003 TOT_COMPROBANTE, ',
'                     N004 IMPORTE',
'                FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME = ''COL_COMPROBANTES'')',
'    LOOP',
'      begin ',
'        INSERT INTO CC_MOVIMIENTOS_COMP(COD_EMPRESA,',
'                                        COD_SUCURSAL,',
'                                        SER_MOV_CAJ,',
'                                        NRO_MOV_CAJ,',
'                                        TIPO_COMPROBANTE,',
'                                        SER_COMPROBANTE,',
'                                        NRO_COMPROBANTE,',
'                                        COD_MONEDA,',
'                                        TIP_CAMBIO,',
'                                        TOT_COMPROBANTE,',
'                                        TIP_MOV_CAJ)',
'                                 VALUES (C.COD_EMPRESA,',
'                                         :P95_COD_SUCURSAL,',
'                                         :P95_MOVCAJ_SER_MOV_CAJ,',
'                                         :P95_MOVCAJ_NRO_MOV_CAJ,',
'                                         C.TIPO_COMPROBANTE,',
'                                         C.SER_COMPROBANTE,',
'                                         C.NRO_COMPROBANTE,',
'                                         C.COD_MONEDA,',
'                                         C.TIP_CAMBIO,',
'                                         C.TOT_COMPROBANTE,',
'                                         :P95_MOVCAJ_TIP_MOV_CAJ);',
'                                             exception ',
'                                WHEN OTHERS THEN',
'--        :P95_IMPRIMIR_REPORTE := ''N'';',
'        RAISE_APPLICATION_ERROR(-20000, SQLERRM||''  CC_MOVIMIENTOS_COMP '');',
'    ',
'    end;',
'    END LOOP;',
'',
'    --INSERTA FORMAS DE COBRO ',
'    FOR C IN (SELECT SEQ_ID,',
'                     C001 SUB_TIPO_TRANS,',
'                     C002 DESC_TRANSACCION,',
'                 C003 TIP_DOCUMENTO,',
'                 C004 COD_PER_JURIDICA,',
'                     C005 NOM_PER_JURIDICA,',
'                 C006 NRO_TIMBRADO,',
'                 C007 NRO_VALOR,',
'                 C008 COD_MONEDA_COBRO,',
'                 C009 IND_NO_RETIENE_VALOR,',
'                 C010 CARGA_VALORES,',
'                 C011 CARGA_OTROS,',
'                     C012 fec_inicial,',
'                     c013 fec_vencimiento,',
'                 N001 TIP_CAMBIO,',
'                 N002 DECIMALES,',
'                     N003 MONTO,',
'                     N004 IMPORTE',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''COL_FORMA_COBRO'')',
'    LOOP',
'   begin',
'      ',
'        INSERT INTO CC_FORMAS_COBROS(COD_EMPRESA,',
'                                     COD_SUCURSAL,',
'                                     SER_MOV_CAJ,',
'                                     NRO_MOV_CAJ,',
'                                     NRO_SECUENCIA,',
'                                     TIPO_TRANS,',
'                                     SUB_TIPO_TRANS,',
'                                     COD_PER_JURIDICA,',
'                                     NRO_VALOR,',
'                                     COD_MONEDA_COBRO,',
'                                     TIP_CAMBIO,',
'                                     MONTO,',
'                                     FEC_EMISION,',
'                                     FEC_VENCIMIENTO,',
'                                     COD_USUARIO,',
'                                     TIP_MOV_CAJ,',
'                                     TIP_DOCUMENTO,',
'                                     SER_DOCUMENTO,',
'                                     NRO_CUENTA,',
'                                     NRO_TIMBRADO,',
'                                     IND_NO_RETIENE_VALOR)',
'                              VALUES (:P95_COD_EMPRESA,',
'                                      :P95_COD_SUCURSAL,',
'                                      :P95_MOVCAJ_SER_MOV_CAJ,',
'                                      :P95_DETALLE_NRO_MOV_CAJ,',
'                                      :P95_NRO_SECUENCIA,',
'                                      :P95_TIPO_TRANS,',
'                                      C.SUB_TIPO_TRANS,',
'                                      C.COD_PER_JURIDICA,',
'                                      C.NRO_VALOR,',
'                                      C.COD_MONEDA_COBRO,',
'                                      C.TIP_CAMBIO,',
'                                      C.MONTO,',
'                                      c.fec_inicial,',
'                                      c.fec_vencimiento,',
'                                      :P95_COD_USUARIO,',
'                                       COALESCE(:P95_DETALLE_TIP_MOV_CAJ,:P95_MOVCAJ_TIP_MOV_CAJ),',
'                                      C.TIP_DOCUMENTO,',
'                                      :P95_DETALLE_SER_MOV_CAJ,',
'                                      NULL,',
'                                      C.NRO_TIMBRADO,',
'                                      C.IND_NO_RETIENE_VALOR);',
'                                           exception ',
'                                WHEN OTHERS THEN',
'--        :P95_IMPRIMIR_REPORTE := ''N'';',
'        RAISE_APPLICATION_ERROR(-20000, SQLERRM||''  CC_FORMAS_COBROS '');',
'    ',
'    end;',
'    begin',
'    inv.ccmovcaj.carga_planilla(pi_cod_empresa        =>  :P_COD_EMPRESA,',
'                               pi_cod_custodio        =>  :P95_COD_CUSTODIO,',
'                               pi_cod_custodio_ent    => :P95_COD_CUSTODIO_ENT,',
'                               pi_tot_nro_mov_caj     =>  TO_NUMBER(REPLACE(:P95_TOT_NRO_MOV_CAJ_AUX, ''.'')),',
'                               pi_p_nro_comprobante   =>  TO_NUMBER(REPLACE(:P95_NRO_COMPRO, ''.'')),',
'                               pi_movcaj_cod_moneda   => :P95_MOVCAJ_COD_MONEDA,',
'                               pi_detalle_ser_mov_caj => :P95_MOVCAJ_SER_MOV_CAJ,',
'                               pi_movcaj_tip_mov_caj  => :P95_MOVCAJ_TIP_MOV_CAJ,',
'                               pi_movcaj_ser_mov_caj  =>  :P95_MOVCAJ_SER_MOV_CAJ,',
'                               pi_movcaj_nro_mov_caj  => TO_NUMBER(REPLACE(:P95_MOVCAJ_NRO_MOV_CAJ, ''.'')),',
'                               pi_movcaj_cod_cliente  =>  :P95_MOVCAJ_COD_CLIENTE,',
'                               po_nro_planilla        =>  :P95_NRO_PLANILLA); ',
'                               exception ',
'                                WHEN OTHERS THEN',
'        :P95_IMPRIMIR_REPORTE := ''N'';',
'        RAISE_APPLICATION_ERROR(-20000, SQLERRM||''  inv.ccmovcaj.carga_planilla '');',
'    ',
'    end;',
'    END LOOP;',
'    :P0_MENSAJE := ''Comprobante de Pago generado Nro. ''|| :P95_MOVCAJ_NRO_MOV_CAJ;',
'    apex_collection.create_or_truncate_collection(p_collection_name => ''DETALLE_COMPROBANTE'');',
'    ',
'    :P95_IMPRIMIR_REPORTE := ''S'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :P95_IMPRIMIR_REPORTE := ''N'';',
'        RAISE_APPLICATION_ERROR(-20000, SQLERRM|| ''pr_guardar'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Hubo un problema con el guardado.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'BT_GUARDAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
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
 p_id=>wwv_flow_imp.id(878430967487603805)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_elmina_mov_caj'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN   ',
'    --borra EN CC_MOVIMIENTOS_CAJAS',
'    begin ',
'       delete  CC_MOVIMIENTOS_CAJAS',
'       where cod_empresa=:P_COD_EMPRESA',
'       and SER_MOV_CAJ=:P95_MOVCAJ_SER_MOV_CAJ',
'       and nro_mov_caj =:P95_MOVCAJ_NRO_MOV_CAJ;',
'       ',
'                                                exception ',
'                                WHEN OTHERS THEN',
'--        :P95_IMPRIMIR_REPORTE := ''N'';',
'        RAISE_APPLICATION_ERROR(-20000, SQLERRM||''  CC_MOVIMIENTOS_CAJAS '');',
'    ',
'    end;',
'',
'        ',
'      begin ',
'      ',
'       delete  CC_MOVIMIENTOS_COMP',
'       where cod_empresa=:P_COD_EMPRESA',
'       and SER_MOV_CAJ=:P95_MOVCAJ_SER_MOV_CAJ',
'       and nro_mov_caj =:P95_MOVCAJ_NRO_MOV_CAJ;',
'       ',
'                                                exception ',
'                                WHEN OTHERS THEN',
'',
'        RAISE_APPLICATION_ERROR(-20000, SQLERRM||''  CC_MOVIMIENTOS_COMP '');',
'    ',
'    end;',
'                            ',
'     ',
'   begin',
'      ',
'      ',
'           delete  CC_FORMAS_COBROS',
'       where cod_empresa=:P_COD_EMPRESA',
'       and SER_MOV_CAJ=:P95_MOVCAJ_SER_MOV_CAJ',
'       and nro_mov_caj =:P95_MOVCAJ_NRO_MOV_CAJ;',
'       ',
'                                           exception ',
'                                WHEN OTHERS THEN',
'',
'        RAISE_APPLICATION_ERROR(-20000, SQLERRM||''  CC_FORMAS_COBROS '');',
'    ',
'    end;',
'     ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       ',
'        RAISE_APPLICATION_ERROR(-20000, SQLERRM|| ''pr_elimina_mov_caj'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Hubo un problema con el borrado.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(878430857703603804)
,p_process_success_message=>'Borrado Exitosamente'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(149026499230268843)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Llama a facturacion electronica'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    p_json long;',
'    p_datos clob;',
'BEGIN',
'IF :P95_IMPRIMIR_REPORTE = ''S'' THEN',
'',
' begin',
'              insert into vt_factura_electronica_log',
'                (COD_EMPRESA,',
'                 TIP_COMPROBANTE,',
'                 SER_COMPROBANTE,',
'                 NRO_COMPROBANTE,',
'                 OBJETO_GENERADO,',
'                 RESPUESTA_OBJETO,',
'                 FECHA_GENERACION,',
'                 IND_PROCESADO,',
'                 FECHA_REPROCESO,',
'                 COD_USUARIO)',
'              values',
'                (:P95_COD_EMPRESA,--''1'',',
'                 :P95_TIP_COMPRO,',
'                 :P95_SER_COMP,',
'                 :P95_NRO_COMPRO,',
'                 p_json,',
'                 p_datos,',
'                 SYSDATE,',
'                 ''N'',',
'                 NULL,',
'                 USER);',
'             exception',
'              when others then',
'                null;',
'            end;',
'            commit;',
'BEGIN',
'    pkg_factura_electronica.sp_factura_electronica_metodos(P_ENTIDAD => :P95_COD_EMPRESA,--null,',
'                                                             p_codigo  => :P95_TIP_COMPRO,',
'                                                             P_CODIGO1 => :P95_SER_COMP,',
'                                                             P_CODIGO2 => :P95_NRO_COMPRO,',
'                                                             P_CODIGO3 => null,',
'                                                             P_CODIGO4 => null,',
'                                                             P_CODIGO5 => null,',
'                                                             p_codigo6 => null,',
'                                                             p_json    => p_json,',
'                                                             p_datos   => p_datos);',
'EXCEPTION WHEN OTHERS THEN',
'NULL;',
'END;                                                             ',
'',
'',
'            begin',
'              pkg_factura_electronica.sp_obtiene_cdc(p_entidad => :P95_COD_EMPRESA,--''FACTURA'',',
'                                                                  p_codigo  => :P95_TIP_COMPRO,',
'                                                             P_CODIGO1 => :P95_SER_COMP,',
'                                                             P_CODIGO2 => :P95_NRO_COMPRO,',
'                                                                 p_codigo3 => NULL,',
'                                                                 p_codigo4 => NULL,',
'                                                                 p_codigo5 => NULL,',
'                                                                 p_codigo6 => NULL,',
'                                                                 p_json    => p_json,',
'                                                                 p_datos   => p_datos);',
'                                                                 EXCEPTION WHEN OTHERS THEN NULL;',
'                                                                 END;',
'',
'',
'',
'         ',
'          ',
'END IF;',
'EXCEPTION',
'        WHEN OTHERS THEN',
'            RAISE_APPLICATION_ERROR(-20001, SQLERRM);',
'END;',
'                                                      ',
'',
'                                                      ',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(202410912703397806)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'cerrar_dialogo'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21001115448158226)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16689361806277225)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_COMPROBANTES'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_FORMA_COBRO'');',
':P95_ERROR := 2;',
':P95_P_NRO_COMPROBANTE := 0;',
'',
'IF APEX_COLLECTION.COLLECTION_MEMBER_COUNT(p_collection_name => ''COL_PARAMETROS_VTFAPECO'') > 0 THEN',
'    SELECT C001 TIPO_COMPROBANTE,',
'           C005 SER_COMPROBANTE,',
'           C006 FEC_COMPROBANTE,',
'           C007 COD_CLIENTE,',
'           C008 COD_SUCURSAL,',
'           C009 COD_CUSTODIO,',
'           N002 NRO_COMPROBANTE',
'      INTO :P95_P_TIPO_COMPROBANTE,',
'           :P95_P_SER_COMPROBANTE,',
'           :P95_P_FECHA,',
'           :P95_P_COD_CLIENTE,',
'           :P95_P_COD_SUCURSAL,',
'           :P95_P_COD_CUSTODIO,',
'           :P95_P_NRO_COMPROBANTE',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COL_PARAMETROS_VTFAPECO'';',
'ELSE',
'    :P95_P_TIPO_COMPROBANTE := NULL;',
'    :P95_P_SER_COMPROBANTE  := NULL;',
'    :P95_P_FECHA            := NULL;',
'    :P95_P_COD_CLIENTE      := NULL;',
'    :P95_P_COD_SUCURSAL     := NULL;',
'    :P95_P_COD_CUSTODIO     := NULL;',
'    :P95_P_NRO_COMPROBANTE  := NULL;   ',
'END IF;',
'',
'IF APEX_COLLECTION.COLLECTION_MEMBER_COUNT( p_collection_name => ''COL_PARAMETROS_VTFACTUR'') > 0 THEN',
'    SELECT  C001 TIP_MOV_CAJ,',
'		    C002 SER_MOV_CAJ,',
'		    C003 NRO_MOV_CAJ,',
'		    C004 TIP_COMPROBANTE,',
'		    C005 COD_SUCURSAL,   ',
'		    C006 SER_COMPROBANTE,',
'		    C007 NRO_COMPROBANTE,',
'		    C008 COD_CLIENTE,',
'		    C009 COD_CUSTODIO,',
'		    C010 COD_CUSTODIO_ENT,',
'		    C011 IND_GENERA_MD,',
'		    C012 FECHA,',
'		    C013 SER_COMPROBANTE_REF,',
'		    C014 NRO_COMPROBANTE_REF,',
'        C015 COD_MONEDA',
'      INTO  :P95_P_TIP_MOV_CAJ,',
'			:P95_P_SER_MOV_CAJ,',
'			:P95_P_NRO_MOV_CAJ,',
'			:P95_P_TIPO_COMPROBANTE,',
'			:P95_P_COD_SUCURSAL,',
'			:P95_P_SER_COMPROBANTE,',
'			:P95_P_NRO_COMPROBANTE,',
'			:P95_P_COD_CLIENTE,',
'			:P95_P_COD_CUSTODIO,',
'			:P95_P_COD_CUSTODIO_ENT,',
'			:P95_P_IND_GENERA_MD,',
'			:P95_P_FECHA,',
'			:P95_P_SER_ORT,',
'			:P95_P_NRO_ORT,',
'      :P95_MOVCAJ_COD_MONEDA	  ',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COL_PARAMETROS_VTFACTUR''',
'     and rownum=1;',
'',
'ELSIF APEX_COLLECTION.COLLECTION_MEMBER_COUNT( p_collection_name => ''COL_PARAMETROS_CCRECIBO'') > 0 THEN',
'    SELECT  C001 TIP_MOV_CAJ,',
'		    C002 SER_MOV_CAJ,',
'		    C003 NRO_MOV_CAJ,',
'		    C004 TIP_COMPROBANTE,',
'		    C005 COD_SUCURSAL,   ',
'		    C006 SER_COMPROBANTE,',
'		    C007 NRO_COMPROBANTE,',
'		    C008 COD_CLIENTE,',
'		    C009 COD_CUSTODIO,',
'		    C010 COD_CUSTODIO_ENT,',
'		    C011 IND_GENERA_MD,',
'		    C012 FECHA,',
'		    C013 SER_COMPROBANTE_REF,',
'		    C014 NRO_COMPROBANTE_REF,',
'        C015 COD_MONEDA',
'      INTO  :P95_P_TIP_MOV_CAJ,',
'			:P95_P_SER_MOV_CAJ,',
'			:P95_P_NRO_MOV_CAJ,',
'			:P95_P_TIPO_COMPROBANTE,',
'			:P95_P_COD_SUCURSAL,',
'			:P95_P_SER_COMPROBANTE,',
'			:P95_P_NRO_COMPROBANTE,',
'			:P95_P_COD_CLIENTE,',
'			:P95_P_COD_CUSTODIO,',
'			:P95_P_COD_CUSTODIO_ENT,',
'			:P95_P_IND_GENERA_MD,',
'			:P95_P_FECHA,',
'			:P95_P_SER_ORT,',
'			:P95_P_NRO_ORT,',
'      :P95_MOVCAJ_COD_MONEDA	  ',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COL_PARAMETROS_CCRECIBO''',
'     and rownum=1;     ',
'ELSE',
'	:P95_P_TIP_MOV_CAJ      := NULL;',
'	:P95_P_SER_MOV_CAJ      := NULL;',
'	:P95_P_NRO_MOV_CAJ      := NULL;',
'	:P95_P_TIPO_COMPROBANTE := NULL;',
'	:P95_P_COD_SUCURSAL     := NULL;',
'	:P95_P_SER_COMPROBANTE  := NULL;',
'	:P95_P_NRO_COMPROBANTE  := NULL;',
'	:P95_P_COD_CLIENTE      := NULL;',
'	:P95_P_COD_CUSTODIO     := NULL;',
'	:P95_P_COD_CUSTODIO_ENT := NULL;',
'	:P95_P_IND_GENERA_MD    := NULL;',
'	:P95_P_FECHA            := NULL;',
'	:P95_P_SER_ORT          := NULL;',
'	:P95_P_NRO_ORT          := NULL;',
'END IF;	',
' ',
'',
'--INICIA_GLOBALES',
':P95_COD_USUARIO  := NVL(:P_COD_USUARIO,:APP_USER);',
':P95_COD_EMPRESA  := NVL(:P_COD_EMPRESA,''1'');',
':P95_NOM_EMPRESA  := :P_NOM_EMPRESA;',
':P95_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
':P95_NOM_SUCURSAL := :P_NOM_SUCURSAL;',
':P95_COD_MODULO   := :P_COD_MODULO;',
'',
'--INICIA_LOCALES',
':P95_COD_FORMA := ''CCMOVCAJ'';',
':P95_DERECHOS := UTILS.DERECHO_FORMA(:P95_COD_USUARIO,',
'                                     :P95_COD_FORMA); ',
'',
':P95_COD_MODULO := ''CC'';',
'',
'LIBRERIA_FORMAS.RUTINA_INICIAL(PI_COD_MODULO => :P20_COD_MODULO,',
'                               PI_COD_FORMA  => :P20_COD_FORMA,',
'                               PI_NOM_MODULO => :P20_NOM_MODULO,',
'                               PI_NOM_FORMA  => :P20_NOM_FORMA,',
'            				   PO_NOM_MODULO => :P20_NOM_MODULO,',
'            				   PO_NOM_FORMA  => :P20_NOM_FORMA);',
'',
':P95_TIPO_TRANS_VBLE   := BS_BUSCA_PARAMETRO(:P95_COD_MODULO, ''VALOR_COBRO'');',
':P95_EFECTIVO_COBRO    := BS_BUSCA_PARAMETRO(:P95_COD_MODULO, ''EFECTIVO_COBRO'');',
':P95_CHEQUE_COBRO      := BS_BUSCA_PARAMETRO(:P95_COD_MODULO, ''CHEQUE_COBRO'');',
':P95_TIPO_EXTRACCION   := BS_BUSCA_PARAMETRO(:P95_COD_MODULO, ''TIPO_EXTRACCION'');',
':P95_CHEQUE_A_FECHA    := BS_BUSCA_PARAMETRO(:P95_COD_MODULO, ''CHEQUE_A_FECHA'');',
':P95_TARJETA_COBRO     := BS_BUSCA_PARAMETRO(:P95_COD_MODULO, ''TARJETA_COBRO'');',
':P95_SECTOR_BANCARIO   := BS_BUSCA_PARAMETRO(:P95_COD_MODULO, ''SECTOR_BANCARIO'');',
':P95_SECTOR_TARJETAS   := BS_BUSCA_PARAMETRO(:P95_COD_MODULO, ''SECTOR_TARJETAS'');',
':P95_NOTA_CREDITO      := BS_BUSCA_PARAMETRO(:P95_COD_MODULO, ''TIPO_NOTACRE'');',
':P95_COD_MONEDA_BASE   := BS_BUSCA_PARAMETRO(:P95_COD_MODULO, ''COD_MONEDA_BASE'');',
':P95_TIP_DOCUMENTO_CHE := BS_BUSCA_PARAMETRO(:P95_COD_MODULO, ''TIP_DOCUMENTO_CHE'');',
':P95_VER_FECHA_CHEQUE  := BS_BUSCA_PARAMETRO(''CC'', ''VER_FECHA_CHEQUE'');',
'',
'IF :P95_P_TIPO_COMPROBANTE = ''TKT'' THEN',
'    :P95_TIP_CONTADO := BS_BUSCA_PARAMETRO(''VT'', ''TIPO_TICKET'');',
'ELSE',
'    :P95_TIP_CONTADO := BS_BUSCA_PARAMETRO(''VT'', ''TIPO_CONTADO'');',
'END IF;',
'',
':P95_TIP_MOV_CAJ_VBLE := BS_BUSCA_PARAMETRO(''CC'', ''TIPO_MOV_CAJA'');',
'',
':P95_CAMBIA_FECHA := BUSCA_PERMISO(:P95_COD_EMPRESA,',
'                                   :P95_COD_FORMA,',
'                                   :P95_COD_USUARIO,',
'                                   ''CAMBIA_FECHA'');',
'',
':P95_MODIFICA_FECHA_ANT := BUSCA_PERMISO(:P95_COD_EMPRESA,',
'                                         :P95_COD_FORMA,',
'                                         :P95_COD_USUARIO,',
'                                         ''MODIFICA FECHA ANTERIOR'');   ',
'',
'BEGIN',
'   SELECT COD_CAJA, ',
'		  NRO_HABILITACION',
'     INTO :P95_COD_CAJA, ',
'		  :P95_NRO_HABILITACION',
'     FROM CC_HABILITACIONES',
'    WHERE COD_EMPRESA = :P95_COD_EMPRESA',
'      AND COD_SUCURSAL = :P95_COD_SUCURSAL',
'      AND COD_USUARIO = :P95_COD_USUARIO',
'      AND FEC_CIERRE IS NULL;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      RAISE_APPLICATION_ERROR(-20000,''El usuario '' || :P95_COD_USUARIO ||',
'                '' no posee ninguna caja habilitada.'' || CHR(13) ||',
unistr('                ''No podr\00E1 grabar ning\00FAn registro hasta que tenga habilitada su caja.'');'),
'      --RAISE FORM_TRIGGER_FAILURE;',
'    WHEN OTHERS THEN',
'      RAISE_APPLICATION_ERROR(-20000,''Error en la tabla de habilitaciones de cajas''||SQLERRM);',
'  END;',
'',
'BEGIN',
'/*',
'    SELECT COD_CUSTODIO',
'      INTO :P95_COD_CUSTODIO_VBLE',
'      FROM USUARIOS',
'     WHERE COD_EMPRESA = :P95_COD_EMPRESA',
'       AND COD_USUARIO = :P95_COD_USUARIO;',
'*/',
'',
'     select c.cod_custodio',
'        into :P95_COD_CUSTODIO_VBLE',
'        from usuarios u, cc_custodios c',
'        where cod_usuario = :P95_COD_USUARIO ',
'        and c.cod_empresa = :P95_COD_EMPRESA',
'        and c.cod_persona = u.cod_persona;',
'     ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :P95_COD_CUSTODIO_VBLE := NULL;',
'END;',
'',
':P95_MODIFICA_CAMBIO := NVL(BUSCA_PERMISO (:P95_COD_EMPRESA,',
'                                       ''CCRECIBO'',',
'                                       :P95_COD_USUARIO,',
'                                       ''MODIFICA_CAMBIO''),0);',
'  ',
'   if :P95_P_NRO_MOV_CAJ is not null and APEX_COLLECTION.COLLECTION_MEMBER_COUNT(p_collection_name => ''COL_PARAMETROS_VTFAPECO'') > 0  then ',
'  CCMOVCAJ.RECUPERAR_PARAMETROS(PO_TIPO_COMPROBANTE => :P95_P_TIPO_COMPROBANTE,',
'							  PO_SER_COMPROBANTE  => :P95_P_SER_COMPROBANTE,',
'							  PO_FECHA 		      => :P95_P_FECHA,',
'							  PO_COD_CLIENTE 	  => :P95_P_COD_CLIENTE,',
'							  PO_COD_SUCURSAL 	  => :P95_P_COD_SUCURSAL,',
'							  PO_COD_CUSTODIO 	  => :P95_P_COD_CUSTODIO,',
'							  PO_NRO_COMPROBANTE  => :P95_P_NRO_COMPROBANTE);',
'   end if;   ',
'    if :P95_P_NRO_MOV_CAJ is not null and APEX_COLLECTION.COLLECTION_MEMBER_COUNT(p_collection_name => ''COL_PARAMETROS_CCRECIBO'') > 0  then ',
'  CCMOVCAJ.RECUPERAR_PARAMETROS(PO_TIPO_COMPROBANTE => :P95_P_TIPO_COMPROBANTE,',
'							  PO_SER_COMPROBANTE  => :P95_P_SER_COMPROBANTE,',
'							  PO_FECHA 		      => :P95_P_FECHA,',
'							  PO_COD_CLIENTE 	  => :P95_P_COD_CLIENTE,',
'							  PO_COD_SUCURSAL 	  => :P95_P_COD_SUCURSAL,',
'							  PO_COD_CUSTODIO 	  => :P95_P_COD_CUSTODIO,',
'							  PO_NRO_COMPROBANTE  => :P95_P_NRO_COMPROBANTE);',
'   end if;   ',
' ',
'--WHEN-NEW-FORM-INSTANCE',
'IF :P95_P_COD_USUARIO IS NOT NULL THEN',
'    :P95_MOVCAJ_COD_USUARIO:= :P95_P_COD_USUARIO;',
'END IF;    ',
'',
'IF :P95_P_TIPO_COMPROBANTE IS NOT NULL THEN',
'    DECLARE ',
'        VSENIA NUMBER(18,3) ;',
'       	VVENDEDOR VARCHAR2(100);',
'       	VSECTOR VARCHAR2(1000);',
'    BEGIN',
'        :P95_MOVCAJ_NRO_MOV_CAJ := :P95_P_NRO_MOV_CAJ;',
'        :P95_TIPO_COMPROBANTE := :P95_P_TIPO_COMPROBANTE;',
'        :P95_SER_COMPROBANTE  := :P95_P_SER_COMPROBANTE;',
'        :P95_NRO_COMPROBANTE  := :P95_P_NRO_COMPROBANTE;',
'        :P95_MOVCAJ_COD_CLIENTE  := :P95_P_COD_CLIENTE;',
'        :P95_FEC_MOV_CAJ  := nvl(:P95_P_FECHA,SYSDATE);',
'        :P95_MOVCAJ_COD_SUCURSAL := :P95_P_COD_SUCURSAL;',
'		',
'        IF :P95_MOVCAJ_COD_MONEDA IS NOT NULL THEN',
'           BEGIN',
'             SELECT NVL(DECIMALES,0)',
'               INTO :P95_MOVCAJ_DECIMALES',
'               FROM MONEDAS',
'              WHERE COD_MONEDA = :P95_MOVCAJ_COD_MONEDA ;',
'           EXCEPTION',
'             WHEN OTHERS THEN :P95_MOVCAJ_DECIMALES :=  0;',
'           END ;',
'        END IF ;',
'',
'    	 ',
'	',
'        BEGIN',
'    		SELECT COD_VENDEDOR, V.COD_SECTOR',
'    		  INTO VVENDEDOR,VSECTOR',
'    		  FROM VT_COMPROBANTES_CABECERA V ',
'    		 WHERE V.COD_EMPRESA = :P95_COD_EMPRESA ',
'    		   AND V.TIP_COMPROBANTE = :P95_P_TIPO_COMPROBANTE',
'    		   AND V.SER_COMPROBANTE = :P95_P_SER_COMPROBANTE',
'    		   AND V.NRO_COMPROBANTE = :P95_P_NRO_COMPROBANTE;',
'        EXCEPTION ',
'            WHEN OTHERS THEN ',
'                NULL ;',
'        END;',
'',
'    ',
'	END ;',
'ELSE',
'	IF :P95_P_NRO_PLANILLA IS NOT NULL THEN',
'		IF :P95_P_TIP_PLANILLA = ''REP'' THEN',
'			INV.CCMOVCAJ.PROCESA_REPARTO(PI_COD_EMPRESA 		  => :P95_COD_EMPRESA,',
'        							     PI_P_NRO_PLANILLA 	  => :P95_NRO_PLANILLA,',
'        							     PI_P_COD_CLIENTE      => :P95_P_COD_CLIENTE,',
'        							     PI_NRO_COMPROBANTE    => :P95_NRO_COMPROBANTE,',
'        							     PI_P_COD_SUCURSAL     => :P95_P_COD_SUCURSAL,',
'        							     PO_TIPO_COMPROBANTE   => :P95_TIPO_COMPROBANTE,',
'        							     PO_SER_COMPROBANTE    => :P95_SER_COMPROBANTE,',
'        							     PO_NRO_COMPROBANTE    => :P95_NRO_COMPROBANTE,',
'        							     PO_MOVCAJ_COD_CLIENTE => :P95_MOVCAJ_COD_CLIENTE,',
'        							     PO_FEC_MOV_CAJ 		  => :P95_FEC_MOV_CAJ,',
'        							     PO_COD_SUCURSAL 	  => :P95_COD_SUCURSAL);',
'		ELSIF :P95_P_TIP_PLANILLA = ''PLC'' THEN',
'			NULL ;',
'		END IF ;',
'	END IF ;',
'END IF;',
'',
'--WHEN-CREATE-RECORD B_DETALLE',
':P95_NRO_SECUENCIA 		  := NVL(:P95_MOVCAJ_NRO_SECUENCIA,0) + 1;',
':P95_MOVCAJ_NRO_SECUENCIA := :P95_NRO_SECUENCIA;',
':P95_TIPO_TRANS 		  := :P95_TIPO_TRANS_VBLE;',
'--:P95_SUB_TIPO_TRANS 	  := :P95_EFECTIVO_COBRO;',
':P95_COD_MONEDA_COBRO 	  := :P95_MOVCAJ_COD_MONEDA;',
':P95_IND_NO_RETIENE_VALOR := ''N'';',
'',
':P95_TOT_NRO_MOV_CAJ := 0;',
':P95_DETALLE_TOTAL  := 0;',
'',
'--WHEN-CREATE-RECORD MOVCAJ',
':P95_MOVCAJ_COD_EMPRESA := :P95_COD_EMPRESA;',
':P95_MOVCAJ_COD_SUCURSAL := :P95_COD_SUCURSAL;',
':P95_MOVCAJ_COD_USUARIO := :P95_COD_USUARIO;',
':P95_MOVCAJ_VUELTO := 0;',
':P95_GENERA_MD := ''S'';',
'IF :P95_MOVCAJ_COD_SUCURSAL IN (''190'',''65'',''248'') OR :APP_USER IN (''CAJAST2'',''CAJAST3'',''CAJAST4'',''CAJAST5'') THEN',
'    :P95_COD_CUSTODIO_ENT := ''193'';',
'    BEGIN',
'        SELECT NRO_PLANILLA',
'          INTO :P95_NRO_PLANILLA ',
'          FROM CC_PLAN_CUSTODIOS_CAB',
'         WHERE COD_EMPRESA = :P95_COD_EMPRESA',
'           AND COD_CUSTODIO_SAL = :P95_COD_CUSTODIO',
'           AND COD_CUSTODIO_ENT = :P95_COD_CUSTODIO_ENT',
'           AND TRUNC(FEC_PLANILLA) = TRUNC(SYSDATE)',
'           AND NVL(IND_RECEPCION,''N'') = ''N'' ',
'           AND NVL(IND_GENERADO_POR,''N'') = ''C'' ;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            :P95_NRO_PLANILLA := NULL ;',
'    END ;',
'ELSE',
'    :P95_COD_CUSTODIO_ENT := ''166'';',
'END IF;',
'',
':P95_MOVCAJ_TIP_MOV_CAJ := ''CAJ'';',
'',
'IF :P95_SER_COMP IS NOT NULL THEN ',
':P95_MOVCAJ_SER_MOV_CAJ := :P95_SER_COMP;',
'ELSE',
':P95_MOVCAJ_SER_MOV_CAJ := ''A'';',
'END IF;',
'',
'',
':P95_FEC_MOV_CAJ := TRAE_FECHA( :P95_COD_EMPRESA,''CC'');',
':P95_COD_CUSTODIO := :P95_COD_CUSTODIO_VBLE ;',
'',
'IF :P95_P_TIPO_COMPROBANTE IS NOT NULL THEN',
'    :P95_MOVCAJ_TIP_MOV_CAJ := :P95_TIP_MOV_CAJ_VBLE;',
'    :P95_MOVCAJ_SER_MOV_CAJ := :P95_P_SER_COMPROBANTE;',
'    :P95_TIPO_COMPROBANTE := :P95_P_TIPO_COMPROBANTE;',
'    :P95_SER_COMPROBANTE := :P95_P_SER_COMPROBANTE;',
'    :P95_NRO_COMPROBANTE := :P95_P_NRO_COMPROBANTE;',
'    :P95_MOVCAJ_COD_SUCURSAL := :P95_P_COD_SUCURSAL;',
':P95_FEC_MOV_CAJ := nvl(:p_fecha,SYSDATE);',
'    :P95_MOVCAJ_COD_CLIENTE := :P95_P_COD_CLIENTE;',
'   ',
'    ',
'    IF :P95_P_COD_CUSTODIO IS NOT NULL THEN  ',
'        :P95_COD_CUSTODIO_ENT := :P95_P_COD_CUSTODIO_ENT;',
'        :P95_GENERA_MD := :P95_P_IND_GENERA_MD;',
'        :P95_GENERA_MD := ''S'';',
'        :P95_COD_CUSTODIO_ENT := ''166'';',
'    END IF;',
'END IF;',
'',
'DECLARE',
'   VALERTA NUMBER ;',
'BEGIN',
'    SELECT DESCRIPCION',
'      INTO :P95_DESC_CUSTODIO',
'      FROM CC_CUSTODIOS C',
'     WHERE C.COD_EMPRESA = :P95_COD_EMPRESA  ',
'       AND C.COD_CUSTODIO = :P95_COD_CUSTODIO',
'       AND ( C.COD_CUSTODIO = :P95_COD_CUSTODIO_VBLE OR C.COD_CUSTODIO IN ( SELECT COD_CUSTODIO ',
'                                                                              FROM USUARIOS_CUSTODIOS ',
'                                                                             WHERE COD_EMPRESA = :P95_COD_EMPRESA',
'                                                                               AND COD_USUARIO = :P95_COD_USUARIO ));',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :P95_DESC_CUSTODIO := NULL ;',
'    WHEN OTHERS THEN',
'        :P95_DESC_CUSTODIO := NULL ;',
'END ;',
'IF :P95_MOVCAJ_COD_MONEDA IS NOT NULL THEN',
'    BEGIN',
'        SELECT NVL(DECIMALES,0)',
'          INTO :P95_MOVCAJ_DECIMALES',
'          FROM MONEDAS',
'         WHERE COD_MONEDA = :P95_MOVCAJ_COD_MONEDA ;',
'    EXCEPTION',
'        WHEN OTHERS THEN :P95_MOVCAJ_DECIMALES := 0;',
'    END ;',
'END IF ;',
'',
'IF :P95_MOVCAJ_COD_SUCURSAL IN (''190'',''65'',''248'') OR :APP_USER IN (''CAJAST1'',''CAJAST2'',''CAJAST3'',''CAJAST4'',''CAJAST5'',''INV'') THEN',
'	:P95_COD_CUSTODIO_ENT := ''293'';',
'END IF;		',
'',
':P95_TIPO_COMPROBANTE :=:P95_P_TIPO_COMPROBANTE;--  :P95_TIP_COMPRO;',
'',
'  if :P95_P_NRO_MOV_CAJ is not null then',
'  SELECT c.fec_mov_caj,c.cod_usuario',
'   INTO :P95_FEC_MOV_CAJ,:P95_MOVCAJ_COD_USUARIO',
'                     FROM   cc_movimientos_cajas c ',
'                    WHERE c.cod_empresa =   :p_cod_empresa',
'                    AND C.tip_mov_caj=:P95_P_TIP_MOV_CAJ',
'                      and C.ser_mov_caj=:P95_P_SER_MOV_CAJ',
'                      and c.nro_mov_caj=:P95_P_NRO_MOV_CAJ;',
'  end if;',
'',
' out_out(''P95_MOVCAJ_COD_CLIENTE ''||:P95_MOVCAJ_COD_CLIENTE ||'' P95_MOVCAJ_COD_CLIENTE ''||:P95_MOVCAJ_COD_CLIENTE);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
