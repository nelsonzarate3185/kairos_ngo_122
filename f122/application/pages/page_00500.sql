prompt --application/pages/page_00500
begin
--   Manifest
--     PAGE: 00500
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
 p_id=>500
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Solicitud de Revisi\00F3n de Ots para SNC - CAVERSOL')
,p_alias=>unistr('SOLICITUD-DE-REVISI\00D3N-DE-OTS-PARA-SNC-CAVERSOL')
,p_step_title=>unistr('Solicitud de Revisi\00F3n de Ots para SNC ')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20230425171047'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152747030330079032)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1090
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152747163853079033)
,p_plug_name=>'Select'
,p_parent_plug_id=>wwv_flow_imp.id(152747030330079032)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152747259174079034)
,p_plug_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(152747030330079032)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_EMPRESA,	',
'       TIP_COMPROBANTE,	',
'       SER_COMPROBANTE,	',
'       NRO_COMPROBANTE,	',
'       COD_USUARIO_PED,	',
'       FEC_ALTA,',
'       HORA_ALTA,	',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => rowid,',
'                           p_attributes  => (case ESTADO',
'                                             when ''S'' then ''checked ''',
'                                             else null',
'                                             end ) ||''disabled'') as ESTADO,	',
'       COD_USUARIO_PROC,	',
'       FEC_PROCESO,	',
'       HORA_PROCESO,	',
'       OBSERVACION,	',
'       PROCESADO,	',
'       SOLICITUD_CREADO_POR,	',
'       COD_MOTIVO,	',
'       ID_SOLICITUD,',
'       ROWID,',
'        (SELECT  S.descripcion ',
'            FROM vt_ordenes_trabajo C,  ST_ARTICULOS S, cm_proveedores t, personas p',
'            WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'            AND C.TIP_COMPROBANTE=CC.TIP_COMPROBANTE',
'            AND C.SER_COMPROBANTE=CC.SER_COMPROBANTE',
'            AND C.NRO_COMPROBANTE=CC.NRO_COMPROBANTE',
'            AND S.COD_EMPRESA(+)=c.COD_EMPRESA',
'            AND S.COD_ARTICULO(+)=c.COD_ARTICULO',
'            and c.cod_empresa=t.cod_empresa',
'            and c.cod_proveedor=t.cod_proveedor',
'            and t.cod_persona=p.cod_persona)ARTICULO,',
'            (SELECT  C.GARANTIA_OT ',
'            FROM vt_ordenes_trabajo C,  ST_ARTICULOS S, cm_proveedores t, personas p',
'            WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'            AND C.TIP_COMPROBANTE=CC.TIP_COMPROBANTE',
'            AND C.SER_COMPROBANTE=CC.SER_COMPROBANTE',
'            AND C.NRO_COMPROBANTE=CC.NRO_COMPROBANTE',
'            AND S.COD_EMPRESA(+)=c.COD_EMPRESA',
'            AND S.COD_ARTICULO(+)=c.COD_ARTICULO',
'            and c.cod_empresa=t.cod_empresa',
'            and c.cod_proveedor=t.cod_proveedor',
'            and t.cod_persona=p.cod_persona)GARANTIA,',
'            (SELECT  P.nombre ',
'            FROM vt_ordenes_trabajo C,  ST_ARTICULOS S, cm_proveedores t, personas p',
'            WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'            AND C.TIP_COMPROBANTE=CC.TIP_COMPROBANTE',
'            AND C.SER_COMPROBANTE=CC.SER_COMPROBANTE',
'            AND C.NRO_COMPROBANTE=CC.NRO_COMPROBANTE',
'            AND S.COD_EMPRESA(+)=c.COD_EMPRESA',
'            AND S.COD_ARTICULO(+)=c.COD_ARTICULO',
'            and c.cod_empresa=t.cod_empresa',
'            and c.cod_proveedor=t.cod_proveedor',
'            and t.cod_persona=p.cod_persona) TECNICO,',
'            (select posicion',
'            from CA_UBIC_PRODUCTOS',
'            where cod_empresa= :P_cod_empresa',
'            and tip_comprobante= CC.tip_comprobante',
'            and ser_comprobante= CC.ser_comprobante',
'            and (nro_comprobante=CC.nro_comprobante OR nro_comprobante_2=CC.nro_comprobante OR',
'        		nro_comprobante_3=CC.nro_comprobante OR nro_comprobante_4=CC.nro_comprobante OR',
'        		nro_comprobante_5=CC.nro_comprobante)',
'            and ocupado=''S'') POSICION,',
'       NULL REVISION,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'FROM CA_SOLICITUD_revision_ot_snc CC',
'WHERE cod_empresa = :p_cod_empresa ',
'and  NVL(ESTADO, ''P'') = ''P'' ',
'AND NRO_COMPROBANTE  IN (select nro_comprobante ',
'from vt_ordenes_trabajo A',
'where A.cod_empresa= :p_cod_empresa',
'and A.tip_comprobante=CC.tip_comprobante',
'and A.ser_comprobante=CC.ser_comprobante',
'and A.nro_comprobante=CC.nro_comprobante',
'AND NVL(A.ANULADO,''N'')<>''S''',
'AND nvl(nvl(a.ind_entrega,''N''),NVL(A.IND_RETIRADO,''N''))<>''S'')',
'AND estado= :P500_TIPO ;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P500_TIPO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report'
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
 p_id=>wwv_flow_imp.id(152747330108079035)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado resultados.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>152747330108079035
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152747492717079036)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152747589623079037)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152747644481079038)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152747713715079039)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152747841791079040)
,p_db_column_name=>'COD_USUARIO_PED'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Solicitado Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152747934089079041)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152748046499079042)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Hora '
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152748140363079043)
,p_db_column_name=>'ESTADO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152748212854079044)
,p_db_column_name=>'COD_USUARIO_PROC'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Usuario Proc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152748323683079045)
,p_db_column_name=>'FEC_PROCESO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fec Proceso'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152748451149079046)
,p_db_column_name=>'HORA_PROCESO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Hora Proceso'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152748521626079047)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152748611304079048)
,p_db_column_name=>'PROCESADO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Procesado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152748790430079049)
,p_db_column_name=>'SOLICITUD_CREADO_POR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Solicitud Creado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152748846903079050)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Motivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153360103433777101)
,p_db_column_name=>'ID_SOLICITUD'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Id Solicitud'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153360255544777102)
,p_db_column_name=>'ROWID'
,p_display_order=>170
,p_column_identifier=>'Q'
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
 p_id=>wwv_flow_imp.id(153360374768777103)
