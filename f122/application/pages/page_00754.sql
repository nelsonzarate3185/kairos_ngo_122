prompt --application/pages/page_00754
begin
--   Manifest
--     PAGE: 00754
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
 p_id=>754
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Comprobantes no informados'
,p_alias=>'COMPROBANTES-NO-INFORMADOS'
,p_step_title=>'Comprobantes no informados'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20240528093824'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(323151265100942013)
,p_plug_name=>'COMPROBANTES NO INFORMADOS A MI FACTURA/SIFEN'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(323137720069941066)
,p_plug_name=>'Comprobantes no informados'
,p_parent_plug_id=>wwv_flow_imp.id(323151265100942013)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  seq_id,',
'        c001||''-''||c002||''-''||c003 comprobante, ',
'        c004 cod_cliente, ',
'        to_date(c005,''dd/mm/yyyy'') fec_comprobante, ',
'        c006 estado, ',
'        to_date(c007,''dd/mm/yyyy'') fec_estado, ',
'        c008 tot_comprobante,',
'        c009 tot_gravadas, ',
'        c010 tot_exentas, ',
'        c011 tot_iva,',
'        to_date(c012,''dd/mm/yyyy'') ultimo_envio,',
unistr('case when c006 =''A'' then ''Informar Inutilizaci\00F3n'' '),
'when c006=''P'' and nvl(c008,0)=0 then ''Anular en sistema''',
'when c006=''P'' and round(sysdate - to_date(c005,''dd/mm/yyyy'')) <= 30 then ''Informar comprobante''',
'else ''Revisar comprobante'' end AS accion,',
'        c014 nombre_cliente',
'FROM apex_collections',
'       WHERE collection_name = ''TMP_COMPROBANTES_NO_INFORMADOS'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Comprobantes no informados'
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
 p_id=>wwv_flow_imp.id(166946130131172849)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'OSCARGO'
