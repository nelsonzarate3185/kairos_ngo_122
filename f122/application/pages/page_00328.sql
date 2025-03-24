prompt --application/pages/page_00328
begin
--   Manifest
--     PAGE: 00328
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
 p_id=>328
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CAREPDET'
,p_alias=>'CAREPDET'
,p_step_title=>'CAREPDET'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P328_ACCION'',''AGREGAR'');',
'      $s(''P328_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P328_ACCION'',''QUITAR'');',
'      $s(''P328_SEQ_ID'', cb.value,false);',
'  }',
'}',
'',
'function seleccionar_anu(cb) { ',
'  if (cb.checked == true){  ',
'      $s(''P328_SEQ_ID_ANU'', cb.value,false);',
'  } else { ',
'      $(''#detalle'').trigger(''apexrefresh''); ',
'  }',
'}',
'',
'function seleccionar_tras(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P328_ACCION_TRAS'',''AGREGAR'');',
'      $s(''P328_SEQ_ID_TRAS'', cb.value,false);',
'  } else {',
'      $s(''P328_ACCION_TRAS'',''QUITAR'');',
'      $s(''P328_SEQ_ID_TRAS'', cb.value,false);',
'  }',
'}',
'',
'',
'function anula(cb){',
'        if (cb.checked == true){ ',
'            $s(''P322_ID_SEQ_ANULA'', cb.value,false);',
'        } else { ',
'                $(''#detalle'').trigger(''apexrefresh'');   ',
'        }',
'',
'}',
'',
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
' ',
'                    if (pData.p_vinculado === "N"){',
unistr('                            vmsg = ''No se encuentra vinculado el repuesto con el producto. \005Cn \00BFDesea vincular el repuesto ''+ pData.p_cod_repuesto +'' ?'' ;'),
'                            apex.message.confirm(vmsg, function(okPressed) {',
'                                                                            if (okPressed) {',
'                                                                                                 apex.server.process("VINCULAR", {',
'                                                                                                                x01: pData.p_cod_articulo,',
'                                                                                                                x02: pData.p_cod_repuesto, ',
'                                                                                                                }, {',
'                                                                                                                success: function(pData) {',
unistr('                                                                                                                if (pData.success =! true) { /*apex.message.showPageSuccess("Repuesto Vinculado con \00E9xito!"); */'),
unistr('                                                                                                                /*apex.message.alert("Repuesto Vinculado con \00E9xito!");*/'),
'                                                                                                                apex.message.alert("El Repuesto no pudo ser Vinculado");',
'                                                                                                                }                                                                                                               ',
'',
'                                                                                                                },',
'                                                                                                                error: function(request, status, error) {                                                                                                 '
||'                   ',
'                                                                                                                                        apex.message.clearErrors();',
'                                                                                                                                        apex.message.showErrors({',
'                                                                                                                                            type: "errors",',
'                                                                                                                                            location: "page",',
'                                                                                                                                            message: error+status+request,',
'                                                                                                                                            unsafe: false',
'                                                                                                                                        });',
'                                                                                                                }',
'                                                                                                                });',
'                                                                                            }',
'                                                                            }',
'                                                ); ',
'',
'                       }',
'',
'',
'                       $(''#detalle'').trigger(''apexrefresh'');     ',
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
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'.t-Report-colHead, .a-IRR-headerLink {',
'      background: #003a85!important;',
'       color: yellow; ',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20250313110756'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79322337813732430)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79323046835732437)
,p_plug_name=>'DETALLE'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79761943961789208)
,p_plug_name=>'AGREGAR/EDITAR'
,p_parent_plug_id=>wwv_flow_imp.id(79323046835732437)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79763178978789220)
,p_plug_name=>'REPORTE_DETALLE'
,p_region_name=>'detalle'
,p_parent_plug_id=>wwv_flow_imp.id(79323046835732437)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    seq_id p_id,',
'    c001 COD_ARTICULO,',
'    C010 DESC_ARTICULO,',
'    c002 DESCRIPCION,',
'    c003 CANTIDAD,',
'    c004 CONFIRMADA,',
'    APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => seq_id,',
'                    p_attributes  => (case c005',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                     end ) ||''onclick="verificado(this)"'' )as VERIFICADO, ',
'    APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => seq_id,',
'                    p_attributes  => (case c006',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                     end ) ||''onclick="seleccionar_tras(this)"'' )as TRASLADADO,',
'     APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => seq_id,',
'                    p_attributes  => (case c007',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                     end ) ||''onclick="seleccionar_anu(this)"'' )as ind_anulacion_detalle,',
'   ',
'    ',
'     ',
'    c008 COD_MOTIVO_ANULACION_DETALLE,',
'    c009 RID , ',
'    NULL UBICACION,',
'    NULL DETALLE,',
'    NULL EDITAR,',
'    NULL ELIMINAR',
'from apex_collections',
'where collection_name = ''COL_CAREPDET''',
'AND NVL(C030,''O'')<> ''B''',
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
 p_id=>wwv_flow_imp.id(79763231655789221)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>79763231655789221
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79763482654789223)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81098107454645113)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'P'
,p_column_label=>unistr('Descripci\00F3n Articulo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79763594054789224)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79763631916789225)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79763762445789226)
,p_db_column_name=>'CONFIRMADA'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Confirmada'
,p_column_link=>'javascript:$s(''P328_ID_SEQ_CANT_CONF'',''#P_ID#'');'
,p_column_linktext=>'#CONFIRMADA#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79763836935789227)
,p_db_column_name=>'VERIFICADO'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Verificado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79763937815789228)
,p_db_column_name=>'TRASLADADO'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Trasladado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79764074234789229)
,p_db_column_name=>'IND_ANULACION_DETALLE'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Anulado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79764195155789230)
,p_db_column_name=>'COD_MOTIVO_ANULACION_DETALLE'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Motivo Anulacion'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(80437244986957466)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79764258829789231)
,p_db_column_name=>'RID'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Rid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79765704134789246)
,p_db_column_name=>'UBICACION'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Ubicacion'
,p_column_link=>'javascript:$s(''P328_SEQ_ID_UBI'',''#COD_ARTICULO#'');'
,p_column_linktext=>'<span class="fa fa-location" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79765871320789247)
,p_db_column_name=>'DETALLE'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P328_SEQ_ID_DETALLE'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79766159798789250)
,p_db_column_name=>'P_ID'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80450525385052203)
,p_db_column_name=>'EDITAR'
,p_display_order=>160
,p_column_identifier=>'N'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P328_SEQ_ID_EDITAR'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80450683758052204)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>170
,p_column_identifier=>'O'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P328_SEQ_ID_ELIMINAR'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(80059409685183847)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'800595'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:CONFIRMADA:VERIFICADO:TRASLADADO:IND_ANULACION_DETALLE:COD_MOTIVO_ANULACION_DETALLE:UBICACION:DETALLE:ELIMINAR'
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
 p_id=>wwv_flow_imp.id(79323122066732438)
