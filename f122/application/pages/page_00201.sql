prompt --application/pages/page_00201
begin
--   Manifest
--     PAGE: 00201
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
 p_id=>201
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTOFERTA'
,p_alias=>'VTOFERTA'
,p_step_title=>unistr('Art\00EDculos en Oferta')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
'',
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P201_CAMBIA_ESTADO'', cb.value, false);',
'      $s(''P201_ACTIVO_AUX'', ''A'');',
'  } else {',
'      $s(''P201_CAMBIA_ESTADO'', cb.value, false);',
'      $s(''P201_ACTIVO_AUX'', ''I'');',
'  }',
'}'))
,p_javascript_code_onload=>'window.history.pushState("object or string", "Title", removeParam("success_msg", window.location.href));'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240910144829'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43259904831450631)
,p_plug_name=>unistr('Art\00EDculos en Oferta')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43260035663450632)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(43259904831450631)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43260615699450638)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(43259904831450631)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.COD_EMPRESA, B.FEC_ALTA, B.FEC_CIERRE, ',
'       B.COD_ARTICULO, B.COD_USUARIO, ',
'       B.DESCUENTO, B.IND_OFERTAS, B.PRECIO_DESCUENTO, ',
'       B.COD_SUCURSAL, B.PRECIO_CREDITO, B.COD_CORTO_ART,',
'         a.descripcion  ,     APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => B.ROWID,',
'                           p_attributes  => (case B.ACTIVO',
'                                                 when ''A'' then ''checked ''',
'                                             else null',
'                                                 end )||''onclick="seleccionar(this)"'' ) ACTIVO,          ',
'       NULL EDITAR, NULL ELIMINAR,',
'        precio_web(b.cod_articulo,''1'',0)precio_lista,',
'       precio_web(b.cod_articulo,''1'',b.DESCUENTO)precio_con_descuento,',
'       (select sum(cant_dispon) from st_existencia_art e where e.cod_empresa=b.cod_empresa and e.cod_articulo=b.cod_articulo and e.cod_sucursal=nvl(b.cod_sucursal,105))stock,',
'       B.ROWID ROWID_OFERTAS',
'FROM VT_OFERTAS_OUTLET B, ST_ARTICULOS A',
'WHERE B.COD_EMPRESA = :P_COD_EMPRESA',
'AND A.COD_EMPRESA=B.COD_EMPRESA',
'AND A.COD_ARTICULO=B.COD_ARTICULO',
'ORDER BY B.FEC_ALTA;  '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE'
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
 p_id=>wwv_flow_imp.id(43409202064102002)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>43409202064102002
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43413312007102043)
,p_db_column_name=>'ACTIVO'
,p_display_order=>170
,p_column_identifier=>'AC'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43413401611102044)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>180
,p_column_identifier=>'AD'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43413523967102045)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>190
,p_column_identifier=>'AE'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43413731773102047)
,p_db_column_name=>'IND_OFERTAS'
,p_display_order=>210
,p_column_identifier=>'AG'
,p_column_label=>'Ind Ofertas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43413975214102049)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>230
,p_column_identifier=>'AI'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(41127354264101747)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43709486055814201)
,p_db_column_name=>'COD_CORTO_ART'
,p_display_order=>250
,p_column_identifier=>'AK'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43709692982814203)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>260
,p_column_identifier=>'AM'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43709753280814204)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>270
,p_column_identifier=>'AN'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43709838752814205)
,p_db_column_name=>'FEC_CIERRE'
,p_display_order=>280
,p_column_identifier=>'AO'
,p_column_label=>'Fecha Cierre'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43709979308814206)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>290
,p_column_identifier=>'AP'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43710011147814207)
,p_db_column_name=>'PRECIO_DESCUENTO'
,p_display_order=>300
,p_column_identifier=>'AQ'
,p_column_label=>'Precio '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43710123096814208)
,p_db_column_name=>'PRECIO_CREDITO'
,p_display_order=>310
,p_column_identifier=>'AR'
,p_column_label=>'Precio Credito'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43710209764814209)
,p_db_column_name=>'EDITAR'
,p_display_order=>320
,p_column_identifier=>'AS'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P201_ABRE_REGION'',''#ROWID_OFERTAS#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
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
 p_id=>wwv_flow_imp.id(43710355202814210)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>330