,p_db_column_name=>'REVISION'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:370:&SESSION.::&DEBUG.:Y,:P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE:#TIP_COMPROBANTE#,#SER_COMPROBANTE#,#NRO_COMPROBANTE#'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-forms"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153361004013777110)
,p_db_column_name=>'ARTICULO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153361157867777111)
,p_db_column_name=>'GARANTIA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>unistr('Garant\00EDa')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153361203139777112)
,p_db_column_name=>'TECNICO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>unistr('T\00E9cnico')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153361395820777113)
,p_db_column_name=>'EDITAR'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P500_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
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
'                                                         pdm_boto     => 2); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153361430492777114)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P500_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash-o"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
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
'                                                         pdm_boto     => 3); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153361554527777115)
,p_db_column_name=>'POSICION'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>unistr('Posici\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(153372567195767557)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1533726'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:REVISION:NRO_COMPROBANTE:ARTICULO:POSICION:GARANTIA:COD_USUARIO_PED:FEC_ALTA:HORA_ALTA:TECNICO:ESTADO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153362241656777122)
,p_plug_name=>'Cambiar Estado'
,p_parent_plug_id=>wwv_flow_imp.id(152747030330079032)
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153362309299777123)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(153362241656777122)
,p_button_name=>'BT_CERRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153362811919777128)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(153362241656777122)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152746384010079025)
,p_name=>'P500_COD_USUARIO'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152746498122079026)
,p_name=>'P500_COD_EMPRESA'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152746578860079027)
,p_name=>'P500_COD_SUCURSAL'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152746695230079028)
,p_name=>'P500_COD_MODULO'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152746758352079029)
,p_name=>'P500_NOM_EMPRESA'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152746817023079030)
,p_name=>'P500_NOM_SUCURSAL'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153360404938777104)
,p_name=>'P500_TIPO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(152747163853079033)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Pendiente;P,Revisado;C'
,p_lov_display_null=>'YES'
,p_lov_null_text=>' --- Seleccionar ---'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--preTextBlock'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153360528649777105)
,p_name=>'P500_REVISION'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153361635057777116)
,p_name=>'P500_EDITAR'
,p_item_sequence=>1070
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153361705715777117)
,p_name=>'P500_ELIMINAR'
,p_item_sequence=>1080
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153363402549777134)
,p_name=>'P500_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153362241656777122)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Activo;S,No Activo;P'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153363849163777138)
,p_name=>'P500_ERR'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153360610147777106)
,p_name=>'DA_TIPO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P500_TIPO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153360730718777107)
,p_event_id=>wwv_flow_imp.id(153360610147777106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P500_TIPO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153360818231777108)
,p_event_id=>wwv_flow_imp.id(153360610147777106)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(152747259174079034)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153361892921777118)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P500_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153361914865777119)
,p_event_id=>wwv_flow_imp.id(153361892921777118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar la solicitud seleccionada?')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153362197469777121)
,p_event_id=>wwv_flow_imp.id(153361892921777118)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE CA_SOLICITUD_revision_ot_snc',
'    WHERE ROWID = :P500_ELIMINAR;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            apex_debug.error(''Error al eliminar ''||sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P500_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153362084010777120)
,p_event_id=>wwv_flow_imp.id(153361892921777118)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(152747259174079034)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153362455981777124)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153362309299777123)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153362554675777125)
,p_event_id=>wwv_flow_imp.id(153362455981777124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153362241656777122)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153362650228777126)
,p_name=>'DA_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P500_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153363581906777135)
,p_event_id=>wwv_flow_imp.id(153362650228777126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT ESTADO',
'    INTO :P500_ESTADO',
'    FROM CA_SOLICITUD_revision_ot_snc',
'    WHERE ROWID = :P500_EDITAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''Error al cambiar el estado ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P500_EDITAR'
,p_attribute_03=>'P500_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153362710904777127)
,p_event_id=>wwv_flow_imp.id(153362650228777126)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153362241656777122)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153362975019777129)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153362811919777128)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153363677524777136)
,p_event_id=>wwv_flow_imp.id(153362975019777129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P500_EDITAR IS NOT NULL THEN ',
'        :P500_ERR := NULL;',
'',
'        UPDATE CA_SOLICITUD_revision_ot_snc',
'        SET ESTADO = :P500_ESTADO',
'        WHERE ROWID = :P500_EDITAR;',
'',
'    END IF;',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'             NULL;',
'        WHEN OTHERS THEN',
'            :P500_ERR := ''No se ha podido guardar el cambio'';',
'            APEX_DEBUG.ERROR(''Error al guardar cambios ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P500_EDITAR,P500_ESTADO'
,p_attribute_03=>'P500_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153363732159777137)
,p_event_id=>wwv_flow_imp.id(153362975019777129)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(152747259174079034)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P500_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153363033786777130)
,p_event_id=>wwv_flow_imp.id(153362975019777129)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153362241656777122)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P500_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153363978029777139)
,p_name=>'DA_ERR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P500_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153364095362777140)
,p_event_id=>wwv_flow_imp.id(153363978029777139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P500_ERR'
,p_attribute_03=>'information'
,p_attribute_04=>'fa-info-circle-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P500_ERR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(153360959874777109)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(152746276456079024)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P500_Cod_Usuario  := :P_Cod_Usuario;',
':P500_Cod_Empresa  := :P_Cod_Empresa;',
':P500_Nom_Empresa  := :P_Nom_Empresa;',
':P500_Cod_Sucursal := :P_Cod_Sucursal;',
':P500_Nom_Sucursal := :P_Nom_Sucursal;',
':P500_Cod_Modulo   := :P_Cod_Modulo;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