,p_plug_name=>'UBICACION'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    COD_SUCURSAL,  ',
'    piso,',
'    pasillo,',
'    cuerpo,',
'    bandeja,',
'    contenedor',
'from ST_UBIC_ARTICULOS',
'where cod_articulo = :P328_SEQ_ID_UBI;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P328_SEQ_ID_UBI'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'UBICACION'
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
 p_id=>wwv_flow_imp.id(81097171306645103)
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
,p_internal_uid=>81097171306645103
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81097298180645104)
,p_db_column_name=>'PISO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Piso'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81097327295645105)
,p_db_column_name=>'PASILLO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Pasillo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81097494869645106)
,p_db_column_name=>'CUERPO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cuerpo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81097554017645107)
,p_db_column_name=>'BANDEJA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Bandeja'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81097627453645108)
,p_db_column_name=>'CONTENEDOR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Contenedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81097807802645110)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(41127354264101747)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(81111585518677504)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'811116'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_SUCURSAL:PISO:PASILLO:CUERPO:BANDEJA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79762984844789218)
,p_plug_name=>'CARGA DE PEDIDOS REPUESTO DETALLADO'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79322987334732436)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(79762984844789218)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(179992301115952745)
,p_plug_name=>'ANULA DETALLE'
,p_region_css_classes=>'js-dialog-size300x200'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(183082840834712005)
,p_plug_name=>'cantidad confirmada'
,p_region_css_classes=>'js-dialog-size300x200'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1060
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(183083010366712007)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(183082840834712005)
,p_button_name=>'btn_cant_conf'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(179992750219952749)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(179992301115952745)
,p_button_name=>'BTN_ANULA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ACEPTAR'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79762849110789217)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(79761943961789208)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79762492449789213)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(79761943961789208)
,p_button_name=>'BT_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79762505860789214)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(79761943961789208)
,p_button_name=>'BT_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80450711774052205)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79323046835732437)
,p_button_name=>'bt_agregar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(347919767590606721)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79762984844789218)
,p_button_name=>'BT_volver'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:315:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'u-color-24-bg'
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80454455037052242)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79762984844789218)
,p_button_name=>'BT_CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'GUARDAR'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79322496222732431)
,p_name=>'P328_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79322337813732430)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79322577702732432)
,p_name=>'P328_NOM_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79322337813732430)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79322672547732433)
,p_name=>'P328_COD_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79322337813732430)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79322739590732434)
,p_name=>'P328_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
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
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(79322854963732435)
,p_name=>'P328_COD_MODUL0'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(79322337813732430)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79323232490732439)
,p_name=>'P328_DESC_SUCURSAL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79323392224732440)
,p_name=>'P328_TIP_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_prompt=>'Comprobante'
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
 p_id=>wwv_flow_imp.id(79323493887732441)