,p_internal_uid=>166946130131172849
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(323150202522942003)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(323150454745942005)
,p_db_column_name=>'ESTADO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(323151681704942017)
,p_db_column_name=>'ACCION'
,p_display_order=>130
,p_column_identifier=>'O'
,p_column_label=>unistr('Acci\00F3n')
,p_column_link=>'javascript:$s(''P754_COMPROBANTE'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-arrow-right"> #ACCION#</span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(323152497838942025)
,p_db_column_name=>'COMPROBANTE'
,p_display_order=>140
,p_column_identifier=>'R'
,p_column_label=>'Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(323152778102942028)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'U'
,p_column_label=>'Total Comprobante'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(323152832226942029)
,p_db_column_name=>'TOT_GRAVADAS'
,p_display_order=>180
,p_column_identifier=>'V'
,p_column_label=>'Total Gravadas'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(323152900783942030)
,p_db_column_name=>'TOT_EXENTAS'
,p_display_order=>190
,p_column_identifier=>'W'
,p_column_label=>'Total Exentas'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(323153094207942031)
,p_db_column_name=>'TOT_IVA'
,p_display_order=>200
,p_column_identifier=>'X'
,p_column_label=>'Total Iva'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(323153228195942033)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>220
,p_column_identifier=>'Z'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(323153812471942039)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>230
,p_column_identifier=>'AA'
,p_column_label=>'Fecha Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(323153914268942040)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>240
,p_column_identifier=>'AB'
,p_column_label=>'Fecha Estado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(323154033463942041)
,p_db_column_name=>'ULTIMO_ENVIO'
,p_display_order=>250
,p_column_identifier=>'AC'
,p_column_label=>unistr('\00DAltimo Env\00EDo')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(690799977731936803)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>260
,p_column_identifier=>'AD'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(323168323553942802)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3231684'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COMPROBANTE:FEC_COMPROBANTE:COD_CLIENTE:NOMBRE_CLIENTE:ESTADO:FEC_ESTADO:TOT_COMPROBANTE:TOT_GRAVADAS:TOT_EXENTAS:TOT_IVA:ULTIMO_ENVIO:ACCION:'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(323151748727942018)
,p_name=>'P754_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(323151265100942013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(323152210347942023)
,p_name=>'P754_ACCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(323151265100942013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(323152029834942021)
,p_name=>'DA_COMPRPOBANTE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P754_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323153489999942035)
,p_event_id=>wwv_flow_imp.id(323152029834942021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFSeguro que quieres procesar?')
,p_attribute_02=>'Confirmar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323153663397942037)
,p_event_id=>wwv_flow_imp.id(323152029834942021)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner(); ',
'var button = parent.$(''.ui-dialog-titlebar-close''); //get the button',
'button.hide(); '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323152124722942022)
,p_event_id=>wwv_flow_imp.id(323152029834942021)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_accion varchar2(150);',
'v_json clob;',
'v_datos clob;',
'begin',
'    if :P754_COMPROBANTE is not null then   ',
'        for X IN (select *',
'            from apex_collections',
'                WHERE collection_name = ''TMP_COMPROBANTES_NO_INFORMADOS'' and seq_id = :P754_COMPROBANTE)',
'        LOOP',
'            if X.C006 = ''A'' and round(sysdate - to_date(X.C005,''dd/mm/yyyy''))<=2  then',
'                v_accion := ''Se debe anular el comprobante mediante el formulario correspondiente en KAIROS'';',
'                /*BEGIN',
'                  pkg_factura_electronica.sp_anula_factura_electronica(',
'                     p_entidad => :P_COD_EMPRESA,',
'                     p_codigo  => X.C001,',
'                     p_codigo1 => X.C002,',
'                     p_codigo2 => X.C003,',
'                     p_codigo3 => NULL,',
'                     p_codigo4 => NULL,',
'                     p_codigo5 => NULL,',
'                     p_codigo6 => NULL,',
'                     p_json    => v_json,',
'                     p_datos   => v_datos);',
'                 EXCEPTION WHEN OTHERS THEN NULL;',
'                END;',
'                begin',
'                  UPDATE vt_factura_electronica_log L',
'                    SET L.IND_ANULACION_GENERADA=''S'', L.FECHA_ANULACION=SYSDATE,L.FECHA_GENERACION=SYSDATE,',
'                    l.objeto_generado = v_json, l.respuesta = v_datos',
'                    WHERE L.COD_EMPRESA = :P_COD_EMPRESA              ',
'                       AND L.TIP_COMPROBANTE = X.C001',
'                       AND L.SER_COMPROBANTE = X.C002',
'                       AND L.NRO_COMPROBANTE = X.C003;',
'                exception when others then',
'                    null;',
'                end;*/',
'            elsif X.C006 = ''A'' then',
'                v_accion := ''Se debe informar como inutizada la secuencia en MiFactura'';',
'            elsif X.C006 = ''P'' and NVL(X.C008,0) = 0 THEN',
'                v_accion := ''Se debe anular el comprobante mediante el formulario correspondiente en KAIROS'';',
'            elsif X.C006 = ''P'' and round(sysdate - to_date(X.C005,''dd/mm/yyyy''))<=30 THEN',
'                PKG_FACTURA_ELECTRONICA.SP_FACTURA_ELECTRONICA_METODOS(',
'                    P_ENTIDAD => :P_COD_EMPRESA,',
'                    P_CODIGO  => X.C001,',
'                    P_CODIGO1 => X.C002,',
'                    P_CODIGO2 => X.C003,',
'                    P_CODIGO3 => NULL,',
'                    P_CODIGO4 => NULL,',
'                    P_CODIGO5 => NULL,',
'                    P_CODIGO6 => NULL,',
'                    P_JSON    => v_json,',
'                    P_DATOS   => v_datos',
'                  );',
'            else',
unistr('                v_accion := ''Debe informar manualmente en la aplicaci\00F3n de MiFactura'';'),
'            end if;',
'        END LOOP;',
'    end if;',
'    :P754_ACCION := v_accion;',
'end;'))
,p_attribute_02=>'P754_COMPROBANTE'
,p_attribute_03=>'P754_ACCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323153788966942038)
,p_event_id=>wwv_flow_imp.id(323152029834942021)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#apex_wait_overlay").remove(); $(".u-Processing").remove(); '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323154143877942042)
,p_event_id=>wwv_flow_imp.id(323152029834942021)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P754_ACCION.'
,p_attribute_02=>'Mensaje del sistema'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P754_ACCION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323153527597942036)
,p_event_id=>wwv_flow_imp.id(323152029834942021)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P754_ACCION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(323152333841942024)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'carga_inicial'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_COMPROBANTES_NO_INFORMADOS'');',
'for x in (select cc.tip_comprobante, cc.ser_comprobante, cc.nro_comprobante, cc.cod_cliente, ',
'            cc.fec_comprobante, cc.estado, cc.fec_estado, ',
'            cc.tot_comprobante, cc.tot_gravadas, cc.tot_exentas, cc.tot_iva,',
'            l.fecha_generacion as ultimo_envio, cc.cdc, p.nombre',
'            from vt_comprobantes_cabecera cc ',
'            inner join cc_clientes c on cc.cod_empresa = c.cod_empresa and cc.cod_cliente = c.cod_cliente',
'            and cc.cod_empresa = :P_COD_EMPRESA and cc.ser_comprobante like ''FE%'' and cc.cdc is null',
'            inner join personas p on p.cod_persona = c.cod_persona',
'            left join inv.vt_factura_electronica_log l on cc.cod_empresa = l.cod_empresa and cc.tip_comprobante = l.tip_comprobante',
'            and cc.ser_comprobante = l.ser_comprobante and cc.nro_comprobante = l.nro_comprobante)',
'loop',
'    apex_collection.add_member(p_collection_name => ''TMP_COMPROBANTES_NO_INFORMADOS'',',
'       p_c001   => x.tip_comprobante,',
'       p_c002   => x.ser_comprobante,',
'       p_c003   => x.nro_comprobante,',
'       p_c004   => x.cod_cliente,',
'       p_c005   => x.fec_comprobante,',
'       p_c006   => x.estado,',
'       p_c007   => x.fec_estado,',
'       p_c008   => x.tot_comprobante,',
'       p_c009   => x.tot_gravadas,',
'       p_c010   => x.tot_exentas,',
'       p_c011   => x.tot_iva,',
'       p_c012   => x.ultimo_envio,',
'       p_c013   => x.cdc,',
'       p_c014   => x.nombre);',
'end loop;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
