prompt --application/pages/page_00362
begin
--   Manifest
--     PAGE: 00362
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
 p_id=>362
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Autorizaci\00F3n de solicitudes de requerimiento de personal-RHAUTREQ')
,p_alias=>unistr('AUTORIZACI\00D3N-DE-SOLICITUDES-DE-REQUERIMIENTO-DE-PERSONAL-RHAUTREQ')
,p_step_title=>unistr('Autorizaci\00F3n de solicitudes de requerimiento de personal-RHAUTREQ')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function obtenerRegistrosSeleccionados(){',
'  var gridView = apex.region("REQ_PERS").widget().interactiveGrid("getViews").grid;',
'  var records;',
'  try {',
'    records = gridView.getSelectedRecords(); // te deja todos los items seleccionados en un arreglo',
'    console.log(''records'', records);',
'    var obs_mot = "";',
'    var desc_solicitante = "";',
'    var desc_area = "";',
'    var desc_dpto = "";',
'    var desc_cargo = "";',
'    var rel_autorizacion = "";',
'    var cod_empresa = "";',
'    var nro_solicitud = "";',
'    var nvl1 = "";',
'    var nvl2 = "";',
'    var nvl3 = "";',
'    var nvl4 = "";',
'    var cod_usua_Rechazo = "";',
'    var ind_motivo = "";',
'    // La variable acum guarda todos los items seleccionados separados por ":"',
'    for (let index = 0; index < records.length; index++) {',
'        if (index == 0) {',
'            obs_mot = records[index][29];',
'            desc_solicitante = records[index][51];',
'            desc_area = records[index][52];',
'            desc_dpto = records[index][53];',
'            desc_cargo = records[index][54];',
'            rel_autorizacion = records[index][43];',
'            cod_empresa = records[index][1];',
'            nro_solicitud = records[index][2];',
'            nvl1 = records[index][58];',
'            nvl2 = records[index][59];',
'            nvl3 = records[index][60];',
'            nvl4 = records[index][61];',
'            cod_usua_Rechazo = records[index][44];',
'            ind_motivo = records[index][27];',
'        }else{',
'            obs_mot = records[index][29];',
'            desc_solicitante = records[index][51];',
'            desc_area = records[index][52];',
'            desc_dpto = records[index][53];',
'            desc_cargo = records[index][54];',
'            rel_autorizacion = records[index][43];',
'            cod_empresa = records[index][1];',
'            nro_solicitud = records[index][2];',
'            nvl1 = records[index][58];',
'            nvl2 = records[index][59];',
'            nvl3 = records[index][60];',
'            nvl4 = records[index][61];',
'            cod_usua_Rechazo = records[index][44];',
'            ind_motivo = records[index][27];',
'        }',
'    }',
'    apex.item(''P362_DETALLE_MOTIVO'').setValue(obs_mot);',
'    apex.item(''P362_DETALLE_MOTIVO'').refresh();',
'    apex.item(''P362_NOM_SOLICITANTE'').setValue(desc_solicitante);',
'    apex.item(''P362_NOM_SOLICITANTE'').refresh();',
'    apex.item(''P362_DESC_AREA'').setValue(desc_area);',
'    apex.item(''P362_DESC_AREA'').refresh();',
'    apex.item(''P362_DESC_DPTO'').setValue(desc_dpto);',
'    apex.item(''P362_DESC_DPTO'').refresh();',
'    apex.item(''P362_DESC_CARGO'').setValue(desc_cargo);',
'    apex.item(''P362_DESC_CARGO'').refresh();',
'    apex.item(''P362_REL_AUTORIZACION'').setValue(rel_autorizacion);',
'    apex.item(''P362_REL_AUTORIZACION'').refresh();',
'    apex.item(''P362_COD_EMPRESA'').setValue(cod_empresa);',
'    apex.item(''P362_COD_EMPRESA'').refresh();',
'    apex.item(''P362_NRO_SOLICITUD'').setValue(nro_solicitud);',
'    apex.item(''P362_NRO_SOLICITUD'').refresh();',
'    apex.item(''P362_NVL1'').setValue(nvl1);',
'    apex.item(''P362_NVL1'').refresh();',
'    apex.item(''P362_NVL2'').setValue(nvl2);',
'    apex.item(''P362_NVL2'').refresh();',
'    apex.item(''P362_NVL3'').setValue(nvl3);',
'    apex.item(''P362_NVL3'').refresh();',
'    apex.item(''P362_NVL4'').setValue(nvl4);',
'    apex.item(''P362_NVL4'').refresh();',
'    apex.item(''P362_USUARIO_RECHAZO'').setValue(cod_usua_Rechazo);',
'    apex.item(''P362_USUARIO_RECHAZO'').refresh();',
'    apex.item(''P362_IND_MOTIVO'').setValue(ind_motivo);',
'    apex.item(''P362_IND_MOTIVO'').refresh();',
'    ',
'  } catch (e) {',
'    apex.item(''P362_DETALLE_MOTIVO'').setValue('''');',
'    apex.item(''P362_NOM_SOLICITANTE'').setValue('''');',
'    apex.item(''P362_DESC_AREA'').setValue('''');',
'    apex.item(''P362_DESC_DPTO'').setValue('''');',
'    apex.item(''P362_DESC_CARGO'').setValue('''');',
'    apex.item(''P362_REL_AUTORIZACION'').setValue('''');',
'    apex.item(''P362_COD_EMPRESA'').setValue('''');',
'    apex.item(''P362_NRO_SOLICITUD'').setValue('''');',
'    apex.item(''P362_NVL1'').setValue('''');',
'    apex.item(''P362_NVL2'').setValue('''');',
'    apex.item(''P362_NVL3'').setValue('''');',
'    apex.item(''P362_NVL4'').setValue('''');',
'    apex.item(''P362_USUARIO_RECHAZO'').setValue('''');',
'    apex.item(''P362_IND_MOTIVO'').setValue('''');',
'  } finally{',
'    apex.server.process(''DUMMY'', { pageItems: ''#P362_DETALLE_MOTIVO''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P362_NOM_SOLICITANTE''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P362_DESC_AREA''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P362_DESC_DPTO''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P362_DESC_CARGO''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P362_REL_AUTORIZACION''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P362_COD_EMPRESA''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P362_NRO_SOLICITUD''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P362_NVL1''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P362_NVL2''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P362_NVL3''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P362_NVL4''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P362_USUARIO_RECHAZO''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P362_IND_MOTIVO''}, { dataType: "text" });',
'  }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'FPONCE'
,p_last_upd_yyyymmddhh24miss=>'20230207150902'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98370145215250043)
,p_plug_name=>'Requerimiento Personal'
,p_region_name=>'REQ_PERS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COD_EMPRESA,',
'       NRO_SOLICITUD,',
'       FEC_SOLICITUD,',
'       COD_SOLICITANTE,',
'       COD_SUCURSAL,',
'       COD_AREA,',
'       COD_DEPARTAMENTO,',
'       COD_CARGO,',
'       DESC_FUNCIONES,',
'       CANTIDAD,',
'       COD_HORARIO,',
'       FEC_INCORPORACION,',
'       SAL_BASE,',
'       IND_VARIABLE,',
'       SAL_VARIABLE,',
'       OBSERVACIONES,',
'       IND_CORPORATIVO,',
'       IND_FLOTA,',
'       MON_FLOTA,',
'       IND_TARJETA,',
'       IND_CONTRATO,',
'       CANT_MESES,',
'       TIPO_BUSQUEDA,',
'       COD_EJERCICIO,',
'       COD_CENTRO_COSTO,',
'       IND_PRESUPUESTADO,',
'       IND_MOTIVO,',
'       COD_EMP_REEMPLAZADO,',
'       OBS_MOTIVO,',
'       SEXO,',
'       EDAD_MIN,',
'       EDAD_MAX,',
'       ESTADO_CIVIL,',
'       NIVEL_EDUCACION,',
'       EST_NIV_EDUCACION,',
'       OBS_NIV_EDUCACION,',
'       ANIOS_EXPERIENCIA,',
'       DESC_CONOCIMIENTOS,',
'       IND_PERSONAL_CARGO,',
'       CANT_PERSONAL_CARGO,',
'       COD_SUPERIOR,',
'       IND_ESTADO,',
'       REL_AUTORIZACION,',
'       COD_USR_RECHAZO,',
'       FEC_HOR_RECHAZO,',
'       IND_PRIORIDAD,',
'       COD_USR_INS,',
'       FEC_HOR_INS,',
'       COD_USR_UPD,',
'       FEC_HOR_UPD,',
'       (select p.nombre',
'        from rh_empleados e,',
'      		 personas p',
'        where e.cod_empresa  = :P_COD_EMPRESA',
'        and e.cod_empleado = x.cod_solicitante',
'        and e.cod_persona  = p.cod_persona) DESC_SOLICITANTE,',
'        (select s.descripcion',
'        from rh_areas s',
'        where s.cod_empresa  = :P_COD_EMPRESA',
'        and s.cod_sucursal = x.cod_sucursal',
'        and s.cod_area			= x.cod_area)DESC_AREA,',
'        (select s.descripcion',
'        from rh_departamentos s',
'        where s.cod_empresa  = :P_COD_EMPRESA',
'        and s.cod_sucursal = x.cod_sucursal',
'        and s.cod_area = x.cod_area',
'        and s.cod_departamento = x.cod_departamento) DESC_DPTO,',
'        (select descripcion',
'        from rh_cargos',
'        where cod_cargo = x.cod_cargo) DESC_CARGO,',
'        ''<a href="javascript:window.open(''''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RHREQPER.pdf?P_COD_EMPRESA=''||x.COD_EMPRESA||''&P_NRO_SOLICITUD=''||x.NRO_SOLICITUD||''&j_username=jasperadmin&j_password=jasperadmin'''', ''''_blank'''');"><i'
||'mg src="#IMAGE_PREFIX#menu/pt_print_20.png" style="max-width:px;" alt="" title="" /></a>'' Ver,',
unistr('        (case when x.IND_MOTIVO = ''S'' THEN ''Sustituci\00F3n'''),
'              when x.IND_MOTIVO = ''O'' THEN ''Otro''',
unistr('              when x.IND_MOTIVO = ''C'' THEN ''Cambio de organizaci\00F3n'''),
'              when x.IND_MOTIVO = ''A'' THEN ''Aumento de actividad''',
'              when x.IND_MOTIVO = ''N'' THEN ''Nuevo Puesto''',
'         end) Motivo_Del_Requerimiento,',
'        (case when x.IND_CONTRATO = ''T'' THEN ''Temporal''',
'              when x.IND_CONTRATO = ''F'' THEN ''Fijo''',
'         end) Tipo_De_Contrato,',
'         (SELECT nvl(''S'',''N'')',
'        FROM RH_AREAS A',
'        WHERE A.COD_EMPRESA = :P_COD_EMPRESA',
'        AND A.COD_SUCURSAL= x.cod_sucursal',
'        AND A.COD_AREA 	 = x.cod_area',
'        AND (A.COD_EMPRESA, A.COD_GERENTE) IN',
'        (SELECT E.COD_EMPRESA, E.COD_EMPLEADO',
'        FROM USUARIOS U,',
'        RH_EMPLEADOS E',
'        WHERE U.COD_PERSONA = E.COD_PERSONA',
'        AND U.COD_USUARIO = :P_COD_USUARIO)) Nivel1,',
'        (select nvl(''S'',''N'')',
'				  from parametros_generales x',
'				 where x.parametro = ''USER_GTE_GRAL''||:P_COD_EMPRESA',
'				   and x.valor     = :P_COD_USUARIO) Nivel2,',
'        (select nvl(permiso, ''N'')',
'				  from permisos_opciones x',
'				 where x.cod_empresa = :P_COD_EMPRESA',
'				   and x.cod_usuario = :P_COD_USUARIO',
'				   and x.nom_forma   = ''RHAUTREQ''',
'				   and x.parametro   = ''IND_AUTORIZA_DIR'') nivel3,',
'        ( select nvl(''S'',null)',
'				  from permisos_opciones',
'				 where cod_empresa = :P_COD_EMPRESA',
'				   and nom_forma   = ''RHAUTREQ''',
'				   and cod_usuario = :P_COD_USUARIO ',
'				   and parametro   = ''IND_AUTORIZA''',
'				   and nvl(permiso, ''N'') = ''S''   ) nivel4',
'  from RH_REQUERIMIENTO_PERSONAL x',
' where x.cod_empresa          = :P_COD_EMPRESA',
'   and nvl(x.ind_estado, ''P'') = ''P''',
'  /* and (nvl(:variables.ind_visualiza_todo, ''N'') = ''S'' OR ',
'        (nvl(:variables.ind_autoriza_mov, ''N'') = ''S'' and nvl(instr(x.rel_autorizacion, ''*4*'', 1, 1 ), 0)  = 0',
'                                                     and nvl(instr(x.rel_autorizacion, ''*3*'', 1, 1 ), 0) >= 1) OR',
'                        ',
'        (nvl(:variables.ind_autoriza_dir, ''N'') = ''S'' and nvl(instr(x.rel_autorizacion, ''*3*'', 1, 1 ), 0)  = 0',
'                                                     and nvl(instr(x.rel_autorizacion, ''*2*'', 1, 1 ), 0) >= 1) OR',
'        :variables.cod_usuario IN (select p.valor',
'                                     from parametros_generales p',
'                                    where nvl(instr(x.rel_autorizacion, ''*2*'', 1, 1 ), 0) = 0',
'                                      and nvl(instr(x.rel_autorizacion, ''*1*'', 1, 1 ), 0) >= 1',
'                                      and p.parametro = ''USER_GTE_GRAL''||:variables.cod_empresa',
'                                      ) OR',
'        :variables.cod_usuario in (select u.cod_usuario',
'                                     from usuarios u,',
'                                          rh_empleados e,',
'                                          rh_areas a',
'                                    where nvl(instr(x.rel_autorizacion, ''*1*'', 1, 1 ), 0) = 0 ',
'                                      and a.cod_empresa = x.cod_empresa',
'                                      and a.cod_sucursal= x.cod_sucursal',
'                                      and a.cod_area    = x.cod_area',
'                                      and a.cod_empresa = e.cod_empresa',
'                                      and a.cod_gerente = e.cod_empleado',
'                                      and e.cod_persona = u.cod_persona))*/'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Requerimiento Personal'
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
 p_id=>wwv_flow_imp.id(104740368262429532)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(104740404247429533)
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
,p_is_required=>true
,p_max_length=>5
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
 p_id=>wwv_flow_imp.id(104740537078429534)
