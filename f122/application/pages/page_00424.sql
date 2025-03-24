prompt --application/pages/page_00424
begin
--   Manifest
--     PAGE: 00424
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
 p_id=>424
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Vehiculos o unidades de Reparto - RPVEHICU'
,p_alias=>'RPVEHICU'
,p_step_title=>unistr('Veh\00EDculos o unidades de Reparto')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P424_ACCION'',''AGREGAR'');',
'      $s(''P424_AUX_CHECK'', cb.value,false);',
'  } else {',
'      $s(''P424_ACCION'',''QUITAR'');',
'      $s(''P424_AUX_CHECK'', cb.value,false);',
'  }',
'  ',
'}',
'',
'function soloNumeros1(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57 || key == 44;',
'}',
'',
'function soloNumeros2(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241025113106'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126577535496469406)
,p_plug_name=>'Crear/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127153094854924507)
,p_plug_name=>unistr('Veh\00EDculos o unidades de Reparto')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126371801958199102)
,p_plug_name=>'B_VEHICU'
,p_parent_plug_id=>wwv_flow_imp.id(127153094854924507)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1000
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_VEHICULO,',
'       ANIO,',
'       DESCRIPCION,',
'       CHAPA,',
'       VOLUMEN,',
'       PESO_KG,',
'       LARGO,',
'       ANCHO,',
'       ALTO,',
'       CHASIS,',
'       TIPO,',
'       APEX_ITEM.CHECKBOX (p_idx => 1 , ',
'                            p_value => rowid, ',
'                            p_attributes => (case activo when ''S'' then ''checked '' else null end ) ||''onclick="seleccionar(this)"'' )as "activo",',
'       COD_REPARTIDOR,',
'       COD_MARCA,',
'       COD_MODELO,',
'       ROWID,',
'       NULL ELIMINAR,',
'       NULL EDITAR,',
'       null etiqueta',
'  from RP_VEHICULOS',
'  WHERE cod_empresa= :P_COD_EMPRESA        ',
'        ORDER BY to_number( cod_vehiculo ) DESC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_VEHICU'
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
 p_id=>wwv_flow_imp.id(126372189896199105)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>126372189896199105
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126372212939199106)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126372316673199107)
,p_db_column_name=>'COD_VEHICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo')
,p_column_link=>'javascript:$s(''P424_AUX_ROWID'',''#ROWID#'');'
,p_column_linktext=>'#COD_VEHICULO#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126372628119199110)
,p_db_column_name=>'ANIO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('A\00F1o')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126372775600199111)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126372815160199112)
,p_db_column_name=>'CHAPA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Chapa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126373606607199120)
,p_db_column_name=>'TIPO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(126517789847379498)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126373810506199122)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Repartidor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126645697617219408)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>180
,p_column_identifier=>'AU'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126645798932219409)
,p_db_column_name=>'PESO_KG'
,p_display_order=>190
,p_column_identifier=>'AV'
,p_column_label=>'Peso Kg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126645852092219410)
,p_db_column_name=>'LARGO'
,p_display_order=>200
,p_column_identifier=>'AW'
,p_column_label=>'Largo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126645903057219411)
,p_db_column_name=>'ANCHO'
,p_display_order=>210
,p_column_identifier=>'AX'
,p_column_label=>'Ancho'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126646008773219412)
,p_db_column_name=>'ALTO'
,p_display_order=>220
,p_column_identifier=>'AY'
,p_column_label=>'Alto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126646230230219414)
,p_db_column_name=>'CHASIS'
,p_display_order=>240
,p_column_identifier=>'AZ'
,p_column_label=>'Chasis'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126646465821219416)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>260
,p_column_identifier=>'BB'
,p_column_label=>'Marca'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126646557588219417)
,p_db_column_name=>'COD_MODELO'
,p_display_order=>270
,p_column_identifier=>'BC'
,p_column_label=>'Modelo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126648192710219433)
,p_db_column_name=>'activo'
,p_display_order=>280
,p_column_identifier=>'BD'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126648210350219434)
,p_db_column_name=>'ROWID'
,p_display_order=>290
,p_column_identifier=>'BE'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126648333457219435)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>300
,p_column_identifier=>'BF'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P424_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126648472578219436)
,p_db_column_name=>'EDITAR'
,p_display_order=>310
,p_column_identifier=>'BG'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P424_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898738351325768304)
,p_db_column_name=>'ETIQUETA'
,p_display_order=>320
,p_column_identifier=>'BH'
,p_column_label=>'Etiqueta'
,p_column_link=>'javascript:$s(''P424_ETIQUETA'',''#CHAPA#'');'
,p_column_linktext=>'<img src="#APP_FILES#impresora.png" width="20" height="20">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(126514965421489457)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1265150'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EDITAR:COD_VEHICULO:DESCRIPCION:COD_REPARTIDOR:TIPO:CHAPA:COD_MARCA:COD_MODELO:VOLUMEN:PESO_KG:ANIO:LARGO:ALTO:ANCHO:activo:ETIQUETA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126372029372199104)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(127153094854924507)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(126581486625469445)
,p_button_sequence=>1050
,p_button_plug_id=>wwv_flow_imp.id(126577535496469406)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(126581141368469442)
,p_button_sequence=>1040
,p_button_plug_id=>wwv_flow_imp.id(126577535496469406)
,p_button_name=>'Guardar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(126577474409469405)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(126371801958199102)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
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
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126375639737199140)
,p_name=>'P424_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(126372029372199104)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126375849576199142)
,p_name=>'P424_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(126372029372199104)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126375959107199143)
,p_name=>'P424_COD_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(126372029372199104)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126497773529527706)
,p_name=>'P424_NOM_REPART'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(126372029372199104)
,p_prompt=>'Repartidor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126497859737527707)
,p_name=>'P424_MARCA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(126372029372199104)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126497966889527708)
,p_name=>'P424_MODELO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(126372029372199104)
,p_prompt=>'Modelo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126501655361527745)
,p_name=>'P424_ELIMINAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(126371801958199102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126501742049527746)
,p_name=>'P424_EDITAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(126371801958199102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126501829493527747)
,p_name=>'P424_ACCION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(126372029372199104)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126501936965527748)
,p_name=>'P424_AUX_CHECK'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(126372029372199104)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126577884992469409)
,p_name=>'P424_COD_VEHICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(126577535496469406)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
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
 p_id=>wwv_flow_imp.id(126578179867469412)