,p_column_identifier=>'AT'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P201_ELIMINA_REGISTRO'',''#ROWID_OFERTAS#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
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
 p_id=>wwv_flow_imp.id(43710446749814211)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>340
,p_column_identifier=>'AU'
,p_column_label=>unistr('Descripci\00F3n ')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258025385008182518)
,p_db_column_name=>'PRECIO_CON_DESCUENTO'
,p_display_order=>350
,p_column_identifier=>'AV'
,p_column_label=>'Precio Con Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258025440442182519)
,p_db_column_name=>'STOCK'
,p_display_order=>360
,p_column_identifier=>'AW'
,p_column_label=>'Stock'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258025502856182520)
,p_db_column_name=>'PRECIO_LISTA'
,p_display_order=>370
,p_column_identifier=>'AX'
,p_column_label=>'Precio Lista'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(390607331021583030)
,p_db_column_name=>'ROWID_OFERTAS'
,p_display_order=>380
,p_column_identifier=>'AY'
,p_column_label=>'Rowid Ofertas'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(43429180191175581)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'434292'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CORTO_ART:COD_SUCURSAL:COD_ARTICULO:DESCRIPCION:DESCUENTO:PRECIO_DESCUENTO:PRECIO_LISTA:PRECIO_CON_DESCUENTO:STOCK:FEC_ALTA:FEC_CIERRE:ACTIVO:EDITAR:ELIMINAR:'
,p_sort_column_1=>'FEC_CIERRE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'DESCUENTO'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43410708367102017)
,p_plug_name=>'AGREGAR/EDITAR'
,p_parent_plug_id=>wwv_flow_imp.id(43259904831450631)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43410864431102018)
,p_plug_name=>unistr('Art\00EDculo')
,p_parent_plug_id=>wwv_flow_imp.id(43410708367102017)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43712898191814235)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(43410864431102018)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43711182157814218)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(43410864431102018)
,p_button_name=>'GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43411659031102026)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(43259904831450631)
,p_button_name=>'AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'  RETURN TRUE;',
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
 p_id=>wwv_flow_imp.id(43260282670450634)
,p_name=>'P201_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43260035663450632)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43260375235450635)
,p_name=>'P201_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43260035663450632)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43260423178450636)
,p_name=>'P201_COD_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(43260035663450632)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43260545575450637)
,p_name=>'P201_COD_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(43260035663450632)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43260976587450641)
,p_name=>'P201_FEC_ALTA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(43410864431102018)
,p_prompt=>'Fecha Alta'
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
 p_id=>wwv_flow_imp.id(43261003154450642)
,p_name=>'P201_FEC_CIERRE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(43410864431102018)
,p_prompt=>'Fecha Cierre'
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
 p_id=>wwv_flow_imp.id(43261168990450643)
,p_name=>'P201_DESCRIPCION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(43410864431102018)
,p_prompt=>unistr('Descripci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43261251971450644)
,p_name=>'P201_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43410864431102018)
,p_prompt=>unistr('Cod. Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_COD_ARTICULO_VTOFERTA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo,cod_art_corto ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'AND COD_RUBRO=''PR''',
'order by descripcion'))
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_imp.id(43261485212450646)
,p_name=>'P201_DESCUENTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(43410864431102018)
,p_prompt=>'Descuento'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43261626212450648)
,p_name=>'P201_PRECIO_DESCUENTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(43410864431102018)
,p_prompt=>'Precio Descuento'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43409166968102001)
,p_name=>'P201_COD_CORTO_ART'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43410864431102018)
,p_prompt=>unistr('C\00F3digo Corto')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVARTICULO_VTOFERTA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo,cod_art_corto ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'AND COD_RUBRO=''PR''',
'order by descripcion'))
,p_cSize=>30
,p_cMaxlength=>100
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
 p_id=>wwv_flow_imp.id(43410973879102019)
