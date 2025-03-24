prompt --application/pages/page_00491
begin
--   Manifest
--     PAGE: 00491
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
 p_id=>491
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Solicitud de Ajustes  - STSOLAJS'
,p_alias=>'STSOLAJS'
,p_step_title=>'Solicitud de Ajustes  - STSOLAJS'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'         ',
'    if (cb.checked == true){',
'       // console.log("block" + cb.value);',
'        //console.log(''s'');',
'        //alert (''S'');',
'        $s(''P491_SEQ_ID_GARANTIA'', cb.value);     ',
'        $s(''P491_VALOR_GARANTIA'', ''S'');       ',
'',
'    } else {',
'        //console.log(''n'');',
'        //alert (''n'');',
'        $s(''P491_SEQ_ID_GARANTIA'', cb.value);',
'        $s(''P491_VALOR_GARANTIA'', ''N'');',
' ',
'    }',
'} ',
'',
'function doDescarga(p_cod_empresa, p_fec_inicial, p_fec_final, p_cod_suc_des, p_cod_suc_has,p_tip_ent_sal,p_ser_ent_sal,p_cod_rubro,p_cod_familia,p_cod_linea,p_cod_marca,p_motivo,p_cod_usuario,p_nro_ini,p_nro_fin,p_cod_articulo_des,p_cod_articulo_has'
||',p_inc_man,p_ind_ot){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/STENSAL.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_FECHA_DES='' + p_fec_inicial  + ''&P_FECHA_HAS=''+ p_fec_final ',
'            + ''&P_COD_SUCURSAL_DES=''+ p_cod_suc_des + ''&P_COD_SUCURSAL_HAS=''+ p_cod_suc_has + ''&P_TIP_ENT_SAL=''+ p_tip_ent_sal',
'            + ''&P_SER_ENT_SAL=''+ p_ser_ent_sal+ ''&P_COD_RUBRO=''+ p_cod_rubro+ ''&P_COD_FAMILIA=''+ p_cod_familia',
'            + ''&P_COD_LINEA=''+ p_cod_linea+ ''&P_COD_MARCA=''+ p_cod_marca+ ''&P_MOTIVO=''+ p_motivo ',
'            + ''&P_COD_USUARIO=''+ p_cod_usuario + ''&P_NRO_INI=''+ p_nro_ini + ''&P_NRO_FIN=''+ p_nro_fin',
'            + ''&P_COD_ARTICULO_DES=''+ p_cod_articulo_des + ''&P_COD_ARTICULO_HAS=''+ p_cod_articulo_has + ''&P_INC_MAN=''+ p_inc_man ',
'            + ''&P_INC_OT='' + p_ind_ot +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doDescargaStensalsol(p_cod_empresa, p_fec_inicial, p_fec_final, p_cod_suc_des, p_cod_suc_has,p_tip_ent_sal,p_ser_ent_sal,p_cod_rubro,p_cod_familia,p_cod_linea,p_cod_marca,p_motivo,p_cod_usuario,p_nro_ini,p_nro_fin,p_cod_articulo_des,p_cod_ar'
||'ticulo_has,p_inc_man,p_ind_ot){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/STENSALSOL.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_FECHA_DES='' + p_fec_inicial  + ''&P_FECHA_HAS=''+ p_fec_final ',
'            + ''&P_COD_SUCURSAL_DES=''+ p_cod_suc_des + ''&P_COD_SUCURSAL_HAS=''+ p_cod_suc_has + ''&P_TIP_ENT_SAL=''+ p_tip_ent_sal',
'            + ''&P_SER_ENT_SAL=''+ p_ser_ent_sal+ ''&P_COD_RUBRO=''+ p_cod_rubro+ ''&P_COD_FAMILIA=''+ p_cod_familia',
'            + ''&P_COD_LINEA=''+ p_cod_linea+ ''&P_COD_MARCA=''+ p_cod_marca+ ''&P_MOTIVO=''+ p_motivo ',
'            + ''&P_COD_USUARIO=''+ p_cod_usuario + ''&P_NRO_INI=''+ p_nro_ini + ''&P_NRO_FIN=''+ p_nro_fin',
'            + ''&P_COD_ARTICULO_DES=''+ p_cod_articulo_des + ''&P_COD_ARTICULO_HAS=''+ p_cod_articulo_has + ''&P_INC_MAN=''+ p_inc_man ',
'            + ''&P_INC_OT='' + p_ind_ot +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20240828104956'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144613218361902334)
,p_plug_name=>'CA_ENTSAL'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144613571308902337)
,p_plug_name=>'B_CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(144613218361902334)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144613648921902338)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(144613571308902337)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144613704891902339)
,p_plug_name=>'DER'
,p_parent_plug_id=>wwv_flow_imp.id(144613571308902337)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145888963486456401)
,p_plug_name=>'B_IMPORTAR'
,p_parent_plug_id=>wwv_flow_imp.id(144613218361902334)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145889475639456406)
,p_plug_name=>'B_REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(144613218361902334)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    SEQ_ID SEQ_ID_DET,',
'    APEX_ITEM.CHECKBOX (p_idx  => 1,',
'                        p_value       => SEQ_ID,',
'                        p_attributes  => (case C018',
'                                          when ''S'' then ',
'                                            ''checked''                                          ',
'                                          ELSE ',
'                                            NULL',
'                                          END ) ||'' onclick="seleccionar(this)"'') as Garantia,                                          ',
'    C004 cod_articulo,',
'    C019 cod_art_corto,',
'    C017 des_articulo,',
'    C018 estado,',
'    C006 cod_unidad_medida,',
'    C011 nro_lote,',
'    C010 cod_iva,',
'    N003 cantidad,',
'    N002 costo,',
'    N004 TOTAL,',
'    C030 ROW_ID,',
'    NULL EDITAR,',
'    NULL ELIMINAR',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''SOLAJU''',
'AND :P491_IND_REP_DETALLES = ''1''',
'AND nvl(c031, ''O'') <> ''B'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P491_IND_REP_DETALLES'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_REPORTE'
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
 p_id=>wwv_flow_imp.id(146109237870854439)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>146109237870854439
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146109332076854440)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146109484832854441)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146109585264854442)
,p_db_column_name=>'DES_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Des Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146109698575854443)
,p_db_column_name=>'COD_UNIDAD_MEDIDA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Unidad Medida'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146109753579854444)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro Lote'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146109860097854445)
,p_db_column_name=>'COD_IVA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Iva'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146109907793854446)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146110061859854447)
,p_db_column_name=>'COSTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146110253271854449)
,p_db_column_name=>'GARANTIA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146110333843854450)
,p_db_column_name=>'EDITAR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P491_SEQ_ID_EDITAR_DET'',''#SEQ_ID_DET#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCONTROL NUMBER;',
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
 p_id=>wwv_flow_imp.id(146988883686425001)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P491_SEQ_ID_ELIMINAR_DET'',''#SEQ_ID_DET#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCONTROL NUMBER;',
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
 p_id=>wwv_flow_imp.id(146990281675425015)