,p_name=>'P424_ANIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(126577535496469406)
,p_prompt=>unistr('A\00F1o')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126578240968469413)
,p_name=>'P424_DESCRIPCION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(126577535496469406)
,p_prompt=>unistr('Descripci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126578379573469414)
,p_name=>'P424_CHAPA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(126577535496469406)
,p_prompt=>'Chapa'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126578421871469415)
,p_name=>'P424_VOLUMEN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(126577535496469406)
,p_prompt=>'Vol. M3'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126578583028469416)
,p_name=>'P424_PESO_KG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(126577535496469406)
,p_prompt=>'Peso KG'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126578620679469417)
,p_name=>'P424_LARGO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(126577535496469406)
,p_prompt=>'Largo'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126578750497469418)
,p_name=>'P424_ANCHO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(126577535496469406)
,p_prompt=>'Ancho'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126578863877469419)
,p_name=>'P424_ALTO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(126577535496469406)
,p_prompt=>'Alto'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126579193093469422)
,p_name=>'P424_TIPO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(126577535496469406)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIPO_RPVEHICU'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.descripcion, t.descripcion cod ',
'from RP_TIPOS_PROV_FLETES t ',
'where t.cod_empresa = :P_cod_empresa'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Seleccionar-'
,p_cSize=>30
,p_cMaxlength=>20
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
 p_id=>wwv_flow_imp.id(126579316422469424)
,p_name=>'P424_COD_REPARTIDOR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(126577535496469406)
,p_prompt=>'Repartidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_REPARTIDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT R.COD_REPARTIDOR||''-''||LTRIM(RTRIM(NVL(P.NOMBRE, P.NOMB_FANTASIA))) NOMBRE ,',
'       R.COD_REPARTIDOR R',
'  FROM RP_REPARTIDORES R, PERSONAS P',
' WHERE R.COD_EMPRESA = :P_COD_EMPRESA',
'   AND R.COD_PERSONA = P.COD_PERSONA',
'   AND NVL(R.ACTIVO, ''S'') = ''S''',
' ORDER BY LTRIM(RTRIM(NVL(P.NOMBRE, P.NOMB_FANTASIA)))',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Seleccionar-'
,p_cSize=>30
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(126579435029469425)
,p_name=>'P424_COD_MARCA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(126577535496469406)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS_RPVEHICU'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select cod_marca R, descripcion D',
'from rp_marcas'))
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
 p_id=>wwv_flow_imp.id(126579536712469426)