,p_name=>'P328_DESC_TIPO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79323512296732442)
,p_name=>'P328_SER_COMPROBANTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_prompt=>'Ser Comprobante'
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
 p_id=>wwv_flow_imp.id(79323604363732443)
,p_name=>'P328_NRO_COMPROBANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_prompt=>'Nro Comprobante'
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
 p_id=>wwv_flow_imp.id(79323754517732444)
,p_name=>'P328_FEC_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_prompt=>'Fec Comprobante'
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
 p_id=>wwv_flow_imp.id(79323880660732445)
,p_name=>'P328_FEC_CONFIRMACION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_prompt=>'Fec Confirmacion'
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
 p_id=>wwv_flow_imp.id(79323946571732446)
,p_name=>'P328_OBSERVACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_prompt=>'Observacion'
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
 p_id=>wwv_flow_imp.id(79324049389732447)
,p_name=>'P328_TOT_CANTIDAD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79324154919732448)
,p_name=>'P328_TOT_CANTIDAD_ANT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79324245279732449)
,p_name=>'P328_TRANSLADO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79324351110732450)
,p_name=>'P328_TIP_COMPROBANTE_REF'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_prompt=>'Tip Comprobante Ref'
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
 p_id=>wwv_flow_imp.id(79761269585789201)
,p_name=>'P328_SER_COMPROBANTE_REF'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_prompt=>'Ser Comprobante Ref'
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
 p_id=>wwv_flow_imp.id(79761315642789202)
,p_name=>'P328_NRO_COMPROBANTE_REF'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_prompt=>'nro Comprobante Ref'
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
 p_id=>wwv_flow_imp.id(79761449339789203)
,p_name=>'P328_CONFIRMADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_prompt=>'Confirmado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79761569782789204)
,p_name=>'P328_COD_SUCURSAL_ENV'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_prompt=>'Cod Sucursal Env'
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
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(79761695626789205)
,p_name=>'P328_DESC_SUCURSAL_ENV'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79761770651789206)
,p_name=>'P328_HORA_CONFIRMACION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_prompt=>'Hora Confirmacion'
,p_format_mask=>'HH24:MI:SS'
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
 p_id=>wwv_flow_imp.id(79761886914789207)
,p_name=>'P328_RETIRA_DE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_prompt=>'Retira de'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:ARTIGAS;ARTIGAS,CDE;CDE,SLO;SLO,OVIEDO;OVIEDO'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(79762086307789209)
,p_name=>'P328_COD_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79761943961789208)
,p_prompt=>'Articulo'
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
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79762178645789210)
,p_name=>'P328_CANTIDAD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79761943961789208)
,p_prompt=>'Cantidad'
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
 p_id=>wwv_flow_imp.id(79762299881789211)
,p_name=>'P328_CANTIDAD_CONFIRMADA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79761943961789208)
,p_prompt=>'Cantidad Confirmada'
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
 p_id=>wwv_flow_imp.id(79762397090789212)
,p_name=>'P328_COD_MOTIVO_ANULACION_DET'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79764379762789232)
,p_name=>'P328_ACCION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(79322337813732430)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79764425166789233)
,p_name=>'P328_SEQ_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(79322337813732430)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79764795559789236)
,p_name=>'P328_ACCION_TRAS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(79322337813732430)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79764899554789237)
,p_name=>'P328_ACCION_ANU'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(79322337813732430)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79764905799789238)
,p_name=>'P328_SEQ_ID_TRAS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(79322337813732430)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79765099782789239)
,p_name=>'P328_SEQ_ID_ANU'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(179992301115952745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79765991633789248)
,p_name=>'P328_SEQ_ID_UBI'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(79322337813732430)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79766093260789249)
,p_name=>'P328_SEQ_ID_DETALLE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(79322337813732430)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80450380255052201)
,p_name=>'P328_SEQ_ID_EDITAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(79322337813732430)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80450426150052202)
,p_name=>'P328_SEQ_ID_ELIMINAR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(79322337813732430)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80451273726052210)
,p_name=>'P328_DESCRIPCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79761943961789208)
,p_prompt=>unistr('Descripcion o explicaci\00F3n del repuesto')
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
 p_id=>wwv_flow_imp.id(80451583593052213)
,p_name=>'P328_AUX_MSJ_CONTROL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(79322337813732430)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80454069542052238)
,p_name=>'P328_COD_MOTIVO_ANU'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(79761943961789208)
,p_prompt=>'Motivo Anu. Detalle'
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
 p_id=>wwv_flow_imp.id(179992440774952746)
,p_name=>'P328_MOTIVO_ANULACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(179992301115952745)
,p_prompt=>'Motivo Anu. Detalle'
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
 p_id=>wwv_flow_imp.id(183082998660712006)
,p_name=>'P328_CANT_CONFIRM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(183082840834712005)
,p_prompt=>'CANTIDAD CONFIRMADA'
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
 p_id=>wwv_flow_imp.id(183083118148712008)