,p_name=>'NRO_SOLICITUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_SOLICITUD'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Solicitud'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(104740686558429535)
,p_name=>'FEC_SOLICITUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_SOLICITUD'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(104740798390429536)
,p_name=>'COD_SOLICITANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_SOLICITANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Solicitante'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>15
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
 p_id=>wwv_flow_imp.id(104740872330429537)
,p_name=>'COD_SUCURSAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_SUCURSAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Sucursal'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>5
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
 p_id=>wwv_flow_imp.id(104740913498429538)
,p_name=>'COD_AREA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_AREA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\00C1rea')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>5
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
 p_id=>wwv_flow_imp.id(104741076416429539)
,p_name=>'COD_DEPARTAMENTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_DEPARTAMENTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dpto.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>5
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
 p_id=>wwv_flow_imp.id(104741109212429540)
,p_name=>'COD_CARGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_CARGO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cargo'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
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
 p_id=>wwv_flow_imp.id(104741299107429541)
,p_name=>'DESC_FUNCIONES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_FUNCIONES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Desc Funciones'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>400
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
 p_id=>wwv_flow_imp.id(104741332979429542)
,p_name=>'CANTIDAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cantidad'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(104741456396429543)
,p_name=>'COD_HORARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_HORARIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Horario'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>5
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
 p_id=>wwv_flow_imp.id(104741551606429544)