,p_name=>'P424_COD_MODELO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(126577535496469406)
,p_prompt=>'Modelo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MODELO_RPVEHICU'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select cod_modelo R, descripcion D',
'from rp_modelos',
'where cod_marca = :P424_cod_marca;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Seleccionar-'
,p_lov_cascade_parent_items=>'P424_COD_MARCA'
,p_ajax_items_to_submit=>'P424_COD_MARCA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(126648849551219440)
,p_name=>'P424_AUX_ROWID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(126372029372199104)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126649578139219447)
,p_name=>'P424_ACTIVO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(126577535496469406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(898738420996768305)
,p_name=>'P424_ETIQUETA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(126577535496469406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126502032219527749)
,p_name=>'DA_AUX_CHECK'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P424_AUX_CHECK'
,p_condition_element=>'P424_AUX_CHECK'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126502162140527750)
,p_event_id=>wwv_flow_imp.id(126502032219527749)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'RPVEHICU.PR_CHECK(P_ROWID => :P424_AUX_CHECK, P_ACCION => :P424_ACCION);'
,p_attribute_02=>'P424_ACCION,P424_AUX_CHECK'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126577076426469401)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P424_ELIMINAR'
,p_condition_element=>'P424_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126577151471469402)
,p_event_id=>wwv_flow_imp.id(126577076426469401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro/a de borrar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126577266092469403)
,p_event_id=>wwv_flow_imp.id(126577076426469401)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'BEGIN ',
'',
'    DELETE RP_VEHICULOS ',
'    WHERE ROWID = :P424_ELIMINAR;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'',
'',
'END;'))
,p_attribute_02=>'P424_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126577322731469404)
,p_event_id=>wwv_flow_imp.id(126577076426469401)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126371801958199102)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126581542556469446)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(126581486625469445)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126581663463469447)
,p_event_id=>wwv_flow_imp.id(126581542556469446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126577535496469406)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126581907721469450)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(126577474409469405)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127152711893924504)
,p_event_id=>wwv_flow_imp.id(126581907721469450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P424_EDITAR,P424_COD_VEHICULO,P424_ANIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126649644326219448)
,p_event_id=>wwv_flow_imp.id(126581907721469450)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P424_COD_VEHICULO := RPVEHICU.FN_COD_VEHICULO;',
'',
'',
':P424_ANIO:=NULL;',
':P424_DESCRIPCION:=NULL;',
':P424_CHAPA:=NULL;',
':P424_VOLUMEN:=NULL;',
':P424_PESO_KG :=NULL;',
':P424_LARGO :=NULL;',
':P424_ANCHO :=NULL;',
':P424_ALTO :=NULL;',
':P424_TIPO :=NULL;',
':P424_COD_REPARTIDOR :=NULL;',
':P424_MARCA :=NULL;',
':P424_MODELO :=NULL;',
':P424_ACTIVO:=NULL;',
''))
,p_attribute_03=>'P424_COD_VEHICULO,P424_ANIO,P424_DESCRIPCION,P424_CHAPA,P424_VOLUMEN,P424_PESO_KG,P424_LARGO,P424_ANCHO,P424_ALTO,P424_TIPO,P424_COD_REPARTIDOR,P424_MARCA,P424_MODELO,P424_ACTIVO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126644949423219401)
,p_event_id=>wwv_flow_imp.id(126581907721469450)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126577535496469406)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126645019757219402)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(126581141368469442)
,p_condition_element=>'P424_COD_VEHICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
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
 p_id=>wwv_flow_imp.id(126645144370219403)