,p_db_column_name=>'SEQ_ID_DET'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Seq Id Det'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148534934755621741)
,p_db_column_name=>'TOTAL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(382048009698514107)
,p_db_column_name=>'ESTADO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(382669823468846303)
,p_db_column_name=>'ROW_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(146981872493498146)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1469819'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GARANTIA:COD_ARTICULO:COD_ART_CORTO:DES_ARTICULO:COD_UNIDAD_MEDIDA:NRO_LOTE:COD_IVA:CANTIDAD:COSTO:TOTAL:EDITAR:ELIMINAR:'
,p_sum_columns_on_break=>'CANTIDAD:COSTO:TOTAL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146989673703425009)
,p_plug_name=>unistr('AGREGAR/EDITAR ART\00CDCULO')
,p_parent_plug_id=>wwv_flow_imp.id(145889475639456406)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145889512171456407)
,p_plug_name=>'B_DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(144613218361902334)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145891285311456424)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(145889512171456407)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145891346944456425)
,p_plug_name=>'DER'
,p_parent_plug_id=>wwv_flow_imp.id(145889512171456407)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145889640922456408)
,p_plug_name=>'B_DETALLE_CREACION'
,p_parent_plug_id=>wwv_flow_imp.id(144613218361902334)
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_column=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145889873597456410)
,p_plug_name=>unistr('Creaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(145889640922456408)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145889965320456411)
,p_plug_name=>unistr('Autorizaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(145889640922456408)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145890061119456412)
,p_plug_name=>'Rechazado'
,p_parent_plug_id=>wwv_flow_imp.id(145889640922456408)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144613331643902335)
,p_plug_name=>'CA_COPIA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144613447650902336)
,p_plug_name=>'CA_PARAMETRO'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1060
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154311626954956335)
,p_plug_name=>'BTN_FECHAS'
,p_parent_plug_id=>wwv_flow_imp.id(144613447650902336)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145891499499456426)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146106863229854415)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146108954732854436)
,p_plug_name=>'INDICADORES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146988945918425002)
,p_plug_name=>'SEQ ROW'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154311055373956329)
,p_plug_name=>'BOTONES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(149060038939508002)
,p_button_sequence=>1040
,p_button_plug_id=>wwv_flow_imp.id(144613218361902334)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'ABOVE_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:490:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-search'
,p_button_cattributes=>'style=''width:135px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(149060100474508003)
,p_button_sequence=>1050
,p_button_plug_id=>wwv_flow_imp.id(144613218361902334)
,p_button_name=>'BTN_LIMPIAR_CAMPOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'ABOVE_BOX'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash'
,p_button_cattributes=>'style=''width:135px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(149060227700508004)
,p_button_sequence=>1060
,p_button_plug_id=>wwv_flow_imp.id(144613218361902334)
,p_button_name=>'BTN_GUARDAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'ABOVE_BOX'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'style=''width:135px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154311117770956330)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154311055373956329)
,p_button_name=>'BTN_IMPRIMIR_STENSAL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir Stensal'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154312404874956343)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(154311055373956329)
,p_button_name=>'BTN_ABRIR__REPORTE_AJUSTES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reporte de Ajustes'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146989972268425012)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(146989673703425009)
,p_button_name=>'BTN_ACEPTAR_ARTICULO_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146990908128425022)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(146989673703425009)
,p_button_name=>'BTN_ACEPTAR_ARTICULO_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146990085304425013)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(146989673703425009)
,p_button_name=>'BTN_CERRAR_CR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154311729602956336)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(154311626954956335)
,p_button_name=>'BTN_IMPRIMIR_STENSALSOL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir STENSALSOL'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154312522864956344)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(154311626954956335)
,p_button_name=>'BTN_CERRAR_REPORTE_AJUSTES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146989570942425008)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(145889475639456406)
,p_button_name=>'BTN_AGREGAR_ARTICULO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Agregar Art\00EDculo')
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCONTROL NUMBER;',
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144614044509902342)
,p_name=>'P491_TIP_ENT_SAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(144613648921902338)
,p_prompt=>'Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tip_comprobante  || '' - '' || descripcion D, tip_comprobante R',
'from tipos_comprobantes ',
'where cod_empresa = :P_COD_EMPRESA',
'and tip_comprobante <> :P491_TIPO_ENVIO',
'and cod_modulo = ''ST'' ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(144614138985902343)
,p_name=>'P491_SER_ENT_SAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(144613648921902338)
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
 p_id=>wwv_flow_imp.id(144614225430902344)
,p_name=>'P491_NUM_ENT_SAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(144613648921902338)
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
 p_id=>wwv_flow_imp.id(144614307836902345)
,p_name=>'P491_FEC_ENT_SAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(144613648921902338)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(144614465069902346)
,p_name=>'P491_ESTADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(144613648921902338)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CREADO;CREADO,AUTORIZADO;AUTORIZADO,RECHAZADO;RECHAZADO'
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
 p_id=>wwv_flow_imp.id(144614589204902347)
,p_name=>'P491_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(144613704891902339)
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
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144614647190902348)
,p_name=>'P491_COD_MOTIVO_ENT_SAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(144613704891902339)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVO_ENT_SAL_STSOLAJS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_motivo_ent_sal || '' - '' || descripcion D, cod_motivo_ent_sal R ',
'from st_motivo_ent_sal ',
'where  estado = ''S'' ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
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
 p_id=>wwv_flow_imp.id(144614767367902349)
,p_name=>'P491_COD_PROVEEDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(144613704891902339)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_proveedor||'' - ''||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, c.cod_proveedor R,c.cod_persona',
'from cm_proveedores c, personas p',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'order by 1'))
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144614841523902350)
,p_name=>'P491_COD_MONEDA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(144613704891902339)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion as d,',
'       cod_moneda r',
'  from monedas',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145889028810456402)
,p_name=>'P491_PATH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(145888963486456401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145889136733456403)
,p_name=>'P491_TIP_COMPROBANTE_REF'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(145888963486456401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145889270901456404)
,p_name=>'P491_SER_COMPROBANTE_REF'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(145888963486456401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145889347938456405)
,p_name=>'P491_NRO_COMPROBANTE_REF'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(145888963486456401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145890202914456414)
,p_name=>'P491_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(145889873597456410)
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
 p_id=>wwv_flow_imp.id(145890352513456415)
,p_name=>'P491_FECHA_ALTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(145889873597456410)
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
 p_id=>wwv_flow_imp.id(145890421213456416)
,p_name=>'P491_USUARIO_AUT_COMERCIAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(145889965320456411)
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
 p_id=>wwv_flow_imp.id(145890569347456417)
,p_name=>'P491_FECHA_AUT_COMERCIAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(145889965320456411)
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
 p_id=>wwv_flow_imp.id(145890603983456418)
,p_name=>'P491_USUARIO_RECHAZO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(145890061119456412)
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
 p_id=>wwv_flow_imp.id(145890759128456419)
,p_name=>'P491_FECHA_RECHAZO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(145890061119456412)
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
 p_id=>wwv_flow_imp.id(145890828693456420)
,p_name=>'P491_OBSERVACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(145891285311456424)
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
 p_id=>wwv_flow_imp.id(145890951077456421)
,p_name=>'P491_HORA_ALTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(145891346944456425)
,p_prompt=>'Hora'
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
 p_id=>wwv_flow_imp.id(145891030529456422)
,p_name=>'P491_CANTIDAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(145891346944456425)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145891128231456423)
,p_name=>'P491_TOT_IMPORTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(145891346944456425)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145891565864456427)
,p_name=>'P491_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145891781624456429)
,p_name=>'P491_TIPO_ENVIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145891886285456430)
,p_name=>'P491_MOTIVO_ORDEN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145891944010456431)
,p_name=>'P491_DEVOLUCION_ORDEN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145892066540456432)
,p_name=>'P491_COD_MONEDA_BASE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145892145772456433)
,p_name=>'P491_COD_MONEDA_US'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145892253844456434)
,p_name=>'P491_TIPO_ORDEN_TRAB'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145892333945456435)
,p_name=>'P491_EXCEL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145892481084456436)
,p_name=>'P491_AUTORIZA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145892584516456437)
,p_name=>'P491_CAMBIA_ESTADO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145892612478456438)
,p_name=>'P491_COD_FORMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145892755556456439)
,p_name=>'P491_PORC_IVA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145893328180456445)
,p_name=>'P491_ALERT_MSG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146106984769854416)
,p_name=>'P491_P_ROW_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(146106863229854415)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146108013641854427)
,p_name=>'P491_IND_CONFIRMADO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146108117582854428)
,p_name=>'P491_IND_PENDIENTE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146108222593854429)
,p_name=>'P491_IND_RECHAZADO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146108388011854430)
,p_name=>'P491_IND_APROBADO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146108437014854431)
,p_name=>'P491_FEC_ALTA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146109017508854437)
,p_name=>'P491_IND_REP_DETALLES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(146108954732854436)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146989031400425003)
,p_name=>'P491_SEQ_ID_GARANTIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(146988945918425002)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146989120572425004)
,p_name=>'P491_VALOR_GARANTIA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146990182784425014)
,p_name=>'P491_SEQ_ID_ELIMINAR_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(146988945918425002)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146990860319425021)
,p_name=>'P491_COD_ARTICULO_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(146989673703425009)
,p_prompt=>'Cod Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULO_CORTO_STSOLAJS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.descripcion, ',
'       a.cod_articulo, ',
'       nvl( sum( e.cant_dispon ), 0 ) cantidad,',
'       a.cod_art_corto ',
'  from st_articulos a, st_existencia_art e ',
' where a.cod_empresa = :P_COD_EMPRESA',
'   and ( a.estado is null or a.estado <> ''I'' ) ',
'   and a.cod_empresa = e.cod_empresa (+) ',
'   and a.cod_articulo = e.cod_articulo (+)',
'   and :P491_COD_SUCURSAL = e.cod_sucursal (+) ',
' group by a.cod_art_corto,a.descripcion, a.cod_articulo ',
' order by a.descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146991244525425025)
,p_name=>'P491_COD_ART_CORTO_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(146989673703425009)
,p_prompt=>'Cod Articulo Corto'
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
 p_id=>wwv_flow_imp.id(146991361385425026)
,p_name=>'P491_DESC_ART_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(146989673703425009)
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
 p_id=>wwv_flow_imp.id(146991460389425027)
,p_name=>'P491_COD_UN_MED_CR_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(146989673703425009)
,p_prompt=>'Unidad de medida'
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
 p_id=>wwv_flow_imp.id(146991580447425028)