,p_name=>'P201_CANT_AUX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(43260035663450632)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43411078035102020)
,p_name=>'P201_ELIMINA_REGISTRO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(43260035663450632)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43411194097102021)
,p_name=>'P201_ABRE_REGION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(43410864431102018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43712190733814228)
,p_name=>'P201_ACTIVO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(43410864431102018)
,p_prompt=>'Activo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
,p_attribute_03=>'I'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43713648328814243)
,p_name=>'P201_CAMBIA_ESTADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(43260035663450632)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43713793676814244)
,p_name=>'P201_ACTIVO_AUX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(43260035663450632)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43714068031814247)
,p_name=>'P201_COD_CORTO_ART_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(43410864431102018)
,p_prompt=>unistr('C\00F3digo Corto')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43714102176814248)
,p_name=>'P201_COD_ARTICULO_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(43410864431102018)
,p_prompt=>unistr('Cod. Art\00EDculo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_imp.id(44827393795895848)
,p_name=>'P201_AUX_MSJ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(43410864431102018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(390607275500583029)
,p_name=>'P201_COD_SUCURSAL_OFERTA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(43410864431102018)
,p_prompt=>'Cod Sucursal Oferta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select descripcion ||''-''||cod_sucursal d, cod_sucursal from sucursales where cod_empresa=:p_cod_empresa order by 1'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43710541241814212)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P201_ELIMINA_REGISTRO'
,p_condition_element=>'P201_ELIMINA_REGISTRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43710696788814213)
,p_event_id=>wwv_flow_imp.id(43710541241814212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro de forma permanente?')
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43710733377814214)
,p_event_id=>wwv_flow_imp.id(43710541241814212)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTOFERTA.ELIMINA_REGISTRO (PI_COD_EMPRESA => :P201_COD_EMPRESA, ',
'                           PI_COD_ARTICULO => :P201_ELIMINA_REGISTRO);'))
,p_attribute_02=>'P201_COD_EMPRESA,P201_ELIMINA_REGISTRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44827260140895847)
,p_event_id=>wwv_flow_imp.id(43710541241814212)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('El registro se elimin\00F3 correctamente')
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44075962443498516)
,p_event_id=>wwv_flow_imp.id(43710541241814212)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43260615699450638)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43710899639814215)
,p_name=>'DA_EDITAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P201_ABRE_REGION'
,p_condition_element=>'P201_ABRE_REGION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43713381857814240)
,p_event_id=>wwv_flow_imp.id(43710899639814215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P201_COD_CORTO_ART,P201_COD_ARTICULO,P201_DESCRIPCION,P201_DESCUENTO,P201_PRECIO_DESCUENTO,P201_ACTIVO,P201_FEC_ALTA,P201_FEC_CIERRE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43710973888814216)
,p_event_id=>wwv_flow_imp.id(43710899639814215)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.ACTIVO,B.FEC_ALTA, B.FEC_CIERRE, ',
'       B.COD_ARTICULO, ',
'       B.DESCUENTO, B.PRECIO_DESCUENTO, ',
'       B.COD_CORTO_ART,',
'       (select a.descripcion            ',
'          from st_articulos a',
'         where a.cod_empresa = :P201_COD_EMPRESA',
'           and (a.cod_articulo = B.COD_ARTICULO or a.cod_art_corto = B.COD_ARTICULO)) DESCRIPCION, COD_SUCURSAL',
' INTO :P201_ACTIVO, :P201_FEC_ALTA, :P201_FEC_CIERRE, :P201_COD_ARTICULO_1, :P201_DESCUENTO, :P201_PRECIO_DESCUENTO, :P201_COD_CORTO_ART_1, :P201_DESCRIPCION,:P201_COD_SUCURSAL_OFERTA',
' FROM VT_OFERTAS_OUTLET B',
'WHERE COD_EMPRESA = :P201_COD_EMPRESA',
'',
'  AND ROWID = :P201_ABRE_REGION;  ',
''))
,p_attribute_02=>'P201_COD_EMPRESA,P201_ABRE_REGION'
,p_attribute_03=>'P201_ACTIVO,P201_FEC_ALTA,P201_FEC_CIERRE,P201_COD_ARTICULO_1,P201_DESCUENTO,P201_PRECIO_DESCUENTO,P201_COD_CORTO_ART_1,P201_DESCRIPCION,P201_COD_SUCURSAL_OFERTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43713499408814241)
,p_event_id=>wwv_flow_imp.id(43710899639814215)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''P201_DESCRIPCION'').readOnly = true;'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43714217615814249)
,p_event_id=>wwv_flow_imp.id(43710899639814215)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P201_COD_CORTO_ART_1,P201_COD_ARTICULO_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43714349901814250)
,p_event_id=>wwv_flow_imp.id(43710899639814215)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P201_COD_CORTO_ART,P201_COD_ARTICULO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43711069122814217)
,p_event_id=>wwv_flow_imp.id(43710899639814215)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43410708367102017)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43711298280814219)
,p_name=>'DA_GUARDAR_CAMBIOS'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43711182157814218)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43711315954814220)
,p_event_id=>wwv_flow_imp.id(43711298280814219)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43711677884814223)
,p_event_id=>wwv_flow_imp.id(43711298280814219)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P201_AUX_MSJ := null;',
'IF TO_DATE(:P201_FEC_ALTA, ''DD/MM/YYYY'') < TO_DATE(:P201_FEC_CIERRE, ''DD/MM/YYYY'') THEN ',
'    VTOFERTA.ACTUALIZA_REGISTRO(PI_COD_EMPRESA      => :P_COD_EMPRESA, ',
'                                PI_COD_ARTICULO     => :P201_ABRE_REGION,',
'                                PI_FEC_ALTA         => :P201_FEC_ALTA,',
'                                PI_FEC_CIERRE       => :P201_FEC_CIERRE,',
'                                PI_DESCUENTO        => :P201_DESCUENTO,',
'                                PI_PRECIO_DESCUENTO => :P201_PRECIO_DESCUENTO,',
'                                PI_ACTIVO           => :P201_ACTIVO,',
'                                   PI_COD_SUCURSAL => :P201_COD_SUCURSAL_OFERTA);',
'ELSE',
'    :P201_AUX_MSJ := ''La fecha de cierre debe ser mayor a la fecha de altaa.'';',
'END IF;                                    ',
'                             '))
,p_attribute_02=>'P201_ACTIVO,P201_COD_EMPRESA,P201_ABRE_REGION,P201_FEC_ALTA,P201_FEC_CIERRE,P201_DESCUENTO,P201_PRECIO_DESCUENTO,P201_COD_SUCURSAL_OFERTA'
,p_attribute_03=>'P201_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P201_ABRE_REGION'
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
 p_id=>wwv_flow_imp.id(43712011181814227)
