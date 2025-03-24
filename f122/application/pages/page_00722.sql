prompt --application/pages/page_00722
begin
--   Manifest
--     PAGE: 00722
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
 p_id=>722
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FICHA - CONTROL DE CALIDAD'
,p_alias=>'FICHA-CONTROL-DE-CALIDAD'
,p_page_mode=>'MODAL'
,p_step_title=>'FICHA - CONTROL DE CALIDAD'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function recepcionar(p_numero, p_cod_articulo) {  ',
'    apex.util.showSpinner();',
'     apex.server.process(',
'            ''RECEPCIONAR'', ',
'            {   x01: p_numero,',
'                x02: p_cod_articulo',
'            }, ',
'',
'            {',
'            success: function (pData) { ',
'                if (pData.success === true) {                         ',
'                      ',
'                        apex.region("rep_sol").refresh();         ',
'                        apex.region("historial").refresh();      ',
'                        ',
'                }else{',
'                        alert(pData.message); ',
'                        apex.message.clearErrors();',
'                        apex.message.showErrors({',
'                                                    type: "errors",',
'                                                    location: "page",',
'                                                    message: pData.message,',
'                                                    unsafe: false',
'                                                });',
'                     ',
'                }',
'                               ',
'                }, ',
'                error: function(request, status, error) { ',
'                    alert(request+status+ error); ',
'                    apex.message.clearErrors();',
'                    apex.message.showErrors({',
'                        type: "errors",',
'                        location: "page",',
'                        message: request+status+ error,',
'                        unsafe: false',
'                    });',
'                ',
'                } ',
'            })',
'    $("#apex_wait_overlay").remove();',
'    $(".u-Processing").remove();',
'   };',
'',
'',
' function ir_a(p_pagina) {     ',
'     var purl = ''f?p=&APP_ID.:''+p_pagina+'':&SESSION.::NO:'';',
'        apex.navigation.redirect(purl);      ',
' };',
'',
'',
'',
' ',
'',
'',
'function devolver(p_cod_art,p_cant,p_suc) {  ',
'     apex.util.showSpinner();',
'     apex.server.process(',
'            ''DEVOLVER'', ',
'            {   x01: p_cod_art,',
'                x02: p_cant,',
'                x03: p_suc',
'            }, ',
'',
'            {',
'            success: function (pData) { ',
'                if (pData.success === true) {                         ',
'                      ',
'                        apex.region("rep_util").refresh();         ',
'                        apex.region("historial").refresh();      ',
'                        ',
'                }else{',
'                        alert(pData.message); ',
'                        apex.message.clearErrors();',
'                        apex.message.showErrors({',
'                                                    type: "errors",',
'                                                    location: "page",',
'                                                    message: pData.message,',
'                                                    unsafe: false',
'                                                });',
'                     ',
'                }',
'                               ',
'                }, ',
'                error: function(request, status, error) { ',
'                    alert(request+status+ error); ',
'                    apex.message.clearErrors();',
'                    apex.message.showErrors({',
'                        type: "errors",',
'                        location: "page",',
'                        message: request+status+ error,',
'                        unsafe: false',
'                    });',
'                ',
'                } ',
'            })',
'    $("#apex_wait_overlay").remove();',
'    $(".u-Processing").remove();',
'   };'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-content, .t-Region-body{',
'   background-color:  #d0e0f783!important;}',
'',
'#FICHA1{    ',
'  background-color: #487ab8  !important;',
'} ',
'.t-Form-label  {',
'  color: darkblue  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'',
'.display_only, .apex-item-display-only',
'{',
'    font-weight: bold !important;',
'    border-style: solid !important;',
'    background-color: white  !important;',
'',
'}',
'',
'.fa-times-circle:hover , .fa-check-circle:hover {',
'  color:green !important; ',
'  cursor: pointer;',
'}',
'/*',
'#rep_sol{',
'            overflow-y: scroll !important;',
'            height: 250px  !important;',
'            }',
'',
'style ="overflow-y: scroll;height:250px;"*/'))
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:t-PageBody--noContentPadding'
,p_page_component_map=>'03'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240706103407'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(273702451702399505)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(273702557670399506)
,p_plug_name=>'FICHA DE VERIFICACION'
,p_region_name=>'FICHA'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(273703445011399515)
,p_plug_name=>'PANEL LATERAL'
,p_region_name=>'panel_lateral'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(273703898655399519)
,p_name=>'REPUESTOS SOLICITADOS'
,p_region_name=>'rep_sol'
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_report_attributes=>'style ="overflow-y: scroll;height:200px;"'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select cod_articulo, ',
'        desc_articulo, ',
'        cant_pedida, ',
'        cant_rep,  ',
'        CASE ',
'            WHEN NVL(cant_rep,0) > 0  AND NVL(verificado,''N'')=''S'' AND NVL(cant_recibido,0)=0 AND NVL(:P722_ESTADO,'''')<>''FINALIZADO'' THEN',
'                ''<i class="fa fa-check-circle" style="color:blue" onclick="recepcionar(''''''||nro_comprobante||'''''',''''''||cod_articulo||'''''')"></i>'' ',
'            ELSE',
'               TO_CHAR(cant_recibido)',
'        END  cant_recibido  ,',
'        CASE',
'            WHEN  NVL(cant_rep,0) = 0  AND nvl(verificado,''N'') = ''S'' AND NVL(cant_recibido,0) = 0 THEN  ',
'                 ''<input type="checkbox"  checked disabled />''',
'            WHEN  nvl(cant_recibido,0) > 0  OR NVL(:P722_ESTADO,''NN'')=''FINALIZADO'' THEN   ',
'                ''<input type="checkbox"  unchecked disabled />''                 ',
'            ELSE               ',
'                ''<i class="fa fa-times-circle" style="color:red" onclick="$s(''''P722_RECHAZA'''',''''''||nvl(nro_comprobante,0)||''-''||cod_articulo||'''''')"></i> ''                      ',
'        END rechazado',
'     ',
'from vw_repuestos_solicitados_pvc',
'where  nro_comprobante_ref = :P722_ID_REGISTRO ',
'order by 5,6 ',
';  '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P722_ID_REGISTRO,P722_ESTADO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(274730767973854121)
,p_query_column_id=>1
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>10
,p_column_heading=>'Codigo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(274730831409854122)
,p_query_column_id=>2
,p_column_alias=>'DESC_ARTICULO'
,p_column_display_sequence=>20
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(274731806114854132)
,p_query_column_id=>3
,p_column_alias=>'CANT_PEDIDA'
,p_column_display_sequence=>90
,p_column_heading=>'Solicitado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(274731651255854130)
,p_query_column_id=>4
,p_column_alias=>'CANT_REP'
,p_column_display_sequence=>100
,p_column_heading=>'Enviado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(274731795033854131)
,p_query_column_id=>5
,p_column_alias=>'CANT_RECIBIDO'
,p_column_display_sequence=>110
,p_column_heading=>'Recibido'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(277122735726416412)
,p_query_column_id=>6
,p_column_alias=>'RECHAZADO'
,p_column_display_sequence=>120
,p_column_heading=>'Rechazado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(273703911921399520)
,p_name=>'REPUESTOS UTILIZADOS'
,p_region_name=>'rep_util'
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_report_attributes=>'style ="overflow-y: scroll;height:200px;"'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select COD_ARTICULO,',
'       DESCRIPCION,',
'       suc,',
'       sum(cant_recibido)cant_recibido,',
'       sum(cant_devuelto)cant_devuelto,',
'       case ',
'         when sum(cant_recibido)>0 and sum(cant_recibido)>sum(cant_devuelto)  AND NVL(:P722_ESTADO,'''')<>''FINALIZADO''then                          ',
'            ''<i class="fa fa-undo" style="color:teal" onclick="devolver(''''''||cod_articulo||'''''',''''''||sum(cant_recibido)||'''''',''''''||suc||'''''')"></i>''  ',
'',
'         else',
'            ''<i class="fa fa-ban"  disable></i>'' ',
'       end devolver',
'from (          ',
'   select AA.COD_ARTICULO,',
'                       AA.DESCRIPCION,',
'                       decode(cc.cod_sucursal_ent, bs_busca_parametro(''BS'', ''SUC_PV_CTRL_CALIDAD''),DD.CANTIDAD,0)cant_recibido,',
'                       decode(cc.cod_sucursal, bs_busca_parametro(''BS'', ''SUC_PV_CTRL_CALIDAD''),DD.CANTIDAD,0)cant_devuelto ,',
'                       decode(cc.cod_sucursal_ent, bs_busca_parametro(''BS'', ''SUC_PV_CTRL_CALIDAD''),cc.cod_sucursal,cc.cod_sucursal_ent) suc                       ',
'                       ',
'                    from ST_NOTAS_ENVIO_CAB CC,',
'                         ST_NOTAS_ENVIO_DET DD,',
'                         ST_ARTICULOS AA',
'                    WHERE CC.COD_EMPRESA=''1''',
'                    AND CC.SER_ENVIO=''Q1''',
'                    AND CC.NRO_COMPROBANTE_REF= :P722_ID_REGISTRO',
'                    AND CC.COD_EMPRESA =DD.COD_EMPRESA',
'                    AND CC.TIP_ENVIO   =DD.TIP_ENVIO',
'                    AND CC.SER_ENVIO   =DD.SER_ENVIO',
'                    AND CC.NRO_ENVIO   =DD.NRO_ENVIO',
'                    AND DD.COD_ARTICULO=AA.cod_articulo',
'                    AND DD.COD_EMPRESA =AA.COD_EMPRESA',
')',
'group by COD_ARTICULO,',
'       DESCRIPCION,',
'       suc',
'              '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P722_ID_REGISTRO,P722_ESTADO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(274730213560854116)
,p_query_column_id=>1
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>20
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(277124313016416428)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>30
,p_column_heading=>'Descripcion del Articulo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(277124803765416433)
,p_query_column_id=>3
,p_column_alias=>'SUC'
,p_column_display_sequence=>10
,p_column_heading=>'Suc'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(277124488707416429)
,p_query_column_id=>4
,p_column_alias=>'CANT_RECIBIDO'
,p_column_display_sequence=>40
,p_column_heading=>'Recibido'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(277124541478416430)
,p_query_column_id=>5
,p_column_alias=>'CANT_DEVUELTO'
,p_column_display_sequence=>50
,p_column_heading=>'Devuelto'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(277124656441416431)
,p_query_column_id=>6
,p_column_alias=>'DEVOLVER'
,p_column_display_sequence=>60
,p_column_heading=>'Devolver'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(273704839469399529)
,p_plug_name=>'SOLICITUD DE REPUESTOS'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(273705881793399539)
,p_plug_name=>'CONFIRMAR CIERRE'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(273706637357399547)
,p_name=>'HISTORIAL DE VERIFICACION'
,p_region_name=>'historial'
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_report_attributes=>'style ="overflow-y: scroll;height:200px;"'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  OBSERVACION,',
'       FECHA_ALTA,',
'       COD_USUARIO',
'  from CA_CONTROL_CALIDAD_SEG',
'  WHERE COD_EMPRESA = NVL(:P_COD_EMPRESA,''1'')',
'  AND   ID_REGISTRO = :P722_ID_REGISTRO',
'  order by FECHA_ALTA desc',
'  ;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P722_ID_REGISTRO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(273706933788399550)
,p_query_column_id=>1
,p_column_alias=>'OBSERVACION'
,p_column_display_sequence=>30
,p_column_heading=>'Observacion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(274728750779854101)
,p_query_column_id=>2
,p_column_alias=>'FECHA_ALTA'
,p_column_display_sequence=>40
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(274728807401854102)
,p_query_column_id=>3
,p_column_alias=>'COD_USUARIO'
,p_column_display_sequence=>50
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(340398915606114121)
,p_name=>'MOVIMIENTOS'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CASE tip_comprobante',
'        WHEN ''FCD'' THEN ''DESPIECE''',
'        WHEN ''AJS'' THEN ''AJUSTE''',
'        WHEN ''ENV'' THEN''ENVIO''',
'        ELSE tip_comprobante',
'        END tip_comprobante,         ',
'        ser_comprobante, ',
'        nro_comprobante,',
'        NULL VER,',
'        inv.pkg_pvcalidad.genera_url(COD_EMPRESA,id_registro,nro_comprobante)URL',
'FROM inv.ca_control_calidad_ref',
'WHERE cod_empresa=NVL(:P_COD_EMPRESA,''1'')',
'AND id_registro = :P722_ID_REGISTRO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P722_ID_REGISTRO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(340399040541114122)
,p_query_column_id=>1
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>10
,p_column_heading=>'Tipo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(340399147274114123)
,p_query_column_id=>2
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>20
,p_column_heading=>'Ser'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(340399242000114124)
,p_query_column_id=>3
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>30
,p_column_heading=>'Numero'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(340399300486114125)
,p_query_column_id=>4
,p_column_alias=>'VER'
,p_column_display_sequence=>40
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P722_IR_A'',''#URL#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-search"></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(340399721592114129)
,p_query_column_id=>5
,p_column_alias=>'URL'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(277125087346416435)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(273703445011399515)
,p_button_name=>'BTN_VER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ver Destino'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-window-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(273703611366399517)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(273703445011399515)
,p_button_name=>'FINALIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--gapLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finalizar'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P722_ESTADO in (''FINALIZADO'') then',
'    RETURN FALSE;',
'else',
'    RETURN TRUE;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-6-text'
,p_icon_css_classes=>'fa-check'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(273705247972399533)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(273704839469399529)
,p_button_name=>'Confirmar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(277122467790416409)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(273705881793399539)
,p_button_name=>'finalizar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(273703586285399516)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(273703898655399519)
,p_button_name=>'Sol_Rep'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'SOLICITAR'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P722_ID_REGISTRO IS NOT NULL AND NVL(:P722_ESTADO,'''')<>''FINALIZADO'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN    ',
'        RETURN FALSE;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-6-bg u-color-13-text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183085628586712033)
,p_name=>'P722_MSJ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(273702451702399505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273702613730399507)
,p_name=>'P722_COD_ARTICULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(273702557670399506)
,p_prompt=>'CODIGO ARTICULO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273702752090399508)
,p_name=>'P722_DESCRIPCION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(273702557670399506)
,p_prompt=>'DESCRIPCION DEL PRODUCTO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273702894651399509)
,p_name=>'P722_ORIGEN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(273702557670399506)
,p_prompt=>'ORIGEN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273702992676399510)
,p_name=>'P722_COD_ART_CORTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(273702557670399506)
,p_prompt=>'CODIGO CORTO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273703046522399511)
,p_name=>'P722_MARCA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(273702557670399506)
,p_prompt=>'MARCA'
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
 p_id=>wwv_flow_imp.id(273703135878399512)
,p_name=>'P722_LINEA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(273702451702399505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273703293335399513)
,p_name=>'P722_FAMILIA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(273702451702399505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273703375623399514)
,p_name=>'P722_CATEGORIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(273702451702399505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273704066822399521)
,p_name=>'P722_NRO_FICHA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(273702557670399506)
,p_prompt=>unistr('FICHA N\00BA')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273704198536399522)
,p_name=>'P722_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(273702557670399506)
,p_prompt=>'ESTADO'
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
 p_id=>wwv_flow_imp.id(273704202172399523)
,p_name=>'P722_FECHA_INCIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(273702557670399506)
,p_prompt=>'FECHA INICIO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273704369986399524)
,p_name=>'P722_ID_REGISTRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(273702451702399505)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273704513988399526)
,p_name=>'P722_OT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(273702557670399506)
,p_prompt=>'ORDEN DE TRABAJO'
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
 p_id=>wwv_flow_imp.id(273704692724399527)
,p_name=>'P722_DESTINO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(273703445011399515)
,p_prompt=>'DESTINO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273704704612399528)
,p_name=>'P722_GARANTIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(273702557670399506)
,p_prompt=>unistr('GARANTIA N\00BA')
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
 p_id=>wwv_flow_imp.id(273704982211399530)
,p_name=>'P722_COD_ARTICULO_SOL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(273704839469399529)
,p_prompt=>'Repuesto a Solicitar'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.DESCRIPCION ||'' - '' ||A.COD_ARTICULO REPUESTO, A.COD_ARTICULO CODIGO',
'FROM ST_ARTICULOS A',
'WHERE A.COD_EMPRESA=''1''',
'AND A.COD_RUBRO=''RE''',
'AND NVL(A.ESTADO,''A'')<>''I''',
'ORDER BY trim(A.DESCRIPCION ) ASC'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273705062485399531)
,p_name=>'P722_CANT_SOL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(273704839469399529)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(273705980049399540)
,p_name=>'P722_DESTINO_FIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(273705881793399539)
,p_prompt=>'Destino '
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:DESPIECE;DESPIECE,OFERTA;OFERTA'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273706011031399541)
,p_name=>'P722_OBSERVACION_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(273705881793399539)
,p_prompt=>'Resultado de la Verificacion:'
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
 p_id=>wwv_flow_imp.id(273706433113399545)