,p_name=>'FEC_INCORPORACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_INCORPORACION'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Incorporacion'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(104741622864429545)
,p_name=>'SAL_BASE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SAL_BASE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sal Base'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(104741753426429546)
,p_name=>'IND_VARIABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_VARIABLE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Variable'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(104741857650429547)
,p_name=>'SAL_VARIABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SAL_VARIABLE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sal Variable'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(104741919831429548)
,p_name=>'OBSERVACIONES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBSERVACIONES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Observaciones'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>300
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
 p_id=>wwv_flow_imp.id(104742097848429549)
,p_name=>'IND_CORPORATIVO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_CORPORATIVO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Corporativo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(104742144699429550)
,p_name=>'IND_FLOTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_FLOTA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Flota'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(104828609331432001)
,p_name=>'MON_FLOTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MON_FLOTA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mon Flota'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(104828793933432002)
,p_name=>'IND_TARJETA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_TARJETA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Tarjeta'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(104828835539432003)
,p_name=>'IND_CONTRATO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_CONTRATO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Contrato'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(104828996184432004)
,p_name=>'CANT_MESES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANT_MESES'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cant Meses'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>230
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(104829040507432005)
,p_name=>'TIPO_BUSQUEDA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIPO_BUSQUEDA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tipo Busqueda'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(104829143181432006)
,p_name=>'COD_EJERCICIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EJERCICIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Ejercicio'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>10
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
 p_id=>wwv_flow_imp.id(104829287768432007)
,p_name=>'COD_CENTRO_COSTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_CENTRO_COSTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Centro Costo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>5
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
 p_id=>wwv_flow_imp.id(104829369014432008)
,p_name=>'IND_PRESUPUESTADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_PRESUPUESTADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Presupuestado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(104829456124432009)
,p_name=>'IND_MOTIVO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_MOTIVO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Motivo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(104829587404432010)
,p_name=>'COD_EMP_REEMPLAZADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMP_REEMPLAZADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Emp Reemplazado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>15
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
 p_id=>wwv_flow_imp.id(104829652542432011)
,p_name=>'OBS_MOTIVO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBS_MOTIVO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Obs Motivo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>300
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
 p_id=>wwv_flow_imp.id(104829714790432012)
,p_name=>'SEXO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEXO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sexo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(104829862914432013)
,p_name=>'EDAD_MIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EDAD_MIN'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Edad Min'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>320
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
 p_id=>wwv_flow_imp.id(104829954280432014)
,p_name=>'EDAD_MAX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EDAD_MAX'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Edad Max'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>330
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
 p_id=>wwv_flow_imp.id(104830026107432015)
,p_name=>'ESTADO_CIVIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADO_CIVIL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Estado Civil'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>340
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(104830126472432016)
,p_name=>'NIVEL_EDUCACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NIVEL_EDUCACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nivel Educacion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>350
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(104830260322432017)
,p_name=>'EST_NIV_EDUCACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EST_NIV_EDUCACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Est Niv Educacion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>360
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(104830365263432018)
,p_name=>'OBS_NIV_EDUCACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBS_NIV_EDUCACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Obs Niv Educacion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>370
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>300
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
 p_id=>wwv_flow_imp.id(104830456209432019)
,p_name=>'ANIOS_EXPERIENCIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANIOS_EXPERIENCIA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Anios Experiencia'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>380
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
 p_id=>wwv_flow_imp.id(104830571841432020)
,p_name=>'DESC_CONOCIMIENTOS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_CONOCIMIENTOS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Desc Conocimientos'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>390
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>300
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
 p_id=>wwv_flow_imp.id(104830637108432021)
,p_name=>'IND_PERSONAL_CARGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_PERSONAL_CARGO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Personal Cargo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>400
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(104830790586432022)
,p_name=>'CANT_PERSONAL_CARGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANT_PERSONAL_CARGO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cant Personal Cargo'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>410
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(104830851590432023)
,p_name=>'COD_SUPERIOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_SUPERIOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Superior'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>420
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>5
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
 p_id=>wwv_flow_imp.id(104830947087432024)
,p_name=>'IND_ESTADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_ESTADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Estado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>430
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(104831052698432025)
,p_name=>'REL_AUTORIZACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REL_AUTORIZACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Rel Autorizacion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>440
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>300
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
 p_id=>wwv_flow_imp.id(104831134786432026)