,p_event_id=>wwv_flow_imp.id(126645019757219402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126645246645219404)
,p_event_id=>wwv_flow_imp.id(126645019757219402)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors(); ',
'apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P424_COD_VEHICULO",',
unistr('                                message: "Debe ingresar un c\00F3digo de veh\00EDculo."'),
'                                }]);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126649455456219446)
,p_event_id=>wwv_flow_imp.id(126645019757219402)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P424_EDITAR is null then',
'        :P424_ACTIVO:=''S'';',
'        RPVEHICU.PR_INSERTAR(PI_COD_EMPRESA => :P424_COD_EMPRESA,',
'                PI_COD_VEHICULO => :P424_COD_VEHICULO,',
'                PI_ANIO => :P424_ANIO,',
'                PI_DESCRIPCION => :P424_DESCRIPCION,',
'                PI_CHAPA => :P424_CHAPA,',
'                PI_VOLUMEN => :P424_VOLUMEN,',
'                PI_PESO_KG => :P424_PESO_KG,',
'                PI_LARGO => :P424_LARGO,',
'                PI_ANCHO => :P424_ANCHO,',
'                PI_ALTO => :P424_ALTO,',
'                PI_TIPO => :P424_TIPO,',
'                PI_ACTIVO => :P424_ACTIVO,',
'                PI_COD_REPARTIDOR => :P424_COD_REPARTIDOR,',
'                PI_COD_MARCA => :P424_COD_MARCA,',
'                PI_COD_MODELO => :P424_COD_MODELO);',
' else',
'     RPVEHICU.PR_UPDATE(',
'                PI_ROWID => :P424_EDITAR,',
'                PI_ANIO => :P424_ANIO,',
'                PI_DESCRIPCION => :P424_DESCRIPCION,',
'                PI_CHAPA => :P424_CHAPA,',
'                PI_VOLUMEN => :P424_VOLUMEN,',
'                PI_PESO_KG => :P424_PESO_KG,',
'                PI_LARGO => :P424_LARGO,',
'                PI_ANCHO => :P424_ANCHO,',
'                PI_ALTO => :P424_ALTO,',
'                PI_TIPO => :P424_TIPO,',
'                PI_COD_REPARTIDOR => :P424_COD_REPARTIDOR,',
'                PI_COD_MARCA => :P424_COD_MARCA,',
'                PI_COD_MODELO => :P424_COD_MODELO);',
'',
'     end if;',
'',
''))
,p_attribute_02=>'P424_COD_EMPRESA, P424_COD_VEHICULO, P424_ANIO, P424_DESCRIPCION, P424_CHAPA, P424_VOLUMEN, P424_PESO_KG, P424_LARGO, P424_ANCHO, P424_ALTO, P424_TIPO, P424_COD_REPARTIDOR, P424_MARCA, P424_COD_MODELO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126645515337219407)
,p_event_id=>wwv_flow_imp.id(126645019757219402)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126577535496469406)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126649193896219443)
,p_event_id=>wwv_flow_imp.id(126645019757219402)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126371801958199102)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126649727208219449)
,p_event_id=>wwv_flow_imp.id(126645019757219402)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess(''El registro se guard\00F3 correctamente.'');')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126648520596219437)
,p_name=>'DA_EDITAR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P424_EDITAR'
,p_condition_element=>'P424_EDITAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126648678459219438)
,p_event_id=>wwv_flow_imp.id(126648520596219437)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126577535496469406)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126648704247219439)
,p_event_id=>wwv_flow_imp.id(126648520596219437)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P424_EDITAR is not null then',
'        select COD_VEHICULO,',
'       ANIO,',
'       DESCRIPCION,',
'       CHAPA,',
'       VOLUMEN,',
'       PESO_KG,',
'       LARGO,',
'       ANCHO,',
'       ALTO,',
'       TIPO,',
'       COD_REPARTIDOR,',
'       COD_MARCA,',
'       COD_MODELO,',
'       ACTIVO',
'        into :P424_COD_VEHICULO,:P424_ANIO,:P424_DESCRIPCION,:P424_CHAPA,:P424_VOLUMEN,:P424_PESO_KG,:P424_LARGO,:P424_ANCHO,:P424_ALTO,:P424_TIPO,:P424_COD_REPARTIDOR,:P424_MARCA,:P424_MODELO,:P424_ACTIVO',
'        from RP_VEHICULOS',
'        where rowid = :P424_EDITAR;',
'    end if;',
'exception',
'    when others then    ',
'    apex_debug.error(sqlerrm);',
'end;'))
,p_attribute_02=>'P424_EDITAR'
,p_attribute_03=>'P424_COD_VEHICULO,P424_ANIO,P424_DESCRIPCION,P424_CHAPA,P424_VOLUMEN,P424_PESO_KG,P424_LARGO,P424_ANCHO,P424_ALTO,P424_TIPO,P424_COD_REPARTIDOR,P424_MARCA,P424_MODELO,P424_ACTIVO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126648927163219441)
,p_name=>'DA_AUX_ROWID'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P424_AUX_ROWID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126649099771219442)
,p_event_id=>wwv_flow_imp.id(126648927163219441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'RPVEHICU.PR_DETALLE(PI_COD_EMPRESA => :P424_COD_EMPRESA, PI_ROWID => :P424_AUX_ROWID,',
'                        PO_NOMREPART => :P424_NOM_REPART, PO_MODELO => :P424_MODELO, ',
'                        PO_MARCA => :P424_MARCA);'))
,p_attribute_02=>'P424_COD_EMPRESA,P424_AUX_ROWID'
,p_attribute_03=>'P424_NOM_REPART,P424_MODELO,P424_MARCA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126649853935219450)
,p_name=>'DA_ANIO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P424_ANIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127152488978924501)
,p_event_id=>wwv_flow_imp.id(126649853935219450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros2(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127152567233924502)
,p_name=>'DA_SOLO_NUM'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P424_VOLUMEN,P424_PESO_KG,P424_ANCHO,P424_ALTO,P424_LARGO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127152677770924503)
,p_event_id=>wwv_flow_imp.id(127152567233924502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros1(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(898738591438768306)
,p_name=>'New'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P424_ETIQUETA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(898738662020768307)
,p_event_id=>wwv_flow_imp.id(898738591438768306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var chapa = apex.item("P424_ETIQUETA").getValue();',
'var vfacnom = "ETIQUETA_VEHICULOS";',
'params.push({ name: ''P_CHAPA'', value: chapa})',
'',
'',
'createReportUrl(vfacnom, params)'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(126375781001199141)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_MODULO := ''RP'';',
':P424_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
':P424_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER) ;',
':P424_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'') ;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