,p_name=>'P722_REFERENCIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(273703445011399515)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(274728916846854103)
,p_name=>'P722_FECHA_CIERRE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(273703445011399515)
,p_prompt=>'FECHA CIERRE'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(274732074888854134)
,p_name=>'P722_RECHAZA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(273703898655399519)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277123623174416421)
,p_name=>'P722_SUCURSAL_DESTINO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(273705881793399539)
,p_prompt=>'Sucursal Destino'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal||'' - ''||descripcion descripcion, cod_sucursal ',
'from sucursales ',
'where cod_empresa = NVL(:P_COD_EMPRESA,''1'' )',
'AND   (cod_sucursal=(bs_busca_parametro(''BS'', ''SUC_PV_CTRL_CALIDAD'')) OR  cod_sucursal =''105'')'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277123790817416422)
,p_name=>'P722_URL_FIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(273705881793399539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277123933070416424)
,p_name=>'P722_SUCURSAL_SOL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(273704839469399529)
,p_prompt=>'Sucursal Sol'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select cod_sucursal||'' - ''||descripcion suc, cod_sucursal cod',
' from sucursales',
' where cod_empresa= NVL(:P_COD_EMPRESA,''1'')',
' and (cod_sucursal=(bs_busca_parametro(''BS'', ''SUC_PV_COMPRA_INT''))',
'        OR cod_sucursal=''101'')',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(340399478094114126)
,p_name=>'P722_IR_A'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(273702451702399505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(273705314762399534)
,p_name=>'da_sol_rep'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(273703586285399516)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(273705425047399535)
,p_event_id=>wwv_flow_imp.id(273705314762399534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(273704839469399529)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(273705580453399536)
,p_event_id=>wwv_flow_imp.id(273705314762399534)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P722_COD_ARTICULO_SOL,P722_CANT_SOL,P722_SUCURSAL_SOL'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(273706194754399542)
,p_name=>'DA_FINALIZA'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(273703611366399517)
,p_condition_element=>'P722_ESTADO'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'CERRADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(273706289774399543)
,p_event_id=>wwv_flow_imp.id(273706194754399542)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(273705881793399539)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(273706317716399544)
,p_event_id=>wwv_flow_imp.id(273706194754399542)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P722_DESTINO_FIN,P722_OBSERVACION_FIN,P722_URL_FIN,P722_SUCURSAL_DESTINO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(274729009873854104)
,p_name=>'da_Load'
,p_event_sequence=>40
,p_condition_element=>'P722_ID_REGISTRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274729198253854105)
,p_event_id=>wwv_flow_imp.id(274729009873854104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P722_ID_REGISTRO IS NOT NULL THEN',
'    begin',
'            SELECT CC.ID_REGISTRO,       CC.FECHA_ALTA,       CC.ESTADO,       AR.COD_ARTICULO,       AR.COD_ART_CORTO,       AR.DESCRIPCION,       ',
'                   NVL(MA.COD_MARCA||'' - ''||MA.DESCRIPCION,'''')MARCA,       NVL(LI.COD_LINEA||'' - ''||LI.DESCRIPCION,'''')LINEA,       NVL(FA.COD_FAMILIA||'' - ''||FA.DESCRIPCION,'''')FAMILIA,',
'                   NVL(CA.COD_CATEGORIA||'' - ''||CA.DESCRIPCION,'''')CATEGORIA,              upper(PA.DESCRIPCION) origen,   cc.ser_ot||'' - ''||cc.nro_ot ot, NVL(OT.GARANTIA_OT,OT.GARANTIA)',
'                   ,tipo_ref ||''-''||ser_ref  ||''-''||nro_ref, CC.DESTINO',
'            INTO',
'                   :P722_NRO_FICHA, :P722_FECHA_INCIO, :P722_ESTADO, :P722_COD_ARTICULO, :P722_COD_ART_CORTO, :P722_DESCRIPCION,',
'                   :P722_MARCA, :P722_LINEA, :P722_FAMILIA, :P722_CATEGORIA,  :P722_ORIGEN, :P722_OT, :P722_GARANTIA, :P722_REFERENCIA, :P722_DESTINO',
'            FROM CA_CONTROL_CALIDAD CC,',
'                 ST_ARTICULOS AR,',
'                 ST_MARCAS MA,',
'                 ST_LINEA LI,',
'                 ST_FAMILIA FA,',
'                 ST_CATEGORIAS CA,',
'                 PAISES PA,     ',
'                 VT_ORDENES_TRABAJO OT',
'            WHERE ID_REGISTRO= :P722_ID_REGISTRO',
'            AND   CC.COD_EMPRESA=''1''',
'            AND   CC.COD_EMPRESA = AR.COD_EMPRESA',
'            AND   CC.COD_ARTICULO = AR.COD_ARTICULO',
'            AND   AR.COD_MARCA = MA.COD_MARCA(+)',
'            AND   AR.COD_LINEA = LI.COD_LINEA(+)',
'            AND   AR.COD_CATEGORIA= LI.COD_CATEGORIA(+)',
'            AND   AR.COD_EMPRESA = LI.COD_EMPRESA(+)',
'            AND   AR.COD_FAMILIA = FA.COD_FAMILIA(+)',
'            AND   AR.COD_EMPRESA = FA.COD_EMPRESA(+)',
'            AND   AR.COD_DIVISION = FA.COD_DIVISION(+)',
'            AND   AR.COD_CATEGORIA = CA.COD_CATEGORIA',
'            AND   AR.COD_EMPRESA = CA.COD_EMPRESA(+)',
'            AND   AR.COD_FAMILIA = CA.COD_FAMILIA(+)',
'            AND   AR.COD_PAIS_ORIGEN = PA.COD_PAIS',
'            AND   CC.COD_EMPRESA=OT.COD_EMPRESA',
'            AND   CC.SER_OT=OT.SER_COMPROBANTE',
'            AND   CC.NRO_OT=OT.NRO_COMPROBANTE',
'            AND   OT.TIP_COMPROBANTE=''ORT''',
'            ; ',
'    exception',
'        when others then',
'             raise_application_error(-20000, sqlerrm );',
'    end;',
'ELSE',
':P722_NRO_FICHA     :=NULL;',
':P722_FECHA_INCIO   :=NULL;',
':P722_ESTADO        :=NULL;',
':P722_COD_ARTICULO  :=NULL;',
':P722_DESCRIPCION   :=NULL;',
':P722_COD_ART_CORTO :=NULL;',
':P722_LINEA         :=NULL;',
':P722_FAMILIA       :=NULL;',
':P722_CATEGORIA     :=NULL;',
':P722_MARCA         :=NULL;',
':P722_ORIGEN        :=NULL;',
':P722_OT            :=NULL;',
':P722_GARANTIA      :=NULL;',
':P722_REFERENCIA    :=NULL;',
':P722_DESTINO       :=NULL;',
'/*',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_ORDENES_REPUESTOS_PEDIDOS''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_ORDENES_REPUESTOS_UTILIZADOS'');',
'*/',
'END IF;'))
,p_attribute_02=>'P722_ID_REGISTRO'
,p_attribute_03=>'P722_NRO_FICHA,P722_FECHA_INCIO,P722_ESTADO,P722_COD_ARTICULO,P722_DESCRIPCION,P722_COD_ART_CORTO,P722_LINEA,P722_FAMILIA,P722_CATEGORIA,P722_MARCA,P722_ORIGEN,P722_OT,P722_GARANTIA, P722_REFERENCIA, P722_DESTINO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(274732169094854135)
,p_name=>'da_rechaza'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P722_RECHAZA'
,p_condition_element=>'P722_RECHAZA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274732282854854136)
,p_event_id=>wwv_flow_imp.id(274732169094854135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de rechazar el producto &P722_RECHAZA. ?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274732525798854139)
,p_event_id=>wwv_flow_imp.id(274732169094854135)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274732382229854137)
,p_event_id=>wwv_flow_imp.id(274732169094854135)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' BEGIN',
'      update CA_PEDIDO_REPUESTO_det d',
'         set d.cantidad_confirmada    = 0,',
'             d.verificado             = ''S'',',
'             D.CANTIDAD_OT            = 0,',
'             d.cod_motivo_devolucion  = ''02'',',
'             d.descripcion_devolucion = ''RECHAZO DE REPUESTO'' ,',
'             USUARIO_RECHAZO          = :APP_USER,',
'             D.FECHA_RECHAZO          = SYSDATE',
'       where d.cod_empresa = NVL(:P_COD_EMPRESA,''1'')',
'         and d.tip_comprobante = ''PER''',
'         and d.ser_comprobante = ''A''',
'         and d.nro_comprobante||''-''||D.COD_ARTICULO  = :P722_RECHAZA',
'         and nvl(d.Trasladado, ''N'') <> ''S'';',
'',
'         ',
'     pkg_pvcalidad.registra_seguimiento(NVL(:P_COD_EMPRESA,''1''),:P722_ID_REGISTRO,''Repuesto Rechazado: ''||:P722_RECHAZA);',
'',
'     pkg_pvcalidad.VERIFICA_ESTADO(:P722_ID_REGISTRO);',
'',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;'))
,p_attribute_02=>'P722_RECHAZA,P722_ID_REGISTRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274732661001854140)
,p_event_id=>wwv_flow_imp.id(274732169094854135)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();',
'                      ',
' apex.region("rep_sol").refresh();  ',
' ',
' apex.region("historial").refresh();  ',
'/*',
'apex.navigation.dialog.close(true);',
'  apex.region("reg_grilla").refresh();  */',
'',
'',
'',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(274733647588854150)
,p_name=>'da_confirma'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(273705247972399533)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>' $v(''P722_CANT_SOL'') !=="" && $v(''P722_COD_ARTICULO_SOL'') !== "" && $v(''P722_SUCURSAL_SOL'') !== ""'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277122068165416405)
,p_event_id=>wwv_flow_imp.id(274733647588854150)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar un Repuesto, Sucursal y la cantidad que va a solicitar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277124907958416434)
,p_event_id=>wwv_flow_imp.id(274733647588854150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    DUMMY VARCHAR2(1);',
'BEGIN',
'    select DISTINCT ''1''',
'      into DUMMY',
'      from  st_existencia_art s',
'     where s.cod_empresa = NVL(:P_COD_EMPRESA,''1'')',
'       and s.cod_sucursal = :P722_SUCURSAL_SOL',
'       and s.cod_articulo = :P722_COD_ARTICULO_SOL',
'       and nvl(s.cant_dispon, 0) > 0 ;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN        ',
'        raise_application_error(-20000, ''Repuesto si existencia en el Deposito: '' ||:P722_SUCURSAL_SOL);',
'    WHEN OTHERS THEN ',
'        raise_application_error(-20000, sqlerrm );',
'END;'))
,p_attribute_02=>'P722_COD_ARTICULO_SOL,P722_SUCURSAL_SOL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277121716187416402)
,p_event_id=>wwv_flow_imp.id(274733647588854150)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277121608161416401)
,p_event_id=>wwv_flow_imp.id(274733647588854150)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P722_COD_ARTICULO_SOL IS NULL THEN ',
'    raise_application_error(-20000, ''Debe seleccionar el Repuesto a Solicitar.'' );',
'ELSE',
'    IF NVL(:P722_CANT_SOL,0)=0  THEN',
'        raise_application_error(-20000, ''Debe cargar la Cantidad el Repuesto a Solicitar.'' );',
'    ELSE',
'            DECLARE',
'                Vmsj VARCHAR2(3200);',
'            BEGIN',
'              inv.pkg_pvcalidad.solicita_repuestos(pi_cod_empresa => NVL(:P_COD_EMPRESA,''1''),',
'                                                   pi_id_registro => :P722_ID_REGISTRO,',
'                                                   pi_cod_articulo => :P722_COD_ARTICULO_SOL,',
'                                                   pi_cantidad => :P722_CANT_SOL,',
'                                                   pi_suc_salida => :P722_SUCURSAL_SOL,',
'                                                   po_msj => Vmsj);',
'',
'                IF NVL(Vmsj,''201'')<>''200'' THEN',
'                    raise_application_error(-20000, Vmsj );',
'                END IF ;',
'            EXCEPTION',
'                WHEN OTHERS THEN                    ',
'                    raise_application_error(-20000, SQLERRM );',
'            END;',
'    END IF;    ',
'END IF;',
''))
,p_attribute_02=>'P722_ID_REGISTRO,P722_CANT_SOL,P722_COD_ARTICULO_SOL,P722_SUCURSAL_SOL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277122154124416406)
,p_event_id=>wwv_flow_imp.id(274733647588854150)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(273704839469399529)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277121878601416403)
,p_event_id=>wwv_flow_imp.id(274733647588854150)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();',
'',
'apex.region("rep_sol").refresh(); apex.region("historial").refresh();     ',
'                       ',
'',
'',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(277122930434416414)
,p_name=>'DA_CERRAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(277122467790416409)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>' $v(''P722_DESTINO_FIN'') !=="" &&   $v(''P722_OBSERVACION_FIN'') !== "" &&   $v(''P722_SUCURSAL_DESTINO'') !== ""'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277123337096416418)
,p_event_id=>wwv_flow_imp.id(277122930434416414)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe seleccionar el Destino, Sucursal y cagar el comentario como resultado de la verificaci\00F3n.')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277123185049416416)
,p_event_id=>wwv_flow_imp.id(277122930434416414)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277123025574416415)
,p_event_id=>wwv_flow_imp.id(277122930434416414)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_MSJ VARCHAR(32000);',
'BEGIN',
'    ',
'      inv.pkg_pvcalidad.finaliza_verificacion(p_cod_empresa => NVL(:p_cod_empresa,''1''),',
'                                              p_id_registro => :P722_ID_REGISTRO,',
'                                              p_destino => :P722_DESTINO_FIN,',
'                                              p_suc_destino => :P722_SUCURSAL_DESTINO,',
'                                              p_observacion => :P722_OBSERVACION_FIN,',
'                                              p_msj => V_msj);',
'    IF V_MSJ<>''200'' THEN',
'         raise_application_error(-20000, V_MSJ );',
'',
'    ELSE',
'        declare',
'            vnro varchar2(30);',
'        begin',
'                   select max(nro_comprobante)',
'                    into vnro',
'                   from  inv.ca_control_calidad_ref',
'                    where  cod_empresa = nvl(:P_cod_empresa,''1'') ',
'                   ---- and tip_comprobante = ''FCD''',
'                    and ser_comprobante = ''A''',
'                    and ID_REGISTRO = :P722_ID_REGISTRO',
'                      ;',
'',
'     :P722_URL_FIN:= inv.pkg_pvcalidad.genera_url( NVL(:P_COD_EMPRESA,''1''),:P722_ID_REGISTRO,vnro); ',
'        exception',
'        when others then  ',
'            null;',
'        end;',
'      ',
'    END IF;',
'END;'))
,p_attribute_02=>'P722_ID_REGISTRO,P722_DESTINO_FIN,P722_SUCURSAL_DESTINO,P722_OBSERVACION_FIN'
,p_attribute_03=>'P722_URL_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277123280481416417)
,p_event_id=>wwv_flow_imp.id(277122930434416414)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();',
' ',
'  ',
'',
'  var url= $v(''P722_URL_FIN''); ',
' if ( url !=="")',
' {      ',
'    apex.navigation.openInNewWindow( url);',
'    /*apex.navigation.dialog.close(true)*/',
' };'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183087197808712048)
,p_event_id=>wwv_flow_imp.id(277122930434416414)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(277125190076416436)
,p_name=>'da_btn_ver'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(277125087346416435)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277125299088416437)
,p_event_id=>wwv_flow_imp.id(277125190076416436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' :P722_URL_FIN:= inv.pkg_pvcalidad.genera_url(pi_cod_empresa => NVL(:P_COD_EMPRESA,''1''),',
'                                          pi_id_registro => :P722_ID_REGISTRO);',
' '))
,p_attribute_02=>'P722_ID_REGISTRO'
,p_attribute_03=>'P722_URL_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277125330921416438)
,p_event_id=>wwv_flow_imp.id(277125190076416436)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();',
' ',
'',
'  ',
' var url= $v(''P722_URL_FIN''); ',
' if ( url !=="") { ',
'    apex.navigation.openInNewWindow(url); ',
' };',
'',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(183085326718712030)
,p_name=>'da_fin_despiece'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(273703611366399517)
,p_condition_element=>'P722_ESTADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'CERRADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183085548327712032)
,p_event_id=>wwv_flow_imp.id(183085326718712030)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'    VERROR EXCEPTION;',
'    Vmsj  VARCHAR2(3500);',
'    VAJS VARCHAR2(500);',
'    VREMI VARCHAR2(500);',
'  BEGIN',
'    ',
'      inv.pkg_pvcalidad.genera_salida_ajs( NVL(:p_cod_empresa,''1''), :P722_ID_REGISTRO, :P722_COD_ARTICULO,VAJS, Vmsj);',
'      IF Vmsj<>''200'' THEN',
'        RAISE VERROR;',
'      END IF;',
'',
'      inv.pkg_pvcalidad.genera_remision(NVL(:p_cod_empresa,''1''), :P722_ID_REGISTRO, :P722_COD_ARTICULO,VREMI, Vmsj);',
'',
'      IF Vmsj<>''200'' THEN',
'        RAISE VERROR;',
'      END IF;',
'    ',
unistr('    :P722_MSJ:=''Proceso de forma Exitosa.''||chr(10)||''Ajuste N\00B0: ''||VAJS||chr(10)||''Remision N\00B0: ''||VREMI;'),
'EXCEPTION',
'WHEN VERROR THEN',
'    :P722_MSJ:=Vmsj;',
'     raise_application_error(-20000, Vmsj );',
'WHEN OTHERS THEN ',
'    :P722_MSJ:=sqlerrm;',
'    raise_application_error(-20000, sqlerrm );',
'END ;'))
,p_attribute_02=>'P722_COD_ARTICULO,P722_ID_REGISTRO'
,p_attribute_03=>'P722_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183085757810712034)
,p_event_id=>wwv_flow_imp.id(183085326718712030)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'&P722_MSJ.'
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183085447333712031)
,p_event_id=>wwv_flow_imp.id(183085326718712030)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(340399559078114127)
,p_name=>'DA_IRA'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P722_IR_A'
,p_condition_element=>'P722_IR_A'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(340399868281114130)
,p_event_id=>wwv_flow_imp.id(340399559078114127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();',
' ',
'',
'  ',
' var url= $v(''P722_IR_A''); ',
' if ( url !=="") { ',
'    apex.navigation.openInNewWindow(url); ',
' };',
'',
' '))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(273704442242399525)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SETEA_VALORES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P722_ID_REGISTRO IS NOT NULL THEN',
'    begin',
'            SELECT CC.ID_REGISTRO,       CC.FECHA_ALTA,       CC.ESTADO,       AR.COD_ARTICULO,       AR.COD_ART_CORTO,       AR.DESCRIPCION,       ',
'                   NVL(MA.COD_MARCA||'' - ''||MA.DESCRIPCION,'''')MARCA,       NVL(LI.COD_LINEA||'' - ''||LI.DESCRIPCION,'''')LINEA,       NVL(FA.COD_FAMILIA||'' - ''||FA.DESCRIPCION,'''')FAMILIA,',
'                   NVL(CA.COD_CATEGORIA||'' - ''||CA.DESCRIPCION,'''')CATEGORIA,              upper(PA.DESCRIPCION) origen,   cc.ser_ot||'' - ''||cc.nro_ot ot, NVL(OT.GARANTIA_OT,OT.GARANTIA)',
'                   ,tipo_ref ||''-''||ser_ref  ||''-''||nro_ref, CC.DESTINO, CC.FECHA_CIERRE',
'            INTO',
'                   :P722_NRO_FICHA, :P722_FECHA_INCIO, :P722_ESTADO, :P722_COD_ARTICULO, :P722_COD_ART_CORTO, :P722_DESCRIPCION,',
'                   :P722_MARCA, :P722_LINEA, :P722_FAMILIA, :P722_CATEGORIA,  :P722_ORIGEN, :P722_OT, :P722_GARANTIA, :P722_REFERENCIA, :P722_DESTINO, :P722_FECHA_CIERRE',
'            FROM CA_CONTROL_CALIDAD CC,',
'                 ST_ARTICULOS AR,',
'                 ST_MARCAS MA,',
'                 ST_LINEA LI,',
'                 ST_FAMILIA FA,',
'                 ST_CATEGORIAS CA,',
'                 PAISES PA,     ',
'                 VT_ORDENES_TRABAJO OT',
'            WHERE ID_REGISTRO= :P722_ID_REGISTRO',
'            AND   CC.COD_EMPRESA=''1''',
'            AND   CC.COD_EMPRESA = AR.COD_EMPRESA',
'            AND   CC.COD_ARTICULO = AR.COD_ARTICULO',
'            AND   AR.COD_MARCA = MA.COD_MARCA(+)',
'            AND   AR.COD_LINEA = LI.COD_LINEA(+)',
'            AND   AR.COD_CATEGORIA= LI.COD_CATEGORIA(+)',
'            AND   AR.COD_EMPRESA = LI.COD_EMPRESA(+)',
'            AND   AR.COD_FAMILIA = FA.COD_FAMILIA(+)',
'            AND   AR.COD_EMPRESA = FA.COD_EMPRESA(+)',
'            AND   AR.COD_DIVISION = FA.COD_DIVISION(+)',
'            AND   AR.COD_CATEGORIA = CA.COD_CATEGORIA',
'            AND   AR.COD_EMPRESA = CA.COD_EMPRESA(+)',
'            AND   AR.COD_FAMILIA = CA.COD_FAMILIA(+)',
'            AND   AR.COD_PAIS_ORIGEN = PA.COD_PAIS',
'            AND   CC.COD_EMPRESA=OT.COD_EMPRESA',
'            AND   CC.SER_OT=OT.SER_COMPROBANTE',
'            AND   CC.NRO_OT=OT.NRO_COMPROBANTE',
'            AND   OT.TIP_COMPROBANTE=''ORT''',
'            ; ',
'    exception',
'        when others then',
'             raise_application_error(-20000, sqlerrm );',
'    end;',
'ELSE',
':P722_NRO_FICHA     :=NULL;',
':P722_FECHA_INCIO   :=NULL;',
':P722_ESTADO        :=NULL;',
':P722_COD_ARTICULO  :=NULL;',
':P722_DESCRIPCION   :=NULL;',
':P722_COD_ART_CORTO :=NULL;',
':P722_LINEA         :=NULL;',
':P722_FAMILIA       :=NULL;',
':P722_CATEGORIA     :=NULL;',
':P722_MARCA         :=NULL;',
':P722_ORIGEN        :=NULL;',
':P722_OT            :=NULL;',
':P722_GARANTIA      :=NULL;',
':P722_REFERENCIA    :=NULL;',
':P722_DESTINO       :=NULL;',
'/*',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_ORDENES_REPUESTOS_PEDIDOS''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_ORDENES_REPUESTOS_UTILIZADOS'');',
'*/',
'END IF;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(274732873464854142)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RECEPCIONAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_nro_comprobante VARCHAR2(50); ',
'    v_codigo_articulo VARCHAR2(50); ',
'BEGIN',
'    v_nro_comprobante := apex_application.g_x01;',
'    v_codigo_articulo := apex_application.g_x02;   ',
'    ---raise_application_error(-20000, v_nro_comprobante||''-''|| v_codigo_articulo||''-''|| :P722_ID_REGISTRO);',
'     pkg_pvcalidad.recepciona_detalle(p_cod_empresa => NVL(:p_cod_empresa,''1''),',
'                                           p_nro_pedido => v_nro_comprobante,',
'                                           p_id_registro => :P722_ID_REGISTRO,',
'                                           p_cod_articulo => v_codigo_articulo);',
' ',
'          apex_json.open_object;',
'          apex_json.write(''success'', TRUE); ',
'          apex_json.close_object; ',
'',
'EXCEPTION',
'  WHEN OTHERS THEN ',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE); ',
'    apex_json.write(''message'', sqlerrm); ',
'    apex_json.close_object;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('No se pudo confirmar la recepci\00F3n.')
,p_process_success_message=>unistr('Recepci\00F3n generada.')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(277124739315416432)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DEVOLVER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_codigo_articulo   VARCHAR2(50); ',
'    v_suc_destino       VARCHAR2(15); ',
'    v_cantidad          NUMBER;',
'',
'BEGIN',
'    v_codigo_articulo := apex_application.g_x01;     ',
'    v_cantidad        := apex_application.g_x02;',
'    v_suc_destino     := apex_application.g_x03;   ',
'    ',
'          pkg_pvcalidad.devolver(p_cod_empresa => NVL(:p_cod_empresa,''1''),',
'                                 p_suc_destino => v_suc_destino,',
'                                 p_cod_articulo => v_codigo_articulo,',
'                                 p_cantidad => v_cantidad,',
'                                 p_id_registro => :P722_ID_REGISTRO); ',
' ',
'          apex_json.open_object;',
'          apex_json.write(''success'', TRUE); ',
'          apex_json.close_object; ',
'',
'EXCEPTION',
'  WHEN OTHERS THEN ',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE); ',
'    apex_json.write(''message'', sqlerrm); ',
'    apex_json.close_object;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('No se pudo confirmar la recepci\00F3n.')
,p_process_success_message=>unistr('Recepci\00F3n generada.')
);
wwv_flow_imp.component_end;
end;
/
