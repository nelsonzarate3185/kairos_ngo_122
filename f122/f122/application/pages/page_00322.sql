prompt --application/pages/page_00322
begin
--   Manifest
--     PAGE: 00322
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
 p_id=>322
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Carga de Pedidos Repuesto detallado - VTREPDET'
,p_alias=>'VTREPDET-A-MIGRAR'
,p_step_title=>'Carga de Pedidos Repuesto detallado'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function verificado(cb) { ',
'',
'    var videseq= cb.value;',
'    var vchk =''N'';',
'    if (cb.checked == true){     ',
'            vchk =''S'';',
'    } else {',
'            vchk =''N'';',
'    }',
'',
' 	apex.server.process("VERIFICADO",',
'		{',
'           x01: videseq,',
'           x02: vchk',
'        },',
'		{',
'            success: function(pData){ ',
'                if (pData.success === true){',
'                     ',
'                       $(''#detalle'').trigger(''apexrefresh'');    ',
'                    /*apex.region(''detalle'').refresh();',
'                    alert(videseq+'' ''+vchk);*/',
'                }else{',
'                    apex.message.clearErrors();',
'                    apex.message.showErrors({',
'                        type: "errors",',
'                        location: "page",',
'                        message: "No se encontraron datos",',
'                        unsafe: false',
'                    });',
'                }',
'            }',
'		}',
'	);',
'}',
'',
'function seleccionar_articulo(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P322_DIR_ACCION'',''AGREGAR'');',
'      $s(''P322_AUX_COD_ARTICULO_2'', cb.value,false);',
'  } else {',
'      $s(''P322_DIR_ACCION'',''QUITAR'');',
'      $s(''P322_AUX_COD_ARTICULO_2'', cb.value,false);',
'  }',
'}',
'',
'',
'',
'/*P322_ID_SEQ_ANULA*/ ',
'function anula(cb){',
'        if (cb.checked == true){ ',
'            $s(''P322_ID_SEQ_ANULA'', cb.value,false);',
'        } else { ',
'                $(''#detalle'').trigger(''apexrefresh'');   ',
'        }',
'',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.btn {',
'  background-color: white;',
'  color: #003a85;',
'  border: 1px solid #003a85; ',
'  border-radius: 4px;',
'  font-weight: 500;',
'}',
'',
'.btn:hover {',
'    background-color:#003a85;',
'    color: white;',
'    font-weight: 500;',
'}',
'',
'.btn{',
'    margin-top: 15px;',
'}',
'',
'.u-checkbox {',
'    margin-top: 25px !important;',
'}',
'',
'#btn_cobro {',
'    display: none !important;',
'}',
'',
'#P99_MENSAJE_PAGARE {',
'    background-color: white;',
'    color: red;',
'    font-weight: bold;',
'}',
'',
' .t-Body-contentInner{    background: #c0d0e6!important;}',
' ',
'',
'.t-Form-label, .t-Form-itemText--pre{',
'    color:  #003A85 !important;     ',
'    font-weight: bold;',
'    } ',
'',
'',
'',
'    .a-IRR-toolbar, .a-IRR-content',
'    {    background: #d0e0f783!important;}',
'',
'',
'.t-Report-colHead, .a-IRR-headerLink , .u-Report-sort, .u-Report-sortHeading{',
'      background: #003a85!important;',
'       color: yellow !important;',
' }',
' ',
'  .tabla_color   td.t-Report-cell   {',
'  color: yellow  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #003a85  !important;',
'  color: yellow  !important;',
'  border-color: #487ab8;',
'}',
'',
' .a-IRR-header{',
'      background-color: #003a85  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #003a85  !important;',
'	  color: yellow !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20241030111146'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78229020945554112)
,p_plug_name=>unistr('PAR\00C1METROS')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80147582317643723)
,p_plug_name=>'Carga de Pedidos Repuesto detallado'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80147670143643724)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(80147582317643723)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(179990383013952725)
,p_plug_name=>'latder'
,p_parent_plug_id=>wwv_flow_imp.id(80147670143643724)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>370
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(179990480452952726)
,p_plug_name=>'Latiz'
,p_parent_plug_id=>wwv_flow_imp.id(80147670143643724)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>230
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80147848680643726)
,p_plug_name=>'DETALLE2'
,p_parent_plug_id=>wwv_flow_imp.id(80147582317643723)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 ROW_ID,',
'       NULL CAREO,',
'	   C002 COD_EMPRESA,',
'	   C003 TIP_COMPROBANTE,',
'	   C004 SER_COMPROBANTE,',
'	   C005 NRO_COMPROBANTE,',
'	   C006 COD_ARTICULO,',
'	   C007 V_DESC_ARTICULO,',
'	   C008 DESCRIPCION,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => seq_id,',
'        				    p_attributes  => (case C009',
'        										when ''S'' then ''checked ''',
'        										else null',
'        									  end ) ||''style="width:40px;" disabled'' ) as "VERIFICADO",',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => seq_id,',
'        				    p_attributes  => (case C010',
'        										when ''S'' then ''checked ''',
'        										else null',
'        									  end ) ||''style="width:40px;" disabled'' ) as "TRASLADADO",',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => seq_id,',
'        				    p_attributes  => (case C011',
'        										when ''S'' then ''checked ''',
'        										else null',
'        									  end ) ||''style="width:40px;" disabled'' ) as "IND_OFERTA",',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => seq_id,',
'        				    p_attributes  => (case C012',
'        										when ''S'' then ''checked ''',
'        										else null',
'        									  end ) ||''style="width:40px;" disabled'' ) as "IND_ANULACION_DETALLE",',
'	   C013 COD_MOTIVO_ANULACION_DETALLE,',
'	   C014 V_DESC_MOTIVO_ANULA_DETALLE,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => seq_id,',
'        				    p_attributes  => (case C015',
'        										when ''S'' then ''checked ''',
'        										else null',
'        									  end ) ||''style="width:40px;" disabled'' ) as "IND_SIN_GARANTIA",',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => seq_id,',
'        				    p_attributes  => (case C016',
'        										when ''S'' then ''checked ''',
'        										else null',
'        									  end ) ||''style="width:40px;" disabled'' ) as "ENTREGA_AUTORIZADA_ST",',
'       C017 IND_PROMO,',
'	   N001 CANTIDAD,',
'	   N002 CANTIDAD_CONFIRMADA,',
'	   N003 PRECIO_UNITARIO,',
'	   N004 PORC_DESCUENTO,',
'	   N005 MONTO_TOTAL,',
'       NULL UBICACIONES,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETALLE'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P322_COD_EMPRESA,P322_P_NRO_COMPROBANTE,P322_P_COD_MARCA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLE2'
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
 p_id=>wwv_flow_imp.id(81328828266016313)
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
,p_internal_uid=>81328828266016313
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81648077092666329)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'AD'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81329044983016315)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81329104299016316)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81329215003016317)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81329466000016319)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81329573759016320)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81329653106016321)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81329711190016322)
,p_db_column_name=>'PORC_DESCUENTO'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Dcto.'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81329864770016323)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Cant.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81329952882016324)
,p_db_column_name=>'CANTIDAD_CONFIRMADA'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Cant. Conf.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81330053607016325)
,p_db_column_name=>'VERIFICADO'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Verif.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81330162347016326)
,p_db_column_name=>'TRASLADADO'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Trasl.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81330218073016327)
,p_db_column_name=>'IND_OFERTA'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>'Of.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81330362971016328)
,p_db_column_name=>'IND_ANULACION_DETALLE'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Anu.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81330417274016329)
,p_db_column_name=>'IND_SIN_GARANTIA'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'S/Gar'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81330573469016330)
,p_db_column_name=>'ENTREGA_AUTORIZADA_ST'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Ent. Aut. ST'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81330882706016333)
,p_db_column_name=>'ROW_ID'
,p_display_order=>170
,p_column_identifier=>'T'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81330947272016334)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>180
,p_column_identifier=>'U'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81331083539016335)
,p_db_column_name=>'V_DESC_ARTICULO'
,p_display_order=>190
,p_column_identifier=>'V'
,p_column_label=>'V Desc Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81331153534016336)
,p_db_column_name=>'COD_MOTIVO_ANULACION_DETALLE'
,p_display_order=>200
,p_column_identifier=>'W'
,p_column_label=>'Cod Motivo Anulacion Detalle'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81331266088016337)
,p_db_column_name=>'V_DESC_MOTIVO_ANULA_DETALLE'
,p_display_order=>210
,p_column_identifier=>'X'
,p_column_label=>'V Desc Motivo Anula Detalle'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81331358435016338)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>220
,p_column_identifier=>'Y'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81331405910016339)
,p_db_column_name=>'CAREO'
,p_display_order=>230
,p_column_identifier=>'Z'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81331583391016340)
,p_db_column_name=>'UBICACIONES'
,p_display_order=>240
,p_column_identifier=>'AA'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<button  type="button" class="btn" onclick="javascript:$s(''P322_AUX_COD_ARTICULO'',''#COD_ARTICULO#'');">UB</button>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81647630430666325)
,p_db_column_name=>'EDITAR'
,p_display_order=>250
,p_column_identifier=>'AB'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P322_AUX_SEQ_ID_EDITAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-pencil-square-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81647723782666326)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>260
,p_column_identifier=>'AC'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P322_AUX_SEQ_ID_ELIMINAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(84124336789157125)
,p_db_column_name=>'IND_PROMO'
,p_display_order=>270
,p_column_identifier=>'AE'
,p_column_label=>'Ind Promo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(81625976076542892)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'816260'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPRESA:TIP_COMPROBANTE:SER_COMPROBANTE:COD_ARTICULO:DESCRIPCION:PRECIO_UNITARIO:PORC_DESCUENTO:CANTIDAD:CANTIDAD_CONFIRMADA:VERIFICADO:TRASLADADO:IND_OFERTA:IND_ANULACION_DETALLE:IND_SIN_GARANTIA:ENTREGA_AUTORIZADA_ST'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(81635567831214756)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Principal'
,p_report_seq=>10
,p_report_alias=>'816356'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CAREO:COD_ARTICULO:DESCRIPCION:PRECIO_UNITARIO:PORC_DESCUENTO:MONTO_TOTAL:CANTIDAD:CANTIDAD_CONFIRMADA:VERIFICADO:TRASLADADO:UBICACIONES:IND_OFERTA:IND_ANULACION_DETALLE:IND_SIN_GARANTIA:ENTREGA_AUTORIZADA_ST:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81331643869016341)
,p_plug_name=>'Ubicaciones'
,p_parent_plug_id=>wwv_flow_imp.id(80147582317643723)
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(81331760003016342)
,p_name=>'Ubicaciones'
,p_parent_plug_id=>wwv_flow_imp.id(81331643869016341)
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_report_attributes=>'style ="overflow-y: scroll;height:250px;"'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001 COD_SUCURSAL,',
'       C002 DESCRIPCION,',
'       C003 POSICION',
'   FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_UBICACIONES''',
' order by 1 asc;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>150
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No se encontraron datos.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(81332057654016345)
,p_query_column_id=>1
,p_column_alias=>'COD_SUCURSAL'
,p_column_display_sequence=>10
,p_column_heading=>'Sucursal'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(81332102762016346)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>20
,p_column_heading=>unistr('Descripci\00F3n')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(81332289470016347)
,p_query_column_id=>3
,p_column_alias=>'POSICION'
,p_column_display_sequence=>30
,p_column_heading=>unistr('Posici\00F3n')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81645983695666308)
,p_plug_name=>'AGREGAR/ EDITAR'
,p_parent_plug_id=>wwv_flow_imp.id(80147582317643723)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(84125981833157141)
,p_plug_name=>'Respuesto Motivos'
,p_parent_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(84126808686157150)
,p_plug_name=>'DETALLE1'
,p_parent_plug_id=>wwv_flow_imp.id(80147582317643723)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 ROW_ID,',
'       NULL CAREO,',
'	   C002 COD_EMPRESA,',
'	   C003 TIP_COMPROBANTE,',
'	   C004 SER_COMPROBANTE,',
'	   C005 NRO_COMPROBANTE,',
'	   C006 COD_ARTICULO,',
'	   C007 V_DESC_ARTICULO,',
'	   C008 DESCRIPCION,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => seq_id,',
'        				    p_attributes  => (case C009',
'        										when ''S'' then ''checked ''',
'        										else null',
'        									  end )  ) as "VERIFICADO",',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => seq_id,',
'        				    p_attributes  => (case C010',
'        										when ''S'' then ''checked ''',
'        										else null',
'        									  end ) ) as "TRASLADADO",',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => seq_id,',
'        				    p_attributes  => (case C011',
'        										when ''S'' then ''checked ''',
'        										else null',
'        									  end ) ) as "IND_OFERTA",',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => seq_id,',
'        				    p_attributes  => (case C012',
'        										when ''S'' then ''checked ''',
'        										else null',
'        									  end )  ) as "IND_ANULACION_DETALLE",',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => seq_id,',
'        				    p_attributes  => (case C015',
'        										when ''S'' then ''checked ''',
'        										else null',
'        									  end )  ) as "IND_SIN_GARANTIA",',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => seq_id,',
'        				    p_attributes  => (case C016',
'        										when ''S'' then ''checked ''',
'        										else null',
'        									  end ) ) as "ENTREGA_AUTORIZADA_ST",',
'       C017 IND_PROMO,',
'	   N001 CANTIDAD,',
'	   N002 CANTIDAD_CONFIRMADA,',
'	   N003 PRECIO_UNITARIO,',
'	   N004 PORC_DESCUENTO,',
'	   N005 MONTO_TOTAL,',
'       NULL UBICACIONES,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETALLE''',
'   AND C020 != ''D'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P322_COD_EMPRESA,P322_P_NRO_COMPROBANTE,P322_P_COD_MARCA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLE1'
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
 p_id=>wwv_flow_imp.id(84170978287072930)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84171012372072931)
,p_name=>'ROW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROW_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84171146963072932)
,p_name=>'CAREO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAREO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Careo'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:$s(''P322_AUX_COL_COD_ARTICULO'',''&COD_ARTICULO.''),$s(''P322_AUX_CAREO'',''S'');'
,p_link_text=>'<button  type="button" class="btn">C</button>'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84171236209072933)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Cod Empresa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_item_attributes=>'readonly'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84171313581072934)
,p_name=>'TIP_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIP_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Tip Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_item_attributes=>'readonly'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84171469591072935)
,p_name=>'SER_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Ser Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_item_attributes=>'readonly'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84171535620072936)
,p_name=>'NRO_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Nro Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_item_attributes=>'readonly'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
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
 p_id=>wwv_flow_imp.id(84171612160072937)
,p_name=>'COD_ARTICULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ARTICULO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('Art\00EDculo')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_item_attributes=>'readonly'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84171739477072938)
,p_name=>'V_DESC_ARTICULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'V_DESC_ARTICULO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'&nbsp'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_item_attributes=>'readonly'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84171821454072939)
,p_name=>'DESCRIPCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPCION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('Descripci\00F3n')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_item_attributes=>'readonly'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84171938014072940)
,p_name=>'VERIFICADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFICADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Ver.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attribute_05=>'HTML'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84172065408072941)
,p_name=>'TRASLADADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRASLADADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Tras.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attribute_05=>'HTML'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84172116854072942)
,p_name=>'IND_OFERTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_OFERTA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Oferta'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attribute_05=>'HTML'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84172296304072943)
,p_name=>'IND_ANULACION_DETALLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_ANULACION_DETALLE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Anul.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_attribute_05=>'HTML'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84172528125072946)
,p_name=>'IND_SIN_GARANTIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_SIN_GARANTIA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'S/ Gar.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'CENTER'
,p_attribute_05=>'HTML'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84172630685072947)
,p_name=>'ENTREGA_AUTORIZADA_ST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTREGA_AUTORIZADA_ST'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'E. A. ST'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'CENTER'
,p_attribute_05=>'HTML'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84172796763072948)
,p_name=>'IND_PROMO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_PROMO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84172827592072949)
,p_name=>'CANTIDAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Cant.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(84172967538072950)
,p_name=>'CANTIDAD_CONFIRMADA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD_CONFIRMADA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Cant. Conf.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>210
,p_value_alignment=>'RIGHT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_item_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(84173037895073601)
,p_name=>'PRECIO_UNITARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRECIO_UNITARIO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Precio'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>220
,p_value_alignment=>'RIGHT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_format_mask=>'999G999G999G999G990'
,p_item_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(84173192227073602)
,p_name=>'PORC_DESCUENTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PORC_DESCUENTO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Dcto.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_item_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(84173238485073603)
,p_name=>'MONTO_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_TOTAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Total'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>240
,p_value_alignment=>'RIGHT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_format_mask=>'999G999G999G999G990'
,p_item_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(84173305802073604)
,p_name=>'UBICACIONES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UBICACIONES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'&nbsp'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:void(null);'
,p_link_text=>'<button  type="button" class="btn" onclick="javascript:$s(''P322_AUX_COD_ARTICULO'',''&COD_ARTICULO.'');">UB</button>'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84173419521073605)
,p_name=>'EDITAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EDITAR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Editar'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:$s(''P322_AUX_SEQ_ID_EDITAR'',''&SEQ_ID.'');'
,p_link_text=>'<span class="fa fa-pencil-square-o" aria-hidden="true"></span>'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84173565908073606)
,p_name=>'ELIMINAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ELIMINAR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Eliminar'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>270
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:$s(''P322_AUX_SEQ_ID_ELIMINAR'',''&SEQ_ID.'');'
,p_link_text=>'<span aria-hidden="true" class="fa fa-trash"></span>'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84173910714073610)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84174040457073611)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(84170876197072929)
,p_internal_uid=>84170876197072929
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
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
 p_id=>wwv_flow_imp.id(84179593354089726)