,p_name=>'COD_USR_RECHAZO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_USR_RECHAZO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Usr Rechazo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>450
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>15
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
 p_id=>wwv_flow_imp.id(104831237318432027)
,p_name=>'FEC_HOR_RECHAZO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_HOR_RECHAZO'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fec Hor Rechazo'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>460
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(104831348906432028)
,p_name=>'IND_PRIORIDAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_PRIORIDAD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Prioridad'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>470
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(104831403172432029)
,p_name=>'COD_USR_INS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_USR_INS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Usr Ins'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>480
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>15
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
 p_id=>wwv_flow_imp.id(104831535160432030)
,p_name=>'FEC_HOR_INS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_HOR_INS'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fec Hor Ins'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>490
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(104831641943432031)
,p_name=>'COD_USR_UPD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_USR_UPD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Usr Upd'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>500
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>15
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
 p_id=>wwv_flow_imp.id(104831736318432032)
,p_name=>'FEC_HOR_UPD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_HOR_UPD'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fec Hor Upd'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>510
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(104831843539432033)
,p_name=>'DESC_SOLICITANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_SOLICITANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Desc Solicitante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>520
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(104831938204432034)
,p_name=>'DESC_AREA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_AREA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Desc Area'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>530
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
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
 p_id=>wwv_flow_imp.id(104832057702432035)
,p_name=>'DESC_DPTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_DPTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Desc Dpto'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>540
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(104832120725432036)
,p_name=>'DESC_CARGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_CARGO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Desc Cargo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>550
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
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
 p_id=>wwv_flow_imp.id(104832772090432042)
,p_name=>'VER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Ver'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>560
,p_value_alignment=>'CENTER'
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
,p_escape_on_http_output=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(104832835828432043)
,p_name=>'MOTIVO_DEL_REQUERIMIENTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MOTIVO_DEL_REQUERIMIENTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Motivo del Requerimiento'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>570
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>22
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
 p_id=>wwv_flow_imp.id(104832984088432044)
,p_name=>'TIPO_DE_CONTRATO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIPO_DE_CONTRATO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tipo de Contrato'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>580
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>8
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
 p_id=>wwv_flow_imp.id(105266482265779506)
,p_name=>'NIVEL1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NIVEL1'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nivel1'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>590
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(105266536475779507)
,p_name=>'NIVEL2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NIVEL2'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nivel2'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>600
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(105266662703779508)
,p_name=>'NIVEL3'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NIVEL3'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nivel3'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>610
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(105266770220779509)
,p_name=>'NIVEL4'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NIVEL4'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nivel4'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>620
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(104740266584429531)
,p_internal_uid=>104740266584429531
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
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
 p_id=>wwv_flow_imp.id(104834510720432241)
,p_interactive_grid_id=>wwv_flow_imp.id(104740266584429531)
,p_static_id=>'1048346'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(104834717157432241)
,p_report_id=>wwv_flow_imp.id(104834510720432241)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24610544037580)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(104832984088432044)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104835247340432243)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(104740368262429532)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104836163930432245)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(104740404247429533)
,p_is_visible=>false
,p_is_frozen=>false
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
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104837004156432247)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(104740537078429534)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104837932159432249)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(104740686558429535)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>126.76599999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104838803427432251)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(104740798390429536)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120.76599999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104839754573432253)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(104740872330429537)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104840659362432254)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(104740913498429538)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118.76599999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104841523927432256)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(104741076416429539)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130.766
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104842459059432258)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(104741109212429540)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104.76599999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104843318402432260)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(104741299107429541)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104844242659432262)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(104741332979429542)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104845141137432263)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(104741456396429543)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104846067065432265)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(104741551606429544)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104846920659432267)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(104741622864429545)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104847850579432269)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(104741753426429546)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104848735015432270)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(104741857650429547)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104849602070432272)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(104741919831429548)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104850422191432274)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(104742097848429549)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104851394801432276)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(104742144699429550)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104852235874432278)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(104828609331432001)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104853180854432279)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(104828793933432002)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104854025233432281)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(104828835539432003)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104854952524432283)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(104828996184432004)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104855811114432285)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(104829040507432005)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104856734994432287)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(104829143181432006)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104857616333432288)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(104829287768432007)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104858527885432290)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(104829369014432008)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104859429128432292)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(104829456124432009)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104860355248432294)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(104829587404432010)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104861214536432295)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(104829652542432011)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104862197971432297)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(104829714790432012)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104863025342432299)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(104829862914432013)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104863970968432300)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(104829954280432014)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104864813926432302)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(104830026107432015)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104865716274432304)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(104830126472432016)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104866607592432306)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(104830260322432017)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104867587183432308)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(104830365263432018)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104868463609432310)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(104830456209432019)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104869308109432311)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>41
,p_column_id=>wwv_flow_imp.id(104830571841432020)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104870275756432313)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>42
,p_column_id=>wwv_flow_imp.id(104830637108432021)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104871112170432315)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>43
,p_column_id=>wwv_flow_imp.id(104830790586432022)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104872061664432317)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>44
,p_column_id=>wwv_flow_imp.id(104830851590432023)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104872979007432318)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>45
,p_column_id=>wwv_flow_imp.id(104830947087432024)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104873851202432320)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>46
,p_column_id=>wwv_flow_imp.id(104831052698432025)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104874750868432322)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>47
,p_column_id=>wwv_flow_imp.id(104831134786432026)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104875675768432324)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>48
,p_column_id=>wwv_flow_imp.id(104831237318432027)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104876519237432326)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>49
,p_column_id=>wwv_flow_imp.id(104831348906432028)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104877471053432328)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>50
,p_column_id=>wwv_flow_imp.id(104831403172432029)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104878314347432329)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>51
,p_column_id=>wwv_flow_imp.id(104831535160432030)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104879252949432331)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>52
,p_column_id=>wwv_flow_imp.id(104831641943432031)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104880113877432333)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>53
,p_column_id=>wwv_flow_imp.id(104831736318432032)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104881088600432335)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>54
,p_column_id=>wwv_flow_imp.id(104831843539432033)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104881996642432337)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>55
,p_column_id=>wwv_flow_imp.id(104831938204432034)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104882824231432339)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>56
,p_column_id=>wwv_flow_imp.id(104832057702432035)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(104883732221432341)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>57
,p_column_id=>wwv_flow_imp.id(104832120725432036)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(105074278507228639)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>58
,p_column_id=>wwv_flow_imp.id(104832772090432042)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(105075180475228641)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(104832835828432043)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(105305239400093556)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>59
,p_column_id=>wwv_flow_imp.id(105266482265779506)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(105306114294093558)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>60
,p_column_id=>wwv_flow_imp.id(105266536475779507)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(105307017878093560)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>61
,p_column_id=>wwv_flow_imp.id(105266662703779508)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(105307911434093562)
,p_view_id=>wwv_flow_imp.id(104834717157432241)
,p_display_seq=>62
,p_column_id=>wwv_flow_imp.id(105266770220779509)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104540089611710004)
,p_plug_name=>unistr('Descripci\00F3n Campos')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104833497692432049)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(104540089611710004)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_column=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104833183154432046)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(104833497692432049)
,p_button_name=>'BTN_AUT_GTE_AREA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Aut. Gte. \00C1rea')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104833361088432048)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(104833497692432049)
,p_button_name=>'BTN_AUT_GTE_GRAL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aut. Gte. Gral.'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104833047419432045)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(104833497692432049)
,p_button_name=>'BTN_AUT_DIRECTORIO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aut. Directorio'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104833238169432047)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(104833497692432049)
,p_button_name=>'BTN_AUT_GENTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aut. GENTE'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(105266209707779504)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(104833497692432049)
,p_button_name=>'BTN_RECHAZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104461478714614846)
,p_name=>'P362_P_COD_USUARIO'
,p_item_sequence=>1170
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104461772386614849)
,p_name=>'P362_NOM_SOLICITANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(104540089611710004)
,p_prompt=>'Nom. Solicitante'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104461806066614850)
,p_name=>'P362_DESC_AREA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(104540089611710004)
,p_prompt=>unistr('Desc.\00C1rea')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
 p_id=>wwv_flow_imp.id(104539710060710001)