,p_name=>'P328_ID_SEQ_CANT_CONF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(183082840834712005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(347921914746606743)
,p_name=>'P328_URL'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(79322987334732436)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(340398102278114113)
,p_validation_name=>'VALIDA_CONFIRMACION'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(:P328_CONFIRMADO,''N'')=''S'' THEN',
'        DECLARE ',
'            DUMMY VARCHAR2(1);',
'        BEGIN         ',
'                SELECT DISTINCT ''1''',
'                INTO DUMMY',
'                  FROM APEX_COLLECTIONS',
'                 WHERE COLLECTION_NAME = ''COL_CAREPDET''',
'                 AND NVL(C005,''N'')=''N''                 ',
'                 AND NVL(C030,''N'') <>''D'';',
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
 p_id=>wwv_flow_imp.id(79764564191789234)
,p_name=>'da_check'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P328_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79764616345789235)
,p_event_id=>wwv_flow_imp.id(79764564191789234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'CAREPDET.PR_CHECK(P_SEQ_ID => :P328_SEQ_ID,',
'                  P_ACCION => :P328_ACCION,',
'                  P_COLECCION => ''COL_CAREPDET'');',
'exception',
'when others then',
unistr('    RAISE_APPLICATION_ERROR(-20010,''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte.'');'),
'END;',
''))
,p_attribute_02=>'P328_SEQ_ID,P328_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79765187191789240)
,p_name=>'DA_CHECK_ANU'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P328_SEQ_ID_ANU'
,p_condition_element=>'P328_SEQ_ID_ANU'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179992536630952747)
,p_event_id=>wwv_flow_imp.id(79765187191789240)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P328_MOTIVO_ANULACION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179992602871952748)
,p_event_id=>wwv_flow_imp.id(79765187191789240)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(179992301115952745)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79765363056789242)
,p_name=>'DA_CHECK_TRAS'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P328_SEQ_ID_TRAS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79765646770789245)
,p_event_id=>wwv_flow_imp.id(79765363056789242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'CAREPDET.PR_CHECK_TRAS(P_SEQ_ID => :P328_SEQ_ID_TRAS,',
'                  P_ACCION => :P328_ACCION_TRAS,',
'                  P_COLECCION => ''COL_CAREPDET'');',
'exception',
'when others then',
unistr('    RAISE_APPLICATION_ERROR(-20010,''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte.'');'),
'END;',
''))
,p_attribute_02=>'P328_SEQ_ID_TRAS,P328_ACCION_TRAS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80450815753052206)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(80450711774052205)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80452370032052221)
,p_event_id=>wwv_flow_imp.id(80450815753052206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P328_COD_ARTICULO,P328_CANTIDAD,P328_CANT_CONFIRM,P328_DESCRIPCION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80450973954052207)
,p_event_id=>wwv_flow_imp.id(80450815753052206)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(79762492449789213)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80451082486052208)
,p_event_id=>wwv_flow_imp.id(80450815753052206)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(79762505860789214)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80451119329052209)
,p_event_id=>wwv_flow_imp.id(80450815753052206)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79761943961789208)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80451939939052217)
,p_event_id=>wwv_flow_imp.id(80450815753052206)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P328_CANTIDAD,P328_CANT_CONFIRM'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80454112156052239)
,p_event_id=>wwv_flow_imp.id(80450815753052206)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P328_COD_MOTIVO_ANU'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80451312914052211)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79762492449789213)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80451482351052212)
,p_event_id=>wwv_flow_imp.id(80451312914052211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P328_AUX_MSJ_CONTROL := NULL;',
'IF(:P328_COD_ARTICULO IS NULL)THEN',
'    :P328_AUX_MSJ_CONTROL := ''Ingrese un articulo'';',
'    elsIF( nvl( :P328_CANTIDAD_CONFIRMADA, 0 ) > nvl(:P328_CANTIDAD, 0 )  ) THEN',
'    :P328_AUX_MSJ_CONTROL := ''La cantidad que intenta confirmar supera la existencia en stock.'';',
'        else ',
'            begin',
'                CAREPDET.pr_agregar_miembro_detalle(PI_COD_EMPRESA => :P328_COD_EMPRESA,',
'                                 PI_COD_ARTICULO => :P328_COD_ARTICULO,',
'                                 PI_DESCRIPCION => :P328_DESCRIPCION,',
'                                 PI_CANTIDAD => :P328_CANTIDAD,',
'                                 PI_CANTIDAD_CONFIRMADA => :P328_CANTIDAD_CONFIRMADA);',
'               ',
'             EXCEPTION',
'                WHEN OTHERS THEN',
'                    APEX_DEBUG.ERROR (SQLERRM);',
'            end;',
'end if;',
''))
,p_attribute_02=>'P328_COD_ARTICULO,P328_CANTIDAD,P328_DESCRIPCION,P328_CANT_CONFIRM,P328_COD_EMPRESA'
,p_attribute_03=>'P328_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80451602148052214)
,p_event_id=>wwv_flow_imp.id(80451312914052211)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P328_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P328_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80451736182052215)
,p_event_id=>wwv_flow_imp.id(80451312914052211)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79763178978789220)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P328_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80451833296052216)
,p_event_id=>wwv_flow_imp.id(80451312914052211)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79761943961789208)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P328_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80452537565052223)
,p_event_id=>wwv_flow_imp.id(80451312914052211)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Nuevo registro agregado.'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P328_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80452015811052218)
,p_name=>'DA_CARGAR_CANTIDAD'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P328_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80452129050052219)
,p_event_id=>wwv_flow_imp.id(80452015811052218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'          Select sum( st.cant_dispon )',
'            into :P328_CANTIDAD',
'            from st_existencia_art st',
'           where cod_empresa = :P328_COD_EMPRESA and',
'                 cod_sucursal = decode(:P328_RETIRA_DE,''ARTIGAS'',''101'',''SLO'',''190'',''CDE'',''262'')',
'                  and',
'                 cod_articulo = :P328_COD_ARTICULO and',
'                               nvl( cant_dispon, 0 ) > 0;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR (SQLERRM);',
'END;'))
,p_attribute_02=>'P328_COD_EMPRESA,P328_RETIRA_DE,P328_COD_ARTICULO'
,p_attribute_03=>'P328_CANTIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80452414724052222)
,p_event_id=>wwv_flow_imp.id(80452015811052218)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P328_CANTIDAD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80452292024052220)
,p_event_id=>wwv_flow_imp.id(80452015811052218)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P328_CANT_CONFIRM,P328_CANTIDAD'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P328_CANTIDAD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80452670302052224)
,p_name=>'DA_CERRAR_REGION'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79762849110789217)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80452752382052225)
,p_event_id=>wwv_flow_imp.id(80452670302052224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79761943961789208)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80452811011052226)
,p_name=>'DA_GUARDAR_EDITAR'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79762505860789214)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80453064734052228)
,p_event_id=>wwv_flow_imp.id(80452811011052226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P328_AUX_MSJ_CONTROL := NULL;',
'IF(:P328_COD_ARTICULO IS NULL)THEN',
'    :P328_AUX_MSJ_CONTROL := ''Ingrese un articulo'';',
'    elsIF( nvl( :P328_CANTIDAD_CONFIRMADA, 0 ) > nvl(:P328_CANTIDAD, 0 )  ) THEN',
'    :P328_AUX_MSJ_CONTROL := ''La cantidad que intenta confirmar supera la existencia en stock.'';',
'        else ',
'            begin',
'                CAREPDET.pr_modificar_miembro_detalle( PI_COD_EMPRESA => :P328_COD_EMPRESA,',
'                                PI_SEQ_ID_EDITAR => :P328_SEQ_ID_EDITAR,',
'                                 PI_COD_ARTICULO => :P328_COD_ARTICULO,',
'                                 PI_DESCRIPCION => :P328_DESCRIPCION,',
'                                 PI_CANTIDAD => :P328_CANTIDAD,',
'                                 PI_CANTIDAD_CONFIRMADA => :P328_CANTIDAD_CONFIRMADA,',
'                                 PI_COD_MOTIVO_ANU_DET => :P328_COD_MOTIVO_ANU);',
'                                   ',
'               ',
'             EXCEPTION',
'                WHEN OTHERS THEN',
'                    APEX_DEBUG.ERROR (SQLERRM);',
'            end;',
'end if;',
''))
,p_attribute_02=>'P328_COD_ARTICULO,P328_CANTIDAD,P328_DESCRIPCION,P328_CANT_CONFIRM,P328_COD_MOTIVO_ANULACION_DET,P328_SEQ_ID_EDITAR,P328_COD_MOTIVO_ANU,P328_COD_EMPRESA'
,p_attribute_03=>'P328_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80453132993052229)
,p_event_id=>wwv_flow_imp.id(80452811011052226)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P328_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P328_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80453263564052230)
,p_event_id=>wwv_flow_imp.id(80452811011052226)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79763178978789220)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P328_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80453368903052231)
,p_event_id=>wwv_flow_imp.id(80452811011052226)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79761943961789208)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P328_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80453489675052232)
,p_event_id=>wwv_flow_imp.id(80452811011052226)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Registro editado.'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P328_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80453544689052233)
,p_name=>'da_abrir_Editar'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P328_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80453614386052234)
,p_event_id=>wwv_flow_imp.id(80453544689052233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select  c001 COD_ARTICULO,',
'            c002 DESCRIPCION,',
'            c003 CANTIDAD,',
'            c004 CONFIRMADA,            ',
'            c008 COD_MOTIVO_ANULACION_DETALLE',
'            ',
'',
'    into',
'        :P328_COD_ARTICULO,',
'        :P328_DESCRIPCION,',
'        :P328_CANTIDAD,',
'        :P328_CANTIDAD_CONFIRMADA,       ',
'        :P328_COD_MOTIVO_ANU',
'   FROM APEX_COLLECTIONS',
'   WHERE COLLECTION_NAME = ''COL_CAREPDET''     ',
'    AND SEQ_ID = :P328_SEQ_ID_EDITAR;',
'',
'end;'))
,p_attribute_02=>'P328_SEQ_ID_EDITAR'
,p_attribute_03=>'P328_COD_ARTICULO,P328_DESCRIPCION,P328_CANTIDAD,P328_CANT_CONFIRM,P328_COD_MOTIVO_ANU'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80453707916052235)
,p_event_id=>wwv_flow_imp.id(80453544689052233)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(79762505860789214)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80454253308052240)
,p_event_id=>wwv_flow_imp.id(80453544689052233)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P328_COD_MOTIVO_ANU'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80453833917052236)
,p_event_id=>wwv_flow_imp.id(80453544689052233)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(79762492449789213)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80453972673052237)
,p_event_id=>wwv_flow_imp.id(80453544689052233)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79761943961789208)
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
 p_id=>wwv_flow_imp.id(80454570857052243)