,p_interactive_grid_id=>wwv_flow_imp.id(84170876197072929)
,p_static_id=>'841796'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(84179792052089727)
,p_report_id=>wwv_flow_imp.id(84179593354089726)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(36230675041121)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(84173910714073610)
,p_is_visible=>false
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84180247161089732)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(84170978287072930)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84181156537089738)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(84171012372072931)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84182013985089740)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(84171146963072932)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84182924125089742)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(84171236209072933)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84183807036089743)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(84171313581072934)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84184752908089745)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(84171469591072935)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84185687218089746)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(84171535620072936)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84186541194089748)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(84171612160072937)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84187459297089750)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(84171739477072938)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>229
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84188357576089751)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(84171821454072939)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84189251224089753)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(84171938014072940)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84190147917089754)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(84172065408072941)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84191064935089756)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(84172116854072942)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84191915642089757)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(84172296304072943)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84192827581089759)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(84172528125072946)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84193705856089760)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(84172630685072947)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84194686101089762)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(84172796763072948)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84195572342089763)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(84172827592072949)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84196405011089764)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(84172967538072950)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84197344658089766)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(84173037895073601)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84198207748089767)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(84173192227073602)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84199183219089769)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(84173238485073603)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84200013429089770)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(84173305802073604)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84200962206089772)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(84173419521073605)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84201738853089773)
,p_view_id=>wwv_flow_imp.id(84179792052089727)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(84173565908073606)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(84176105596073632)
,p_plug_name=>unistr('Anulaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(80147582317643723)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C008 DESCRIPCION,',
'       C013 COD_MOTIV_ANUL_DET,',
'       C014 DESC_ANUL ',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETALLE'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(84126808686157150)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Anulaci\00F3n')
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
 p_id=>wwv_flow_imp.id(84176351139073634)
,p_name=>'DESCRIPCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPCION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('Descripci\00F3n')
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
 p_id=>wwv_flow_imp.id(84176409299073635)
,p_name=>'COD_MOTIV_ANUL_DET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_MOTIV_ANUL_DET'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Mot. Anul. Det.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(80437244986957466)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84176566137073636)
,p_name=>'DESC_ANUL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_ANUL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&nbsp'
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
 p_id=>wwv_flow_imp.id(84176625425073637)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_parent_column_id=>wwv_flow_imp.id(84170978287072930)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(84176289175073633)
,p_internal_uid=>84176289175073633
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>unistr('No se encontraron datos de anulaci\00F3n.')
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
 p_id=>wwv_flow_imp.id(84779294710841128)
,p_interactive_grid_id=>wwv_flow_imp.id(84176289175073633)
,p_static_id=>'847793'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(84779468401841128)
,p_report_id=>wwv_flow_imp.id(84779294710841128)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84779985284841129)
,p_view_id=>wwv_flow_imp.id(84779468401841128)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(84176351139073634)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84780845408841131)
,p_view_id=>wwv_flow_imp.id(84779468401841128)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(84176409299073635)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84781746240841132)
,p_view_id=>wwv_flow_imp.id(84779468401841128)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(84176566137073636)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84782692683841134)
,p_view_id=>wwv_flow_imp.id(84779468401841128)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(84176625425073637)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(177984759097049504)
,p_name=>'DETALLE'
,p_region_name=>'detalle'
,p_parent_plug_id=>wwv_flow_imp.id(80147582317643723)
,p_template=>wwv_flow_imp.id(40123385688263660)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 ROW_ID,',
'       NULL CAREO,',
'	   C002 COD_EMPRESA,',
'	   C003 TIP_COMPROBANTE,',
'	   C004 SER_COMPROBANTE,',
'	   C005 NRO_COMPROBANTE,',
'	   C006 COD_ARTICULO,',
'	   C007 V_DESC_ARTICULO,',
'	   C008 DESCRIPCION,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => seq_id,',
'        				    p_attributes  => (case C009',
'        										when ''S'' then ''checked ''',
'        										else null',
'        									  end ) ||''onclick="verificado(this)"'' ) as "VERIFICADO",',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => seq_id,',
'        				    p_attributes  => (case C010',
'        										when ''S'' then ''checked ''',
'        										else null',
'        									  end ) ) as "TRASLADADO",',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => seq_id,',
'        				    p_attributes  => (case C011',
'        										when ''S'' then ''checked ''',
'        										else null',
'        									  end ) ) as "IND_OFERTA",',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => seq_id,',
'        				    p_attributes  => (case C012',
'        										when ''S'' then ''checked ''',
'        										else null',
'        									  end ) ||''onclick="anula(this)"''  ) as "IND_ANULACION_DETALLE",',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => seq_id,',
'        				    p_attributes  => (case C015',
'        										when ''S'' then ''checked ''',
'        										else null',
'        									  end )  ) as "IND_SIN_GARANTIA",',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => seq_id,',
'        				    p_attributes  => (case C016',
'        										when ''S'' then ''checked ''',
'        										else null',
'        									  end ) ) as "ENTREGA_AUTORIZADA_ST",',
'       C017 IND_PROMO,',
'	   N001 CANTIDAD,',
'	   N002 CANTIDAD_CONFIRMADA,',
'	   N003 PRECIO_UNITARIO,',
'	   N004 PORC_DESCUENTO,',
'	   N005 MONTO_TOTAL,',
'       NULL UBICACIONES,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETALLE''',
'   AND C020 != ''D'';'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P322_COD_EMPRESA,P322_P_NRO_COMPROBANTE,P322_P_COD_MARCA'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLE'
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
 p_id=>wwv_flow_imp.id(177987664174049533)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(177987780687049534)
,p_query_column_id=>2
,p_column_alias=>'ROW_ID'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(177987806713049535)
,p_query_column_id=>3
,p_column_alias=>'CAREO'
,p_column_display_sequence=>30
,p_column_heading=>'Careo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(177987937563049536)
,p_query_column_id=>4
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(177988070633049537)
,p_query_column_id=>5
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(177988171568049538)
,p_query_column_id=>6
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(177988220315049539)
,p_query_column_id=>7
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(177988316110049540)
,p_query_column_id=>8
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>80
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(177988440637049541)
,p_query_column_id=>9
,p_column_alias=>'V_DESC_ARTICULO'
,p_column_display_sequence=>90
,p_column_heading=>'Descripcion Articulo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(177988522975049542)
,p_query_column_id=>10
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>150
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(177988684798049543)
,p_query_column_id=>11
,p_column_alias=>'VERIFICADO'
,p_column_display_sequence=>160
,p_column_heading=>'Verificado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(177988741037049544)
,p_query_column_id=>12
,p_column_alias=>'TRASLADADO'
,p_column_display_sequence=>170
,p_column_heading=>'Trasladado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(177988812243049545)
,p_query_column_id=>13
,p_column_alias=>'IND_OFERTA'
,p_column_display_sequence=>180
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(177988929443049546)
,p_query_column_id=>14
,p_column_alias=>'IND_ANULACION_DETALLE'
,p_column_display_sequence=>190
,p_column_heading=>'Anulado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(177989025074049547)
,p_query_column_id=>15
,p_column_alias=>'IND_SIN_GARANTIA'
,p_column_display_sequence=>200
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(177989111059049548)
,p_query_column_id=>16
,p_column_alias=>'ENTREGA_AUTORIZADA_ST'
,p_column_display_sequence=>210
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(177989275901049549)
,p_query_column_id=>17
,p_column_alias=>'IND_PROMO'
,p_column_display_sequence=>220
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(177989368266049550)
,p_query_column_id=>18
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>120
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(179987936000952701)
,p_query_column_id=>19
,p_column_alias=>'CANTIDAD_CONFIRMADA'
,p_column_display_sequence=>130
,p_column_heading=>'Cant.Confirmada'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_link=>'javascript:$s(''P322_ID_SEQ_CANT_CONF'',''#SEQ_ID#'');'
,p_column_linktext=>'#CANTIDAD_CONFIRMADA#'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(179988034419952702)
,p_query_column_id=>20
,p_column_alias=>'PRECIO_UNITARIO'
,p_column_display_sequence=>100
,p_column_heading=>'Precio Unitario'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(179988179831952703)
,p_query_column_id=>21
,p_column_alias=>'PORC_DESCUENTO'
,p_column_display_sequence=>110
,p_column_heading=>'Porc Descuento'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(179988266983952704)
,p_query_column_id=>22
,p_column_alias=>'MONTO_TOTAL'
,p_column_display_sequence=>140
,p_column_heading=>'Monto Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(179988350056952705)
,p_query_column_id=>23
,p_column_alias=>'UBICACIONES'
,p_column_display_sequence=>240
,p_column_heading=>'Ubicaciones'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P322_AUX_COD_ARTICULO'',''#COD_ARTICULO#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(179988427925952706)
,p_query_column_id=>24
,p_column_alias=>'EDITAR'
,p_column_display_sequence=>250
,p_column_heading=>'Editar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P322_AUX_SEQ_ID_EDITAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-pencil-square-o" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(179988505251952707)
,p_query_column_id=>25
,p_column_alias=>'ELIMINAR'
,p_column_display_sequence=>260
,p_column_heading=>'Eliminar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P322_AUX_SEQ_ID_ELIMINAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash"></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(179988813477952710)
,p_plug_name=>'ANULA'
,p_parent_plug_id=>wwv_flow_imp.id(80147582317643723)
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(179990546294952727)
,p_plug_name=>'CANTIDAD CONFIRMADA'
,p_parent_plug_id=>wwv_flow_imp.id(80147582317643723)
,p_region_css_classes=>'js-dialog-size300x200'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(458409786294382005)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(80147582317643723)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(179990840428952730)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(179990546294952727)
,p_button_name=>'CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81332532786016350)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(81331643869016341)
,p_button_name=>'BT_CERRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81649299199666341)
,p_button_sequence=>280
,p_button_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_button_name=>'BT_CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(179988978635952711)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(179988813477952710)
,p_button_name=>'ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81649107399666340)
,p_button_sequence=>270
,p_button_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_button_name=>'BT_GUARDAR_DET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(347921302026606737)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(80147582317643723)
,p_button_name=>'BT_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:315:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'u-color-24-bg'
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(84124625989157128)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(80147582317643723)
,p_button_name=>'BT_ELIMINAR_RESERVA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar Reserva'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81645489759666303)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(80147582317643723)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81645879201666307)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(84126808686157150)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'TOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78229113592554113)
,p_name=>'P322_P_SER_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(78229020945554112)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78229229251554114)
,p_name=>'P322_P_NRO_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(78229020945554112)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80147496484643722)
,p_name=>'P322_P_COD_MARCA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(78229020945554112)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80147974659643727)
,p_name=>'P322_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(179990480452952726)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80148028659643728)
,p_name=>'P322_COD_MOTIVO_ANU'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(179990480452952726)
,p_prompt=>unistr('Motivo Anulaci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVO_VTREPDET'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_motivo_anu||'' - ''||descripcion D, ',
'         descripcion DESCRIPCION,',
'         cod_motivo_anu R',
'    FROM VT_MOTIVO_ANULACION ',
'   WHERE cod_empresa = :p_cod_empresa ',
'     AND tip_motivo=''7'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'DESCRIPCION:P322_DESC_MOTIVO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80148175229643729)
,p_name=>'P322_FEC_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(179990480452952726)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(80148215268643730)
,p_name=>'P322_CONFIRMADO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(179990383013952725)
,p_item_default=>'N'
,p_prompt=>'Confirmado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-none:margin-bottom-none'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80148335614643731)
,p_name=>'P322_SER_COMPROBANTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(179990480452952726)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80148430804643732)
,p_name=>'P322_COD_ARTICULO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(179990480452952726)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(80148511060643733)
,p_name=>'P322_HORA_CONFIRMACION'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(179990383013952725)
,p_prompt=>'Hora'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(80148675244643734)
,p_name=>'P322_GARANTIA'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(80147670143643724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80148772565643735)
,p_name=>'P322_TIP_COMPROBANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(179990480452952726)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80148880843643736)
,p_name=>'P322_NRO_COMPROBANTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(179990480452952726)
,p_prompt=>unistr('N\00FAmero')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(80148998969643737)
,p_name=>'P322_COD_CLIENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(179990480452952726)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_VTREPDET'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) nombre, ',
'       c.cod_cliente, ',
'       fnc_busca_ruc (c.cod_persona) ruc,',
'       decode(c.estado, ''A'',''ACTIVO'',''B'',''BLOQUEADO'',''C'',''CREDITO BLOQ.'',''I'',''INACTIVO'',NULL) ESTADO',
'  from cc_clientes c, personas p',
' where c.cod_empresa = :p_cod_empresa',
'   and c.cod_persona = p.cod_persona',
'   and ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) is not null',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80149003671643738)
,p_name=>'P322_OBSERVACION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(179990480452952726)
,p_prompt=>unistr('Observaci\00F3n')
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
 p_id=>wwv_flow_imp.id(80149164163643739)
,p_name=>'P322_FEC_CONFIRMACION'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(179990383013952725)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(80149290327643740)
,p_name=>'P322_ANULADO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(179990480452952726)
,p_item_default=>'N'
,p_prompt=>'Anulado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-none:margin-bottom-none'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80149350530643741)
,p_name=>'P322_IND_SIN_STOCK'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(179990480452952726)
,p_item_default=>'N'
,p_prompt=>'Sin Stock'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-none:margin-bottom-none'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80149418735643742)
,p_name=>'P322_TRASLADO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(80147670143643724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80149504442643743)
,p_name=>'P322_DESC_TIPO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(179990480452952726)
,p_prompt=>unistr('Descripci\00F3n Comprobante')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(80149663501643744)
,p_name=>'P322_P_TIPO'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(80147670143643724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80149766549643745)
,p_name=>'P322_NRO_COMPROBANTE_REF'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(80147670143643724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80149809752643746)
,p_name=>'P322_COD_USUARIO_ANU'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(80147670143643724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80149976729643747)
,p_name=>'P322_HORA_ALTA'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(80147670143643724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80150099764643748)
,p_name=>'P322_TIP_COMPROBANTE_REF'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(80147670143643724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80150127583643749)
,p_name=>'P322_DERIVADO'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(80147670143643724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80150208219643750)
,p_name=>'P322_SER_COMPROBANTE_REF'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(80147670143643724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81327644284016301)
,p_name=>'P322_RETIRA_DE'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(80147670143643724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81327754063016302)
,p_name=>'P322_IND_ENVIAR'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(80147670143643724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81328002621016305)
,p_name=>'P322_COD_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(80147670143643724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81328156417016306)
,p_name=>'P322_NOM_CLIENTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(179990480452952726)
,p_prompt=>'Nom Cliente'
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
 p_id=>wwv_flow_imp.id(81328284531016307)