,p_name=>'P362_DESC_DPTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(104540089611710004)
,p_prompt=>'Desc.Dpto'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104539899450710002)
,p_name=>'P362_DESC_CARGO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(104540089611710004)
,p_prompt=>'Desc. Cargo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
 p_id=>wwv_flow_imp.id(104539916650710003)
,p_name=>'P362_REL_AUTORIZACION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(104540089611710004)
,p_prompt=>unistr('Rel. Autorizaci\00F3n')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104540191930710005)
,p_name=>'P362_DETALLE_MOTIVO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(104540089611710004)
,p_prompt=>'Detalles del motivo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104541382269710017)
,p_name=>'P362_NRO_SOLICITUD'
,p_item_sequence=>1140
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104541454891710018)
,p_name=>'P362_COD_EMPRESA'
,p_item_sequence=>1160
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104833555312432050)
,p_name=>'P362_USUARIO_N1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(104833497692432049)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105265947503779501)
,p_name=>'P362_USUARIO_N2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(104833497692432049)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
 p_id=>wwv_flow_imp.id(105266022515779502)
,p_name=>'P362_USUARIO_N3'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(104833497692432049)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
 p_id=>wwv_flow_imp.id(105266166338779503)
,p_name=>'P362_USUARIO_N4'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(104833497692432049)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
 p_id=>wwv_flow_imp.id(105266358195779505)
,p_name=>'P362_USUARIO_RECHAZO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(104833497692432049)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
 p_id=>wwv_flow_imp.id(105266970412779511)