,p_name=>'DA_CONFIRMAR_DATOS'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(80454455037052242)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80454733460052245)
,p_event_id=>wwv_flow_imp.id(80454570857052243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Continuar?')
,p_attribute_02=>'CONFIRMAR'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80454641546052244)
,p_event_id=>wwv_flow_imp.id(80454570857052243)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80454969536052247)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P328_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80455068483052248)
,p_event_id=>wwv_flow_imp.id(80454969536052247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro que desea eliminar?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80455192385052249)
,p_event_id=>wwv_flow_imp.id(80454969536052247)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    CAREPDET.pr_borrar_miembro_collection( PI_SEQ_ID_ELIMINAR => :P328_SEQ_ID_ELIMINAR); ',
'',
'end;'))
,p_attribute_02=>'P328_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80455258867052250)
,p_event_id=>wwv_flow_imp.id(80454969536052247)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79763178978789220)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81097910772645111)
,p_name=>'DA_MOSTRAR_UBI'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P328_SEQ_ID_UBI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81098029076645112)
,p_event_id=>wwv_flow_imp.id(81097910772645111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79323122066732438)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81098287708645114)
,p_name=>'da_cargar_fecha'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P328_CONFIRMADO'
,p_condition_element=>'P328_CONFIRMADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81098341702645115)
,p_event_id=>wwv_flow_imp.id(81098287708645114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'    DECLARE ',
'            DUMMY VARCHAR2(1);',
'        BEGIN         ',
'                raise_application_error(-20000,  ''Existen detalles pendientes de Verificacion.'');',
'                SELECT DISTINCT ''1''',
'                INTO DUMMY',
'                  FROM APEX_COLLECTIONS',
'                 WHERE COLLECTION_NAME = ''COL_CAREPDET''',
'                 AND NVL(C005,''N'')=''N''                 ',
'                 AND NVL(C030,''N'') <>''D'';',
'',
'                :P328_FEC_CONFIRMACION :=NULL ;		',
'                :P328_HORA_CONFIRMACION := NULL;',
'                raise_application_error(-20000,  ''Existen detalles pendientes de Verificacion.'');',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                :P328_FEC_CONFIRMACION :=trunc(sysdate) ;		',
'                :P328_HORA_CONFIRMACION := to_char(SYSDATE,''HH24:MI:SS'') ;',
'            WHEN OTHERS THEN',
'                :P328_FEC_CONFIRMACION :=NULL ;		',
'                :P328_HORA_CONFIRMACION := NULL;',
'               raise_application_error(-20000, sqlerrm );',
'        END;',
' '))
,p_attribute_03=>'P328_FEC_CONFIRMACION ,P328_HORA_CONFIRMACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(340398064198114112)
,p_event_id=>wwv_flow_imp.id(81098287708645114)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P328_FEC_CONFIRMACION,P328_HORA_CONFIRMACION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(347921761655606741)
,p_name=>'New'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P328_NRO_COMPROBANTE_REF'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347921860087606742)
,p_event_id=>wwv_flow_imp.id(347921761655606741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT APEX_PAGE.GET_URL (  p_page   => 588,',
'                                        p_items  => ''P588_NRO_COMPROBANTE,P588_SER_COMPROBANTE'',',
'                                        p_values => (''''||:P328_NRO_COMPROBANTE_REF||'',''||:P328_SER_COMPROBANTE_REF||'''')) f_url_1',
'              INTO :P328_URL',
'              FROM DUAL;'))
,p_attribute_02=>'P328_SER_COMPROBANTE_REF,P328_NRO_COMPROBANTE_REF'
,p_attribute_03=>'P328_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347922003200606744)
,p_event_id=>wwv_flow_imp.id(347921761655606741)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P328_URL").getValue();',
'apex.navigation.redirect (url);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179992812164952750)
,p_name=>'DA_ANULA_OK'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(179992750219952749)
,p_condition_element=>'P328_MOTIVO_ANULACION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79765542572789244)
,p_event_id=>wwv_flow_imp.id(179992812164952750)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
'',
'          APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'              p_collection_name => ''COL_CAREPDET'',',
'              p_seq   => :P328_SEQ_ID_ANU ,',
'              p_attr_number => 7,',
'              p_attr_value  => ''S'');',
'              ',
'          APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'              p_collection_name => ''COL_CAREPDET'',',
'              p_seq   => :P328_SEQ_ID_ANU ,',
'              p_attr_number => 8,',
'              p_attr_value  => :P328_MOTIVO_ANULACION);',
'',
'  APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'              p_collection_name => ''COL_CAREPDET'',',
'              p_seq   => :P328_SEQ_ID_ANU ,',
'              p_attr_number => 4,',
'              p_attr_value  => ''0'');',
'',
'  APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'              p_collection_name => ''COL_CAREPDET'',',
'              p_seq   => :P328_SEQ_ID_ANU ,',
'              p_attr_number => 5,',
'              p_attr_value  => ''S'');',
' ',
'  APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'              p_collection_name => ''COL_CAREPDET'',',
'              p_seq   => :P328_SEQ_ID_ANU ,',
'              p_attr_number => 30,',
'              p_attr_value  => ''E'');',
' ',
'  ',
'exception',
'when others then',
'    RAISE_APPLICATION_ERROR(-20010,sqlerrm);',
'END;',
''))
,p_attribute_02=>'P328_SEQ_ID_ANU,P328_MOTIVO_ANULACION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183082576474712002)
,p_event_id=>wwv_flow_imp.id(179992812164952750)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar un motivo.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183082693833712003)
,p_event_id=>wwv_flow_imp.id(179992812164952750)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(179992301115952745)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183082465104712001)
,p_event_id=>wwv_flow_imp.id(179992812164952750)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79763178978789220)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(183083250130712009)
,p_name=>'da_cant_conf'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P328_ID_SEQ_CANT_CONF'
,p_condition_element=>'P328_ID_SEQ_CANT_CONF'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183083352411712010)
,p_event_id=>wwv_flow_imp.id(183083250130712009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P328_CANT_CONFIRM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183083444182712011)
,p_event_id=>wwv_flow_imp.id(183083250130712009)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(183082840834712005)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(183083689338712013)
,p_name=>'da_cant_conf_ok'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(183083010366712007)
,p_condition_element=>'P328_CANT_CONFIRM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183083897286712015)
,p_event_id=>wwv_flow_imp.id(183083689338712013)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe cargar la Cantidad Confirmada.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183084097987712017)
,p_event_id=>wwv_flow_imp.id(183083689338712013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'              p_collection_name => ''COL_CAREPDET'',',
'              p_seq   => :P328_ID_SEQ_CANT_CONF ,',
'              p_attr_number => 4,',
'              p_attr_value  => :P328_CANT_CONFIRM);',
'exception',
'    when others then ',
'    raise_application_error(-20000, sqlerrm||'' - ''||:P328_CANT_CONFIRM) ;',
'end;'))
,p_attribute_02=>'P328_ID_SEQ_CANT_CONF,P328_CANT_CONFIRM'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183083742269712014)
,p_event_id=>wwv_flow_imp.id(183083689338712013)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(183082840834712005)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183083922288712016)
,p_event_id=>wwv_flow_imp.id(183083689338712013)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79763178978789220)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(80454886543052246)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'     ',
'    CAREPDET.pr_confirmar_accion (PI_COD_USUARIO => :P328_COD_USUARIO, ',
'					PI_COD_EMPRESA => :P328_COD_EMPRESA, ',
'					PI_NRO_COMPROBANTE => :P328_NRO_COMPROBANTE,',
'					PI_RETIRA_DE => :P328_RETIRA_DE,',
'					PI_OBSERVACION => :P328_OBSERVACION,',
'					PI_CONFIRMADO => :P328_CONFIRMADO);',
'    EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error en procedimiento confirmar accion'');',
'                APEX_DEBUG.ERROR(sqlerrm);',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Los datos se guardaron exitosamente'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79322271288732429)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
':P328_COD_USUARIO := nvl(:P_COD_USUARIO, user);',
':P328_COD_EMPRESA := nvl(:P_COD_EMPRESA,''1'');',
':P328_COD_SUCURSAL := nvl(:P_COD_SUCURSAL,''01'');',
':P328_COD_MODUL0 := nvl(:P_COD_MODULO,''VT'');',
'--:P328_NRO_COMPROBANTE := 736432;',
':P328_AUX_MSJ_CONTROL := NULL;',
'',
'CAREPDET.pr_cargar_cabecera(',
'    PI_NRO_COMPROBANTE => :P328_NRO_COMPROBANTE,',
'    PI_COD_EMPRESA => :P328_COD_EMPRESA,',
'    PO_COD_SUCURSAL => :P328_COD_SUCURSAL,',
'    PO_TIP_COMPROBANTE => :P328_TIP_COMPROBANTE,',
'    PO_DESC_TIPO => :P328_DESC_TIPO,',
'    PO_SER_COMPROBANTE => :P328_SER_COMPROBANTE,    ',
'    PO_FEC_COMPROBANTE => :P328_FEC_COMPROBANTE,',
'    PO_RETIRA_DE => :P328_RETIRA_DE,',
'    PO_TIP_COMPROBANTE_REF =>:P328_TIP_COMPROBANTE_REF,',
'    PO_SER_COMPROBANTE_REF => :P328_SER_COMPROBANTE_REF,',
'    PO_NRO_COMPROBANTE_REF => :P328_NRO_COMPROBANTE_REF,',
'    PO_COD_SUCURSAL_ENV => :P328_COD_SUCURSAL_ENV,',
'    PO_OBSERVACION => :P328_OBSERVACION,',
'    PO_CONFIRMADO => :P328_CONFIRMADO,',
'    PO_FEC_CONFIRMACION => :P328_FEC_CONFIRMACION,',
'    PO_HORA_CONFIRMACION => :P328_HORA_CONFIRMACION );',
'',
' CAREPDET.pr_cargar_detalle(',
'    PI_NRO_COMPROBANTE => :P328_NRO_COMPROBANTE,',
'    PI_COD_EMPRESA => :P328_COD_EMPRESA);',
' '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(179992282135952744)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VERIFICADO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vid_seq     varchar2(50) := apex_application.g_x01;',
'    vchk        varchar2(50):= apex_application.g_x02;  ',
'    vcant       number;',
'    vinculado   varchar2(50):=''S'';',
'    vcod_rep    varchar2(50);',
'    vprod       varchar2(100);',
'     BEGIN',
'        if nvl(vchk,''N'')=''S'' then  ',
'            BEGIN',
'                 SELECT  c003 ,  c001   ',
'                 INTO vcant, vcod_rep',
'                 FROM APEX_COLLECTIONS',
'                 WHERE COLLECTION_NAME = ''COL_CAREPDET''',
'                   AND SEQ_ID = vid_seq;',
'            EXCEPTION',
'                WHEN OTHERS THEN',
'                    vcant:=0;',
'            END;',
'        else',
'            vcant:=0;',
'        end IF;',
'',
'  APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'              p_collection_name => ''COL_CAREPDET'',',
'              p_seq   => vid_seq ,',
'              p_attr_number => 4,',
'              p_attr_value  => vcant);',
'',
'  APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'              p_collection_name => ''COL_CAREPDET'',',
'              p_seq   => vid_seq ,',
'              p_attr_number => 5,',
'              p_attr_value  => vchk);',
'              ',
'  APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'              p_collection_name => ''COL_CAREPDET'',',
'              p_seq   => vid_seq ,',
'              p_attr_number => 30,',
'              p_attr_value  => ''E'');',
'              ',
'',
'',
' if :P328_TIP_COMPROBANTE_REF=''ORT'' AND :P328_NRO_COMPROBANTE_REF IS NOT NULL THEN  	',
'    declare',
'        VEXISTE varchar2(1);',
'    begin',
'        SELECT cod_articulo',
'		 into vprod',
'		FROM VT_ORDENES_TRABAJO',
'		WHERE COD_EMPRESA=nvl(:P_COD_EMPRESA,''1'')',
'		AND TIP_COMPROBANTE=:P328_TIP_COMPROBANTE_REF',
'		AND SER_COMPROBANTE=:P328_SER_COMPROBANTE_REF',
'		AND NRO_COMPROBANTE=:P328_NRO_COMPROBANTE_REF;',
'',
'                begin',
'                	 SELECT distinct ''S''',
'                	 INTO VEXISTE',
'                	 FROM ST_EQUIVALENCIA_ART E',
'                	 WHERE E.COD_EMPRESA=nvl(:P_COD_EMPRESA,''1'')',
'                     AND E.COD_ARTICULO=vprod',
'                     AND E.COD_ARTICULO_EQUI=vcod_rep;',
'                 exception',
'                    when no_data_found then',
'                        vinculado:=''N'';',
'                    when others then',
'                        null;',
'                end;',
'    exception',
'        when others then',
'            null;',
'    end;',
'end if;',
'',
'',
'  apex_json.open_object;',
'  apex_json.write(''success'', TRUE);',
'  apex_json.write(''p_vinculado'', vinculado);',
'  apex_json.write(''p_cod_repuesto'', vcod_rep);  ',
'  apex_json.write(''p_cod_articulo'', vprod);  ',
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
 p_id=>wwv_flow_imp.id(365788076923397820)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VINCULAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vcod_articulo varchar2(50) := apex_application.g_x01;',
'    vcod_repuesto varchar2(50):= apex_application.g_x02;   ',
'',
'BEGIN ',
'',
'    VINCULA_PRODUCTO_REPUESTO(vcod_articulo,vcod_repuesto,''I'' );',
'',
'',
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
wwv_flow_imp.component_end;
end;
/