,p_name=>'P322_DESC_ARTICULO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(179990480452952726)
,p_prompt=>unistr('Descripci\00F3n Art\00EDculo')
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
 p_id=>wwv_flow_imp.id(81328355726016308)
,p_name=>'P322_TOT_CANTIDAD'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(80147670143643724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81328472809016309)
,p_name=>'P322_DESC_MOTIVO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(179990383013952725)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81328774805016312)
,p_name=>'P322_MODIFICA_PRECIO_VENTA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81357096003180745)
,p_name=>'P322_VBLE_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81357468925180745)
,p_name=>'P322_NOM_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81357807258180745)
,p_name=>'P322_COD_FORMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81358252379180745)
,p_name=>'P322_NOM_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81358645332180746)
,p_name=>'P322_VBLE_COD_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81359061785180746)
,p_name=>'P322_NOM_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81359467108180746)
,p_name=>'P322_VBLE_COD_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81359868966180746)
,p_name=>'P322_NOM_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81360228477180746)
,p_name=>'P322_VBLE_COD_USUARIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81361055840180747)
,p_name=>'P322_AUX_COD_ARTICULO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81361403017180747)
,p_name=>'P322_MSJE_SUCCES'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81361892096180747)
,p_name=>'P322_MSJE_ERROR'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81646026892666309)
,p_name=>'P322_SEQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81646130145666310)
,p_name=>'P322_COL_PORC_DESCUENTO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_prompt=>'% Desc.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(81646243727666311)
,p_name=>'P322_COL_NRO_COMPROBANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
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
 p_id=>wwv_flow_imp.id(81646317826666312)
,p_name=>'P322_COL_TRASLADADO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_item_default=>'S'
,p_prompt=>'Trasladado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81646441389666313)
,p_name=>'P322_COL_TIP_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81646531746666314)
,p_name=>'P322_COL_DESCRIPCION'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_prompt=>unistr('Explicaci\00F3n Rep.')
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
 p_id=>wwv_flow_imp.id(81646699332666315)
,p_name=>'P322_COL_CANTIDAD_CONFIRMADA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_prompt=>'Cant. Confirmada'
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
 p_id=>wwv_flow_imp.id(81646897160666317)
,p_name=>'P322_COL_COD_EMPRESA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81646906560666318)
,p_name=>'P322_COL_SER_COMPROBANTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81647056141666319)
,p_name=>'P322_COL_COD_ARTICULO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_VTREPDET'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo D,',
'       descripcion DESCRIPCION,',
'       cod_articulo R',
'  from st_articulos',
' where cod_empresa = :p_cod_empresa ',
'   and ( estado is null or estado <> ''I'' ) ',
' order by descripcion'))
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
,p_attribute_06=>'0'
,p_attribute_10=>'DESCRIPCION:P322_COL_DESC_ARTICULO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81647192878666320)
,p_name=>'P322_COL_PRECIO_UNITARIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_prompt=>'Precio Unitario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81647265091666321)
,p_name=>'P322_COL_CANTIDAD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_prompt=>'Cantidad'
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
 p_id=>wwv_flow_imp.id(81647330809666322)
,p_name=>'P322_COL_VERIFICADO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_item_default=>'S'
,p_prompt=>'Verificado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81647483721666323)
,p_name=>'P322_COL_IND_OFERTA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_item_default=>'S'
,p_prompt=>'Oferta'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81647569675666324)
,p_name=>'P322_COL_MOTIVO_ANULA_DET'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_prompt=>unistr('Motivo Anulaci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVO_DETALLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  cod_motivo_anu||'' - ''||descripcion D, cod_motivo_anu R',
'  from VT_MOTIVO_ANULACION ',
' where cod_empresa = :P_cod_empresa ',
'   and tip_motivo = ''7'' ',
' order by 1',
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81647866114666327)
,p_name=>'P322_AUX_SEQ_ID_EDITAR'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81647985141666328)
,p_name=>'P322_AUX_SEQ_ID_ELIMINAR'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81648341202666332)
,p_name=>'P322_COL_ROW_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81648493877666333)
,p_name=>'P322_COL_DESC_ARTICULO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_prompt=>unistr('Descripci\00F3n')
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
 p_id=>wwv_flow_imp.id(81648503305666334)
,p_name=>'P322_COL_IND_ANULACION_DETALLE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_item_default=>'S'
,p_prompt=>unistr('Anulaci\00F3n')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81648795268666336)
,p_name=>'P322_IND_SIN_GARANTIA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_item_default=>'S'
,p_prompt=>'S/ Gar.'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81648863938666337)
,p_name=>'P322_COL_ENTREGA_AUTORIZADA_ST'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_item_default=>'S'
,p_prompt=>'Ent. Aut. ST'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(84122615316157108)
,p_name=>'P322_TOT_CANTIDAD_ANT'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(80147670143643724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(84123626611157118)
,p_name=>'P322_VBLE_ARTICULO_DEV'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(84125981833157141)
,p_prompt=>'Repuesto'
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
 p_id=>wwv_flow_imp.id(84123932492157121)
,p_name=>'P322_VBLE_COD_ARTICULO_REM'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(84124560793157127)
,p_name=>'P322_COL_IND_PROMO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(84125552416157137)
,p_name=>'P322_COD_USUARIO_ANULACION_DET'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(84125691260157138)
,p_name=>'P322_FECHA_ANULACION_DET'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(84126113130157143)
,p_name=>'P322_VBLE_COD_MOTIVO_DEV'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(84125981833157141)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVO_DEV_REP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_motivo||'' - ''||descripcion D, cod_motivo R ',
'  from ca_motivos_devolucion_repuesto',
'  where cod_empresa = :P_COD_EMPRESA'))
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(84126238158157144)
,p_name=>'P322_VBLE_OBS_DEVOLUCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(84125981833157141)
,p_prompt=>unistr('Observaci\00F3n')
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
 p_id=>wwv_flow_imp.id(84126424917157146)