,p_name=>'P491_NRO_LOTE_CR_ED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(146989673703425009)
,p_prompt=>'Nro. Lote'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Lote: ''|| l.nro_lote || '' - I.V.A: '' || l.cod_iva  || '' - I.V.A Venta: '' || i.porc_iva_venta D,',
'       l.nro_lote R ',
'from st_lotes l, st_iva i ',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_articulo = :P491_COD_ARTICULO_CR_ED ',
'and l.cod_iva = i.cod_iva ',
'order by l.fec_vencimiento'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P491_COD_ARTICULO_CR_ED'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146991639775425029)
,p_name=>'P491_COD_IVA_CR_ED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(146989673703425009)
,p_prompt=>unistr('C\00F3digo I.V.A.')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_iva || '' - '' || DESCRIPCION D, ',
'       cod_iva R',
'from st_iva'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(146991891211425031)
,p_name=>'P491_CANTIDAD_CR_ED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(146989673703425009)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146991931553425032)
,p_name=>'P491_COSTO_CR_ED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(146989673703425009)
,p_prompt=>'Costo'
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
 p_id=>wwv_flow_imp.id(146992092546425033)
,p_name=>'P491_TOTAL_CR_ED'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(146989673703425009)
,p_prompt=>'Total'
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
 p_id=>wwv_flow_imp.id(148532382721621715)
,p_name=>'P491_ORIGEN'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(146989673703425009)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148532438279621716)
,p_name=>'P491_COD_RELACION_UM'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(146989673703425009)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148532522521621717)
,p_name=>'P491_TIP_CAMBIO_US'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148533137219621723)
,p_name=>'P491_PORC_IVA_COMPRA_CR_ED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(146989673703425009)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148533688178621728)
,p_name=>'P491_FEC_VENCIMIENTO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(146989673703425009)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148533785352621729)
,p_name=>'P491_CARGA_LOTE_CR_ED'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(146989673703425009)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148533820720621730)
,p_name=>'P491_IND_ENT_SAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(144613648921902338)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148535083287621742)
,p_name=>'P491_SEQ_ID_EDITAR_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(146988945918425002)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149060756517508009)
,p_name=>'P491_ALERT_MSG_SER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149061332290508015)
,p_name=>'P491_CONTADOR_COLLECTION'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149062048415508022)
,p_name=>'P491_VALOR_ESTADO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154311453898956333)
,p_name=>'P491_FEC_DESDE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(144613447650902336)
,p_prompt=>'Fec. Desde'
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
 p_id=>wwv_flow_imp.id(154311557658956334)
,p_name=>'P491_FEC_HASTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(144613447650902336)
,p_prompt=>'Fec. Hasta'
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
 p_id=>wwv_flow_imp.id(382048562128514112)
,p_name=>'P491_AUX_ESTADO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(145891499499456426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(149061121461508013)
,p_validation_name=>'VL_DETALLE_ARTICULO'
,p_validation_sequence=>10
,p_validation=>':P491_CONTADOR_COLLECTION > ''0'''
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'No puede guardar una nueva solicitud de ajustes sin articulos cargados.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145892927701456441)
,p_name=>'DA_VALIDAR_SER_ENT_SAL'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P491_SER_ENT_SAL'
,p_condition_element=>'P491_SER_ENT_SAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149062525123508027)
,p_event_id=>wwv_flow_imp.id(145892927701456441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P491_TIP_ENT_SAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145893047977456442)
,p_event_id=>wwv_flow_imp.id(145892927701456441)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   vser varchar2(1) ;',
'BEGIN',
'    --APEX_DEBUG.ERROR (''P491_TIP_ENT_SAL '' || :P491_TIP_ENT_SAL || '' P491_SER_ENT_SAL '' ||  :P491_SER_ENT_SAL);',
'    --APEX_DEBUG.ERROR (''ROWID '' || :P491_P_ROW_ID);',
'   SELECT ser_articulo',
'     INTO vser',
'     FROM series_comprob',
'    WHERE cod_empresa     = :P_COD_EMPRESA',
'      AND tip_comprobante = :P491_TIP_ENT_SAL',
'      AND ser_comprobante = :P491_SER_ENT_SAL;',
'',
'      --APEX_DEBUG.ERROR (''VSER'' || vser);',
'',
'    :P491_ALERT_MSG_SER := NULL;',
'',
'    --APEX_DEBUG.ERROR (''ENTRA ALERT'');',
'      ',
'EXCEPTION',
'   WHEN NO_DATA_FOUND THEN',
'      :P491_ALERT_MSG_SER := ''No se encuentra serie de comprobante.'';',
'      APEX_DEBUG.ERROR(SQLERRM);',
'',
'   WHEN OTHERS THEN',
'      :P491_ALERT_MSG_SER := ''Error en la tabla de Series de Comprobantes '' || sqlerrm;',
'      APEX_DEBUG.ERROR(SQLERRM);',
'end ;',
'',
''))
,p_attribute_02=>'P491_SER_ENT_SAL,P491_TIP_ENT_SAL,P491_ALERT_MSG_SER'
,p_attribute_03=>'P491_ALERT_MSG_SER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145893579167456447)
,p_name=>'DA_VALIDAR_NUM_ENT_SAL'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P491_NUM_ENT_SAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145893682906456448)
,p_event_id=>wwv_flow_imp.id(145893579167456447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   DECLARE',
'      vnro   VARCHAR2(1) := ''N'';',
'      vexi   EXCEPTION;',
'   BEGIN',
'      select ''S''',
'        into vnro',
'        from ST_solajus_CAB',
'       where cod_empresa = :P_COD_EMPRESA',
'         and ser_ent_sal = :P491_SER_ENT_SAL',
'         and num_ent_sal = :P491_NUM_ENT_SAL;',
'',
'      raise vexi;',
'',
'   EXCEPTION',
'      WHEN NO_DATA_FOUND then',
'         null ;',
'      when vexi then',
'                     ',
unistr('         :P491_ALERT_MSG := ''Ya existe el n\00FAmero de movimiento de Entrada/Salida de art\00EDculos. '' ||'),
unistr('                     ''Ingrese otro n\00FAmero de movimiento.'', 2 ) ;'),
'      when others then',
unistr('         :P491_ALERT_MSG ''Error en la tabla Entrada/Salida de Art\00EDculos (Cabecera) '' || sqlerrm ) ;'),
'   END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P491_SER_ENT_SAL,P491_NUM_ENT_SAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146107850188854425)
,p_name=>'DA_BUSCAR_DATOS'
,p_event_sequence=>30
,p_condition_element=>'P491_P_ROW_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146107924447854426)
,p_event_id=>wwv_flow_imp.id(146107850188854425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT            ',
'        cod_sucursal,',
'        num_ent_sal,',
'        fec_ent_sal,',
'        cod_motivo_ent_sal,',
'        cod_moneda,',
'        ser_ent_sal,',
'        tip_ent_sal,            ',
'        fec_alta,',
'        cod_proveedor,',
'        observacion,',
'        tip_comprobante_ref,',
'        ser_comprobante_ref,',
'        nro_comprobante_ref,',
'        tip_cambio_us,',
'        hora_alta,',
'        cod_usuario,',
'        --cod_cliente,',
'        --cod_vendedor,',
'        --tipo,',
'        --ind_web,',
'        --cod_motivo_dev,',
'        estado,',
'        fecha_rechazo,',
'        usuario_rechazo,',
'        fecha_alta,',
'        fecha_aut_comercial,',
'        usuario_aut_comercial,',
'        ind_confirmado,',
'        ind_pendiente,',
'        ind_rechazado,',
'        ind_aprobado',
'    INTO',
'        :P491_COD_SUCURSAL,',
'        :P491_NUM_ENT_SAL,',
'        :P491_FEC_ENT_SAL,',
'        :P491_COD_MOTIVO_ENT_SAL,',
'        :P491_COD_MONEDA,',
'        :P491_SER_ENT_SAL,',
'        :P491_TIP_ENT_SAL,',
'        :P491_FEC_ALTA,',
'        :P491_COD_PROVEEDOR,',
'        :P491_OBSERVACION, ',
'        :P491_TIP_COMPROBANTE_REF,',
'        :P491_SER_COMPROBANTE_REF,',
'        :P491_NRO_COMPROBANTE_REF,',
'        :P491_TIP_CAMBIO_US,',
'        :P491_HORA_ALTA,',
'        :P491_COD_USUARIO,',
'        :P491_ESTADO,',
'        :P491_FECHA_RECHAZO,',
'        :P491_USUARIO_RECHAZO,',
'        :P491_FECHA_ALTA,',
'        :P491_FECHA_AUT_COMERCIAL,',
'        :P491_USUARIO_AUT_COMERCIAL,        ',
'        :P491_IND_CONFIRMADO,',
'        :P491_IND_PENDIENTE,',
'        :P491_IND_RECHAZADO,',
'        :P491_IND_APROBADO',
'',
'    FROM ST_SOLAJUS_CAB',
'    WHERE ROWID = :P491_P_ROW_ID;',
'',
'    :P491_VALOR_ESTADO := ''1'';',
'    :P491_AUX_ESTADO := :P491_ESTADO;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P491_P_ROW_ID'
,p_attribute_03=>'P491_AUX_ESTADO,P491_COD_SUCURSAL,P491_NUM_ENT_SAL,P491_FEC_ENT_SAL,P491_COD_MOTIVO_ENT_SAL,P491_COD_MONEDA,P491_SER_ENT_SAL,P491_TIP_ENT_SAL,P491_FEC_ALTA,P491_COD_PROVEEDOR,P491_OBSERVACION,P491_TIP_COMPROBANTE_REF,P491_SER_COMPROBANTE_REF,P491_NRO'
||'_COMPROBANTE_REF,P491_HORA_ALTA,P491_COD_USUARIO,P491_ESTADO,P491_FECHA_RECHAZO,P491_USUARIO_RECHAZO,P491_FECHA_AUT_COMERCIAL,P491_USUARIO_AUT_COMERCIAL,P491_FECHA_ALTA,P491_IND_CONFIRMADO,P491_IND_PENDIENTE,P491_IND_RECHAZADO,P491_IND_APROBADO,P491_'
||'TIP_CAMBIO_US,P491_VALOR_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146108812644854435)
,p_event_id=>wwv_flow_imp.id(146107850188854425)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STSOLAJS.PR_CREAR_COL_SOLAJU ( PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                   PI_TIP_ENT_SAL => :P491_TIP_ENT_SAL,',
'                                   PI_SER_ENT_SAL => :P491_SER_ENT_SAL,',
'                                   PI_NUM_ENT_SAL => :P491_NUM_ENT_SAL);',
'    ',
'    :P491_IND_REP_DETALLES := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;'))
,p_attribute_02=>'P491_TIP_ENT_SAL,P491_SER_ENT_SAL,P491_NUM_ENT_SAL'
,p_attribute_03=>'P491_IND_REP_DETALLES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146109116717854438)
,p_event_id=>wwv_flow_imp.id(146107850188854425)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145889475639456406)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149062628047508028)
,p_event_id=>wwv_flow_imp.id(146107850188854425)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P491_VALOR_ESTADO := ''0'';',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P491_VALOR_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146989292941425005)
,p_name=>'DA_SETEAR_GARANTIA'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P491_VALOR_GARANTIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146989419754425007)
,p_event_id=>wwv_flow_imp.id(146989292941425005)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ROW_ID VARCHAR2(50);',
'BEGIN',
'',
'',
'    SELECT C030',
'    INTO   V_ROW_ID',
'    FROM   APEX_COLLECTIONS',
'    WHERE  SEQ_ID = :P491_SEQ_ID_GARANTIA',
'    AND    COLLECTION_NAME = ''SOLAJU'';',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''SOLAJU'',',
'                                             P_SEQ             => :P491_SEQ_ID_GARANTIA,',
'                                             P_ATTR_NUMBER     => 18,',
'                                             P_ATTR_VALUE      => :P491_VALOR_GARANTIA);',
'',
'    IF V_ROW_ID IS NULL THEN',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''SOLAJU'',',
'                                                 P_SEQ             => :P491_SEQ_ID_GARANTIA,',
'                                                 P_ATTR_NUMBER     => 31,',
'                                                 P_ATTR_VALUE      => ''A'');',
'    ELSE',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''SOLAJU'',',
'                                                 P_SEQ             => :P491_SEQ_ID_GARANTIA,',
'                                                 P_ATTR_NUMBER     => 31,',
'                                                 P_ATTR_VALUE      => ''E'');',
'    END IF;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P491_SEQ_ID_GARANTIA,P491_VALOR_GARANTIA'
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
 p_id=>wwv_flow_imp.id(146989768228425010)