,p_name=>'P362_IND_AUTORIZA_DIR'
,p_item_sequence=>1180
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105267015737779512)
,p_name=>'P362_IND_AUTORIZA_MOV'
,p_item_sequence=>1130
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105267174052779513)
,p_name=>'P362_IND_VISUALIZA_TODO'
,p_item_sequence=>1120
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105267842687779520)
,p_name=>'P362_DERECHOS'
,p_item_sequence=>1110
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105268607279779528)
,p_name=>'P362_NVL1'
,p_item_sequence=>1100
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105268754397779529)
,p_name=>'P362_NVL2'
,p_item_sequence=>1090
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105268871744779530)
,p_name=>'P362_NVL3'
,p_item_sequence=>1080
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105268966297779531)
,p_name=>'P362_NVL4'
,p_item_sequence=>1070
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105270038206779542)
,p_name=>'P362_HABILITA'
,p_item_sequence=>1150
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105270117768779543)
,p_name=>'P362_DESHABILITA'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105270822092779550)
,p_name=>'P362_DES_NV3'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106195826882309901)
,p_name=>'P362_HABIL_NV3'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106195901449309902)
,p_name=>'P362_DES_NV1'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106196006948309903)
,p_name=>'P362_DES_NV2'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106196163936309904)
,p_name=>'P362_HABIL_NV2'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106196223813309905)
,p_name=>'P362_HABIL_NV1'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106200707322309950)
,p_name=>'P362_IND_MOTIVO'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104461537050614847)
,p_name=>'View_Value'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_P_COD_USUARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104461656211614848)
,p_event_id=>wwv_flow_imp.id(104461537050614847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P362_P_COD_USUARIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104540411605710008)
,p_name=>'Obtener_Registros'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(98370145215250043)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104540512980710009)
,p_event_id=>wwv_flow_imp.id(104540411605710008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'obtenerRegistrosSeleccionados();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105267224036779514)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_IND_VISUALIZA_TODO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105267385941779515)
,p_event_id=>wwv_flow_imp.id(105267224036779514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P362_IND_VISUALIZA_TODO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105267458578779516)
,p_name=>'New_1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_IND_AUTORIZA_MOV'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105267545129779517)
,p_event_id=>wwv_flow_imp.id(105267458578779516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P362_IND_AUTORIZA_MOV'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105267655518779518)
,p_name=>'New_2'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_IND_AUTORIZA_DIR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105267767467779519)
,p_event_id=>wwv_flow_imp.id(105267655518779518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P362_IND_AUTORIZA_DIR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105267977940779521)
,p_name=>'New_3'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_DERECHOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105268063837779522)
,p_event_id=>wwv_flow_imp.id(105267977940779521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P362_DERECHOS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105268195076779523)
,p_name=>'New_4'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_NRO_SOLICITUD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105268257394779524)
,p_event_id=>wwv_flow_imp.id(105268195076779523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P362_NRO_SOLICITUD'
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
 p_id=>wwv_flow_imp.id(105268381805779525)
,p_name=>'New_5'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_COD_EMPRESA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105268448462779526)
,p_event_id=>wwv_flow_imp.id(105268381805779525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P362_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105269041381779532)
,p_name=>'New_6'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_NVL1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105269125692779533)
,p_event_id=>wwv_flow_imp.id(105269041381779532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P362_NVL1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105269239540779534)
,p_name=>'New_7'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_NVL2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105269304409779535)
,p_event_id=>wwv_flow_imp.id(105269239540779534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P362_NVL2'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105269483712779536)
,p_name=>'New_8'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_NVL3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105269593908779537)
,p_event_id=>wwv_flow_imp.id(105269483712779536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P362_NVL3'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105269616198779538)
,p_name=>'New_9'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_NVL4'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105269736768779539)
,p_event_id=>wwv_flow_imp.id(105269616198779538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P362_NVL4'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105269853042779540)
,p_name=>'Habilita/Deshabilita Botones'
,p_event_sequence=>130
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(98370145215250043)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105269975994779541)
,p_event_id=>wwv_flow_imp.id(105269853042779540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P362_NVL4 = ''S'' then',
'				if instr(:P362_REL_AUTORIZACION, ''*4*'', 1, 1 ) > 0 then',
'				   :P362_DESHABILITA:=1;',
'				else    ',
'				   if instr(:P362_REL_AUTORIZACION, ''*3*'', 1, 1 ) > 0 then',
'							:P362_HABILITA:=0;   ',
'					 else',
'							:P362_DESHABILITA:=1;',
'					 end if ;',
'				end if ;',
'else',
'    :P362_DESHABILITA:=1;  ',
'end if ;',
'',
'if :P362_NVL3 = ''S'' then',
'    if  instr(:P362_REL_AUTORIZACION, ''*3*'', 1, 1 ) > 0  then ',
'        :P362_DES_NV3:=1;',
'    else',
'        if instr(:P362_REL_AUTORIZACION, ''*2*'', 1, 1 ) > 0 then',
'							:P362_HABIL_NV3:=0;   ',
'					 else',
'							:P362_DES_NV3:=1;     ',
'					 end if ;',
'    end if;',
'else',
'       :P362_DES_NV3:=1;   ',
'end if;',
'',
'if :P362_NVL2 = ''S'' then',
'		if instr(:P362_REL_AUTORIZACION, ''*2*'', 1, 1 ) > 0 then',
'				:P362_DES_NV2:=1;    ',
'		else ',
'				if instr(:P362_REL_AUTORIZACION, ''*1*'', 1, 1 ) > 0 then',
'						:P362_HABIL_NV2:=0;   ',
'				else',
'						:P362_DES_NV2:=1;   ',
'				end if ;',
'		end if ;',
'else',
'    :P362_DES_NV2:=1;   ',
'end if;',
'',
'if :P362_NVL1 = ''S'' then',
'		if instr(:P362_REL_AUTORIZACION, ''*1*'', 1, 1 ) > 0 then',
'				:P362_DES_NV1:=1;     ',
'		else ',
'				:P362_HABIL_NV1:=0;      ',
'		end if ;',
'else',
'		:P362_DES_NV1:=1;      ',
'end if ;'))
,p_attribute_02=>'P362_NVL4,P362_REL_AUTORIZACION,P362_HABILITA,P362_DESHABILITA,P362_HABIL_NV1,P362_HABIL_NV2,P362_HABIL_NV3,P362_DES_NV2,P362_DES_NV1,P362_DES_NV3'
,p_attribute_03=>'P362_DESHABILITA,P362_HABILITA,P362_HABIL_NV1,P362_HABIL_NV2,P362_DES_NV2,P362_DES_NV1,P362_HABIL_NV3,P362_DES_NV3'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105270445610779546)
,p_name=>'New_11'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_DESHABILITA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105270583476779547)
,p_event_id=>wwv_flow_imp.id(105270445610779546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P362_DESHABILITA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106196332228309906)
,p_name=>'New_12'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_HABIL_NV1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106196485899309907)
,p_event_id=>wwv_flow_imp.id(106196332228309906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P362_HABIL_NV1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106196575028309908)
,p_name=>'New_13'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_HABIL_NV2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106196660083309909)
,p_event_id=>wwv_flow_imp.id(106196575028309908)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P362_HABIL_NV2'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106196768884309910)
,p_name=>'New_14'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_DES_NV2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106196892630309911)
,p_event_id=>wwv_flow_imp.id(106196768884309910)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P362_DES_NV2'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106196904462309912)
,p_name=>'New_15'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_DES_NV1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106197038613309913)
,p_event_id=>wwv_flow_imp.id(106196904462309912)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P362_DES_NV1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106197189515309914)
,p_name=>'New_16'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_HABIL_NV3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106197279377309915)
,p_event_id=>wwv_flow_imp.id(106197189515309914)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P362_HABIL_NV3'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106197319652309916)
,p_name=>'New_17'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_DES_NV3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106197499799309917)
,p_event_id=>wwv_flow_imp.id(106197319652309916)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P362_DES_NV3'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106197871589309921)
,p_name=>'SET_USUA_NVLS'
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(98370145215250043)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106197908759309922)
,p_event_id=>wwv_flow_imp.id(106197871589309921)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'	  vpos1    number(8) ;',
'	  vpos2    number(8) ;',
'	  vcant    number(8) ;',
'begin',
'	  vpos1 := instr(:P362_REL_AUTORIZACION, ''*1*'',1,1);',
'	  if nvl(vpos1,0) > 0 then',
'		    vpos2 := instr(:P362_REL_AUTORIZACION, ''*'', vpos1 + 4, 1);',
'		    vcant := vpos2 - vpos1 ;',
'		    :P362_USUARIO_N1 := substr(:P362_REL_AUTORIZACION, nvl(vpos1,0) + 3, nvl(vcant,0) - 3 );',
'	  else',
'        :P362_USUARIO_N1 :=null ;',
'      end if ;',
'	  vpos1 := 0 ;',
'	  vpos2 := 0 ;',
'	  vcant := 0 ;',
'exception',
'	  when others then',
'	    	:P362_USUARIO_N1 :=null ;',
'end ;',
'',
'declare',
'  vpos1    number(8) ;',
'  vpos2    number(8) ;',
'  vcant    number(8) ;',
'begin',
'	  vpos1 := instr(:P362_REL_AUTORIZACION, ''*2*'',1,1);',
'	  if nvl(vpos1,0) > 0 then',
'		    vpos2 := instr(:P362_REL_AUTORIZACION, ''*'', vpos1 + 4, 1);',
'		    vcant := vpos2 - vpos1 ;',
'		    :P362_USUARIO_N2 := substr(:P362_REL_AUTORIZACION, nvl(vpos1,0) + 3, nvl(vcant,0) - 3 );',
'	  else',
'              :P362_USUARIO_N2 :=null ;',
'      end if ;',
'	  vpos1 := 0 ;',
'	  vpos2 := 0 ;',
'	  vcant := 0 ;',
'exception',
'	  when others then',
'	    	:P362_USUARIO_N2 :=null ;',
'end;',
'',
'declare',
'	  vpos1    number(8) ;',
'	  vpos2    number(8) ;',
'	  vcant    number(8) ;',
'begin',
'	  vpos1 := instr(:P362_REL_AUTORIZACION, ''*3*'',1,1);',
'	  if nvl(vpos1,0) > 0 then',
'		    vpos2 := instr(:P362_REL_AUTORIZACION, ''*'', vpos1 + 4, 1);',
'		    vcant := vpos2 - vpos1 ;',
'		    :P362_USUARIO_N3 := substr(:P362_REL_AUTORIZACION, nvl(vpos1,0) + 3, nvl(vcant,0) - 3 );',
'	  else',
'        :P362_USUARIO_N3 :=null ;',
'      end if ;',
'	  vpos1 := 0 ;',
'	  vpos2 := 0 ;',
'	  vcant := 0 ;',
'exception',
'  	when others then',
'    		:P362_USUARIO_N3 :=null ;',
'end ;',
'',
'declare',
'	  vpos1    number(8) ;',
'	  vpos2    number(8) ;',
'	  vcant    number(8) ;',
'begin',
'	  vpos1 := instr(:P362_REL_AUTORIZACION, ''*4*'',1,1);',
'	  if nvl(vpos1,0) > 0 then',
'		    vpos2 := instr(:P362_REL_AUTORIZACION, ''*'', vpos1 + 4, 1);',
'		    vcant := vpos2 - vpos1 ;',
'		    :P362_USUARIO_N4 := substr(:P362_REL_AUTORIZACION, nvl(vpos1,0) + 3, nvl(vcant,0) - 3 );',
'	  else',
'        :P362_USUARIO_N4 :=null;',
'      end if ;',
'      ',
'	  vpos1 := 0 ;',
'	  vpos2 := 0 ;',
'	  vcant := 0 ;',
'exception',
'  	when others then',
'    		:P362_USUARIO_N4 :=null ;',
'end ;'))
,p_attribute_02=>'P362_REL_AUTORIZACION'
,p_attribute_03=>'P362_USUARIO_N1,P362_USUARIO_N2,P362_USUARIO_N3,P362_USUARIO_N4'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106198598807309928)
,p_event_id=>wwv_flow_imp.id(106197871589309921)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104833497692432049)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106199905184309942)
,p_name=>'Click_Rechazo'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(105266209707779504)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106200084459309943)
,p_event_id=>wwv_flow_imp.id(106199905184309942)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    update inv.RH_REQUERIMIENTO_PERSONAL',
'        set ind_estado=''R'',',
'        COD_USR_RECHAZO = to_char(:P_COD_USUARIO),',
'        fec_hor_rechazo = to_Date(sysdate,''dd/mm/yyyy hh24:mi:ss'')',
'        where  nro_solicitud = trim(:P362_NRO_SOLICITUD); ',
'END;'))
,p_attribute_02=>'P362_NRO_SOLICITUD,P_COD_USUARIO,P362_IND_MOTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107035384919231936)
,p_event_id=>wwv_flow_imp.id(106199905184309942)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98370145215250043)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107035489676231937)
,p_event_id=>wwv_flow_imp.id(106199905184309942)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104540089611710004)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107035579872231938)
,p_event_id=>wwv_flow_imp.id(106199905184309942)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104833497692432049)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106200104936309944)
,p_name=>'Click_Aut_Gente'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104833238169432047)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106200266730309945)
,p_event_id=>wwv_flow_imp.id(106200104936309944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if nvl(instr(:P362_REL_AUTORIZACION, ''*1*'', 1, 1 ), 0) = 0 then',
'    raise_application_error(''-20111'',''No puede autorizar el cuarto nivel sin autorizar previamente el primer nivel.'');',
'end if;',
'',
'if nvl(instr(:P362_REL_AUTORIZACION, ''*2*'', 1, 1 ), 0) = 0 then',
'    raise_application_error(''-20111'',''No puede autorizar el cuarto nivel sin autorizar previamente el segundo nivel. '');',
'end if;',
'',
'if nvl(instr(:P362_REL_AUTORIZACION, ''*3*'', 1, 1 ), 0) = 0 then',
'    raise_application_error(''-20111'',''No puede autorizar el cuarto nivel sin autorizar previamente el tercer nivel. '');',
'end if;',
'',
'if nvl(instr(:P362_REL_AUTORIZACION, ''*4*'', 1, 1 ), 0) = 0 then	  ',
'        update RH_REQUERIMIENTO_PERSONAL',
'        set ind_estado= ''A'',',
'        rel_autorizacion = :P362_REL_AUTORIZACION||''*''||''4''||''*''||:P_COD_USUARIO||''*''||to_char(sysdate, ''dd/mm/yyyy hh24:mi:ss'')||''*'' ',
'        where cod_empresa = :P_COD_EMPRESA',
'        and nro_solicitud = :P362_NRO_SOLICITUD;',
'        COMMIT;',
'    ',
'elsif nvl(instr(:P362_REL_AUTORIZACION, ''*4*'', 1, 1 ), 0) > 0 then',
'    raise_application_error(''-20111'',''El movimiento ya fue aprobado en el cuarto nivel nivel. '');',
'end if ;',
'',
'end;',
''))
,p_attribute_02=>'P362_REL_AUTORIZACION,P362_NRO_SOLICITUD,P_COD_USUARIO,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107034196314231924)
,p_event_id=>wwv_flow_imp.id(106200104936309944)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98370145215250043)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107034218553231925)
,p_event_id=>wwv_flow_imp.id(106200104936309944)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104540089611710004)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107034394776231926)
,p_event_id=>wwv_flow_imp.id(106200104936309944)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104833497692432049)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106200305994309946)
,p_name=>'Click_Aut_Directorio'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104833047419432045)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106200493244309947)
,p_event_id=>wwv_flow_imp.id(106200305994309946)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(instr(:P362_REL_AUTORIZACION, ''*1*'', 1, 1 ), 0) = 0 then',
'    raise_application_error(''-20111'',''No puede autorizar el tercer nivel sin autorizar previamente el primer nivel.'');',
'end if;',
'',
'if nvl(instr(:P362_REL_AUTORIZACION, ''*2*'', 1, 1 ), 0) = 0 then',
'    raise_application_error(''-20111'',''No puede autorizar el tercer nivel sin autorizar previamente el segundo nivel.'');',
'end if;',
'',
'if nvl(instr(:P362_REL_AUTORIZACION, ''*3*'', 1, 1 ), 0) = 0 then	  ',
'    update RH_REQUERIMIENTO_PERSONAL',
'    set rel_autorizacion = :P362_REL_AUTORIZACION||''*''||''3''||''*''||:P_COD_USUARIO||''*''||to_char(sysdate, ''dd/mm/yyyy hh24:mi:ss'')||''*''',
'    where cod_empresa = :P_COD_EMPRESA',
'    and nro_solicitud = :P362_NRO_SOLICITUD;',
'    COMMIT;',
'    ',
'elsif nvl(instr(:P362_REL_AUTORIZACION, ''*3*'', 1, 1 ), 0) > 0 then',
'    raise_application_error(''-20111'',''El movimiento ya fue aprobado en el tercer nivel nivel.'');',
'end if ;'))
,p_attribute_02=>'P362_REL_AUTORIZACION,P_COD_EMPRESA,P_COD_USUARIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107034428284231927)
,p_event_id=>wwv_flow_imp.id(106200305994309946)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98370145215250043)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107034560487231928)
,p_event_id=>wwv_flow_imp.id(106200305994309946)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104540089611710004)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107034629232231929)
,p_event_id=>wwv_flow_imp.id(106200305994309946)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104833497692432049)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106200557521309948)
,p_name=>'Click'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104833361088432048)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106200642972309949)
,p_event_id=>wwv_flow_imp.id(106200557521309948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(instr(:P362_REL_AUTORIZACION, ''*1*'', 1, 1 ), 0) = 0 then',
'    raise_application_error(''-20111'',''No puede autorizar el segundo nivel sin autorizar previamente el primer nivel.'');',
'else',
'    if nvl(instr(:P362_REL_AUTORIZACION, ''*2*'', 1, 1 ), 0) = 0 then',
'			  if :P362_IND_MOTIVO not in (''T'') then',
'				    update RH_REQUERIMIENTO_PERSONAL',
'                    set rel_autorizacion = :P362_REL_AUTORIZACION||''*''||''2''||''*''||:P_cod_usuario||''*''||to_char(sysdate,''dd/mm/yyyy hh24:mi:ss'')||''*''',
'                    where cod_empresa = :P_COD_EMPRESA',
'                    and nro_solicitud = :P362_NRO_SOLICITUD;',
'                    COMMIT;',
'',
'			  else',
'                  update RH_REQUERIMIENTO_PERSONAL',
'                    set rel_autorizacion = :P362_REL_AUTORIZACION||''*''||''2''||''*''||:P_cod_usuario||''*''||to_char(sysdate,''dd/mm/yyyy hh24:mi:ss'')||''*''||''*''||''3''||''*SISTEMA*''||to_char(sysdate,''dd/mm/yyyy hh24:mi:ss'')||''*''',
'                    where cod_empresa = :P_COD_EMPRESA',
'                    and nro_solicitud = :P362_NRO_SOLICITUD;',
'                    COMMIT;  ',
'              end if;',
'		    ',
'		elsif nvl(instr(:P362_REL_AUTORIZACION, ''*2*'', 1, 1 ), 0) > 0 then',
'		    raise_application_error(''-20111'',''El movimiento ya fue aprobado en el segundo nivel.'');',
'		',
'		end if ;',
'end if;',
'',
''))
,p_attribute_02=>'P362_IND_MOTIVO,P362_REL_AUTORIZACION,P362_NRO_SOLICITUD,P_COD_USUARIO,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107034761283231930)
,p_event_id=>wwv_flow_imp.id(106200557521309948)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98370145215250043)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107034897592231931)
,p_event_id=>wwv_flow_imp.id(106200557521309948)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104540089611710004)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107034909715231932)
,p_event_id=>wwv_flow_imp.id(106200557521309948)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104833497692432049)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106561948746108501)
,p_name=>'New_10'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104833183154432046)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106562095553108502)
,p_event_id=>wwv_flow_imp.id(106561948746108501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(instr(:P362_REL_AUTORIZACION, ''*1*'', 1, 1 ), 0) = 0 then',
'	  ',
'	  if :P362_ind_motivo not in (''N'', ''A'', ''T'') then',
'			update RH_REQUERIMIENTO_PERSONAL',
'            set rel_autorizacion = :P362_REL_AUTORIZACION||''*''||''1''||''*''||:P_cod_usuario||''*''||to_char(sysdate,''dd/mm/yyyy hh24:mi:ss'')||''*''||''*''||''2''||''*SISTEMA*''||to_char(sysdate,''dd/mm/yyyy hh24:mi:ss'')||''*''||''*''||''3''||''*SISTEMA*''||to_char(sysdate'
||',''dd/mm/yyyy hh24:mi:ss'')||''*''',
'            where cod_empresa = :P_COD_EMPRESA',
'            and nro_solicitud = :P362_NRO_SOLICITUD;',
'            COMMIT;',
'	  else',
'	  	    update RH_REQUERIMIENTO_PERSONAL',
'            set rel_autorizacion = :P362_REL_AUTORIZACION||''*''||''1''||''*''||:P_cod_usuario||''*''||to_char(sysdate,''dd/mm/yyyy hh24:mi:ss'')||''*''',
'            where cod_empresa = :P_COD_EMPRESA',
'            and nro_solicitud = :P362_NRO_SOLICITUD;',
'            COMMIT;',
'	  end if;',
'    ',
'elsif nvl(instr(:P362_REL_AUTORIZACION, ''*1*'', 1, 1 ), 0) > 0 then',
'    raise_application_error(''-20111'',''El movimiento ya fue aprobado en el primer nivel.'');',
'',
'end if ;'))
,p_attribute_02=>'P362_IND_MOTIVO,P362_REL_AUTORIZACION,P362_NRO_SOLICITUD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107035059670231933)
,p_event_id=>wwv_flow_imp.id(106561948746108501)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98370145215250043)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107035124592231934)
,p_event_id=>wwv_flow_imp.id(106561948746108501)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104540089611710004)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107035299711231935)
,p_event_id=>wwv_flow_imp.id(106561948746108501)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104833497692432049)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106562129861108503)
,p_name=>'New_18'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_IND_MOTIVO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106562219869108504)
,p_event_id=>wwv_flow_imp.id(106562129861108503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P362_IND_MOTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106562601505108508)
,p_name=>'New_19'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_USUARIO_RECHAZO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106562702150108509)
,p_event_id=>wwv_flow_imp.id(106562601505108508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P362_USUARIO_RECHAZO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106563057223108512)
,p_name=>'New_20'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P362_HABILITA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106563110892108513)
,p_event_id=>wwv_flow_imp.id(106563057223108512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P362_HABILITA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(106198419790309927)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P362_USUARIO_N1 :=null;',
':P362_USUARIO_N2 :=null;',
':P362_USUARIO_N3 :=null;',
':P362_USUARIO_N4 :=null;',
'',
':P362_IND_AUTORIZA_DIR := busca_permiso(:p_cod_empresa,',
'										''RHAUTREQ'',',
'										:P_cod_usuario,',
'										''IND_AUTORIZA_DIR'');                 ',
'             ',
':P362_IND_AUTORIZA_MOV := busca_permiso(:p_cod_empresa,',
'									    ''RHAUTREQ'',',
'									    :P_cod_usuario,',
'									    ''IND_AUTORIZA'');      ',
'																				 ',
':P362_IND_VISUALIZA_TODO := busca_permiso(:p_cod_empresa,',
'										 ''RHAUTREQ'',',
'										 :P_cod_usuario,',
'										 ''IND_VISUALIZA_TODO''); 	'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