,p_name=>'P322_DIR_ACCION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(84126569417157147)
,p_name=>'P322_DIR_AUX_SEQ_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(84174407480073615)
,p_name=>'P322_AUX_COD_ARTICULO_2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(84175692348073627)
,p_name=>'P322_COL_COD_MOTIVO_DEVOLUCION'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(84175846992073629)
,p_name=>'P322_COL_OBS_DEVOLUCION'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(81645983695666308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(84177552801073646)
,p_name=>'P322_VERIFICADO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85301221768861103)
,p_name=>'P322_AUX_V_CANTIDAD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85303414450861125)
,p_name=>'P322_ROW_ID_CABECERA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(80147670143643724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85304035686861131)
,p_name=>'P322_AUX_CAREO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85304369350861134)
,p_name=>'P322_MSJE_ALERTA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85304670007861137)
,p_name=>'P322_AUX_VCOD_ART'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85304776870861138)
,p_name=>'P322_URL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85555145563022925)
,p_name=>'P322_AUX_COL_COD_ARTICULO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(458409786294382005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179989134410952713)
,p_name=>'P322_MOTIVO_ANULA_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(179988813477952710)
,p_prompt=>unistr('Motivo Anulaci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVO_DETALLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  cod_motivo_anu||'' - ''||descripcion D, cod_motivo_anu R',
'  from VT_MOTIVO_ANULACION ',
' where cod_empresa = :P_cod_empresa ',
'   and tip_motivo = ''7'' ',
' order by 1',
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179989213918952714)
,p_name=>'P322_ID_SEQ_ANULA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(179988813477952710)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179990677666952728)
,p_name=>'P322_CANTIDAD_CONFIRMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(179990546294952727)
,p_prompt=>'Cantidad a Confirmar'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'0'
,p_attribute_02=>'99999999'
,p_attribute_03=>'center'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179990754701952729)
,p_name=>'P322_ID_SEQ_CANT_CONF'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(179990546294952727)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379344107783055044)
,p_name=>'P322_ARTICULO_UBICACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(81331643869016341)
,p_prompt=>unistr('Ubicaci\00F3n del Articulo:')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(347921239265606736)
,p_validation_name=>'VA_VALIDACION_ANULACION'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P322_ANULADO IN (''S'') AND',
' :P322_COD_MOTIVO_ANU IS NULL THEN',
' RETURN FALSE;',
' ELSE RETURN TRUE;',
' END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Debe indicar el motivo de anulaci\00F3n.')
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(340397804730114110)
,p_validation_name=>'VALIDA_CONFIRMADO'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(:P322_CONFIRMADO,''N'')=''S'' THEN',
'        DECLARE ',
'            DUMMY VARCHAR2(1);',
'        BEGIN         ',
'                SELECT DISTINCT ''1''',
'                INTO DUMMY',
'                  FROM APEX_COLLECTIONS',
'                 WHERE COLLECTION_NAME = ''COL_DETALLE''',
'                 AND NVL(C009,''N'')=''N''                 ',
'                 AND NVL(C020,''N'') <>''D'';',
'',
'                RETURN ''Existen detalles pendientes de Verificacion.'';',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                RETURN NULL;',
'            WHEN OTHERS THEN',
'                RETURN SQLERRM;',
'        END;',
'ELSE',
'    RETURN NULL;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81331882039016343)
,p_name=>'DA_CARGA_UBICACION'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_AUX_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81331903355016344)
,p_event_id=>wwv_flow_imp.id(81331882039016343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	DECLARE CURSOR CCAB IS ',
'		SELECT E.COD_ARTICULO, ',
'               SU.COD_SUCURSAL, ',
'               SU.DESCRIPCION, ',
'               nvl(cod_posicion,  u.cod_sucursal||''-''||U.PASILLO||''-''|| U.CUERPO||''-''||  U.BANDEJA) posicion',
'		  FROM ST_EXISTENCIA_ART E, ST_UBIC_ARTICULOS U, SUCURSALES SU',
'		 WHERE E.COD_EMPRESA = :P_COD_EMPRESA',
'		   AND E.COD_ARTICULO =  :P322_AUX_COD_ARTICULO',
'		   AND U.COD_EMPRESA(+) = E.COD_EMPRESA',
'		   AND U.COD_ARTICULO(+) = E.COD_ARTICULO',
'		   AND SU.COD_EMPRESA = E.COD_EMPRESA',
'		   AND SU.COD_SUCURSAL = E.COD_SUCURSAL',
'		   AND E.CANT_DISPON > 0',
'		   AND E.COD_SUCURSAL = U.COD_SUCURSAL(+)',
'		GROUP BY E.COD_ARTICULO, SU.COD_SUCURSAL, SU.DESCRIPCION, Nvl(cod_posicion, u.cod_sucursal||''-''||U.PASILLO||''-''|| U.CUERPO||''-''||  U.BANDEJA)  ;',
'	BEGIN',
'    ',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_UBICACIONES'');',
'		FOR X IN CCAB LOOP',
'			APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''COL_UBICACIONES'',',
'                                       P_C001 => X.COD_SUCURSAL,',
'                                       P_C002 => X.DESCRIPCION,',
'                                       P_C003 => X.posicion);',
'		END LOOP;',
'',
'       BEGIN',
'        SELECT COD_ARTICULO ||'' - ''|| DESCRIPCION',
'        INTO :P322_ARTICULO_UBICACION',
'        FROM ST_ARTICULOS ',
'        WHERE COD_EMPRESA=  :P_COD_EMPRESA',
'        AND COD_ARTICULO = :P322_AUX_COD_ARTICULO',
'            ;',
'       EXCEPTION',
'        WHEN OTHERS THEN',
'            :P322_ARTICULO_UBICACION:=NULL;',
'       END ; ',
'	END;',
'		',
'END;'))
,p_attribute_02=>'P322_AUX_COD_ARTICULO,P322_VBLE_COD_EMPRESA'
,p_attribute_03=>'P322_ARTICULO_UBICACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81332338982016348)
,p_event_id=>wwv_flow_imp.id(81331882039016343)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81331760003016342)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81332429578016349)
,p_event_id=>wwv_flow_imp.id(81331882039016343)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81331643869016341)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81645206387666301)
,p_name=>'DA_CLOSE_REGION_UB'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81332532786016350)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81645390591666302)
,p_event_id=>wwv_flow_imp.id(81645206387666301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81331643869016341)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(600259365403922108)
,p_event_id=>wwv_flow_imp.id(81645206387666301)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_UBICACIONES'');'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81648142145666330)
,p_name=>'DA_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_AUX_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81648231316666331)
,p_event_id=>wwv_flow_imp.id(81648142145666330)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 ROW_ID,',
'	   C002 COD_EMPRESA,',
'	   C003 TIP_COMPROBANTE,',
'	   C004 SER_COMPROBANTE,',
'	   C005 NRO_COMPROBANTE,',
'	   C006 COD_ARTICULO,',
'	   C007 V_DESC_ARTICULO,',
'	   C008 DESCRIPCION,',
'       C009 VERIFICADO,',
'       C010 TRASLADADO,',
'       C011 IND_OFERTA,',
'       C012 IND_ANULACION_DETALLE,',
'	   C013 COD_MOTIVO_ANULA_DETALLE,',
'       C015 IND_SIN_GARANTIA,',
'       C016 ENTREGA_AUTORIZADA_ST,',
'       C017 IND_PROMO,',
'       C018 COD_MOTIVO_DEVOLUCION,',
'       C019 OBSERVACION_DEVOLUCION,',
'	   N001 CANTIDAD,',
'	   N002 CANTIDAD_CONFIRMADA,',
'	   N003 PRECIO_UNITARIO,',
'	   N004 PORC_DESCUENTO',
'  INTO :P322_SEQ_ID,',
'       :P322_COL_ROW_ID,',
'       :P322_COL_COD_EMPRESA,',
'       :P322_COL_TIP_COMPROBANTE,',
'       :P322_COL_SER_COMPROBANTE,',
'       :P322_COL_NRO_COMPROBANTE,',
'       :P322_COL_COD_ARTICULO,',
'       :P322_COL_DESC_ARTICULO,',
'       :P322_COL_DESCRIPCION,',
'       :P322_COL_VERIFICADO,',
'       :P322_COL_TRASLADADO,',
'       :P322_COL_IND_OFERTA,',
'       :P322_COL_IND_ANULACION_DETALLE,',
'       :P322_COL_MOTIVO_ANULA_DET,',
'       :P322_IND_SIN_GARANTIA,',
'       :P322_COL_ENTREGA_AUTORIZADA_ST,',
'       :P322_COL_IND_PROMO,',
'       :P322_COL_COD_MOTIVO_DEVOLUCION,',
'       :P322_COL_OBS_DEVOLUCION,',
'       :P322_COL_CANTIDAD,',
'       :P322_COL_CANTIDAD_CONFIRMADA,',
'       :P322_COL_PRECIO_UNITARIO,',
'       :P322_COL_PORC_DESCUENTO',
'       ',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETALLE''',
'   AND SEQ_ID = :P322_AUX_SEQ_ID_EDITAR;'))
,p_attribute_02=>'P322_AUX_SEQ_ID_EDITAR'
,p_attribute_03=>'P322_SEQ_ID,P322_COL_ROW_ID,P322_COL_COD_EMPRESA,P322_COL_TIP_COMPROBANTE,P322_COL_SER_COMPROBANTE,P322_COL_NRO_COMPROBANTE,P322_COL_COD_ARTICULO,P322_COL_DESC_ARTICULO,P322_COL_DESCRIPCION,P322_COL_VERIFICADO,P322_COL_TRASLADADO,P322_COL_IND_OFERTA,'
||'P322_COL_IND_ANULACION_DETALLE,P322_COL_MOTIVO_ANULA_DET,P322_IND_SIN_GARANTIA,P322_COL_ENTREGA_AUTORIZADA_ST,P322_COL_CANTIDAD,P322_COL_CANTIDAD_CONFIRMADA,P322_COL_PRECIO_UNITARIO,P322_COL_PORC_DESCUENTO,P322_COL_OBS_DEVOLUCION,P322_COL_COD_MOTIVO_'
||'DEVOLUCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81648910157666338)
,p_event_id=>wwv_flow_imp.id(81648142145666330)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81645983695666308)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81649059298666339)
,p_event_id=>wwv_flow_imp.id(81648142145666330)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81645983695666308)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81649379845666342)
,p_name=>'DA_CANCEL_REGION'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81649299199666341)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81649409577666343)
,p_event_id=>wwv_flow_imp.id(81649379845666342)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81645983695666308)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81649507279666344)
,p_name=>'DA_WHEN_VALIDATE_ART'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_COL_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81649661049666345)
,p_event_id=>wwv_flow_imp.id(81649507279666344)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P322_MSJE_ERROR := NULL;',
'IF  :P322_COL_COD_ARTICULO IS NOT NULL THEN ',
'	DECLARE ',
'		VNETO VARCHAR2(20);',
'    BEGIN',
'      SELECT DESCRIPCION, IND_NO_DESCUENTO',
'        INTO :P322_DESC_ARTICULO, VNETO',
'        FROM ST_ARTICULOS',
'       WHERE COD_EMPRESA = :P322_VBLE_COD_EMPRESA',
'         AND COD_ARTICULO = :P322_COL_COD_ARTICULO;',
'     ',
'    IF :P322_SER_COMPROBANTE = ''W'' THEN',
'        IF NVL(VNETO,''N'') = ''S'' THEN',
'         	:P322_COL_PORC_DESCUENTO := 0;',
'         	:P322_COL_PRECIO_UNITARIO := ROUND(NVL(PRECIO(:P322_COL_COD_ARTICULO,0),0));',
'        ELSE',
'         	:P322_COL_PORC_DESCUENTO := 30;',
'         	:P322_COL_PRECIO_UNITARIO := ROUND(NVL(PRECIO(:P322_COL_COD_ARTICULO,:P322_COL_PORC_DESCUENTO),0));',
'        END IF;',
'    ELSE',
'		:P322_COL_PORC_DESCUENTO :=	F_DESCUENTO_CLIENTE(:P322_COD_CLIENTE,''RE'');',
'     	:P322_COL_PRECIO_UNITARIO := ROUND(NVL(PRECIO(:P322_COL_COD_ARTICULO,:P322_COL_PORC_DESCUENTO),0));',
'    END IF;',
'     ',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            :P322_DESC_ARTICULO := NULL;',
'        	:P322_MSJE_ERROR := 1;',
unistr('            -- MENSAJE_EX(''NO SE ENCUENTRA EL C\00D3DIGO DE ART\00CDCULO.'',2);'),
'        -- RAISE FORM_TRIGGER_FAILURE;',
'         WHEN OTHERS THEN',
'            :P322_DESC_ARTICULO := NULL;',
'        	:P322_MSJE_ERROR := 2;',
unistr('            --MENSAJE_EX(''ERROR EN LA TABLA DE ART\00CDCULOS ''||SQLERRM);'),
'            APEX_DEBUG.ERROR(SQLERRM);',
'    END;',
'END IF;',
'',
'IF :P322_COL_COD_ARTICULO IN (''GALON/001'',''GALON/002'') AND :P322_GARANTIA = ''G'' THEN',
'	:P322_MSJE_ERROR := 3;',
'	 --MENSAJE_EX(''ESTE CODIGO SOLO ESTA HABILITADO PARA VENTA CONTADO '');',
'    --RAISE FORM_TRIGGER_FAILURE;',
'END IF;',
'',
'DECLARE ',
'	VEXISTE VARCHAR2(400);',
'BEGIN',
'	SELECT F_BLOQUEA_INVENTARIO(:P322_COL_COD_ARTICULO,''101'')',
'	INTO VEXISTE',
'	FROM DUAL;',
'	',
'	IF VEXISTE = ''S'' THEN',
'		:P322_MSJE_ERROR := 4;',
'		--MENSAJE_EX(''EL REPUESTO ''||:B_DETALLE.COD_ARTICULO||'' ESTA DE INVENTARIO '',2);',
'		END IF;',
'	EXCEPTION',
'		WHEN OTHERS THEN',
'	        NULL;',
'	END;',
'	',
'	DECLARE ',
'	VEXISTE VARCHAR2(400);',
'    BEGIN',
'    	SELECT F_BLOQUEA_INVENTARIO(:P322_COL_COD_ARTICULO,''1015'')',
'    	  INTO VEXISTE',
'    	  FROM DUAL;',
'',
'	    IF VEXISTE = ''S'' THEN',
'		    :P322_MSJE_ERROR := 5;',
'		    --MENSAJE_EX(''EL REPUESTO ''||:B_DETALLE.COD_ARTICULO||'' ESTA DE INVENTARIO '',2);',
'		END IF;',
'	EXCEPTION',
'		WHEN OTHERS THEN',
'			NULL;',
'	END;',
'',
'INV.VTREPDET.DESCUENTO (PI_GARANTIA       => :P322_GARANTIA,',
'					    PI_P_TIPO 		  => :P322_P_TIPO,',
'					    PI_COD_CLIENTE    => :P322_COD_CLIENTE,',
'					    PI_CANTIDAD 	  => :P322_COL_CANTIDAD,',
'					    PI_COD_ARTICULO   => :P322_COL_COD_ARTICULO,',
'					    PO_PORC_DESCUENTO => :P322_COL_PORC_DESCUENTO);'))
,p_attribute_02=>'P322_COL_COD_ARTICULO,P322_COL_PORC_DESCUENTO,P322_VBLE_COD_EMPRESA,P322_SER_COMPROBANTE,P322_GARANTIA,P322_P_TIPO,P322_COD_CLIENTE,P322_COL_CANTIDAD'
,p_attribute_03=>'P322_DESC_ARTICULO,P322_DESC_ARTICULO,P322_COL_PORC_DESCUENTO,P322_COL_PRECIO_UNITARIO,P322_MSJE_ERROR,P322_COL_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81649718425666346)
,p_event_id=>wwv_flow_imp.id(81649507279666344)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('No se encuentra el c\00F3digo de art\00EDculo.')
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P322_MSJE_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84122138599157103)
,p_event_id=>wwv_flow_imp.id(81649507279666344)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Error en la tabla de art\00EDculos.')
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P322_MSJE_ERROR'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84122055301157102)
,p_event_id=>wwv_flow_imp.id(81649507279666344)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Este codigo solo esta habilitado para venta contado.'
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P322_MSJE_ERROR'
,p_client_condition_expression=>'3'
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
 p_id=>wwv_flow_imp.id(84122266092157104)
,p_event_id=>wwv_flow_imp.id(81649507279666344)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'El repuesto &P322_COL_COD_ARTICULO. esta de inventario.'
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'IN_LIST'
,p_client_condition_element=>'P322_MSJE_ERROR'
,p_client_condition_expression=>'4,5'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84122432987157106)
,p_name=>'DA_WHEN_VALIDATE_PRECIO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_COL_PRECIO_UNITARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84122598195157107)
,p_event_id=>wwv_flow_imp.id(84122432987157106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P322_TOT_CANTIDAD := NVL( :P322_TOT_CANTIDAD, 0 ) +',
'                      NVL( :P322_COL_CANTIDAD, 0 ) -',
'                      NVL( :P322_TOT_CANTIDAD_ANT, 0 );',
'',
':P322_TOT_CANTIDAD_ANT := NVL( :P322_COL_CANTIDAD, 0 );',
'',
'IF :P322_COL_DESCRIPCION IS  NULL AND :P322_COL_COD_ARTICULO IS NULL THEN',
'	:P322_COL_COD_ARTICULO := ''REPVAR'';',
'END IF;'))
,p_attribute_02=>'P322_TOT_CANTIDAD,P322_COL_CANTIDAD,P322_TOT_CANTIDAD_ANT,P322_COL_DESCRIPCION,P322_COL_COD_ARTICULO'
,p_attribute_03=>'P322_TOT_CANTIDAD,P322_TOT_CANTIDAD_ANT,P322_COL_COD_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84122754917157109)
,p_name=>'DA_WHEN_VALIDATE_DESC'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_COL_PORC_DESCUENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84122864166157110)
,p_event_id=>wwv_flow_imp.id(84122754917157109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  :P322_COL_COD_ARTICULO IS NOT NULL THEN ',
'	DECLARE ',
'		VNETO VARCHAR2(20);',
'	BEGIN',
'		  SELECT IND_NO_DESCUENTO',
'			INTO VNETO',
'			FROM ST_ARTICULOS',
'		   WHERE COD_EMPRESA = :P322_VBLE_COD_EMPRESA',
'			 AND COD_ARTICULO = :P322_COL_COD_ARTICULO;',
'		 ',
'		 :P322_COL_PRECIO_UNITARIO := PRECIO(:P322_COL_COD_ARTICULO,0);',
'		IF NVL(VNETO,''N'') = ''S'' THEN',
'			:P322_COL_PORC_DESCUENTO := 0; ',
'		END IF;',
'	EXCEPTION',
'		WHEN OTHERS THEN',
'			NULL;',
'	END;',
'END IF;'))
,p_attribute_02=>'P322_COL_COD_ARTICULO,P322_VBLE_COD_EMPRESA'
,p_attribute_03=>'P322_COL_PRECIO_UNITARIO,P322_COL_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P322_COL_COD_ARTICULO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84122996750157111)
,p_name=>'DA_WHEN_VALIDATE_CANT_CONF'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_COL_CANTIDAD_CONFIRMADA'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84123056334157112)
,p_event_id=>wwv_flow_imp.id(84122996750157111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P322_MSJE_ERROR := NULL;',
'IF :P322_COL_CANTIDAD = :P322_COL_CANTIDAD_CONFIRMADA THEN :P322_COL_VERIFICADO := ''S'';',
'END IF;',
'IF NVL(:P322_COL_CANTIDAD_CONFIRMADA,0) > 0 THEN ',
'DECLARE',
'VCANTIDAD       NUMBER(12,2);',
'VSINSTOCK       EXCEPTION;',
'ALGUN_ERROR     EXCEPTION;',
'VAFECTASTOCK    VARCHAR2(1);',
'VCANT_PEND      NUMBER(21,6);',
'VCANT_BLOQ      NUMBER(21,6);',
'VBLOQUEO_TOTAL  VARCHAR2(1);',
'BEGIN',
'    BEGIN',
'',
'BEGIN',
'SELECT IND_MANEJA_STOCK',
'INTO VAFECTASTOCK',
'FROM ST_ARTICULOS',
'WHERE COD_EMPRESA = :P322_VBLE_COD_EMPRESA',
'AND COD_ARTICULO = :P322_COL_COD_ARTICULO;',
'EXCEPTION',
'WHEN ALGUN_ERROR THEN RAISE ALGUN_ERROR;',
'WHEN NO_DATA_FOUND THEN	:P322_MSJE_ERROR := 1;',
'RAISE ALGUN_ERROR;',
'WHEN OTHERS THEN :P322_MSJE_ERROR := 2;',
'RAISE ALGUN_ERROR;',
'END;',
'IF NVL( VAFECTASTOCK, ''N'' ) = ''S''  THEN VCANT_PEND := 0;',
'BEGIN ',
'IF NVL(:P322_RETIRA_DE,''N'') NOT IN (''CDE'',''SLO'',''CONCEPCION'',''OVIEDO'') AND NVL(:P322_COL_IND_OFERTA,''N'') <> ''S'' THEN',
'BEGIN',
'SELECT SUM(ST.CANT_DISPON)',
'INTO VCANTIDAD',
'FROM ST_EXISTENCIA_ART ST',
'WHERE COD_EMPRESA = :P322_VBLE_COD_EMPRESA',
'AND COD_SUCURSAL IN (''101'', ''1015'', ''1054'')',
'AND COD_ARTICULO =  :P322_COL_COD_ARTICULO',
'AND NVL(CANT_DISPON, 0) > 0',
'AND COD_SUCURSAL NOT IN (''262'')',
'AND NVL(:P322_RETIRA_DE,''N'') <> ''CDE''',
'AND NVL(:P322_COL_IND_OFERTA,''N'') <> ''S''',
'HAVING SUM(ST.CANT_DISPON) > 0   ;',
'EXCEPTION',
'WHEN OTHERS THEN ',
'VCANTIDAD := 0;',
'END;',
'END IF;',
'IF NVL(:P322_RETIRA_DE,''N'') IN (''SLO'') AND 	NVL(:P322_COL_IND_OFERTA,''N'') <> ''S'' THEN',
'BEGIN',
'SELECT SUM(ST.CANT_DISPON)',
'INTO VCANTIDAD',
'FROM ST_EXISTENCIA_ART ST',
'WHERE COD_EMPRESA =  :P322_VBLE_COD_EMPRESA',
'AND COD_SUCURSAL IN (''190'')',
'AND COD_ARTICULO = :P322_COL_COD_ARTICULO',
'AND NVL(CANT_DISPON, 0) > 0',
'AND COD_SUCURSAL NOT IN (''262'')',
'AND NVL(:P322_RETIRA_DE,''N'') = ''SLO''',
'AND NVL(:P322_COL_IND_OFERTA,''N'') <> ''S''',
'HAVING SUM(ST.CANT_DISPON) > 0 ;',
'EXCEPTION',
'WHEN OTHERS THEN ',
'VCANTIDAD := 0;',
'END;',
'END IF;',
'IF NVL(:P322_COL_IND_OFERTA,''N'') = ''S'' THEN',
'BEGIN',
'SELECT SUM(ST.CANT_DISPON)',
'INTO VCANTIDAD',
'FROM ST_EXISTENCIA_ART ST',
'WHERE COD_EMPRESA = :P322_VBLE_COD_EMPRESA',
'AND COD_SUCURSAL IN (''154'')',
'AND COD_ARTICULO = :P322_COL_COD_ARTICULO',
'AND NVL(CANT_DISPON, 0) > 0',
'AND NVL(:P322_COL_IND_OFERTA,''N'') = ''S''',
'AND NVL(:P322_RETIRA_DE,''N'' ) <> ''CDE''',
'HAVING SUM(ST.CANT_DISPON) > 0;',
'EXCEPTION',
'WHEN OTHERS THEN ',
'VCANTIDAD := 0;',
'END;',
'END IF;',
'IF NVL(:P322_RETIRA_DE,''N'') = ''CDE'' THEN',
'BEGIN',
'SELECT SUM(ST.CANT_DISPON)',
'INTO VCANTIDAD',
'FROM ST_EXISTENCIA_ART ST',
'WHERE COD_EMPRESA = :P322_VBLE_COD_EMPRESA',
'AND COD_SUCURSAL = BS_Busca_parametro( ''VT'', ''SUC_CDE_REP'' )',
'AND COD_ARTICULO = :P322_COL_COD_ARTICULO',
'AND NVL(CANT_DISPON, 0) > 0',
'AND NVL(:P322_RETIRA_DE,''N'') = ''CDE''',
'HAVING SUM(ST.CANT_DISPON) > 0;',
'EXCEPTION',
'WHEN OTHERS THEN 					',
'VCANTIDAD := 0;',
'END;',
'END IF;',
'IF NVL(:P322_RETIRA_DE,''N'') = ''OVIEDO'' THEN',
'BEGIN',
'SELECT SUM(ST.CANT_DISPON)',
'INTO VCANTIDAD',
'FROM ST_EXISTENCIA_ART ST',
'WHERE COD_EMPRESA = :P322_VBLE_COD_EMPRESA',
'AND COD_SUCURSAL =BS_Busca_parametro( ''VT'', ''SUC_OVIEDO_REP'' )',
'AND COD_ARTICULO = :P322_COL_COD_ARTICULO',
'AND NVL(CANT_DISPON, 0) > 0',
'AND NVL(:P322_RETIRA_DE,''N'') = ''OVIEDO''',
'HAVING SUM(ST.CANT_DISPON) > 0;',
'EXCEPTION',
'WHEN OTHERS THEN 					',
'VCANTIDAD := 0;',
'END;',
'END IF;',
'',
'',
'',
'',
'',
'IF NVL(:P322_COL_CANTIDAD_CONFIRMADA,0) > NVL(VCANTIDAD,0) THEN',
':P322_MSJE_ERROR := 3;',
':P322_AUX_V_CANTIDAD := ltrim(to_char( nvl( vcantidad,0)));',
'IF NVL(:P322_COL_IND_OFERTA,''N'') <> ''S'' THEN :P322_COL_CANTIDAD_CONFIRMADA := 0;',
'RAISE VSINSTOCK;',
'END IF;',
'RAISE VSINSTOCK;     ',
'END IF;',
'EXCEPTION',
'WHEN VSINSTOCK THEN	NULL;',
'WHEN ALGUN_ERROR THEN RAISE ALGUN_ERROR;',
'WHEN OTHERS THEN :P322_MSJE_ERROR := 4;',
'RAISE VSINSTOCK;',
'END;',
'END IF;',
'END;',
'EXCEPTION',
'WHEN ALGUN_ERROR THEN NULL;',
'WHEN VSINSTOCK THEN',
'IF NVL(:P322_COL_IND_OFERTA,''N'') <> ''S'' THEN',
':P322_COL_CANTIDAD_CONFIRMADA := 0;	NULL;',
'END IF;',
'NULL;',
'WHEN OTHERS THEN NULL;',
'END;',
'END IF;'))
,p_attribute_02=>'P322_COL_CANTIDAD,P322_COL_CANTIDAD_CONFIRMADA,P322_VBLE_COD_EMPRESA,P322_COL_COD_ARTICULO,P322_RETIRA_DE,P322_COL_IND_OFERTA'
,p_attribute_03=>'P322_COL_VERIFICADO,P322_MSJE_ERROR,P322_COL_CANTIDAD_CONFIRMADA,P322_AUX_V_CANTIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84123153555157113)
,p_event_id=>wwv_flow_imp.id(84122996750157111)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('No se encuentra el \00EDndice de maneja stock del art\00EDculo.')
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P322_MSJE_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84123275325157114)
,p_event_id=>wwv_flow_imp.id(84122996750157111)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Error al buscar el \00EDndice de stock del art\00EDculo.')
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P322_MSJE_ERROR'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85302492538861115)
,p_event_id=>wwv_flow_imp.id(84122996750157111)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'La cantidad que intenta confirmar del articulo "&P322_COL_COD_ARTICULO." supera la existencia en stock.',
'La existencia actual de esta sucursal &P322_AUX_V_CANTIDAD. unidad(es).'))
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P322_MSJE_ERROR'
,p_client_condition_expression=>'3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84123332186157115)
,p_event_id=>wwv_flow_imp.id(84122996750157111)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'El articulo &P322_COL_COD_ARTICULO. no posee existencia en el stock de esta sucursal.'
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P322_MSJE_ERROR'
,p_client_condition_expression=>'4'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84123408023157116)
,p_name=>'DA_NEXT_ITEM_CANT_CONF'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_COL_CANTIDAD_CONFIRMADA'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84123547598157117)
,p_event_id=>wwv_flow_imp.id(84123408023157116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P322_COL_COD_ARTICULO IS NOT NULL AND :P322_COL_CANTIDAD_CONFIRMADA = 0 THEN',
'	:P322_VBLE_ARTICULO_DEV := :P322_COL_COD_ARTICULO||'' - ''||:P322_COL_DESC_ARTICULO;',
'END IF;'))
,p_attribute_02=>'P322_COL_COD_ARTICULO,P322_COL_CANTIDAD_CONFIRMADA,P322_COL_DESC_ARTICULO'
,p_attribute_03=>'P322_VBLE_ARTICULO_DEV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84123789258157119)
,p_name=>'DA_WHEN_VALIDATE_DESCRIP'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_COL_DESCRIPCION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84123890617157120)
,p_event_id=>wwv_flow_imp.id(84123789258157119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P322_MSJE_ERROR := NULL;',
'IF :P322_COL_COD_ARTICULO = :P322_VBLE_COD_ARTICULO_REM THEN',
'	IF :P322_COL_DESCRIPCION IS NULL THEN',
'		:P322_MSJE_ERROR := 1;',
unistr('		--MENSAJE(''DEBE ESCRIBIR LA DESCRIPCION DE LA REMISI\00D3N'') ;'),
'		--RAISE FORM_TRIGGER_FAILURE ;',
'	END IF ;',
'ELSE',
'	IF :P322_COL_DESCRIPCION IS NULL THEN',
'      :P322_COL_DESCRIPCION := NULL ;',
'	END IF ;',
'END IF ;   ',
'IF :P322_COL_DESCRIPCION IS NOT NULL AND :P322_COL_COD_ARTICULO IS NULL  THEN',
'	:P322_COL_COD_ARTICULO := ''REPVAR'';',
'END IF;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84124062960157122)
,p_event_id=>wwv_flow_imp.id(84123789258157119)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe escribir la descripci\00F3n de la remisi\00F3n.')
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P322_MSJE_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84124149471157123)
,p_name=>'DA_KEY_NEXT_ITEM_CANT'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_COL_CANTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84124203883157124)
,p_event_id=>wwv_flow_imp.id(84124149471157123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	VEXISTE VARCHAR2(10) := ''N'';',
'BEGIN',
'	SELECT ''S''',
'	  INTO VEXISTE',
'	  FROM INV.ST_PROMOCION_REP P, ST_ARTICULOS A',
'	 WHERE P.COD_EMPRESA = A.COD_EMPRESA',
'	   AND P.COD_ART_PROMO = A.COD_ARTICULO',
'	   AND P.COD_ARTICULO = :P322_COL_COD_ARTICULO',
'	   AND P.COD_EMPRESA = :P322_VBLE_COD_EMPRESA',
'	   AND NVL(P.ACTIVO, ''N'') = ''A''',
'	   AND P.FEC_CIERRE >= :P322_FEC_COMPROBANTE',
'	   AND ROWNUM = 1;',
'	IF NVL(:P322_COL_IND_PROMO,''N'') <> ''S'' THEN  ',
'		:P322_COL_CANTIDAD_CONFIRMADA := 0;	   	',
'		--CARGAR_PROMO(:P322_COL_COD_ARTICULO,:P322_COL_CANTIDAD);',
'	END IF;',
'',
'EXCEPTION',
'	WHEN OTHERS THEN ',
'		NULL;',
'END;',
'',
'INV.VTREPDET.DESCUENTO (PI_GARANTIA       => :P322_GARANTIA,',
'					    PI_P_TIPO 		  => :P322_P_TIPO,',
'					    PI_COD_CLIENTE    => :P322_COD_CLIENTE,',
'					    PI_CANTIDAD 	  => :P322_COL_CANTIDAD,',
'					    PI_COD_ARTICULO   => :P322_COL_COD_ARTICULO,',
'					    PO_PORC_DESCUENTO => :P322_COL_PORC_DESCUENTO);'))
,p_attribute_02=>'P322_COL_COD_ARTICULO,P32_VBLE_COD_EMPRESA,P322_FEC_COMPROBANTE,P322_COL_IND_PROMO,P322_COL_CANTIDAD,P322_GARANTIA,P322_P_TIPO,P322_COD_CLIENTE'
,p_attribute_03=>'P322_COL_CANTIDAD_CONFIRMADA,P322_COL_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84124704145157129)
,p_name=>'DA_ELIMINAR_RESERVA'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(84124625989157128)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85303620220861127)
,p_event_id=>wwv_flow_imp.id(84124704145157129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEst\00E1 seguro de querer eliminar el pedido?')
,p_attribute_02=>'Cuidado...'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84124896756157130)
,p_event_id=>wwv_flow_imp.id(84124704145157129)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	VCONFIRMADO VARCHAR2(100);',
'	VMENSAJE VARCHAR2(100);',
'BEGIN',
'	INV.SP_RESERVA_PEDIDO(:P322_VBLE_COD_EMPRESA, ',
'					  ''D'',',
'					 :P322_TIP_COMPROBANTE,',
'					 :P322_SER_COMPROBANTE,',
'					 :P322_NRO_COMPROBANTE,',
'					 VCONFIRMADO,  ',
'					 VMENSAJE);',
'END;'))
,p_attribute_02=>'P322_VBLE_COD_EMPRESA,P322_TIP_COMPROBANTE,P322_SER_COMPROBANTE,P322_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85303897821861129)
,p_event_id=>wwv_flow_imp.id(84124704145157129)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84124965117157131)
,p_name=>'DA_WHEN_VALIDATE_TRASLADADO'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_COL_TRASLADADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84125085141157132)
,p_event_id=>wwv_flow_imp.id(84124965117157131)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P322_COL_VERIFICADO = ''S'' THEN',
'    IF :P322_COL_CANTIDAD_CONFIRMADA IS NULL THEN ',
'    	:P322_COL_CANTIDAD_CONFIRMADA := 0;',
'    END IF;',
'END IF;'))
,p_attribute_02=>'P322_COL_VERIFICADO,P322_COL_CANTIDAD_CONFIRMADA'
,p_attribute_03=>'P322_COL_CANTIDAD_CONFIRMADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84125199666157133)
,p_name=>'DA_WHEN_CHECK_SIN_GARANTIA'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_IND_SIN_GARANTIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84125233869157134)
,p_event_id=>wwv_flow_imp.id(84125199666157133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(:P322_IND_SIN_GARANTIA,''N'') = ''S'' THEN',
'	IF :P322_COL_COD_ARTICULO IS NOT NULL OR :P322_COL_CANTIDAD_CONFIRMADA = 0 THEN',
'	 	:P322_VBLE_ARTICULO_DEV := :P322_COL_COD_ARTICULO||'' - ''||:P322_COL_DESC_ARTICULO;',
'	 	--GO_ITEM(''VARIABLES.COD_MOTIVO_DEV'');',
'	END IF;',
'END IF;'))
,p_attribute_02=>'P322_IND_SIN_GARANTIA,P322_COL_COD_ARTICULO,P322_COL_CANTIDAD_CONFIRMADA,P322_COL_DESC_ARTICULO'
,p_attribute_03=>'P322_VBLE_ARTICULO_DEV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84125328128157135)
,p_name=>'DA_WHEN_CHECK_ANU_DET'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_COL_IND_ANULACION_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84125430111157136)
,p_event_id=>wwv_flow_imp.id(84125328128157135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P322_COL_IND_ANULACION_DETALLE = ''S'' THEN',
'	:P322_FECHA_ANULACION_DET := sysdate;',
'    :P322_COD_USUARIO_ANULACION_DET := :APP_USER;',
'    IF :P322_COL_CANTIDAD_CONFIRMADA IS NULL THEN ',
'    	:P322_COL_CANTIDAD_CONFIRMADA := 0;',
'    	:P322_COL_VERIFICADO := ''S'';',
'    END IF;',
'END IF;'))
,p_attribute_02=>'P322_COL_IND_ANULACION_DETALLE ,P322_COL_CANTIDAD_CONFIRMADA'
,p_attribute_03=>'P322_FECHA_ANULACION_DET,P322_COD_USUARIO_ANULACION_DET,P322_COL_CANTIDAD_CONFIRMADA,P322_COL_VERIFICADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84126621546157148)
,p_name=>'DA_PR_CHECK'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_DIR_AUX_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84126748492157149)
,p_event_id=>wwv_flow_imp.id(84126621546157148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.VTREPDET.PR_CHECK(PI_SEQ_ID    => :P322_DIR_AUX_SEQ_ID, ',
'            			  PI_ACCION    => :P322_DIR_ACCION, ',
'            			  PI_COLECCION => ''COL_DETALLE'',',
'                          PI_ATTR      => 14);',
'    EXCEPTION',
'        WHEN OTHERS THEN ',
unistr('            APEX_DEBUG.ERROR(''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte. ''||SQLERRM);'),
'END;'))
,p_attribute_02=>'P322_DIR_AUX_SEQ_ID,P322_DIR_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84174846740073619)
,p_name=>'DA_OPEN_REGION_REP'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_AUX_COD_ARTICULO_2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84176013266073631)
,p_event_id=>wwv_flow_imp.id(84174846740073619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.VTREPDET.PR_CHECK(PI_SEQ_ID    => :P322_AUX_COD_ARTICULO_2, ',
'            			  PI_ACCION    => :P322_DIR_ACCION, ',
'            			  PI_COLECCION => ''COL_DETALLE'',',
'                          PI_ATTR      => 15);',
'    EXCEPTION',
'        WHEN OTHERS THEN ',
unistr('            APEX_DEBUG.ERROR(''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte. ''||SQLERRM);'),
'END;',
'',
'SELECT C006 COD_ARTICULO',
'  INTO :P322_VBLE_ARTICULO_DEV',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETALLE''',
'   AND SEQ_ID = :P322_AUX_COD_ARTICULO_2;'))
,p_attribute_02=>'P322_AUX_COD_ARTICULO_2,P322_DIR_ACCION'
,p_attribute_03=>'P322_VBLE_ARTICULO_DEV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84174968910073620)
,p_event_id=>wwv_flow_imp.id(84174846740073619)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(84125981833157141)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84175448862073625)
,p_name=>'DA_GUARDAR_REP'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81649107399666340)
,p_condition_element=>'P322_IND_SIN_GARANTIA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84175598390073626)
,p_event_id=>wwv_flow_imp.id(84175448862073625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P322_MSJE_ERROR :=  NULL;',
'IF :P322_VBLE_COD_MOTIVO_DEV IS NOT NULL THEN',
'    :P322_COL_COD_MOTIVO_DEVOLUCION := :P322_VBLE_COD_MOTIVO_DEV;',
'    :P322_COL_OBS_DEVOLUCION := :P322_VBLE_OBS_DEVOLUCION; ',
'ELSE ',
'	:P322_MSJE_ERROR := 1;',
'END IF; ',
''))
,p_attribute_02=>'P322_VBLE_COD_MOTIVO_DEV,P322_VBLE_OBS_DEVOLUCION'
,p_attribute_03=>'P322_MSJE_ERROR,P322_COL_COD_MOTIVO_DEVOLUCION,P322_VBLE_OBS_DEVOLUCION,P322_COL_IND_ANULACION_DETALLE,P322_COL_MOTIVO_ANULA_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84175776270073628)
,p_event_id=>wwv_flow_imp.id(84175448862073625)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar un motivo para continuar.'
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P322_MSJE_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84176738280073638)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_AUX_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84177020916073641)
,p_event_id=>wwv_flow_imp.id(84176738280073638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEst\00E1 seguro que desea eliminar este registro?')
,p_attribute_02=>'Cuidado...'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84176861280073639)
,p_event_id=>wwv_flow_imp.id(84176738280073638)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'    p_collection_name => ''COL_DETALLE'',',
'    p_seq => :P322_AUX_SEQ_ID_ELIMINAR,',
'    p_attr_number => 20,',
'    p_attr_value  => ''D'');'))
,p_attribute_02=>'P322_AUX_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84176995392073640)
,p_event_id=>wwv_flow_imp.id(84176738280073638)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(84126808686157150)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84177186604073642)
,p_name=>'DA_WHEN_CHECK_SIN_STOCK'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_IND_SIN_STOCK'
,p_condition_element=>'P322_IND_SIN_STOCK'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84177220141073643)
,p_event_id=>wwv_flow_imp.id(84177186604073642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(:P322_CONFIRMADO,''N'')=''S'' THEN',
'	:P322_FEC_CONFIRMACION := TO_CHAR(SYSDATE,''DD/MM/YYYY'');',
'	:P322_HORA_CONFIRMACION := TO_CHAR(SYSDATE, ''HH24:MI'');',
'	----CORREO_REP_PREPARADOS(1);',
'ELSE	',
'	:P322_FEC_CONFIRMACION := NULL;',
'	:P322_HORA_CONFIRMACION := NULL;',
'END IF;',
'',
'',
'DECLARE',
'cursor reg is ',
'SELECT  SEQ_ID,',
'       C001 ROW_ID,',
'	   C002 COD_EMPRESA,',
'	   C003 TIP_COMPROBANTE,',
'	   C004 SER_COMPROBANTE,',
'	   C005 NRO_COMPROBANTE,',
'	   C006 COD_ARTICULO,',
'	   C007 DESC_ARTICULO,',
'	   C008 DESCRIPCION,',
'       C009 VERIFICADO,',
'       C010 TRASLADADO,',
'       C011 IND_OFERTA,',
'       C012 IND_ANULACION_DETALLE,',
'	   C013 COD_MOTIVO_ANULA_DETALLE,',
'       C015 IND_SIN_GARANTIA,',
'       C016 ENTREGA_AUTORIZADA_ST,',
'       C017 IND_PROMO,',
'       C018 COD_MOTIVO_DEVOLUCION,',
'       C019 OBSERVACION_DEVOLUCION,',
'	   N001 CANTIDAD,',
'	   N002 CANTIDAD_CONFIRMADA,',
'	   N003 PRECIO_UNITARIO,',
'	   N004 PORC_DESCUENTO        ',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETALLE'' ;',
'',
'begin',
'',
'    for r in reg loop        ',
'        DECLARE',
'         vcant NUMBER:=0;',
'         vchk VARCHAR2(2):=''N'';',
'        BEGIN',
'            IF NVL(:P322_IND_SIN_STOCK,''N'')=''S'' THEN            ',
'                 vchk :=''S'';',
'',
'                  IF :P322_GARANTIA=''G'' THEN',
'                        vcant:=0;',
'                  ELSE',
'                        vcant:=NVL(R.CANTIDAD_CONFIRMADA,0);',
'                  END IF;',
'            ELSE',
'                vcant:=0;',
'                vchk :=''N'';',
'            END IF;',
'',
'            APEX_COLLECTION.UPDATE_MEMBER (p_collection_name => ''COL_DETALLE'',',
'                									   p_seq  => r.SEQ_ID,',
'                									   P_C001 => r.ROW_ID,',
'                									   P_C002 => r.COD_EMPRESA,',
'                									   P_C003 => r.TIP_COMPROBANTE,',
'                									   P_C004 => r.SER_COMPROBANTE,',
'                									   P_C005 => r.NRO_COMPROBANTE,',
'                									   P_C006 => r.COD_ARTICULO,',
'                									   P_C007 => r.DESC_ARTICULO,',
'                									   P_C008 => r.DESCRIPCION,',
'                									   P_C009 => vchk,',
'                									   P_C010 => r.TRASLADADO,',
'                									   P_C011 => r.IND_OFERTA,',
'                									   P_C012 => r.IND_ANULACION_DETALLE,',
'                									   P_C013 => null,',
'                									   P_C014 => null,',
'                									   P_C015 => r.IND_SIN_GARANTIA,',
'                									   P_C016 => r.ENTREGA_AUTORIZADA_ST,',
'                									   P_C017 => r.IND_PROMO,',
'                									   P_C018 => r.COD_MOTIVO_DEVOLUCION,',
'                									   P_C019 => r.OBSERVACION_DEVOLUCION,',
'                									   P_C020 => ''U'',',
'                									   P_C021 => null,',
'                									   P_C022 => null,',
'                									   P_N001 => r.CANTIDAD,',
'                									   P_N002 => vcant,',
'                									   P_N003 => r.PRECIO_UNITARIO,',
'                									   P_N004 => r.PORC_DESCUENTO,',
'                									   P_N005 => PRECIO(r.COD_ARTICULO,NVL(r.PORC_DESCUENTO,0)) * NVL(r.CANTIDAD,0));',
'',
'',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                NULL;',
'        END;',
'    end looP;',
'    ',
'END;'))
,p_attribute_02=>'P322_CONFIRMADO,P322_IND_SIN_STOCK'
,p_attribute_03=>'P322_FEC_CONFIRMACION,P322_HORA_CONFIRMACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179990217393952724)
,p_event_id=>wwv_flow_imp.id(84177186604073642)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(177984759097049504)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84177706593073648)
,p_name=>'DA_WHEN_CHECK_VERIFICADO'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_COL_VERIFICADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84177825780073649)
,p_event_id=>wwv_flow_imp.id(84177706593073648)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P322_MSJE_ERROR := NULL;',
'IF :P322_COL_VERIFICADO = ''S'' THEN',
'IF :P322_COL_CANTIDAD_CONFIRMADA IS NULL THEN :P322_COL_CANTIDAD_CONFIRMADA := 0;',
'END IF;',
'END IF;',
'IF :P322_COL_CANTIDAD = :P322_COL_CANTIDAD_CONFIRMADA THEN',
':P322_COL_VERIFICADO := ''S'';',
'END IF;',
'IF NVL(:P322_COL_CANTIDAD_CONFIRMADA,0) > 0 THEN ',
'DECLARE',
'VCANTIDAD NUMBER(12,2);',
'VSINSTOCK EXCEPTION;',
'ALGUN_ERROR EXCEPTION;',
'VAFECTASTOCK VARCHAR2(1);',
'VCANT_PEND NUMBER(21,6);',
'VCANT_BLOQ NUMBER(21,6);',
'VBLOQUEO_TOTAL VARCHAR2(1);',
'BEGIN',
'BEGIN',
'BEGIN',
'SELECT IND_MANEJA_STOCK',
'INTO VAFECTASTOCK',
'FROM ST_ARTICULOS',
'WHERE COD_EMPRESA = :P322_VBLE_COD_EMPRESA',
'AND COD_ARTICULO = :P322_COL_COD_ARTICULO;',
'EXCEPTION',
'WHEN ALGUN_ERROR THEN RAISE ALGUN_ERROR;',
'WHEN NO_DATA_FOUND THEN :P322_MSJE_ERROR := 1;',
'RAISE ALGUN_ERROR;',
'WHEN OTHERS THEN :P322_MSJE_ERROR := 2;',
'RAISE ALGUN_ERROR;',
'END;',
'IF NVL(VAFECTASTOCK,''N'') = ''S'' THEN VCANT_PEND := 0;',
'BEGIN ',
'IF NVL(:P322_RETIRA_DE,''N'') NOT IN (''CDE'',''SLO'',''OVIEDO'') AND NVL(:P322_COL_IND_OFERTA,''N'') <> ''S'' THEN',
'BEGIN',
'SELECT SUM(ST.CANT_DISPON)',
'INTO VCANTIDAD',
'FROM ST_EXISTENCIA_ART ST',
'WHERE COD_EMPRESA = :P322_VBLE_COD_EMPRESA',
'AND COD_SUCURSAL IN (''101'', ''1015'', ''1054'')',
'AND COD_ARTICULO = :P322_COL_COD_ARTICULO',
'AND NVL(CANT_DISPON, 0) > 0',
'AND COD_SUCURSAL NOT IN (''262'')',
'AND NVL(:P322_RETIRA_DE,''N'') <> ''CDE''',
'AND NVL(:P322_COL_IND_OFERTA,''N'') <> ''S''',
'HAVING SUM(ST.CANT_DISPON) > 0;',
'EXCEPTION',
'WHEN OTHERS THEN ',
'VCANTIDAD := 0;',
'END;',
'END IF;',
'IF NVL(:P322_RETIRA_DE,''N'') IN (''SLO'') AND NVL(:P322_COL_IND_OFERTA,''N'') <> ''S'' THEN',
'BEGIN',
'SELECT SUM(ST.CANT_DISPON)',
'INTO VCANTIDAD',
'FROM ST_EXISTENCIA_ART ST',
'WHERE COD_EMPRESA = :P322_VBLE_COD_EMPRESA',
'AND COD_SUCURSAL IN (''190'')',
'AND COD_ARTICULO = :P322_COL_COD_ARTICULO',
'AND NVL(CANT_DISPON, 0) > 0',
'AND COD_SUCURSAL NOT IN (''262'')',
'AND NVL(:P322_RETIRA_DE,''N'') = ''SLO''',
'AND NVL(:P322_COL_IND_OFERTA,''N'') <> ''S''',
'HAVING SUM(ST.CANT_DISPON) > 0;',
'EXCEPTION',
'WHEN OTHERS THEN VCANTIDAD := 0;',
'END;',
'END IF;',
'IF NVL(:P322_COL_IND_OFERTA,''N'') = ''S'' THEN',
'BEGIN',
'SELECT SUM(ST.CANT_DISPON)',
'INTO VCANTIDAD',
'FROM ST_EXISTENCIA_ART ST',
'WHERE COD_EMPRESA = :P322_VBLE_COD_EMPRESA',
'AND COD_SUCURSAL IN (''154'')',
'AND COD_ARTICULO = :P322_COL_COD_ARTICULO',
'AND NVL(CANT_DISPON, 0) > 0',
'AND NVL(:P322_COL_IND_OFERTA,''N'') = ''S''',
'AND NVL(:P322_RETIRA_DE,''N'') <> ''CDE''',
'HAVING SUM(ST.CANT_DISPON) > 0;',
'EXCEPTION',
'WHEN OTHERS THEN ',
'VCANTIDAD := 0;',
'END;',
'END IF;',
'IF NVL(:P322_RETIRA_DE,''N'') in(''CDE'',''OVIEDO'')THEN',
'BEGIN',
'SELECT SUM(ST.CANT_DISPON)',
'INTO VCANTIDAD',
'FROM ST_EXISTENCIA_ART ST',
'WHERE COD_EMPRESA = :P322_VBLE_COD_EMPRESA',
'AND COD_ARTICULO = :P322_COL_COD_ARTICULO',
'AND NVL(CANT_DISPON, 0) > 0',
'AND ( ( NVL(:P322_RETIRA_DE,''N'') = ''CDE'' AND COD_SUCURSAL =BS_Busca_parametro( ''VT'', ''SUC_CDE_REP'' ))',
'      OR ',
'      ( NVL(:P322_RETIRA_DE,''N'') = ''OVIEDO''AND COD_SUCURSAL =BS_Busca_parametro( ''VT'', ''SUC_OVIEDO_REP'' ))',
'    ) ',
'HAVING SUM(ST.CANT_DISPON) > 0;',
'EXCEPTION',
'WHEN OTHERS THEN ',
'',
'VCANTIDAD := 0;',
'END;',
'END IF; ',
'IF NVL(:P322_COL_CANTIDAD_CONFIRMADA,0) > NVL(VCANTIDAD,0)THEN',
':P322_MSJE_ERROR := 3;',
':P322_AUX_V_CANTIDAD := LTRIM( TO_CHAR( NVL( VCANTIDAD, 0 ) ) );',
'IF NVL(:P322_COL_IND_OFERTA,''N'')<>''S'' THEN',
':P322_COL_CANTIDAD_CONFIRMADA := 0;',
'RAISE VSINSTOCK;',
'END IF; ',
'END IF;',
'EXCEPTION',
'WHEN VSINSTOCK THEN NULL;',
'WHEN ALGUN_ERROR THEN RAISE ALGUN_ERROR;',
'WHEN OTHERS THEN',
':P322_MSJE_ERROR := 4;',
'RAISE VSINSTOCK;',
'END;',
'END IF;',
'END;',
'EXCEPTION',
'WHEN ALGUN_ERROR THEN NULL; ',
'WHEN VSINSTOCK THEN',
'IF NVL(:P322_COL_IND_OFERTA,''N'') <> ''S'' THEN',
':P322_COL_CANTIDAD_CONFIRMADA := 0;',
'END IF;',
'NULL;',
'WHEN OTHERS THEN NULL;',
'END;',
'END IF;',
'DECLARE',
'VCONFIRMADO VARCHAR2(400);',
'VMENSAJE VARCHAR2(400);',
'BEGIN',
'INV.SP_RESERVA_PEDIDO(:P322_VBLE_COD_EMPRESA,''D'',:P322_TIP_COMPROBANTE,:P322_SER_COMPROBANTE,:P322_NRO_COMPROBANTE,VCONFIRMADO,VMENSAJE);',
'INV.SP_RESERVA_PEDIDO(:P322_VBLE_COD_EMPRESA,''I'',:P322_TIP_COMPROBANTE,:P322_SER_COMPROBANTE,:P322_NRO_COMPROBANTE,VCONFIRMADO,VMENSAJE);',
'END;'))
,p_attribute_02=>'P322_NRO_COMPROBANTE,P322_SER_COMPROBANTE,P322_TIP_COMPROBANTE,P322_COL_IND_OFERTA,P322_RETIRA_DE,P322_COL_COD_ARTICULO,P322_VBLE_COD_EMPRESA,P322_COL_VERIFICADO,P322_COL_CANTIDAD_CONFIRMADA,P322_COL_CANTIDAD'
,p_attribute_03=>'P322_MSJE_ERROR,P322_COL_CANTIDAD_CONFIRMADA,P322_COL_VERIFICADO,P322_AUX_V_CANTIDAD'
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
 p_id=>wwv_flow_imp.id(84177943269073650)