,p_name=>'DA_ABRIR_REG_CREAR_ARTICULO'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146989570942425008)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148535788245621749)
,p_event_id=>wwv_flow_imp.id(146989768228425010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P491_COD_SUCURSAL IS NULL OR :P491_TIP_ENT_SAL IS NULL THEN',
'        :P491_ALERT_MSG := ''Para ingresar un nuevo articulo, debe ingresar una sucursal y un tipo de comprobante previamente'';',
'    ELSE',
'        :P491_ALERT_MSG := NULL;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''Error en DA_ABRIR_REG_CREAR_ARTICULO - 01.'' || SQLERRM);',
'END;'))
,p_attribute_02=>'P491_COD_SUCURSAL,P491_TIP_ENT_SAL'
,p_attribute_03=>'P491_ALERT_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148535816304621750)
,p_event_id=>wwv_flow_imp.id(146989768228425010)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P491_ALERT_MSG.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P491_ALERT_MSG'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146991108497425024)
,p_event_id=>wwv_flow_imp.id(146989768228425010)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(146989972268425012)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P491_ALERT_MSG'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146991056821425023)
,p_event_id=>wwv_flow_imp.id(146989768228425010)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(146990908128425022)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P491_ALERT_MSG'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146992143413425034)
,p_event_id=>wwv_flow_imp.id(146989768228425010)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P491_COD_ART_CORTO_CR_ED,P491_COD_ARTICULO_CR_ED,P491_DESC_ART_CR_ED,P491_COD_UN_MED_CR_ED,P491_COD_IVA_CR_ED,P491_PORC_IVA_COMPRA_CR_ED,P491_CANTIDAD_CR_ED,P491_COSTO_CR_ED,P491_TOTAL_CR_ED,P491_ORIGEN,P491_COD_RELACION_UM,P491_FEC_VENCIMIENTO,P491_'
||'CARGA_LOTE_CR_ED'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P491_ALERT_MSG'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146989828639425011)
,p_event_id=>wwv_flow_imp.id(146989768228425010)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146989673703425009)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P491_ALERT_MSG'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146990381956425016)
,p_name=>'DA_ELIMINAR_DET'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P491_SEQ_ID_ELIMINAR_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146990464015425017)
,p_event_id=>wwv_flow_imp.id(146990381956425016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el art\00EDculo?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146990505562425018)
,p_event_id=>wwv_flow_imp.id(146990381956425016)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STSOLAJS.PR_ELIMINAR_DET_ART (SEQ_ID_ELIMINAR => :P491_SEQ_ID_ELIMINAR_DET);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P491_SEQ_ID_ELIMINAR_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146990668546425019)
,p_event_id=>wwv_flow_imp.id(146990381956425016)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145889475639456406)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148532166600621713)
,p_name=>'DA_SETEAR_DATOS_ARTICULO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P491_COD_ART_CORTO_CR_ED'
,p_condition_element=>'P491_COD_ART_CORTO_CR_ED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148532269517621714)
,p_event_id=>wwv_flow_imp.id(148532166600621713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vst VARCHAR2(1);',
'    vcp NUMBER(20,4);',
'    ver EXCEPTION;',
'BEGIN',
'  SELECT a.descripcion, ',
'         a.cod_origen_art, ',
'         decode (:P491_COD_MONEDA, :P491_COD_MONEDA_BASE,',
'                 nvl(a.costo_prom,a.costo_prom_us * nvl(:P491_TIP_CAMBIO_US,1)),',
'                 nvl(a.costo_prom_us,a.costo_prom / nvl(:P491_TIP_CAMBIO_US,1))),',
'         a.ind_maneja_stock, r.cod_relacion_um,',
'         r.cod_unidad_rel,',
'         a.cod_articulo',
'    INTO :P491_DESC_ART_CR_ED, ',
'         :P491_ORIGEN, ',
'         :P491_COSTO_CR_ED, ',
'         vst, ',
'         :P491_COD_RELACION_UM,',
'         :P491_COD_UN_MED_CR_ED,',
'         :P491_COD_ARTICULO_CR_ED',
'    from st_articulos a, st_relaciones r ',
'   where a.cod_empresa = :P_COD_EMPRESA ',
'     and a.cod_art_corto = :P491_COD_ART_CORTO_CR_ED',
'     and a.cod_relacion_um = r.cod_relacion_um ',
'     and r.por_defecto = ''S'';',
'',
'',
'  IF vst = ''N'' THEN',
unistr('    :P491_ALERT_MSG := ''El art\00EDculo seleccionado no maneja stock.'';'),
'    --raise ver;',
'  END IF;',
'',
'    vcp := 0;',
'  ',
'  IF :P491_COSTO_CR_ED IS NULL THEN',
'    :P491_COSTO_CR_ED := vcp;',
'  END IF;',
'  ',
'EXCEPTION',
'  when no_data_found then',
'    :P491_DESC_ART_CR_ED := NULL;',
unistr('    :P491_ALERT_MSG := ''No se encuentra el c\00F3digo de art\00EDculo.'';'),
'    --raise form_trigger_failure;',
'  when others then',
'    :P491_DESC_ART_CR_ED := NULL;',
unistr('    :P491_ALERT_MSG := ''Error en la tabla de Art\00EDculos '' || sqlerrm;'),
'    --raise form_trigger_failure;*/',
'END;',
'',
'',
''))
,p_attribute_02=>'P491_COD_ART_CORTO_CR_ED'
,p_attribute_03=>'P491_DESC_ART_CR_ED,P491_ORIGEN,P491_COSTO_CR_ED,P491_COD_RELACION_UM,P491_COD_UN_MED_CR_ED,P491_COD_ARTICULO_CR_ED,P491_ALERT_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148532774855621719)
,p_name=>'DA_SETEAR_TOTAL'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P491_CANTIDAD_CR_ED'
,p_condition_element=>'P491_CANTIDAD_CR_ED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148532889401621720)
,p_event_id=>wwv_flow_imp.id(148532774855621719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P491_TOTAL_CR_ED := nvl( :P491_COSTO_CR_ED, 0) * nvl( :P491_CANTIDAD_CR_ED, 0);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P491_COSTO_CR_ED,P491_CANTIDAD_CR_ED'
,p_attribute_03=>'P491_TOTAL_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148532955436621721)
,p_name=>'DA_SETEAR_PORC_IVA'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P491_COD_IVA_CR_ED'
,p_condition_element=>'P491_COD_IVA_CR_ED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148533017811621722)
,p_event_id=>wwv_flow_imp.id(148532955436621721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select porc_iva_compra',
'     into :P491_PORC_IVA_COMPRA_CR_ED',
'     from st_iva',
'     where cod_iva = :P491_COD_IVA_CR_ED;',
'',
'     :P491_ALERT_MSG := NULL;',
'',
'exception',
'  when no_data_found then',
'    :P491_PORC_IVA_COMPRA_CR_ED := null ;',
unistr('    :P491_ALERT_MSG := ''No se encuentra el C\00F3digo de IVA.'';'),
'',
'  when others then',
'    :P491_PORC_IVA_COMPRA_CR_ED  := null ;',
'    :P491_ALERT_MSG := ''Error en la tabla de IVA '' || sqlerrm;',
'end;'))
,p_attribute_02=>'P491_COD_IVA_CR_ED'
,p_attribute_03=>'P491_PORC_IVA_COMPRA_CR_ED,P491_ALERT_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148533347582621725)
,p_event_id=>wwv_flow_imp.id(148532955436621721)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P491_ALERT_MSG.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P491_ALERT_MSG'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148533400092621726)
,p_name=>'DA_VALIDAR_LOTE'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P491_NRO_LOTE_CR_ED'
,p_condition_element=>'P491_NRO_LOTE_CR_ED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148533587358621727)
,p_event_id=>wwv_flow_imp.id(148533400092621726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DECLARE',
'       vfec          date;',
'       vnro_lote     number;',
'       valerta       number;',
'       vfec_venc     date;',
'    BEGIN',
'       select l.fec_vencimiento, l.cod_iva, i.porc_iva_compra',
'          into :P491_FEC_VENCIMIENTO, :P491_COD_IVA_CR_ED, :P491_PORC_IVA_COMPRA_CR_ED',
'          from st_lotes l, st_iva i',
'          where l.cod_empresa  = :P_COD_EMPRESA',
'            and l.cod_articulo = :P491_COD_ARTICULO_CR_ED',
'            and l.nro_lote     = :P491_NRO_LOTE_CR_ED',
'            and l.cod_iva      = i.cod_iva ;',
'',
'       :P491_CARGA_LOTE_CR_ED := ''N'';',
'       :P491_ALERT_MSG := NULL;',
'/*',
'    EXCEPTION',
'       when no_data_found then',
'          if ltrim( rtrim (:P491_NRO_LOTE_CR_ED)) is null or',
'             ltrim( rtrim (:P491_NRO_LOTE_CR_ED)) = '''' or',
'             :P491_IND_ENT_SAL <> ''E'' then',
'                :P491_CARGA_LOTE_CR_ED := ''N'' ;',
unistr('                :P491_ALERT_MSG := ''Debe ingresar el n\00FAmero de lote.'';'),
'          else',
'       	      BEGIN	',
'    	            vnro_lote := 0 ;',
'    	            select max( to_number( nro_lote ) )',
'    	               into vnro_lote',
'    	               from st_lotes',
'    	               where cod_empresa  = :P_COD_EMPRESA',
'    	                 and cod_articulo = :P491_COD_ARTICULO_CR_ED;',
'    	            vnro_lote := nvl( vnro_lote, 0 ) + 1 ;',
'    	      EXCEPTION',
'    	            when no_data_found then',
'    	               vnro_lote := 1 ;',
'    	            when others then',
'    	               vnro_lote := 1 ;',
'    	      END;',
'             :P491_NRO_LOTE_CR_ED := to_char( vnro_lote );',
'          end if;',
'',
'       when others then',
'          :P491_CARGA_LOTE_CR_ED := ''N'' ;',
'          :P491_FEC_VENCIMIENTO := null ;',
'          :P491_COD_IVA_CR_ED := null ;',
'          :P491_PORC_IVA_COMPRA_CR_ED := null ;',
'          :P491_ALERT_MSG := ''Error en la tabla de lotes '' || sqlerrm;',
'    end;',
'',
'    if :P491_COD_MOTIVO_ENT_SAL =''20''  and :P491_NRO_LOTE_CR_ED in (''1'',''5'') then',
'    	 :P491_ALERT_MSG := ''Lote no valido para obsolecencia '' || sqlerrm;',
'    end if;',
'*/',
'',
'END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P491_COD_ARTICULO_CR_ED,P491_NRO_LOTE_CR_ED,P491_IND_ENT_SAL,P491_COD_MOTIVO_ENT_SAL'
,p_attribute_03=>'P491_FEC_VENCIMIENTO,P491_COD_IVA_CR_ED,P491_PORC_IVA_COMPRA_CR_ED,P491_CARGA_LOTE_CR_ED,P491_ALERT_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148534149826621733)
,p_event_id=>wwv_flow_imp.id(148533400092621726)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P491_ALERT_MSG.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P491_ALERT_MSG'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148533919501621731)
,p_name=>'DA_CERRAR_ARTICULO_CR_ED'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146990085304425013)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148534060040621732)
,p_event_id=>wwv_flow_imp.id(148533919501621731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146989673703425009)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148534276644621734)
,p_name=>'DA_ACEPTAR_ARTICULO'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146989972268425012)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148534328664621735)
,p_event_id=>wwv_flow_imp.id(148534276644621734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P491_COD_ARTICULO_CR_ED IS NULL OR :P491_NRO_LOTE_CR_ED IS NULL OR :P491_CANTIDAD_CR_ED IS NULL THEN',
'        :P491_ALERT_MSG := ''Compruebe que los datos obligatorios no esten vacios'';',
'    ELSE',
'        :P491_ALERT_MSG := NULL;',
'        :P491_IND_REP_DETALLES := ''1'';',
'        STSOLAJS.PR_AGREGAR_DET_ART (PI_TIP_ENT_SAL => :P491_TIP_ENT_SAL,',
'                                     PI_NUM_ENT_SAL => :P491_NUM_ENT_SAL,',
'                                     PI_COD_ARTICULO => :P491_COD_ARTICULO_CR_ED,',
'                                     PI_COSTO => :P491_COSTO_CR_ED,',
'                                     PI_CANTIDAD => :P491_CANTIDAD_CR_ED,',
'                                     PI_COD_SUCURSAL => :P491_COD_SUCURSAL,',
'                                     PI_COD_UN_MED => :P491_COD_UN_MED_CR_ED,',
'                                     PI_COD_IVA => :P491_COD_IVA_CR_ED,',
'                                     PI_NRO_LOTE => :P491_NRO_LOTE_CR_ED,',
'                                     PI_FEC_VENCIMIENTO => :P491_FEC_VENCIMIENTO,',
'                                     PI_TIP_CAMBIO_US => :P491_TIP_CAMBIO_US,',
'                                     PI_DESC_ART => :P491_DESC_ART_CR_ED,',
'                                     PI_COD_ART_CORTO => :P491_COD_ART_CORTO_CR_ED,',
'                                     PI_TOTAL => :P491_TOTAL_CR_ED);',
'',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P491_TIP_ENT_SAL,P491_NUM_ENT_SAL,P491_COD_ARTICULO_CR_ED,P491_COSTO_CR_ED,P491_CANTIDAD_CR_ED,P491_COD_SUCURSAL,P491_COD_UN_MED_CR_ED,P491_COD_IVA_CR_ED,P491_NRO_LOTE_CR_ED,P491_FEC_VENCIMIENTO,P491_TIP_CAMBIO_US,P491_DESC_ART_CR_ED,P491_COD_ART_COR'
||'TO_CR_ED,P491_TOTAL_CR_ED'
,p_attribute_03=>'P491_ALERT_MSG,P491_IND_REP_DETALLES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148534405888621736)
,p_event_id=>wwv_flow_imp.id(148534276644621734)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P491_ALERT_MSG.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P491_ALERT_MSG'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148534875089621740)
,p_event_id=>wwv_flow_imp.id(148534276644621734)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145889475639456406)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P491_ALERT_MSG'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148534698555621738)
,p_event_id=>wwv_flow_imp.id(148534276644621734)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146989673703425009)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P491_ALERT_MSG'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148535198144621743)
,p_name=>'DA_ABRIR_DET_ART_ED'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P491_SEQ_ID_EDITAR_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148535367368621745)
,p_event_id=>wwv_flow_imp.id(148535198144621743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(146990908128425022)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148535422939621746)
,p_event_id=>wwv_flow_imp.id(148535198144621743)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(146989972268425012)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148535584287621747)
,p_event_id=>wwv_flow_imp.id(148535198144621743)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C004,',
'           N002,',
'           N003,',
'           C005,',
'           C006,                 ',
'           C010,',
'           C011,',
'           D001,',
'           C017,',
'           C019,',
'           N004                ',
'',
'    INTO :P491_COD_ARTICULO_CR_ED,',
'         :P491_COSTO_CR_ED,',
'         :P491_CANTIDAD_CR_ED,',
'         :P491_COD_SUCURSAL,',
'         :P491_COD_UN_MED_CR_ED,',
'         :P491_COD_IVA_CR_ED,',
'         :P491_NRO_LOTE_CR_ED,',
'         :P491_FEC_VENCIMIENTO,',
'         :P491_DESC_ART_CR_ED,',
'         :P491_COD_ART_CORTO_CR_ED,',
'         :P491_TOTAL_CR_ED',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''SOLAJU''',
'    AND SEQ_ID = :P491_SEQ_ID_EDITAR_DET;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P491_SEQ_ID_EDITAR_DET'
,p_attribute_03=>'P491_COD_ARTICULO_CR_ED,P491_COSTO_CR_ED,P491_CANTIDAD_CR_ED,P491_COD_SUCURSAL,P491_COD_UN_MED_CR_ED,P491_COD_IVA_CR_ED,P491_NRO_LOTE_CR_ED,P491_FEC_VENCIMIENTO,P491_DESC_ART_CR_ED,P491_COD_ART_CORTO_CR_ED,P491_TOTAL_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148535670793621748)
,p_event_id=>wwv_flow_imp.id(148535198144621743)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146989673703425009)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149060322799508005)
,p_name=>'DA_LIMPIAR_CAMPOS'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(149060100474508003)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149060430764508006)
,p_event_id=>wwv_flow_imp.id(149060322799508005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'LIMPIAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149060576462508007)
,p_name=>'DA_SET_FOCUS_SER'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P491_ALERT_MSG_SER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145893427948456446)
,p_event_id=>wwv_flow_imp.id(149060576462508007)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P491_SER_ENT_SAL'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P491_ALERT_MSG_SER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145893171387456443)
,p_event_id=>wwv_flow_imp.id(149060576462508007)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P491_ALERT_MSG_SER.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P491_ALERT_MSG_SER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149182105744939501)
,p_name=>'DA_EDITAR_DET_ARTICULO'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146990908128425022)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149182377827939503)
,p_event_id=>wwv_flow_imp.id(149182105744939501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P491_COD_ART_CORTO_CR_ED IS NULL OR :P491_NRO_LOTE_CR_ED IS NULL OR :P491_CANTIDAD_CR_ED IS NULL THEN',
'        :P491_ALERT_MSG := ''Compruebe que los datos obligatorios no esten vacios'';',
'    ELSE',
'        :P491_ALERT_MSG := NULL;',
'        :P491_IND_REP_DETALLES := ''1'';',
'        STSOLAJS.PR_MODIFICAR_DET_ART ( PI_SEQ_ID_EDITAR => :P491_SEQ_ID_EDITAR_DET,                                ',
'                                        PI_COD_ARTICULO => :P491_COD_ARTICULO_CR_ED,',
'                                        PI_COSTO => :P491_COSTO_CR_ED,',
'                                        PI_CANTIDAD => :P491_CANTIDAD_CR_ED,',
'                                        PI_COD_UN_MED => :P491_COD_UN_MED_CR_ED,',
'                                        PI_COD_IVA => :P491_COD_IVA_CR_ED,',
'                                        PI_NRO_LOTE => :P491_NRO_LOTE_CR_ED,',
'                                        PI_FEC_VENCIMIENTO => :P491_FEC_VENCIMIENTO,',
'                                        PI_DESC_ART => :P491_DESC_ART_CR_ED,',
'                                        PI_COD_ART_CORTO => :P491_COD_ART_CORTO_CR_ED,',
'                                        PI_TOTAL => :P491_TOTAL_CR_ED);',
'',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;',
'',
'',
'',
'',
''))
,p_attribute_02=>'P491_SEQ_ID_EDITAR_DET,P491_TIP_ENT_SAL,P491_NUM_ENT_SAL,P491_COD_ARTICULO_CR_ED,P491_COSTO_CR_ED,P491_CANTIDAD_CR_ED,P491_COD_SUCURSAL,P491_COD_UN_MED_CR_ED,P491_COD_IVA_CR_ED,P491_NRO_LOTE_CR_ED,P491_FEC_VENCIMIENTO,P491_TIP_CAMBIO_US,P491_DESC_ART'
||'_CR_ED,P491_COD_ART_CORTO_CR_ED,P491_TOTAL_CR_ED'
,p_attribute_03=>'P491_ALERT_MSG,P491_IND_REP_DETALLES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149182451934939504)
,p_event_id=>wwv_flow_imp.id(149182105744939501)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P491_ALERT_MSG.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P491_ALERT_MSG'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149182538219939505)
,p_event_id=>wwv_flow_imp.id(149182105744939501)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145889475639456406)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P491_ALERT_MSG'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149182641111939506)
,p_event_id=>wwv_flow_imp.id(149182105744939501)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146989673703425009)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P491_ALERT_MSG'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149060907621508011)
,p_name=>'DA_GUARDAR_BD'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(149060227700508004)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(382047572883514102)
,p_event_id=>wwv_flow_imp.id(149060907621508011)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149061223449508014)
,p_event_id=>wwv_flow_imp.id(149060907621508011)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COUNT(*)',
'    INTO :P491_CONTADOR_COLLECTION',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''SOLAJU'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;'))
,p_attribute_03=>'P491_CONTADOR_COLLECTION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(382049022591514117)
,p_event_id=>wwv_flow_imp.id(149060907621508011)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P491_TIP_ENT_SAL,P491_SER_ENT_SAL,P491_NUM_ENT_SAL,P491_FEC_ENT_SAL,P491_ESTADO,P491_TIP_ENT_SAL,P491_SER_ENT_SAL,P491_NUM_ENT_SAL,P491_FEC_ENT_SAL,P491_ESTADO,P491_COD_SUCURSAL,P491_COD_MOTIVO_ENT_SAL,P491_COD_PROVEEDOR,P491_COD_MONEDA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149061057104508012)
,p_event_id=>wwv_flow_imp.id(149060907621508011)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149061675302508018)
,p_name=>'DA_SETEAR_DATOS_ESTADO'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P491_ESTADO'
,p_condition_element=>'P491_VALOR_ESTADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149061713096508019)
,p_event_id=>wwv_flow_imp.id(149061675302508018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'',
'    IF :P491_ESTADO = ''AUTORIZADO'' THEN',
'        :P491_USUARIO_AUT_COMERCIAL := :APP_USER;',
'        :P491_FECHA_AUT_COMERCIAL := SYSDATE;',
'        :P491_USUARIO_RECHAZO := NULL;',
'        :P491_FECHA_RECHAZO := NULL;',
'    ELSIF :P491_ESTADO = ''RECHAZADO'' THEN',
'        :P491_USUARIO_AUT_COMERCIAL := NULL;',
'        :P491_FECHA_AUT_COMERCIAL := NULL;',
'        :P491_USUARIO_RECHAZO := :APP_USER;',
'        :P491_FECHA_RECHAZO := SYSDATE;',
'    ELSIF :P491_ESTADO = ''CREADO'' THEN',
'        :P491_USUARIO_AUT_COMERCIAL := NULL;',
'        :P491_FECHA_AUT_COMERCIAL := NULL;',
'        :P491_USUARIO_RECHAZO := NULL;',
'        :P491_FECHA_RECHAZO := NULL;',
'    END IF;    ',
'',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P491_ESTADO'
,p_attribute_03=>'P491_USUARIO_AUT_COMERCIAL,P491_FECHA_AUT_COMERCIAL,P491_USUARIO_RECHAZO,P491_FECHA_RECHAZO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149061893425508020)
,p_name=>'DA_HABILITAR_DATOS_ESTADO'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P491_ESTADO'
,p_condition_element=>'P491_ESTADO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149062138421508023)
,p_event_id=>wwv_flow_imp.id(149061893425508020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P491_TIP_ENT_SAL,P491_SER_ENT_SAL,P491_NUM_ENT_SAL,P491_IND_ENT_SAL,P491_FEC_ENT_SAL,P491_COD_SUCURSAL,P491_COD_MOTIVO_ENT_SAL,P491_COD_PROVEEDOR,P491_COD_MONEDA,P491_COD_SUCURSAL,P491_COD_MOTIVO_ENT_SAL,P491_COD_PROVEEDOR,P491_COD_MONEDA,P491_OBSERV'
||'ACION,P491_HORA_ALTA'
,p_client_condition_type=>'IN_LIST'
,p_client_condition_element=>'P491_ESTADO'
,p_client_condition_expression=>'AUTORIZADO,RECHAZADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149062262105508024)
,p_event_id=>wwv_flow_imp.id(149061893425508020)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(146989570942425008)
,p_client_condition_type=>'IN_LIST'
,p_client_condition_element=>'P491_ESTADO'
,p_client_condition_expression=>'AUTORIZADO,RECHAZADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149062330274508025)
,p_event_id=>wwv_flow_imp.id(149061893425508020)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P491_TIP_ENT_SAL,P491_SER_ENT_SAL,P491_NUM_ENT_SAL,P491_IND_ENT_SAL,P491_FEC_ENT_SAL,P491_COD_SUCURSAL,P491_COD_MOTIVO_ENT_SAL,P491_COD_PROVEEDOR,P491_COD_MONEDA,P491_COD_SUCURSAL,P491_COD_MOTIVO_ENT_SAL,P491_COD_PROVEEDOR,P491_COD_MONEDA,P491_OBSERV'
||'ACION,P491_HORA_ALTA'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P491_ESTADO'
,p_client_condition_expression=>'CREADO'
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
 p_id=>wwv_flow_imp.id(149062477590508026)
,p_event_id=>wwv_flow_imp.id(149061893425508020)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(146989570942425008)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P491_ESTADO'
,p_client_condition_expression=>'CREADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149062787627508029)
,p_name=>'DA_HABILITAR_ESTADO'
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(382048974775514116)
,p_event_id=>wwv_flow_imp.id(149062787627508029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P491_AUX_ESTADO := :P491_ESTADO;',
''))
,p_attribute_02=>'P491_ESTADO'
,p_attribute_03=>'P491_AUX_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149062856440508030)
,p_event_id=>wwv_flow_imp.id(149062787627508029)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P491_ESTADO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P491_CAMBIA_ESTADO'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149062975806508031)
,p_event_id=>wwv_flow_imp.id(149062787627508029)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P491_ESTADO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P491_CAMBIA_ESTADO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154311293063956331)
,p_name=>'DA_LLAMAR_STENSAL'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154311117770956330)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154311327461956332)
,p_event_id=>wwv_flow_imp.id(154311293063956331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga (apex.item( "P_COD_EMPRESA" ).getValue(), ',
'            "", ',
'            "", ',
'            apex.item( "P491_COD_SUCURSAL" ).getValue(), ',
'            apex.item( "P491_COD_SUCURSAL" ).getValue(),',
'            apex.item( "P491_TIP_ENT_SAL" ).getValue(),',
'            apex.item( "P491_SER_ENT_SAL" ).getValue(),',
'            "",',
'            "",',
'            "",',
'            "",',
'            "",',
'            "",//apex.item( "P_COD_USUARIO" ).getValue(),',
'            apex.item( "P491_NUM_ENT_SAL" ).getValue(),',
'            apex.item( "P491_NUM_ENT_SAL" ).getValue(),',
'            "",',
'            "",',
'            "",',
'            "");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154312174369956340)
,p_name=>'DA_ABRIR_REPORTE_AJUSTES'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154312404874956343)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154312204376956341)
,p_event_id=>wwv_flow_imp.id(154312174369956340)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P491_FEC_DESDE,P491_FEC_HASTA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154312396771956342)
,p_event_id=>wwv_flow_imp.id(154312174369956340)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144613447650902336)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154311849746956337)
,p_name=>'DA_LLAMAR_STENSALSOL'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154311729602956336)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154312024330956339)
,p_event_id=>wwv_flow_imp.id(154311849746956337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescargaStensalsol (apex.item( "P_COD_EMPRESA" ).getValue(), ',
'            apex.item( "P491_FEC_DESDE" ).getValue(), ',
'            apex.item( "P491_FEC_HASTA" ).getValue(), ',
'            apex.item( "P491_COD_SUCURSAL" ).getValue(), ',
'            apex.item( "P491_COD_SUCURSAL" ).getValue(),',
'            apex.item( "P491_TIP_ENT_SAL" ).getValue(),',
'            apex.item( "P491_SER_ENT_SAL" ).getValue(),',
'            "",',
'            "",',
'            "",',
'            "",',
'            "",',
'            "",//apex.item( "P_COD_USUARIO" ).getValue(),',
'            apex.item( "P491_NUM_ENT_SAL" ).getValue(),',
'            apex.item( "P491_NUM_ENT_SAL" ).getValue(),',
'            "",',
'            "",',
'            "",',
'            "");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154312656277956345)
,p_name=>'DA_CERRAR_REPORTE_AJUSTES'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154312522864956344)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154312756336956346)
,p_event_id=>wwv_flow_imp.id(154312656277956345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144613447650902336)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161492634821907601)
,p_name=>'DA_SETEAR_DATOS_ARTICULO_LARGO'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P491_COD_ARTICULO_CR_ED'
,p_condition_element=>'P491_COD_ARTICULO_CR_ED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161492732485907602)
,p_event_id=>wwv_flow_imp.id(161492634821907601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vst VARCHAR2(1);',
'    vcp NUMBER(20,4);',
'    ver EXCEPTION;',
'BEGIN',
'',
'      SELECT a.descripcion, ',
'             a.cod_origen_art, ',
'             decode (:P491_COD_MONEDA, :P491_COD_MONEDA_BASE,',
'                     nvl(a.costo_prom,a.costo_prom_us * nvl(:P491_TIP_CAMBIO_US,1)),',
'                     nvl(a.costo_prom_us,a.costo_prom / nvl(:P491_TIP_CAMBIO_US,1))),',
'             a.ind_maneja_stock, r.cod_relacion_um,',
'             r.cod_unidad_rel,',
'             a.cod_art_corto',
'        INTO :P491_DESC_ART_CR_ED, ',
'             :P491_ORIGEN, ',
'             :P491_COSTO_CR_ED, ',
'             vst, ',
'             :P491_COD_RELACION_UM,',
'             :P491_COD_UN_MED_CR_ED,',
'             :P491_COD_ART_CORTO_CR_ED',
'        from st_articulos a, st_relaciones r ',
'       where a.cod_empresa = :P_COD_EMPRESA ',
'         and a.cod_articulo = :P491_COD_ARTICULO_CR_ED',
'         and a.cod_relacion_um = r.cod_relacion_um ',
'         and r.por_defecto = ''S'';',
'',
'      IF vst = ''N'' THEN',
unistr('        :P491_ALERT_MSG := ''El art\00EDculo seleccionado no maneja stock.'';'),
'        --raise ver;',
'      END IF;',
'',
'        vcp := 0;',
'      ',
'      IF :P491_COSTO_CR_ED IS NULL THEN',
'        :P491_COSTO_CR_ED := vcp;',
'      END IF;',
'  ',
'EXCEPTION',
'  when no_data_found then',
'    :P491_DESC_ART_CR_ED := NULL;',
unistr('    :P491_ALERT_MSG := ''No se encuentra el c\00F3digo de art\00EDculo.'';'),
'',
'  when others then',
'    :P491_DESC_ART_CR_ED := NULL;',
unistr('    :P491_ALERT_MSG := ''Error en la tabla de Art\00EDculos '' || sqlerrm;'),
'',
'END;',
'',
'',
''))
,p_attribute_02=>'P491_COD_ARTICULO_CR_ED'
,p_attribute_03=>'P491_DESC_ART_CR_ED,P491_ORIGEN,P491_COSTO_CR_ED,P491_COD_RELACION_UM,P491_COD_UN_MED_CR_ED,P491_ALERT_MSG,P491_COD_ART_CORTO_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(382048701895514114)
,p_name=>'DA_SETEAR_AUX_ESTADO'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P491_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(382048887245514115)
,p_event_id=>wwv_flow_imp.id(382048701895514114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P491_AUX_ESTADO := :P491_ESTADO;'
,p_attribute_02=>'P491_ESTADO'
,p_attribute_03=>'P491_AUX_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(146992513250425038)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_DATOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when=>'P491_P_ROW_ID'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(149059943031508001)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_LIMPIAR_COLL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (P_COLLECTION_NAME => ''SOLAJU'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P491_P_ROW_ID'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(145891624463456428)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P491_COD_MODULO := ''ST'';',
'    :P491_COD_FORMA := ''STSOLAJS'';',
'',
'    :P491_SER_ENT_SAL := bs_busca_parametro (:P491_COD_MODULO, ''SERIE_ENT_SAL'');',
'    :P491_TIP_ENT_SAL := bs_busca_parametro (:P491_COD_MODULO, ''TIPO_ENT_SAL'');',
'    :P491_TIPO_ENVIO  := bs_busca_parametro (:P491_COD_MODULO, ''TIPO_ENVIO'');',
'    :P491_MOTIVO_ORDEN := bs_busca_parametro (:P491_COD_MODULO, ''SALIDA_ORDEN_TRAB'');',
'    :P491_DEVOLUCION_ORDEN := bs_busca_parametro (:P491_COD_MODULO, ''ENTRADA_ORDEN_TRAB'');',
'    :P491_COD_MONEDA_BASE := bs_busca_parametro (''BS'', ''COD_MONEDA_BASE'');',
'    :P491_COD_MONEDA_US := bs_busca_parametro (''BS'', ''COD_MONEDA_DOL'');',
'    :P491_TIPO_ORDEN_TRAB := bs_busca_parametro (:P491_COD_MODULO, ''TIPO_ORDEN_TRAB'');',
'',
'    :P491_EXCEL := busca_permiso (:P_COD_EMPRESA, ',
'                                  :P491_COD_FORMA, ',
'                                  :P_COD_USUARIO,  ',
'                                  ''IMPORTA_EXCEL'');',
'',
'    :P491_AUTORIZA := busca_permiso (:P_COD_EMPRESA, ',
'                                     :P491_COD_FORMA, ',
'                                     :P_COD_USUARIO,',
'                                     ''AUTORIZA''); ',
'                                        ',
'    :P491_CAMBIA_ESTADO := busca_permiso (:P_COD_EMPRESA, ',
'                                          :P491_COD_FORMA, ',
'                                          :P_COD_USUARIO,',
'                                          ''CAMBIA_ESTADO'');',
'',
'    :P491_FEC_ALTA    := sysdate;',
'    :P491_FEC_ENT_SAL := trae_fecha (:P_COD_EMPRESA, :P491_COD_MODULO);',
'    :P491_HORA_ALTA := to_char(sysdate, ''HH24:MI:SS'');',
'    :P491_COD_MONEDA   := ''1'' ;',
'',
'    --:b_cabecera.TIP_ENT_SAL   := ''AJS'' ;',
'    --:tot_:= 0 ;',
'    --:b_cabecera.tot_importe  := 0 ;',
'',
'    :P491_COD_USUARIO := :APP_USER;',
'    :P491_FECHA_ALTA := sysdate; ',
'    :P491_ESTADO := ''CREADO''; ',
'',
'    --:P491_CAMBIA_ESTADO := ''S'';                                        ',
'',
'    DECLARE',
'        viva VARCHAR2(5) ;',
'    BEGIN',
'        viva := bs_busca_parametro (:P491_COD_MODULO, ''COD_IVA_GRAVADA'') ;',
'        SELECT porc_iva_venta',
'          INTO :P491_PORC_IVA',
'          FROM st_iva',
'         WHERE cod_iva = viva;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            :P491_PORC_IVA := 0;',
'    END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(382049251399514119)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CARGAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN    ',
'    ',
'    SELECT            ',
'        cod_sucursal,',
'        num_ent_sal,',
'        fec_ent_sal,',
'        cod_motivo_ent_sal,',
'        cod_moneda,',
'        ser_ent_sal,',
'        tip_ent_sal,            ',
'        fec_alta,',
'        cod_proveedor,',
'        observacion,',
'        tip_comprobante_ref,',
'        ser_comprobante_ref,',
'        nro_comprobante_ref,',
'        tip_cambio_us,',
'        hora_alta,',
'        cod_usuario,',
'        --cod_cliente,',
'        --cod_vendedor,',
'        --tipo,',
'        --ind_web,',
'        --cod_motivo_dev,',
'        estado,',
'        fecha_rechazo,',
'        usuario_rechazo,',
'        fecha_alta,',
'        fecha_aut_comercial,',
'        usuario_aut_comercial,',
'        ind_confirmado,',
'        ind_pendiente,',
'        ind_rechazado,',
'        ind_aprobado',
'    INTO',
'        :P491_COD_SUCURSAL,',
'        :P491_NUM_ENT_SAL,',
'        :P491_FEC_ENT_SAL,',
'        :P491_COD_MOTIVO_ENT_SAL,',
'        :P491_COD_MONEDA,',
'        :P491_SER_ENT_SAL,',
'        :P491_TIP_ENT_SAL,',
'        :P491_FEC_ALTA,',
'        :P491_COD_PROVEEDOR,',
'        :P491_OBSERVACION, ',
'        :P491_TIP_COMPROBANTE_REF,',
'        :P491_SER_COMPROBANTE_REF,',
'        :P491_NRO_COMPROBANTE_REF,',
'        :P491_TIP_CAMBIO_US,',
'        :P491_HORA_ALTA,',
'        :P491_COD_USUARIO,',
'        :P491_ESTADO,',
'        :P491_FECHA_RECHAZO,',
'        :P491_USUARIO_RECHAZO,',
'        :P491_FECHA_ALTA,',
'        :P491_FECHA_AUT_COMERCIAL,',
'        :P491_USUARIO_AUT_COMERCIAL,        ',
'        :P491_IND_CONFIRMADO,',
'        :P491_IND_PENDIENTE,',
'        :P491_IND_RECHAZADO,',
'        :P491_IND_APROBADO',
'',
'    FROM ST_SOLAJUS_CAB',
'    WHERE ROWID = :P491_P_ROW_ID;',
'',
'    :P491_VALOR_ESTADO := ''1'';',
'    :P491_AUX_ESTADO := :P491_ESTADO;',
'',
'',
'    ------------ CARGA DEL DETALLE ------------',
'    STSOLAJS.PR_CREAR_COL_SOLAJU (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                  PI_TIP_ENT_SAL => :P491_TIP_ENT_SAL,',
'                                  PI_SER_ENT_SAL => :P491_SER_ENT_SAL,',
'                                  PI_NUM_ENT_SAL => :P491_NUM_ENT_SAL);',
'',
'    :P491_VALOR_ESTADO := 0;',
'    ',
'    :P491_IND_REP_DETALLES := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en PR_CARGAR_DATOS - 01. '' || SQLERRM);',
'END;            '))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P491_P_ROW_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(145892845563456440)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_BD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SP_CORREO_SOL_AJUSTE (:P491_NUM_ENT_SAL, :P491_AUX_ESTADO);',
'',
'--------------------- GUARDAR CABECERA BD --------------------',
'    STSOLAJS.PR_GRABAR_CABECERA_BD (PI_ROW_ID => :P491_P_ROW_ID,',
'                                    PI_COD_SUCURSAL => :P491_COD_SUCURSAL,',
'                                    PI_NUM_ENT_SAL => :P491_NUM_ENT_SAL,',
'                                    PI_FEC_ENT_SAL => :P491_FEC_ENT_SAL,',
'                                    PI_COD_MOTIVO_ENT_SAL => :P491_COD_MOTIVO_ENT_SAL,',
'                                    PI_COD_MONEDA => :P491_COD_MONEDA,',
'                                    PI_SER_ENT_SAL => :P491_SER_ENT_SAL,',
'                                    PI_TIP_ENT_SAL => :P491_TIP_ENT_SAL,',
'                                    PI_FEC_ALTA => :P491_FEC_ALTA,',
'                                    PI_COD_PROVEEDOR => :P491_COD_PROVEEDOR,',
'                                    PI_OBSERVACION => :P491_OBSERVACION,',
'                                    PI_TIP_COMPROBANTE_REF => :P491_TIP_COMPROBANTE_REF,',
'                                    PI_SER_COMPROBANTE_REF => :P491_SER_COMPROBANTE_REF,',
'                                    PI_NRO_COMPROBANTE_REF => :P491_NRO_COMPROBANTE_REF,',
'                                    PI_TIP_CAMBIO_US => :P491_TIP_CAMBIO_US,',
'                                    PI_HORA_ALTA => :P491_HORA_ALTA,',
'                                    PI_COD_USUARIO => :P491_COD_USUARIO,',
'                                    PI_ESTADO => :P491_AUX_ESTADO,--:P491_ESTADO,',
'                                    PI_FECHA_RECHAZO => :P491_FECHA_RECHAZO,',
'                                    PI_USUARIO_RECHAZO => :P491_USUARIO_RECHAZO,',
'                                    PI_FECHA_ALTA => :P491_FECHA_ALTA,',
'                                    PI_FECHA_AUT_COMERCIAL => :P491_FECHA_AUT_COMERCIAL,',
'                                    PI_USUARIO_AUT_COMERCIAL => :P491_USUARIO_AUT_COMERCIAL,',
'                                    PI_IND_CONFIRMADO => :P491_IND_CONFIRMADO,',
'                                    PI_IND_PENDIENTE => :P491_IND_PENDIENTE,',
'                                    PI_IND_RECHAZADO => :P491_IND_RECHAZADO,',
'                                    PI_IND_APROBADO => :P491_IND_APROBADO);',
'',
'--------------------- GUARDAR DETALLE BD --------------------',
'    STSOLAJS.PR_GRABAR_DETALLE_BD (PI_SER_ENT_SAL => :P491_SER_ENT_SAL,',
'                                   PI_NRO_ENT_SAL => :P491_NUM_ENT_SAL);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ha ocurrido un error.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Los datos se guardaron exitosamente.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(146108678748854433)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'LIMPIAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(382047498336514101)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GENERAR_NUM_ENT_SAL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    select nvl( max( num_ent_sal ), 0 ) + 1',
'    into :P491_NUM_ENT_SAL',
'    from ST_solajus_CAB',
'    where cod_empresa = V(''P_COD_EMPRESA'')',
'    and ser_ent_sal = :P491_SER_ENT_SAL;',
'',
'EXCEPTION',
'WHEN no_data_found then',
'        :P491_NUM_ENT_SAL := 1 ;',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en PR_GENERAR_NUM_ENT_SAL - 01. '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P491_NUM_ENT_SAL'
,p_process_when_type=>'ITEM_IS_NULL'
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
''))
);
wwv_flow_imp.component_end;
end;
/