,p_event_id=>wwv_flow_imp.id(43711298280814219)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P201_AUX_MSJ := null;',
'IF TO_DATE(:P201_FEC_ALTA, ''DD/MM/YYYY'') < TO_DATE(:P201_FEC_CIERRE, ''DD/MM/YYYY'') THEN ',
'    VTOFERTA.GUARDA_REGISTRO(PI_COD_EMPRESA      => :P201_COD_EMPRESA, ',
'                             PI_COD_ARTICULO     => :P201_COD_ARTICULO,',
'                             PI_COD_CORTO_ART    => :P201_COD_CORTO_ART,',
'                             PI_FEC_ALTA         => :P201_FEC_ALTA,',
'                             PI_FEC_CIERRE       => :P201_FEC_CIERRE,',
'                             PI_DESCUENTO        => :P201_DESCUENTO,',
'                             PI_PRECIO_DESCUENTO => :P201_PRECIO_DESCUENTO,',
'                             PI_ACTIVO           => :P201_ACTIVO,',
'                             PI_COD_SUCURSAL => :P201_COD_SUCURSAL_OFERTA);',
'ELSE',
'    :P201_AUX_MSJ := ''La fecha de cierre debe ser mayor a la fecha de alta.'';',
'END IF;    ',
'                             '))
,p_attribute_02=>'P201_ACTIVO,P201_COD_EMPRESA,P201_COD_ARTICULO,P201_FEC_ALTA,P201_FEC_CIERRE,P201_DESCUENTO,P201_PRECIO_DESCUENTO,P201_COD_CORTO_ART,P201_COD_SUCURSAL_OFERTA'
,p_attribute_03=>'P201_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P201_ABRE_REGION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44827464363895849)
,p_event_id=>wwv_flow_imp.id(43711298280814219)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P201_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P201_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43711710934814224)
,p_event_id=>wwv_flow_imp.id(43711298280814219)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43260615699450638)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P201_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43711837795814225)
,p_event_id=>wwv_flow_imp.id(43711298280814219)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43410708367102017)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P201_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44827119178895846)
,p_event_id=>wwv_flow_imp.id(43711298280814219)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Los cambios se guardaron correctamente.'
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P201_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43712497658814231)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43411659031102026)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43712511068814232)
,p_event_id=>wwv_flow_imp.id(43712497658814231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P201_ABRE_REGION,P201_COD_CORTO_ART,P201_COD_ARTICULO,P201_DESCRIPCION,P201_DESCUENTO,P201_PRECIO_DESCUENTO,P201_ACTIVO,P201_FEC_ALTA,P201_FEC_CIERRE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43713577028814242)
,p_event_id=>wwv_flow_imp.id(43712497658814231)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P201_FEC_ALTA := SYSDATE;'
,p_attribute_03=>'P201_FEC_ALTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44074627214498503)
,p_event_id=>wwv_flow_imp.id(43712497658814231)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''P201_DESCRIPCION'').readOnly = false;'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44074464629498501)
,p_event_id=>wwv_flow_imp.id(43712497658814231)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P201_COD_CORTO_ART,P201_COD_ARTICULO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44074561332498502)
,p_event_id=>wwv_flow_imp.id(43712497658814231)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P201_COD_CORTO_ART_1,P201_COD_ARTICULO_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43712668659814233)
,p_event_id=>wwv_flow_imp.id(43712497658814231)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43410708367102017)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43712913853814236)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43712898191814235)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43713086218814237)
,p_event_id=>wwv_flow_imp.id(43712913853814236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43410708367102017)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43713147697814238)
,p_name=>'DA_LOAD'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43713276915814239)
,p_event_id=>wwv_flow_imp.id(43713147697814238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P201_COD_CORTO_ART,P201_COD_ARTICULO,P201_DESCRIPCION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43713827117814245)
,p_name=>'DA_COD_ARTICULO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P201_COD_ARTICULO'
,p_condition_element=>'P201_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43713926769814246)
,p_event_id=>wwv_flow_imp.id(43713827117814245)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTOFERTA.busca_articulo (PI_COD_EMPRESA         => :P201_COD_EMPRESA, ',
'                         PI_COD_ARTICULO        => :P201_COD_ARTICULO,',
'                         PO_DESCRIPCION         => :P201_DESCRIPCION,',
'                         PO_COD_CORTO_ART       => :P201_COD_CORTO_ART);'))
,p_attribute_02=>'P201_COD_EMPRESA,P201_COD_ARTICULO'
,p_attribute_03=>'P201_DESCRIPCION,P201_COD_CORTO_ART'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44074758024498504)
,p_name=>'DA_CAMBIA_ESTADO'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P201_CAMBIA_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44074843530498505)
,p_event_id=>wwv_flow_imp.id(44074758024498504)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE VT_OFERTAS_OUTLET',
'       SET ACTIVO = :P201_ACTIVO_AUX',
'     WHERE COD_EMPRESA = :P201_COD_EMPRESA',
'       AND ROWID = :P201_CAMBIA_ESTADO;   ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, SQLERRM);',
'END;   ',
''))
,p_attribute_02=>'P201_ACTIVO_AUX,P201_COD_EMPRESA,P201_CAMBIA_ESTADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44075411738498511)
,p_name=>'DA_ACTIVO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P201_ACTIVO_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44075638495498513)
,p_event_id=>wwv_flow_imp.id(44075411738498511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P201_ACTIVO_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44075794094498514)
,p_name=>'DA_COD_CORTO_ART'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P201_COD_CORTO_ART'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44075870829498515)
,p_event_id=>wwv_flow_imp.id(44075794094498514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTOFERTA.busca_articulo1(PI_COD_EMPRESA        => :P201_COD_EMPRESA, ',
'                         PI_COD_CORTO_ART      => :P201_COD_CORTO_ART,',
'                         PO_DESCRIPCION        => :P201_DESCRIPCION,',
'                         PO_COD_ARTICULO       => :P201_COD_ARTICULO);'))
,p_attribute_02=>'P201_COD_EMPRESA,P201_COD_CORTO_ART'
,p_attribute_03=>'P201_DESCRIPCION,P201_COD_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43411370540102023)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_MODULO := ''VT'';',
'',
':P201_COD_EMPRESA := NVL(:P_COD_EMPRESA, ''1'');',
':P201_COD_MODULO := :P_COD_MODULO;',
':P201_COD_SUCURSAL := :P_COD_SUCURSAL;',
':P201_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
'',
'--vtoferta.carga_reporte (PI_COD_EMPRESA => :P201_COD_EMPRESA);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