,p_event_id=>wwv_flow_imp.id(84177706593073648)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('No se encuentra el \00EDndice de maneja stock del art\00EDculo.')
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P322_MSJE_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85301039113861101)
,p_event_id=>wwv_flow_imp.id(84177706593073648)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Error al buscar el \00EDndice de stock del art\00EDculo.')
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P322_MSJE_ERROR'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85301174263861102)
,p_event_id=>wwv_flow_imp.id(84177706593073648)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'La cantidad que intenta confirmar del articulo "&P322_COL_COD_ARTICULO." supera la existencia en stock.',
'La existencia actual de esta sucursal &P322_AUX_V_CANTIDAD. unidad(es).'))
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P322_MSJE_ERROR'
,p_client_condition_expression=>'3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85301383722861104)
,p_event_id=>wwv_flow_imp.id(84177706593073648)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'El articulo &P322_COL_COD_ARTICULO. no posee existencia en el stock de esta sucursal.'
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P322_MSJE_ERROR'
,p_client_condition_expression=>'4'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85301416401861105)
,p_name=>'DA_ACTUALIZAR_COLECCION'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81649107399666340)
,p_condition_element=>'P322_MSJE_ERROR'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85303169021861122)
,p_event_id=>wwv_flow_imp.id(85301416401861105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P322_COL_IND_ANULACION_DETALLE = ''S'' THEN',
'    IF :P322_COL_MOTIVO_ANULA_DET IS NULL THEN',
'        :P322_MSJE_ERROR := 2;',
'    END IF;',
'END IF;'))
,p_attribute_02=>'P322_COL_IND_ANULACION_DETALLE,P322_COL_MOTIVO_ANULA_DET'
,p_attribute_03=>'P322_MSJE_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85302704799861118)
,p_event_id=>wwv_flow_imp.id(85301416401861105)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe seleccionar un motivo de anulaci\00F3n.')
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P322_MSJE_ERROR'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85301589995861106)
,p_event_id=>wwv_flow_imp.id(85301416401861105)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'V_DESC_MOTIVO_ANULA_DETALLE VARCHAR2(500);',
'BEGIN',
'          IF :P322_COL_MOTIVO_ANULA_DET IS NOT NULL THEN',
'            	BEGIN',
'        			SELECT DESCRIPCION',
'        			  INTO V_DESC_MOTIVO_ANULA_DETALLE',
'        			  FROM VT_MOTIVO_ANULACION ',
'        			 WHERE COD_EMPRESA = :P322_VBLE_COD_EMPRESA ',
'        			   AND COD_MOTIVO_ANU = :P322_COL_MOTIVO_ANULA_DET;',
'        	EXCEPTION',
'            		WHEN OTHERS THEN',
'            			V_DESC_MOTIVO_ANULA_DETALLE :=  NULL;',
'            	END;',
'            END IF;',
'        			',
'    		APEX_COLLECTION.UPDATE_MEMBER (p_collection_name => ''COL_DETALLE'',',
'    									   p_seq  => :P322_SEQ_ID,',
'    									   P_C001 => :P322_COL_ROW_ID,',
'    									   P_C002 => :P322_COL_COD_EMPRESA,',
'    									   P_C003 => :P322_COL_TIP_COMPROBANTE,',
'    									   P_C004 => :P322_COL_SER_COMPROBANTE,',
'    									   P_C005 => :P322_COL_NRO_COMPROBANTE,',
'    									   P_C006 => :P322_COL_COD_ARTICULO,',
'    									   P_C007 => :P322_COL_DESC_ARTICULO,',
'    									   P_C008 => :P322_COL_DESCRIPCION,',
'    									   P_C009 => :P322_COL_VERIFICADO,',
'    									   P_C010 => :P322_COL_TRASLADADO,',
'    									   P_C011 => :P322_COL_IND_OFERTA,',
'    									   P_C012 => :P322_COL_IND_ANULACION_DETALLE,',
'    									   P_C013 => :P322_COL_MOTIVO_ANULA_DET,',
'    									   P_C014 => V_DESC_MOTIVO_ANULA_DETALLE,',
'    									   P_C015 => :P322_IND_SIN_GARANTIA,',
'    									   P_C016 => :P322_COL_ENTREGA_AUTORIZADA_ST,',
'    									   P_C017 => :P322_COL_IND_PROMO,',
'    									   P_C018 => :P322_COL_COD_MOTIVO_DEVOLUCION,',
'    									   P_C019 => :P322_COL_OBS_DEVOLUCION,',
'    									   P_C020 => ''U'',',
'    									   P_C021 => :P322_COD_USUARIO_ANULACION_DET,',
'    									   P_C022 => :P322_FECHA_ANULACION_DET,',
'    									   P_N001 => :P322_COL_CANTIDAD,',
'    									   P_N002 => :P322_COL_CANTIDAD_CONFIRMADA,',
'    									   P_N003 => :P322_COL_PRECIO_UNITARIO,',
'    									   P_N004 => :P322_COL_PORC_DESCUENTO,',
'    									   P_N005 => PRECIO(:P322_COL_COD_ARTICULO,NVL(:P322_COL_PORC_DESCUENTO,0)) * NVL(:P322_COL_CANTIDAD,0));',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P322_SEQ_ID,P322_COL_ROW_ID,P322_COL_COD_EMPRESA,P322_COL_TIP_COMPROBANTE,P322_COL_SER_COMPROBANTE,P322_COL_NRO_COMPROBANTE,P322_COL_COD_ARTICULO,P322_COL_DESC_ARTICULO,P322_COL_DESCRIPCION,P322_COL_VERIFICADO,P322_COL_TRASLADADO,P322_COL_IND_OFERTA,'
||'P322_COL_IND_ANULACION_DETALLE,P322_COL_MOTIVO_ANULA_DET,P322_IND_SIN_GARANTIA,P322_COL_ENTREGA_AUTORIZADA_ST,P322_COL_IND_PROMO,P322_COL_COD_MOTIVO_DEVOLUCION,P322_COL_OBS_DEVOLUCION,P322_COD_USUARIO_ANULACION_DET,P322_FECHA_ANULACION_DET,P322_COL_C'
||'ANTIDAD,P322_COL_CANTIDAD_CONFIRMADA,P322_COL_PRECIO_UNITARIO,P322_COL_PORC_DESCUENTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P322_MSJE_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85302142256861112)
,p_event_id=>wwv_flow_imp.id(85301416401861105)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Los cambios se guardaron correctamente.'
,p_attribute_02=>unistr('Operaci\00F3n existosa')
,p_attribute_03=>'success'
,p_attribute_04=>'fa-check-circle'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P322_MSJE_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85302247395861113)
,p_event_id=>wwv_flow_imp.id(85301416401861105)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(84126808686157150)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P322_MSJE_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85302388314861114)
,p_event_id=>wwv_flow_imp.id(85301416401861105)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81645983695666308)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P322_MSJE_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85301669679861107)
,p_name=>'DA_SHOW_REGION'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_IND_SIN_GARANTIA'
,p_condition_element=>'P322_IND_SIN_GARANTIA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85301701785861108)
,p_event_id=>wwv_flow_imp.id(85301669679861107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(84125981833157141)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85302085030861111)
,p_event_id=>wwv_flow_imp.id(85301669679861107)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(84125981833157141)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85301821366861109)
,p_name=>'DA_HIDE_REGION'
,p_event_sequence=>290
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85301926120861110)
,p_event_id=>wwv_flow_imp.id(85301821366861109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(84125981833157141)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85304192277861132)
,p_name=>'DA_CAREO'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_AUX_CAREO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85304244727861133)
,p_event_id=>wwv_flow_imp.id(85304192277861132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P322_AUX_COL_COD_ARTICULO IS NOT NULL THEN',
'    ',
'	DECLARE				',
'	  VALERTA NUMBER;',
'	  VCOD_ART VARCHAR2(30);',
'	BEGIN',
'		IF :P322_COD_ARTICULO  IS NULL THEN',
'			BEGIN',
'				 SELECT  COD_ARTICULO',
'				   INTO VCOD_ART',
'				   FROM VT_ORDENES_TRABAJO ',
'				  WHERE :P322_VBLE_COD_EMPRESA = COD_EMPRESA      ',
'					AND :P322_TIP_COMPROBANTE_REF=TIP_COMPROBANTE',
'					AND :P322_SER_COMPROBANTE_REF=SER_COMPROBANTE',
'					AND :P322_NRO_COMPROBANTE_REF=NRO_COMPROBANTE;',
'				',
'			EXCEPTION ',
'				WHEN OTHERS THEN',
'					VCOD_ART:=NULL;',
'			END;',
'		ELSE	',
'			VCOD_ART := :P322_COD_ARTICULO ;',
'		END IF;',
'		IF VCOD_ART IS NOT NULL THEN',
'            :P322_MSJE_ALERTA := 1;',
'            :P322_AUX_VCOD_ART := VCOD_ART;          ',
'		END IF;',
'	END ;',
' END IF;'))
,p_attribute_02=>'P322_AUX_CAREO,P322_AUX_COL_COD_ARTICULO,P322_VBLE_COD_EMPRESA,P322_TIP_COMPROBANTE_REF,P322_SER_COMPROBANTE_REF,P322_NRO_COMPROBANTE_REF'
,p_attribute_03=>'P322_MSJE_ALERTA,P322_AUX_VCOD_ART'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85304464816861135)
,p_event_id=>wwv_flow_imp.id(85304192277861132)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Crear una Solicitud de Carneo?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'warning'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P322_MSJE_ALERTA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85304543106861136)
,p_event_id=>wwv_flow_imp.id(85304192277861132)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''COL_PARAMETROS_STPEDCAR'',',
'							   P_C001 => :P322_AUX_VCOD_ART,',
'							   P_C002 => :P322_AUX_COL_COD_ARTICULO);',
'',
'    SELECT APEX_PAGE.GET_URL (  p_page => 350) f_url_1',
'	  INTO :P322_URL',
'	 FROM DUAL;',
'     ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P322_AUX_COL_COD_ARTICULO,P322_AUX_VCOD_ART'
,p_attribute_03=>'P322_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P322_MSJE_ALERTA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85304890358861139)
,p_name=>'DA_URL_PAG_350'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_URL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85304954946861140)
,p_event_id=>wwv_flow_imp.id(85304890358861139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	var url = apex.item("P322_URL").getValue();',
'',
'	apex.navigation.redirect (url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85555205709022926)
,p_name=>'New'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_TIP_COMPROBANTE_REF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85555337226022927)
,p_event_id=>wwv_flow_imp.id(85555205709022926)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P322_TIP_COMPROBANTE_REF'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(347921096876606734)
,p_name=>'da_confirmacion'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_CONFIRMADO'
,p_condition_element=>'P322_CONFIRMADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(340397977734114111)
,p_event_id=>wwv_flow_imp.id(347921096876606734)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P322_HORA_CONFIRMACION,P322_FEC_CONFIRMACION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(340397481924114106)
,p_event_id=>wwv_flow_imp.id(347921096876606734)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'DECLARE ',
'    DUMMY VARCHAR2(1);',
'BEGIN         ',
'        SELECT DISTINCT ''1''',
'        INTO DUMMY',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COL_DETALLE''',
'         AND NVL(C009,''N'')=''N''',
'         AND NVL(C020,''N'') <>''D'';',
'',
'    	:P322_FEC_CONFIRMACION := NULL;',
'    	:P322_hora_confirmacion := null;',
'         ',
'        raise_application_error(-20000, ''Existen detalles pendientes de Verificacion.'');',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN        ',
'         	:P322_FEC_CONFIRMACION := to_char(SYSDATE,''DD/MM/YYYY'');',
'        	:P322_hora_confirmacion := to_char(sysdate, ''HH24:MI'');',
'    WHEN OTHERS THEN',
'    	:P322_FEC_CONFIRMACION := NULL;',
'    	:P322_hora_confirmacion := null; ',
'        raise_application_error(-20000, sqlerrm );',
'END;',
' '))
,p_attribute_02=>'P322_CONFIRMADO'
,p_attribute_03=>'P322_FEC_CONFIRMACION,P322_HORA_CONFIRMACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179989385353952715)
,p_name=>'da_idseq_anula'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_ID_SEQ_ANULA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179990982483952731)
,p_event_id=>wwv_flow_imp.id(179989385353952715)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P322_MOTIVO_ANULA_DET'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179989414712952716)
,p_event_id=>wwv_flow_imp.id(179989385353952715)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(179988813477952710)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179989581717952717)
,p_name=>'da_close_reg'
,p_event_sequence=>350
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(179988813477952710)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179989681702952718)
,p_event_id=>wwv_flow_imp.id(179989581717952717)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(177984759097049504)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179989752743952719)
,p_name=>'da_ok_anula'
,p_event_sequence=>360
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(179988978635952711)
,p_condition_element=>'P322_MOTIVO_ANULA_DET'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179989839629952720)
,p_event_id=>wwv_flow_imp.id(179989752743952719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    cursor reg is SELECT  ',
'       C001 ROW_ID,',
'	   C002 COD_EMPRESA,',
'	   C003 TIP_COMPROBANTE,',
'	   C004 SER_COMPROBANTE,',
'	   C005 NRO_COMPROBANTE,',
'	   C006 COD_ARTICULO,',
'	   C007 DESC_ARTICULO,',
'	   C008 DESCRIPCION,',
'       C009 VERIFICADO,',
'       C010 TRASLADADO,',
'       C011 IND_OFERTA,',
'       C012 IND_ANULACION_DETALLE,',
'	   C013 COD_MOTIVO_ANULA_DETALLE,',
'       C015 IND_SIN_GARANTIA,',
'       C016 ENTREGA_AUTORIZADA_ST,',
'       C017 IND_PROMO,',
'       C018 COD_MOTIVO_DEVOLUCION,',
'       C019 OBSERVACION_DEVOLUCION,',
'	   N001 CANTIDAD,',
'	   N002 CANTIDAD_CONFIRMADA,',
'	   N003 PRECIO_UNITARIO,',
'	   N004 PORC_DESCUENTO        ',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETALLE''',
'   AND SEQ_ID = :P322_ID_SEQ_ANULA;',
'begin',
'',
'    for r in reg loop        ',
'',
'        APEX_COLLECTION.UPDATE_MEMBER (p_collection_name => ''COL_DETALLE'',',
'            									   p_seq  => :P322_ID_SEQ_ANULA,',
'            									   P_C001 => r.ROW_ID,',
'            									   P_C002 => r.COD_EMPRESA,',
'            									   P_C003 => r.TIP_COMPROBANTE,',
'            									   P_C004 => r.SER_COMPROBANTE,',
'            									   P_C005 => r.NRO_COMPROBANTE,',
'            									   P_C006 => r.COD_ARTICULO,',
'            									   P_C007 => r.DESC_ARTICULO,',
'            									   P_C008 => r.DESCRIPCION,',
'            									   P_C009 => ''S'',',
'            									   P_C010 => r.TRASLADADO,',
'            									   P_C011 => r.IND_OFERTA,',
'            									   P_C012 => ''S'',',
'            									   P_C013 => :P322_MOTIVO_ANULA_DET,',
'            									   P_C014 => null,',
'            									   P_C015 => r.IND_SIN_GARANTIA,',
'            									   P_C016 => r.ENTREGA_AUTORIZADA_ST,',
'            									   P_C017 => r.IND_PROMO,',
'            									   P_C018 => r.COD_MOTIVO_DEVOLUCION,',
'            									   P_C019 => r.OBSERVACION_DEVOLUCION,',
'            									   P_C020 => ''U'',',
'            									   P_C021 => null,',
'            									   P_C022 => null,',
'            									   P_N001 => r.CANTIDAD,',
'            									   P_N002 => 0,',
'            									   P_N003 => r.PRECIO_UNITARIO,',
'            									   P_N004 => r.PORC_DESCUENTO,',
'            									   P_N005 => PRECIO(r.COD_ARTICULO,NVL(r.PORC_DESCUENTO,0)) * NVL(r.CANTIDAD,0));',
'   end loop;',
'exception',
'when others then ',
'raise_application_error(-20000, sqlerrm );',
'end;'))
,p_attribute_02=>'P322_ID_SEQ_ANULA,P322_MOTIVO_ANULA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179989934610952721)
,p_event_id=>wwv_flow_imp.id(179989752743952719)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar un motivo.'
,p_attribute_02=>'Motivo'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179990036701952722)
,p_event_id=>wwv_flow_imp.id(179989752743952719)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(177984759097049504)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179990194675952723)
,p_event_id=>wwv_flow_imp.id(179989752743952719)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(179988813477952710)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179991027207952732)
,p_name=>'DA_CANT_CONF'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P322_ID_SEQ_CANT_CONF'
,p_condition_element=>'P322_ID_SEQ_CANT_CONF'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179991162796952733)
,p_event_id=>wwv_flow_imp.id(179991027207952732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P322_CANTIDAD_CONFIRMA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179991206955952734)
,p_event_id=>wwv_flow_imp.id(179991027207952732)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(179990546294952727)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179991325612952735)
,p_name=>'da_ok_conf_cant'
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(179990840428952730)
,p_condition_element=>'P322_CANTIDAD_CONFIRMA'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179991613870952738)
,p_event_id=>wwv_flow_imp.id(179991325612952735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    cursor reg is SELECT  ',
'       C001 ROW_ID,',
'	   C002 COD_EMPRESA,',
'	   C003 TIP_COMPROBANTE,',
'	   C004 SER_COMPROBANTE,',
'	   C005 NRO_COMPROBANTE,',
'	   C006 COD_ARTICULO,',
'	   C007 DESC_ARTICULO,',
'	   C008 DESCRIPCION,',
'       C009 VERIFICADO,',
'       C010 TRASLADADO,',
'       C011 IND_OFERTA,',
'       C012 IND_ANULACION_DETALLE,',
'	   C013 COD_MOTIVO_ANULA_DETALLE,',
'       C015 IND_SIN_GARANTIA,',
'       C016 ENTREGA_AUTORIZADA_ST,',
'       C017 IND_PROMO,',
'       C018 COD_MOTIVO_DEVOLUCION,',
'       C019 OBSERVACION_DEVOLUCION,',
'	   N001 CANTIDAD,',
'	   N002 CANTIDAD_CONFIRMADA,',
'	   N003 PRECIO_UNITARIO,',
'	   N004 PORC_DESCUENTO        ',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETALLE''',
'   AND SEQ_ID = :P322_ID_SEQ_CANT_CONF;',
'begin',
'',
'    for r in reg loop        ',
'',
'        APEX_COLLECTION.UPDATE_MEMBER (p_collection_name => ''COL_DETALLE'',',
'            									   p_seq  => :P322_ID_SEQ_CANT_CONF,',
'            									   P_C001 => r.ROW_ID,',
'            									   P_C002 => r.COD_EMPRESA,',
'            									   P_C003 => r.TIP_COMPROBANTE,',
'            									   P_C004 => r.SER_COMPROBANTE,',
'            									   P_C005 => r.NRO_COMPROBANTE,',
'            									   P_C006 => r.COD_ARTICULO,',
'            									   P_C007 => r.DESC_ARTICULO,',
'            									   P_C008 => r.DESCRIPCION,',
'            									   P_C009 => ''S'',',
'            									   P_C010 => r.TRASLADADO,',
'            									   P_C011 => r.IND_OFERTA,',
'            									   P_C012 => null,',
'            									   P_C013 => null,',
'            									   P_C014 => null,',
'            									   P_C015 => r.IND_SIN_GARANTIA,',
'            									   P_C016 => r.ENTREGA_AUTORIZADA_ST,',
'            									   P_C017 => r.IND_PROMO,',
'            									   P_C018 => r.COD_MOTIVO_DEVOLUCION,',
'            									   P_C019 => r.OBSERVACION_DEVOLUCION,',
'            									   P_C020 => ''U'',',
'            									   P_C021 => null,',
'            									   P_C022 => null,',
'            									   P_N001 => r.CANTIDAD,',
'            									   P_N002 => :P322_CANTIDAD_CONFIRMA,',
'            									   P_N003 => r.PRECIO_UNITARIO,',
'            									   P_N004 => r.PORC_DESCUENTO,',
'            									   P_N005 => PRECIO(r.COD_ARTICULO,NVL(r.PORC_DESCUENTO,0)) * NVL(r.CANTIDAD,0));',
'   end loop;',
'exception',
'when others then ',
'raise_application_error(-20000, sqlerrm );',
'end;'))
,p_attribute_02=>'P322_CANTIDAD_CONFIRMA,P322_ID_SEQ_CANT_CONF'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179991786070952739)
,p_event_id=>wwv_flow_imp.id(179991325612952735)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe cargar la Cantidad Confirmada.'
,p_attribute_02=>'Motivo'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179991540941952737)
,p_event_id=>wwv_flow_imp.id(179991325612952735)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(177984759097049504)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179991454750952736)
,p_event_id=>wwv_flow_imp.id(179991325612952735)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(179990546294952727)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(183085106157712028)
,p_name=>'da_aft_rfsh'
,p_event_sequence=>390
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(177984759097049504)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183085206367712029)
,p_event_id=>wwv_flow_imp.id(183085106157712028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(84176105596073632)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(84174126555073612)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(84126808686157150)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'DETALLE - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.VTREPDET.GUARDAR_VTREPDET;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(85303313407861124)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDADO_CABECERA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare    ',
'     vCONFIRMADO            varchar(5)  ;',
'     vFEC_CONFIMACION       varchar(20) ;',
'     vHORA_CONFIRMACION     varchar(20) ;',
'BEGIN ',
' ',
' ',
'	UPDATE vt_pedidos_cabecera_rep',
'	   SET OBSERVACION = :P322_OBSERVACION,              ',
'          ANULADO = :P322_ANULADO,',
'          COD_USUARIO_ANU = :P322_COD_USUARIO_ANU,',
'          COD_MOTIVO_ANU = :P322_COD_MOTIVO_ANU,',
'          FEC_ESTADO = sysdate,',
'          IND_SIN_STOCK = NVL(:P322_IND_SIN_STOCK,''N''),',
'          CONFIRMADO= NVL(:P322_CONFIRMADO ,''N'') ,',
'           FEC_CONFIMACION=   :P322_FEC_CONFIRMACION,',
'           HORA_CONFIRMACION = :P322_HORA_CONFIRMACION',
'	 WHERE ROWID = :P322_ROW_ID_CABECERA;',
'    ',
'EXCEPTION',
'	WHEN OTHERS THEN   ',
'		raise_application_error(-20000,''Error en el guardado de la cabecera: ''||SQLERRM);',
'END;',
'',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(81645489759666303)
,p_process_success_message=>'Los cambios se guardaron exitosamente.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(85303558768861126)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDADO_DETALLE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    INV.VTREPDET.GUARDAR_VTREPDET;',
'EXCEPTION',
'    WHEN OTHERS THEN raise_application_error(-20000, sqlerrm );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(81645489759666303)
,p_process_success_message=>'Los cambios se guardaron exitosamente.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(81327957184016304)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DETALLE'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_UBICACIONES'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_PARAMETROS_STPEDCAR'');',
'',
'    :P_COD_MODULO := ''VT'';',
'    --INICIALIZA GLOBALES',
'    :P322_VBLE_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
'    :P322_VBLE_COD_EMPRESA := NVL(:P_COD_EMPRESA, ''1'');',
'    :P322_VBLE_COD_SUCURSAL := NVL(:P_COD_SUCURSAL, ''01'');',
'    :P322_VBLE_COD_MODULO := NVL(:P_COD_MODULO, ''VT'');',
'    ',
'    LIBRERIA_FORMAS.RUTINA_INICIAL(PI_COD_MODULO => :P322_VBLE_COD_MODULO,',
'                                   PI_COD_FORMA  => :P322_COD_FORMA,',
'                                   PI_NOM_MODULO => :P322_NOM_MODULO,',
'                                   PI_NOM_FORMA  => :P322_NOM_FORMA,',
'                				   PO_NOM_MODULO => :P322_NOM_MODULO,',
'                				   PO_NOM_FORMA  => :P322_NOM_FORMA);',
'    ',
'    :P322_MODIFICA_PRECIO_VENTA := busca_permiso(p_empresa => :P322_VBLE_COD_EMPRESA,',
'                                                      p_forma   => :P322_COD_FORMA,',
'                                                      p_usuario => :P322_VBLE_COD_USUARIO,',
'                                                      p_permiso => ''MODIFICA_PRECIO_VENTA'');',
'',
'    IF :P322_P_SER_COMPROBANTE IS NOT NULL AND :P322_P_NRO_COMPROBANTE IS NOT NULL THEN',
'        BEGIN',
'            SELECT ROWID,',
'                   COD_EMPRESA,',
'                   COD_SUCURSAL,',
'                   TIP_COMPROBANTE,',
'                   SER_COMPROBANTE,',
'                   NRO_COMPROBANTE,',
'                   FEC_COMPROBANTE,',
'                   COD_CLIENTE,',
'                   NOM_CLIENTE,',
'                   OBSERVACION,',
'                   ANULADO,',
'                   COD_MOTIVO_ANU,',
'                   CONFIRMADO,',
'                   HORA_CONFIRMACION,',
'                   IND_SIN_STOCK,',
'                   GARANTIA,',
'                   TRASLADO,',
'                   COD_USUARIO_ANU,',
'                   P_TIPO,',
'                   HORA_ALTA,',
'                   TIP_COMPROBANTE_REF,',
'                   NRO_COMPROBANTE_REF,',
'                   SER_COMPROBANTE_REF,',
'                   RETIRA_DE,',
'                   DERIVADO,',
'                   IND_ENVIAR,',
'                   FEC_CONFIMACION',
'              INTO :P322_ROW_ID_CABECERA,',
'                   :P322_COD_EMPRESA,',
'                   :P322_COD_SUCURSAL,',
'                   :P322_TIP_COMPROBANTE,',
'                   :P322_SER_COMPROBANTE,',
'                   :P322_NRO_COMPROBANTE,',
'                   :P322_FEC_COMPROBANTE,',
'                   :P322_COD_CLIENTE,',
'                   :P322_NOM_CLIENTE,',
'                   :P322_OBSERVACION,',
'                   :P322_ANULADO,',
'                   :P322_COD_MOTIVO_ANU,',
'                   :P322_CONFIRMADO,',
'                   :P322_HORA_CONFIRMACION,',
'                   :P322_IND_SIN_STOCK,',
'                   :P322_GARANTIA,',
'                   :P322_TRASLADO,',
'                   :P322_COD_USUARIO_ANU,',
'                   :P322_P_TIPO,',
'                   :P322_HORA_ALTA,',
'                   :P322_TIP_COMPROBANTE_REF,',
'                   :P322_SER_COMPROBANTE_REF,',
'                   :P322_NRO_COMPROBANTE_REF,',
'                   :P322_RETIRA_DE,',
'                   :P322_DERIVADO,',
'                   :P322_IND_ENVIAR,',
'                   :P322_FEC_CONFIRMACION',
'              FROM vt_pedidos_cabecera_rep',
'             WHERE cod_empresa = :P_COD_EMPRESA',
'               and (:P322_P_NRO_COMPROBANTE is null or nro_comprobante = :P322_P_NRO_COMPROBANTE)',
'               and (:P322_P_SER_COMPROBANTE is null or SER_comprobante = :P322_P_SER_COMPROBANTE);',
'               ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'               :P322_ROW_ID_CABECERA := NULL;',
'               :P322_COD_EMPRESA := NULL;',
'               :P322_COD_SUCURSAL := NULL;',
'               :P322_TIP_COMPROBANTE := NULL;',
'               :P322_SER_COMPROBANTE := NULL;',
'               :P322_NRO_COMPROBANTE := NULL;',
'               :P322_FEC_COMPROBANTE := NULL;',
'               :P322_COD_CLIENTE := NULL;',
'               :P322_NOM_CLIENTE := NULL;',
'               :P322_OBSERVACION := NULL;',
'               :P322_ANULADO := NULL;',
'               :P322_COD_MOTIVO_ANU := NULL;',
'               :P322_CONFIRMADO := NULL;',
'               :P322_HORA_CONFIRMACION := NULL;',
'               :P322_IND_SIN_STOCK := NULL;',
'               :P322_GARANTIA := NULL;',
'               :P322_TRASLADO := NULL;',
'               :P322_COD_USUARIO_ANU := NULL;',
'               :P322_P_TIPO := NULL;',
'               :P322_HORA_ALTA := NULL;',
'               :P322_TIP_COMPROBANTE_REF := NULL;',
'               :P322_SER_COMPROBANTE_REF := NULL;',
'               :P322_NRO_COMPROBANTE_REF := NULL;',
'               :P322_RETIRA_DE := NULL;',
'               :P322_DERIVADO := NULL;',
'               :P322_IND_ENVIAR := NULL;',
'        END;',
'    END IF;',
'',
'--POST_QUERY',
'    ',
'    IF :P322_TIP_COMPROBANTE IS NOT NULL THEN ',
'    		BEGIN',
'    			  SELECT DESCRIPCION',
'    			    INTO :P322_DESC_TIPO',
'    			    FROM TIPOS_COMPROBANTES',
'    			   WHERE COD_EMPRESA     = :P_COD_EMPRESA',
'    			     AND TIP_COMPROBANTE = :P322_TIP_COMPROBANTE;',
'    		EXCEPTION',
'    		    WHEN OTHERS THEN',
'    		        :P322_DESC_TIPO := NULL;',
'    		END;',
'    END IF;',
'',
'    IF :P322_NRO_COMPROBANTE_REF IS NOT NULL THEN',
'    		BEGIN',
'    				SELECT OT.COD_ARTICULO, ',
'    					   DESCRIPCION',
'    				  INTO :P322_COD_ARTICULO,',
'    				       :P322_DESC_ARTICULO',
'    				  FROM VT_ORDENES_TRABAJO OT,',
'    				       ST_ARTICULOS AR',
'    				WHERE OT.COD_EMPRESA     = :P_COD_EMPRESA',
'    					AND OT.SER_COMPROBANTE = :P322_SER_COMPROBANTE_REF',
'    					AND OT.TIP_COMPROBANTE = :P322_TIP_COMPROBANTE_REF',
'    					AND OT.NRO_COMPROBANTE = :P322_NRO_COMPROBANTE_REF',
'    					AND OT.COD_EMPRESA     = AR.COD_EMPRESA',
'    					AND OT.COD_ARTICULO    = AR.COD_ARTICULO;',
'    		EXCEPTION',
'    				WHEN OTHERS THEN',
'    						:P322_COD_ARTICULO := NULL;',
'    						:P322_DESC_ARTICULO:= NULL;',
'    		END;',
'    END IF;',
'',
'    IF :P322_COD_MOTIVO_ANU IS NOT NULL THEN',
'    		BEGIN',
'    				SELECT DESCRIPCION',
'    				  INTO :P322_DESC_MOTIVO',
'    				  FROM VT_MOTIVO_ANULACION ',
'    				 WHERE COD_EMPRESA    = :P_COD_EMPRESA ',
'    				   AND COD_MOTIVO_ANU = :P322_COD_MOTIVO_ANU;',
'    		EXCEPTION',
'    		    WHEN OTHERS THEN',
'    		        :P322_DESC_MOTIVO :=  NULL;',
'    		END;',
'    END IF;',
'',
'    BEGIN',
'         SELECT SUM(CANTIDAD)',
'           INTO :P322_TOT_CANTIDAD',
'           FROM ST_REMISION_DET',
'          WHERE COD_EMPRESA = :P322_COD_EMPRESA',
'            AND TIP_COMPROBANTE = :P322_TIP_COMPROBANTE',
'            AND SER_COMPROBANTE = :P322_SER_COMPROBANTE',
'            AND NRO_COMPROBANTE = :P322_NRO_COMPROBANTE ;',
'        EXCEPTION',
'         WHEN OTHERS THEN',
'              :P322_TOT_CANTIDAD := 0;',
'    END ;',
'',
'    IF :P322_TIP_COMPROBANTE IS NOT NULL AND :P322_SER_COMPROBANTE IS NOT NULL AND :P322_NRO_COMPROBANTE IS NOT NULL THEN',
'        INV.VTREPDET.CARGAR_COLECCION_VTREPDET(P_COD_EMPRESA 	 => :P322_COD_EMPRESA,',
'                                               P_TIP_COMPROBANTE => :P322_TIP_COMPROBANTE,',
'                                               P_SER_COMPROBANTE => :P322_SER_COMPROBANTE,',
'            								   P_NRO_COMPROBANTE => :P322_NRO_COMPROBANTE,',
'            								   P_COD_MARCA 	     => :P322_P_COD_MARCA);',
'    END IF;                                               ',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(179988685630952708)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VERIFICADO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vid_seq varchar2(50) := apex_application.g_x01;',
'    vchk varchar2(50):= apex_application.g_x02;  ',
'    vcant number;',
'    cursor reg is SELECT  ',
'       C001 ROW_ID,',
'	   C002 COD_EMPRESA,',
'	   C003 TIP_COMPROBANTE,',
'	   C004 SER_COMPROBANTE,',
'	   C005 NRO_COMPROBANTE,',
'	   C006 COD_ARTICULO,',
'	   C007 DESC_ARTICULO,',
'	   C008 DESCRIPCION,',
'       C009 VERIFICADO,',
'       C010 TRASLADADO,',
'       C011 IND_OFERTA,',
'       C012 IND_ANULACION_DETALLE,',
'	   C013 COD_MOTIVO_ANULA_DETALLE,',
'       C015 IND_SIN_GARANTIA,',
'       C016 ENTREGA_AUTORIZADA_ST,',
'       C017 IND_PROMO,',
'       C018 COD_MOTIVO_DEVOLUCION,',
'       C019 OBSERVACION_DEVOLUCION,',
'	   N001 CANTIDAD,',
'	   N002 CANTIDAD_CONFIRMADA,',
'	   N003 PRECIO_UNITARIO,',
'	   N004 PORC_DESCUENTO        ',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETALLE''',
'   AND SEQ_ID = vid_seq;',
'begin',
'',
'    for r in reg loop        ',
'        if nvl(vchk,''N'')=''S'' then  ',
'            vcant:=r.CANTIDAD;',
'        else',
'            vcant:=0;',
'        end IF;',
'',
'APEX_COLLECTION.UPDATE_MEMBER (p_collection_name => ''COL_DETALLE'',',
'    									   p_seq  => vid_seq,',
'    									   P_C001 => r.ROW_ID,',
'    									   P_C002 => r.COD_EMPRESA,',
'    									   P_C003 => r.TIP_COMPROBANTE,',
'    									   P_C004 => r.SER_COMPROBANTE,',
'    									   P_C005 => r.NRO_COMPROBANTE,',
'    									   P_C006 => r.COD_ARTICULO,',
'    									   P_C007 => r.DESC_ARTICULO,',
'    									   P_C008 => r.DESCRIPCION,',
'    									   P_C009 => vchk,',
'    									   P_C010 => r.TRASLADADO,',
'    									   P_C011 => r.IND_OFERTA,',
'    									   P_C012 => r.IND_ANULACION_DETALLE,',
'    									   P_C013 => null,',
'    									   P_C014 => null,',
'    									   P_C015 => r.IND_SIN_GARANTIA,',
'    									   P_C016 => r.ENTREGA_AUTORIZADA_ST,',
'    									   P_C017 => r.IND_PROMO,',
'    									   P_C018 => r.COD_MOTIVO_DEVOLUCION,',
'    									   P_C019 => r.OBSERVACION_DEVOLUCION,',
'    									   P_C020 => ''U'',',
'    									   P_C021 => null,',
'    									   P_C022 => null,',
'    									   P_N001 => r.CANTIDAD,',
'    									   P_N002 => vcant,',
'    									   P_N003 => r.PRECIO_UNITARIO,',
'    									   P_N004 => r.PORC_DESCUENTO,',
'    									   P_N005 => PRECIO(r.COD_ARTICULO,NVL(r.PORC_DESCUENTO,0)) * NVL(r.CANTIDAD,0));',
'',
'',
'',
'    end looP;',
'    ',
'  apex_json.open_object;',
'  apex_json.write(''success'', TRUE);',
'  apex_json.close_object;',
'  ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        apex_json.open_object;',
'        apex_json.write(''success'', false);',
'        apex_json.write(''message'', sqlerrm);',
'        apex_json.close_object;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(340397610798114108)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CONFIRMADO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'        DUMMY VARCHAR2(1);',
'    BEGIN     ',
'        SELECT DISTINCT ''1''',
'        INTO DUMMY',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COL_DETALLE''',
'         AND NVL(C009,''N'')=''N'';',
'         ',
'        apex_json.open_object;',
'        apex_json.write(''success'', false); ',
'        apex_json.close_object;',
'      ',
'  ',
'EXCEPTION    ',
'    WHEN NO_DATA_FOUND THEN',
'      apex_json.open_object;',
'      apex_json.write(''success'', TRUE);',
'      apex_json.close_object;',
'',
'    WHEN OTHERS THEN',
'        apex_json.open_object;',
'        apex_json.write(''success'', false); ',
'        apex_json.close_object;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
