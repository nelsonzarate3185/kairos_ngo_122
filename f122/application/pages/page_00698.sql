prompt --application/pages/page_00698
begin
--   Manifest
--     PAGE: 00698
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
 p_id=>698
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Rendici\00F3n de Viaticos')
,p_alias=>unistr('RENDICI\00D3N-DE-VIATICOS')
,p_step_title=>unistr('Rendici\00F3n de Viaticos')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
' formatMiles(''P698_MONTO_E''); ',
' formatMiles(''P698_MONTO_5''); ',
' formatMiles(''P698_MONTO_10''); ',
' ',
' function rechaza(pid){   ',
'     $s(''P698_RECHAZA'',pid); ',
' } ',
'',
'',
' function aprueba(pid){   ',
'     $s(''P698_APRUEBA'',pid); ',
' } ',
'',
'',
' function  proveedor_css()',
'{  ',
'      $(''td[headers="COD"]'').each(function() {  ',
'        if ( $(this).text() === ''NN'' ) { ',
'            $(this).css({"background-color":"#f8c4bc"}); ',
'        }',
'      })  ',
'}',
'',
'',
' ',
' function  estado_css()',
'{  ',
'      $(''td[headers="ESTADO"]'').each(function() {  ',
'        if ( $(this).text() === ''PENDIENTE'' ) {',
'            $(this).css({"background-color":"#f0f3bd"});',
'        }',
'        if ( $(this).text() === ''RECHAZADO'' ) {',
'            $(this).css({"background-color":"#ff5636"});',
'        } ',
'        if ( $(this).text() === ''VERIFICADO'' ) {',
'            $(this).css({"background-color":"lightgreen"});',
'        } ',
'        if ( $(this).text() === ''RENDIDO'' ) {',
'            $(this).css({"background-color":"#aec3b0"}); ',
'        }',
'        if ( $(this).text() === ''PROCESADO'' ) {',
'            $(this).css({"background-color":"#f5cb5c"});',
'        }',
'/*',
'',
'        if ( $(this).text() === ''ENTREGADO'' ) { ',
'            $(this).css({"background-color":"lightblue"}); ',
'        }',
'       ',
'         if ( $(this).text() === ''FINALIZADO'' ) {',
'            $(this).css({"background-color":"#9eb3c2"});',
'        }',
'*/ ',
'        });',
'        ',
'}',
'',
'',
' ',
'function zoom(){',
' var divlClass=$(''#imgdiv'').attr(''class'');',
' if (divlClass==="ex"){',
' $(''#imgdiv'').css(''cursor'',''zoom-in'');}else',
' if ( divlClass=== "exZoom" ) {',
' $(''#imgdiv'').css(''cursor'',''zoom-out'');}',
' }',
'',
'',
'function my_class(){',
' var divlClass= $(''#imgdiv'').attr(''class'');',
' if(divlClass=== "ex"){',
' $("#imgdiv").removeClass("ex");',
' $("#upimag").removeClass("ex");',
' $("#imgdiv").addClass("exZoom");',
' $("#upimag").addClass("exZoom");} else',
' if(divlClass==="exZoom"){',
' $("#imgdiv").removeClass("exZoom");',
' $("#upimag").removeClass("exZoom");',
' $("#imgdiv").addClass("ex");',
' $("#upimag").addClass("ex");}',
' }'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #e9ffbf !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only {',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
'',
'',
'#PARAM{    ',
'  background-color: #487ab8  !important;',
'}',
'/*',
'#btndet{',
'  background-color: #004e89; ',
'  color: #ffe45e; ',
'}',
'*/',
' #sinstock{ background-color: #f8c4bc;}',
'',
'',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'',
'',
'  .tabla_color   td.t-Report-cell , .t-Form-label  {',
'  color: #003a85  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #fff6a4  !important;',
'  color: #003a85  !important;',
'  border-color: #487ab8;',
'}',
'',
' .a-IRR-header{',
'      background-color: #fff6a4  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #fff6a4  !important;',
'	  color: #003a85 !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
'',
'.ex, img',
'    {',
'    height:100% ;',
'    width:100%;',
'    padding:0px ;',
'    }',
'',
'.exZoom ',
'    {',
'    height:1000px;',
'    width:1000px;',
'    padding:0px;',
'    }',
' ',
' #imgdiv  .t-Report-colHead {display: none;}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'PABLOALV'
,p_last_upd_yyyymmddhh24miss=>'20250322102304'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237088582219215135)
,p_plug_name=>'FILTROS'
,p_region_name=>'PARAM'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237088965723215139)
,p_plug_name=>'COMPROBANTES REGISTRADOS'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  SER,',
'        NRO,',
'        SOLICITANTE,',
'        COD_PROVEEDOR,',
'        PROV,',
'        RUC,',
'        NRO_FACTURA,',
'        IND_FACT_ELECT,',
'        FECHA,',
'        NRO_TIMBRADO,',
'        VTO_TIMBRADO,',
'        MONTO,',
'        CONCEPTO,',
'        CASE ESTADO ',
'            WHEN ''P'' THEN ''PENDIENTE''',
'            WHEN ''R'' THEN ''RENDIDO''',
'            WHEN ''C'' THEN ''VERIFICADO''',
'            WHEN ''A'' THEN ''RECHAZADO''',
'            WHEN ''F'' THEN ''PROCESADO''',
'        ELSE',
'            ''-NN-''',
'        END ESTADO',
'        ,ID_RENDICION ',
'        ,''<button  type="button"  id="btndet" onclick=aprueba(''''''||ID_RENDICION||'''''') ''||DECODE(ESTADO,''P'','''', '' disabled'')||''><i class="fa fa-check"></i></button>'' Confirma',
'        ,''<button  type="button"  id="btndet" onclick=rechaza(''''''||ID_RENDICION||'''''') ''||DECODE(ESTADO,''P'','''', DECODE(ESTADO,''R'','''','' disabled''))||''><i class="fa fa-close"></i></button>'' Rechaza',
'        ,null img',
'',
'/* , decode(ESTADO,''R'', ''<button  type="button"  id="btndet" ''||DECODE(C003,''APROBADO'','' onclick="entregar_vale(1, ''''''||C004||'''''', ''''''||C001||'''''')"'' ,'' disabled'')||''>ENTREGAR</button>''        ,',
'              C013 ',
'            )',
'        COD_PERSONA',
'        FECHA_VIATICO',
'        FEC_AUTORIZA_VIATICO',
'        FEC_ENTREGA_VIATICO',
'        ESTADO_VIATICO',
'*/',
'FROM vw_viaticos_rend',
'where SER is not null',
' and  NRO is not null',
'and (/*:P698_PERSONA IS NULL OR*/ cod_persona = :P698_PERSONA )',
'and   (:P698_SER_VIATICO IS NULL OR SER = :P698_SER_VIATICO )',
'and   (:P698_NRO_VIATICO IS NULL OR NRO = :P698_NRO_VIATICO )',
'and   (:P698_ESTADO IS NULL OR ESTADO = :P698_ESTADO )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P698_PERSONA,P698_SER_VIATICO,P698_NRO_VIATICO,P698_ESTADO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>' '
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COMPROBANTES REGISTRADOS'
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
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="divcol">',
'    <strong>  ',
'        <label id="sinstock">&nbsp "NN"= Proveedor inexistente &nbsp</label>      ',
'    </strong>',
'</div>'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(245775490469543511)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>245775490469543511
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245775585444543512)
,p_db_column_name=>'SER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Ser'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245775635050543513)
,p_db_column_name=>'NRO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('N\00BA Viatico')
,p_column_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33:P33_NRO_COMPROBANTE,P33_SER_COMPROBANTE:#NRO#,#SER#'
,p_column_linktext=>'#NRO#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245775712968543514)
,p_db_column_name=>'SOLICITANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Solicitante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245775863680543515)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod'
,p_column_type=>'STRING'
,p_static_id=>'COD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245775920882543516)
,p_db_column_name=>'PROV'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245776094933543517)
,p_db_column_name=>'NRO_FACTURA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('N\00BA Factura')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245776166705543518)
,p_db_column_name=>'FECHA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245776290364543519)
,p_db_column_name=>'MONTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245776304037543520)
,p_db_column_name=>'CONCEPTO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Concepto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245776430009543521)
,p_db_column_name=>'ESTADO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'ESTADO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245777301630543530)
,p_db_column_name=>'RUC'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245777482922543531)
,p_db_column_name=>'IND_FACT_ELECT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fact.Elect.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245777513022543532)
,p_db_column_name=>'NRO_TIMBRADO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Nro Timbrado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245777697724543533)
,p_db_column_name=>'VTO_TIMBRADO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Vto Timbrado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245777757765543534)
,p_db_column_name=>'ID_RENDICION'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Id Rendicion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(246561904725036947)
,p_db_column_name=>'CONFIRMA'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Aprueba'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(246562067718036948)
,p_db_column_name=>'RECHAZA'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Rechaza'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(247573047498287302)
,p_db_column_name=>'IMG'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Img'
,p_column_link=>'javascript:$s(''P698_VER_IMG'',''#ID_RENDICION#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-photo"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(246185708108539001)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2461858'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SER:NRO:COD_PROVEEDOR:PROV:RUC:FECHA:NRO_FACTURA:NRO_TIMBRADO:VTO_TIMBRADO:MONTO:CONCEPTO:IND_FACT_ELECT:ESTADO:CONFIRMA:RECHAZA:IMG:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237089062034215140)
,p_plug_name=>'CARGA DE FACTURA'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(245778216986543539)
,p_plug_name=>'Rechazar Rendicion'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(247572955932287301)
,p_plug_name=>'VISUALIZAR IMAGEN'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size600x400:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div align="center">',
'    <div id="imgdiv" class="ex">',
'    	<img alt="" class="ex" id="upimag" onclick="my_class(); zoom();" onmouseover="zoom();" src="#" />',
' 	</div>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(261416115910282906)
,p_name=>'RESUMEN'
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  CONCEPTO, SUM(TOTAL_GASTO)TOTAL_GASTO,SUM(TOT_PRESUP) TOT_PRESUP',
'FROM (',
'select   C.CONCEPTO,SUM(C.MONTO) TOTAL_GASTO, 0 TOT_PRESUP',
'from VW_VIATICOS_REND c ',
'WHERE C.SER||C.NRO  in (  select DISTINCT  T.SER_COMPROBANTE||T.NRO_COMPROBANTE ',
'            from CP_VALES t',
'            where t.cod_empresa = :P_COD_EMPRESA',
'            and   t.cod_persona = :P698_PERSONA',
'            and   t.estado in (''ENTREGADO'')',
'            AND  ROWNUM=1) ',
'and c.estado<>''A''            ',
'GROUP BY  C.CONCEPTO',
'UNION ALL',
'SELECT   CC.DESCRIPCION CONCEPTO, 0  TOTAL_GASTO, SUM(D.TOTAL)TOT_PRESUP',
'FROM CP_VALES_DET D,',
'     CP_CONCEPTO_VIATICO CC',
'WHERE D.COD_EMPRESA= :P_COD_EMPRESA',
'and D.SER_COMPROBANTE||D.NRO_COMPROBANTE  in (  select DISTINCT  T.SER_COMPROBANTE||T.NRO_COMPROBANTE ',
'            from CP_VALES t',
'            where t.cod_empresa = :P_COD_EMPRESA',
'            and   t.cod_persona = :P698_PERSONA',
'            and   t.estado in (''ENTREGADO'')',
'            AND  ROWNUM=1) ',
'AND D.COD_CONCEPTO=CC.COD_CONCEPTO',
'GROUP BY D.COD_CONCEPTO, CC.DESCRIPCION',
')GROUP BY   CONCEPTO  ',
' order by 1 asc',
'',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P698_PERSONA'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total:'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(261417052358282915)
,p_query_column_id=>1
,p_column_alias=>'CONCEPTO'
,p_column_display_sequence=>10
,p_column_heading=>'Concepto'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(261417176270282916)
,p_query_column_id=>2
,p_column_alias=>'TOTAL_GASTO'
,p_column_display_sequence=>20
,p_column_heading=>'Total Gasto'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(261417263884282917)
,p_query_column_id=>3
,p_column_alias=>'TOT_PRESUP'
,p_column_display_sequence=>30
,p_column_heading=>'Total Presup.'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(245778518330543542)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(245778216986543539)
,p_button_name=>'RECHAZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-ban'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(237090097484215150)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(237089062034215140)
,p_button_name=>'Confirmar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(237089147642215141)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(237088965723215139)
,p_button_name=>'agregar_gastos'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Gasto'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-43-text u-color-21-bg'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237088668386215136)
,p_name=>'P698_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(237088582219215135)
,p_prompt=>'Colaborador:'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS_VIATICO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.NOMBRE , P.cod_persona ',
'				  FROM PERSONAS P ',
'				 WHERE  ( nvl((',
'BUSCA_PERMISO(:P_COD_EMPRESA,''CPSVALES'',:APP_USER,''VER_PERSONAS'')),''N'')=''S'' AND EXISTS (select DISTINCT ''1''',
'                                from cp_vales c',
'                                where c.cod_empresa=:P_COD_EMPRESA',
'                                and c.Cod_Persona=P.Cod_Persona ',
'                                 ',
'                                 )',
'                    )',
'                  ',
'union all',
'    SELECT P.NOMBRE , P.cod_persona ',
'    FROM PERSONAS P ',
'    WHERE exists ',
'         (',
'                             select   DISTINCT ''1''',
'                                  from ASP$USUA0100 u',
'                                  where U.USRN = :APP_USER',
'                                  and  u.cod_persona =  P.cod_persona ',
'                                   UNION ALL',
'                                  select  DISTINCT ''1''',
'                                  from usuarios u1',
'                                  where cod_usuario = :APP_USER',
'                                  and  u1.cod_persona= P.cod_persona ',
'                        )',
'',
'ORDER BY 1 ASC'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237088760213215137)
,p_name=>'P698_SER_VIATICO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(237088582219215135)
,p_prompt=>'Serie Viatico'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(237088824653215138)
,p_name=>'P698_NRO_VIATICO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(237088582219215135)
,p_prompt=>unistr('N\00BA Viatico')
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
 p_id=>wwv_flow_imp.id(237089413201215144)
,p_name=>'P698_PROVEEDOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(237089062034215140)
,p_prompt=>'Codigo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROV_REND_VIATICOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  nvl(NOM_RAZ_SOC_PROV,p.nombre)nombre, NVL(R.numero ,'''')RUC, NVL(i.numero ,'''')CI, pr.cod_proveedor ',
'from personas p,',
'     cm_proveedores pr, ',
'     ident_personas R,',
'     ident_personas i',
'where pr.cod_empresa= ''1''',
'and pr.cod_persona = p.cod_persona ',
'and pr.cod_persona = p.cod_persona',
'AND PR.ESTADO <> ''I''',
'and p.cod_persona = i.cod_persona(+)',
'and p.cod_persona = R.cod_persona(+)',
'AND I.COD_IDENT(+)=''CI''',
'AND R.COD_IDENT(+)=''RUC''',
'order by nombre',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
,p_attribute_08=>'500'
,p_attribute_09=>'500'
,p_attribute_10=>'NOMBRE:P698_NOM_PROVEEDOR,RUC:P698_RUC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237089587298215145)
,p_name=>'P698_NRO_COMPROBANTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(237089062034215140)
,p_prompt=>unistr('N\00BA Comprobante')
,p_placeholder=>'000-000-0000000'
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
 p_id=>wwv_flow_imp.id(237089662121215146)
,p_name=>'P698_SER_ADD'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(237089062034215140)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237089713241215147)
,p_name=>'P698_FECHA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(237089062034215140)
,p_prompt=>'Fecha'
,p_placeholder=>'DD/MM/AAAA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
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
 p_id=>wwv_flow_imp.id(237089840879215148)
,p_name=>'P698_MONTO_E'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(237089062034215140)
,p_prompt=>'Importe Exento'
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
 p_id=>wwv_flow_imp.id(237089907392215149)
,p_name=>'P698_NRO_ADD'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(237089062034215140)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245774929784543506)
,p_name=>'P698_CONCEPTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(237089062034215140)
,p_prompt=>'Concepto'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   DESCRIPCION ,',
'         COD_CONCEPTO ',
'from INV.CP_CONCEPTO_VIATICO t',
'where exists (select distinct ''1''',
'            from cp_vales_det d',
'            where d.cod_empresa= :P_COD_EMPRESA',
'            and   d.ser_comprobante= :P698_SER_ADD',
'            and   d.nro_comprobante= :P698_NRO_ADD',
'            and   d.cod_concepto= t.cod_concepto)',
'OR t.cod_concepto = ''5'''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P698_SER_ADD,P698_NRO_ADD'
,p_ajax_items_to_submit=>'P698_SER_ADD,P698_NRO_ADD'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245776591180543522)
,p_name=>'P698_TIMBRADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(237089062034215140)
,p_prompt=>unistr('N\00BA Timbrado')
,p_placeholder=>'12345678'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_tag_css_classes=>'allow_only_numbers'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245776664031543523)
,p_name=>'P698_VTO_TIMBRADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(237089062034215140)
,p_prompt=>'Fec. Vto. Timbrado'
,p_placeholder=>'DD/MM/AAAA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245776789012543524)
,p_name=>'P698_NOM_PROVEEDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(237089062034215140)
,p_prompt=>'Nombre Proveedor'
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
 p_id=>wwv_flow_imp.id(245776861941543525)
,p_name=>'P698_RUC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(237089062034215140)
,p_prompt=>'RUC'
,p_placeholder=>'0000000-0'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245776975067543526)
,p_name=>'P698_MONTO_10'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(237089062034215140)
,p_prompt=>'Importe Gravado 10%'
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
 p_id=>wwv_flow_imp.id(245777058314543527)
,p_name=>'P698_MONTO_5'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(237089062034215140)
,p_prompt=>'Importe Gravado 5%'
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
 p_id=>wwv_flow_imp.id(245777131299543528)
,p_name=>'P698_FACT_ELECT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(237089062034215140)
,p_prompt=>unistr('Factura Electr\00F3nica')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SI;S,NO;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245777948150543536)
,p_name=>'P698_RECHAZA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(237088582219215135)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245778316640543540)
,p_name=>'P698_MOTIVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(245778216986543539)
,p_prompt=>'Motivo de Rechazo:'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
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
 p_id=>wwv_flow_imp.id(246562197979036949)
,p_name=>'P698_APRUEBA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(237088582219215135)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(247573145691287303)
,p_name=>'P698_VER_IMG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(237088582219215135)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(247574053793287312)
,p_name=>'P698_IMAGEN'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(237089062034215140)
,p_prompt=>'Adjuntar Factura'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'REQUEST'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
,p_attribute_15=>'100000'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(261415875304282903)
,p_name=>'P698_CANTIDAD'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(237089062034215140)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onkeydown="return isNumber(event);"'
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
 p_id=>wwv_flow_imp.id(294140134546972117)
,p_name=>'P698_ESTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(237088582219215135)
,p_prompt=>unistr('Estado Rendici\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Distinct  CASE ESTADO ',
'            WHEN ''P'' THEN ''PENDIENTE''',
'            WHEN ''R'' THEN ''RENDIDO''',
'            WHEN ''C'' THEN ''VERIFICADO''',
'            WHEN ''A'' THEN ''RECHAZADO''',
'            WHEN ''F'' THEN ''PROCESADO''',
'        ELSE',
'            ''-NN-''',
'        END ESTADO, ESTADO cod_estado',
'from vw_viaticos_rend'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(247577180791287343)
,p_validation_name=>'va_carga_rend'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P698_CONCEPTO IS NULL THEN',
'    return ''Debe Cargar el Concepto.'' ;',
'END IF;',
'IF :P698_NOM_PROVEEDOR IS NULL THEN',
'    return ''Debe Cargar el Nombre del Proveedor.'' ;',
'end if;',
'',
'IF NVL(:P698_CANTIDAD,0)=0 THEN',
'    return ''Debe Cargar la cantidad.'' ;',
'end if;',
'',
'if :P698_FECHA is null then',
'    return ''Debe cargar la Fecha del Comprobante.'' ;',
'ELSE',
'    IF TO_DATE(:P698_FECHA,''DD/MM/YYYY'')>TRUNC(SYSDATE)THEN',
'        return ''La Fecha del Comprobante no puede ser posterior a la fecha de hoy.'' ;',
'',
'    END IF;',
'end if;',
'',
'',
'if :P698_NRO_COMPROBANTE is null then',
'    return ''Debe cargar el numero de comprobante.'' ;',
'end if;',
'',
'IF :P698_CONCEPTO NOT IN (''2'',''5'',''3'') THEN',
'   IF REGEXP_LIKE(:P698_NRO_COMPROBANTE, ''^\d{3}-\d{3}-\d{7}$'') THEN',
'      NULL;',
'   ELSE',
unistr('      return (''Formato Factura inv\00E1lido'');'),
'   END IF;',
'',
'    IF :P698_RUC IS NULL THEN',
'        return ''Debe Cargar el RUC del Proveedor.'' ;',
'    end if;',
'',
'    if :P698_TIMBRADO is null then',
'        return ''Debe cargar el Numero de Timbrado.'' ;',
'    ELSE',
'        if LENGTH(:P698_TIMBRADO)<>8 then',
'                return ''La cantidad de digitos valido para el Timbrado son 8'' ;',
'        end if; ',
'    end if;',
'',
'    if :P698_VTO_TIMBRADO is null then',
'        return ''Debe cargar la Fecha de Vencimiento del Timbrado.'' ;',
'    end if;',
'',
'END IF;',
'',
'if ( nvl(TO_NUMBER(REPLACE(:P698_MONTO_E,''.'','''')),0)+',
'   nvl(TO_NUMBER(REPLACE(:P698_MONTO_5,''.'','''')),0)+',
'   nvl(TO_NUMBER(REPLACE(:P698_MONTO_10,''.'','''')),0))<=0 then',
'      return ''El importe incorrecto.'' ;',
'end if;',
'',
'',
' DECLARE',
'    VRESP varchar2(500) :=''EXISTE''; /*:=bsperson.valuda_ruc(:P698_RUC);*/',
' BEGIN',
'   IF VRESP <> ''EXISTE''  then ',
'        RETURN VRESP;',
'   END IF; ',
' END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(237090097484215150)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(237089212211215142)
,p_name=>'da_abrir_modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(237089147642215141)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245774777318543504)
,p_event_id=>wwv_flow_imp.id(237089212211215142)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'BEGIN',
'    select DISTINCT  T.SER_COMPROBANTE, T.NRO_COMPROBANTE',
'    INTO :P698_SER_ADD,:P698_NRO_ADD',
'    from CP_VALES t',
'    where t.cod_empresa = :P_COD_EMPRESA',
'    and   t.cod_persona = :P698_PERSONA',
'    and   t.estado in (''ENTREGADO'')',
'    AND  ROWNUM=1;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'         raise_application_error(-20000, ''No Existe Solicitud de Viatico abierta para Rendicion'' );',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, sqlerrm );',
'END;'))
,p_attribute_02=>'P698_PERSONA'
,p_attribute_03=>'P698_SER_ADD,P698_NRO_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245774849141543505)
,p_event_id=>wwv_flow_imp.id(237089212211215142)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P698_PROVEEDOR,P698_NOM_PROVEEDOR,P698_RUC,P698_TIMBRADO,P698_VTO_TIMBRADO,P698_FACT_ELECT,P698_NRO_COMPROBANTE,P698_FECHA,P698_CONCEPTO,P698_MONTO_E,P698_MONTO_10,P698_MONTO_5'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237089301331215143)
,p_event_id=>wwv_flow_imp.id(237089212211215142)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237089062034215140)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(245774435395543501)
,p_name=>'da_habilita_btn'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P698_PERSONA'
,p_condition_element=>'P698_PERSONA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245774543723543502)
,p_event_id=>wwv_flow_imp.id(245774435395543501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(237089147642215141)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245774688047543503)
,p_event_id=>wwv_flow_imp.id(245774435395543501)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(237089147642215141)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(245775070463543507)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(245778518330543542)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245775126062543508)
,p_event_id=>wwv_flow_imp.id(245775070463543507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P698_NOM_PROVEEDOR IS NULL THEN',
'    raise_application_error(-20000, ''Debe Cargar el Nombre del Proveedor.'' );',
'end if;',
'',
'if :P698_NRO_COMPROBANTE is null then',
'    raise_application_error(-20000, ''Debe cargar el numero de comprobante.'' );',
'end if;',
'',
'if :P698_FECHA is null then',
'    raise_application_error(-20000, ''Debe cargar la Fecha del Comprobante.'' );',
'ELSE',
'    IF TO_DATE(:P698_FECHA,''DD/MM/YYYY'')>TRUNC(SYSDATE)THEN',
'        raise_application_error(-20000, ''La Fecha del Comprobante no puede ser posterior a la fecha de hoy.'' );',
'',
'    END IF;',
'end if;',
'',
'IF :P698_RUC IS NULL THEN',
'    raise_application_error(-20000, ''Debe Cargar el RUC del Proveedor.'' );',
'end if;',
'',
'if :P698_TIMBRADO is null then',
'    raise_application_error(-20000, ''Debe cargar el Numero de Timbrado.'' );',
'end if;',
'',
'if :P698_VTO_TIMBRADO is null then',
'    raise_application_error(-20000, ''Debe cargar la Fecha de Vencimiento del Timbrado.'' );',
'end if;',
'',
'if ( nvl(TO_NUMBER(REPLACE(:P698_MONTO_E,''.'','''')),0)+',
'   nvl(TO_NUMBER(REPLACE(:P698_MONTO_5,''.'','''')),0)+',
'   nvl(TO_NUMBER(REPLACE(:P698_MONTO_10,''.'','''')),0))<=0 then',
'      raise_application_error(-20000, ''El importe incorrecto.'' );',
'end if;',
'',
'',
''))
,p_attribute_02=>'P698_PROVEEDOR,P698_NOM_PROVEEDOR,P698_RUC,P698_TIMBRADO,P698_VTO_TIMBRADO,P698_FACT_ELECT,P698_NRO_COMPROBANTE,P698_FECHA,P698_CONCEPTO,P698_MONTO_E,P698_MONTO_10,P698_MONTO_5,P698_SER_ADD,P698_NRO_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245777246503543529)
,p_event_id=>wwv_flow_imp.id(245775070463543507)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VMSJ VARCHAR2(3200);',
'BEGIN                                     ',
'       cpsvales.registra_rend(p_cod_empresa => :p_cod_empresa,',
'                                 p_ser_comprobante => :P698_SER_ADD,',
'                                 p_nro_comprobante => :P698_NRO_ADD,',
'                                 p_proveedor => :P698_PROVEEDOR,',
'                                 p_fecha => :P698_FECHA,',
'                                 p_factura => :P698_NRO_COMPROBANTE,',
'                                 p_monto_E => REPLACE(:P698_MONTO_E,''.'',''''),',
'                                 p_concepto => :P698_CONCEPTO,',
'                                 p_ruc => :P698_RUC,',
'                                 p_ind_fact_elect => :P698_FACT_ELECT,',
'                                 p_monto_grav10 => REPLACE(:P698_MONTO_10,''.'',''''),',
'                                 p_monto_grav5 => REPLACE(:P698_MONTO_5,''.'',''''),',
'                                 p_nro_timbrado => :P698_TIMBRADO,',
'                                 p_vto_timbrado => :P698_VTO_TIMBRADO,',
'                                 p_nombre_prov => :P698_NOM_PROVEEDOR,                                  ',
'                                 P_IMAGE => :P698_IMAGEN, ',
'                                 p_msj => Vmsj);',
'    IF Vmsj IS NOT NULL THEN',
'        raise_application_error(-20000, Vmsj );',
'    END IF;',
'  ',
'END; '))
,p_attribute_02=>'P698_PROVEEDOR,P698_NOM_PROVEEDOR,P698_RUC,P698_TIMBRADO,P698_VTO_TIMBRADO,P698_FACT_ELECT,P698_NRO_COMPROBANTE,P698_FECHA,P698_CONCEPTO,P698_MONTO_E,P698_MONTO_10,P698_MONTO_5,P698_SER_ADD,P698_NRO_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245775235574543509)
,p_event_id=>wwv_flow_imp.id(245775070463543507)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237089062034215140)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245775321370543510)
,p_event_id=>wwv_flow_imp.id(245775070463543507)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237088965723215139)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(246561699040036944)
,p_event_id=>wwv_flow_imp.id(245775070463543507)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'proveedor_css();',
'estado_css();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(245778039576543537)
,p_name=>'da_aprech'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P698_RECHAZA'
,p_condition_element=>'P698_RECHAZA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245778184723543538)
,p_event_id=>wwv_flow_imp.id(245778039576543537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(245778216986543539)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(245778706938543544)
,p_name=>'DA_APROBAR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P698_APRUEBA'
,p_condition_element=>'P698_APRUEBA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(246562252402036950)
,p_event_id=>wwv_flow_imp.id(245778706938543544)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea confirmar la Rendicion?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245778896475543545)
,p_event_id=>wwv_flow_imp.id(245778706938543544)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'  inv.cpsvales.cambia_estado_rend(p_id_registro => :P698_APRUEBA,',
'                                  p_estado => ''C'',',
'                                  P_OBSERVACION=>'''');',
' EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, sqlerrm );',
' END;'))
,p_attribute_02=>'P698_APRUEBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(246557509290036903)
,p_event_id=>wwv_flow_imp.id(245778706938543544)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237088965723215139)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(245778931701543546)
,p_name=>'DA_RECHAZAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(245778518330543542)
,p_condition_element=>'P698_MOTIVO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245779110225543548)
,p_event_id=>wwv_flow_imp.id(245778931701543546)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe detallar el Motivo de Rechazo'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245779242019543549)
,p_event_id=>wwv_flow_imp.id(245778931701543546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Esta seguro que desea Rechazar la Rendici\00F3n?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245779003176543547)
,p_event_id=>wwv_flow_imp.id(245778931701543546)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'  inv.cpsvales.cambia_estado_rend(p_id_registro => :P698_RECHAZA,',
'                                  p_estado => ''A'',',
'                                  P_OBSERVACION=>:P698_MOTIVO);',
' EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, sqlerrm );',
' END;'))
,p_attribute_02=>'P698_RECHAZA,P698_MOTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245779399636543550)
,p_event_id=>wwv_flow_imp.id(245778931701543546)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237088965723215139)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(246557367894036901)
,p_event_id=>wwv_flow_imp.id(245778931701543546)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(245778216986543539)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(246561122502036939)
,p_name=>'DA_REFRESH'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P698_PERSONA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(246561284472036940)
,p_event_id=>wwv_flow_imp.id(246561122502036939)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237088965723215139)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(261416533473282910)
,p_event_id=>wwv_flow_imp.id(246561122502036939)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(261416115910282906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(246561768706036945)
,p_event_id=>wwv_flow_imp.id(246561122502036939)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'proveedor_css();',
'estado_css();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(294140695678972122)
,p_name=>'DA_REFRESH_estado'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P698_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294140754092972123)
,p_event_id=>wwv_flow_imp.id(294140695678972122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237088965723215139)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294140876381972124)
,p_event_id=>wwv_flow_imp.id(294140695678972122)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(261416115910282906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294140940333972125)
,p_event_id=>wwv_flow_imp.id(294140695678972122)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'proveedor_css();',
'estado_css();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(246561368630036941)
,p_name=>'DA_AFTREF'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(237088965723215139)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(246561458973036942)
,p_event_id=>wwv_flow_imp.id(246561368630036941)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'proveedor_css();',
'',
'estado_css();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(247573234014287304)
,p_name=>'da_ver_img'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P698_VER_IMG'
,p_condition_element=>'P698_VER_IMG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(247775537149794805)
,p_event_id=>wwv_flow_imp.id(247573234014287304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P698_VER_IMG'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(247775653897794806)
,p_event_id=>wwv_flow_imp.id(247573234014287304)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	 ',
'$(''#upimag'').attr(''src'',''http://ngosaeca.com.py/ords_bdngo/ngotest/img/getimg/''+$v(''P698_VER_IMG'')); ',
' '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(247573339664287305)
,p_event_id=>wwv_flow_imp.id(247573234014287304)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(247572955932287301)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(247573404810287306)
,p_event_id=>wwv_flow_imp.id(247573234014287304)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(247572955932287301)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(268951632249157525)
,p_name=>'da_valida_ruc'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P698_RUC'
,p_condition_element=>'P698_RUC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(268951750736157526)
,p_event_id=>wwv_flow_imp.id(268951632249157525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
'    VRESP varchar2(500) :=''EXISTE'';  /*:=bsperson.valuda_ruc(:P698_RUC);*/',
' BEGIN',
'   IF VRESP <> ''EXISTE''  then ',
'         raise_application_error(-20000, VRESP );',
'   END IF; ',
' END;',
'',
''))
,p_attribute_02=>'P698_RUC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(626550148652954305)
,p_name=>'da_load_color'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(626550376300954307)
,p_event_id=>wwv_flow_imp.id(626550148652954305)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'proveedor_css();',
'estado_css();'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(247577000548287342)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'guardar_rendicion'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VMSJ VARCHAR2(3200);',
'BEGIN                                     ',
'       cpsvales.registra_rend(p_cod_empresa => :p_cod_empresa,',
'                                 p_ser_comprobante => :P698_SER_ADD,',
'                                 p_nro_comprobante => :P698_NRO_ADD,',
'                                 p_proveedor => :P698_PROVEEDOR,',
'                                 p_fecha => :P698_FECHA,',
'                                 p_factura => :P698_NRO_COMPROBANTE,',
'                                 p_monto_E => REPLACE(:P698_MONTO_E,''.'',''''),',
'                                 p_concepto => :P698_CONCEPTO,',
'                                 p_ruc => :P698_RUC,',
'                                 p_ind_fact_elect => :P698_FACT_ELECT,',
'                                 p_monto_grav10 => REPLACE(:P698_MONTO_10,''.'',''''),',
'                                 p_monto_grav5 => REPLACE(:P698_MONTO_5,''.'',''''),',
'                                 p_nro_timbrado => :P698_TIMBRADO,',
'                                 p_vto_timbrado => :P698_VTO_TIMBRADO,',
'                                 p_nombre_prov => :P698_NOM_PROVEEDOR,                                  ',
'                                 P_IMAGE => :P698_IMAGEN, ',
'                                 P_CANTIDAD => :P698_CANTIDAD,',
'                                 p_msj => Vmsj);',
'    IF Vmsj IS NOT NULL THEN',
'        raise_application_error(-20000, Vmsj );',
'    END IF;',
'  ',
'END; '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(237090097484215150)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(246561838769036946)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'LIMPIAR_SESSION'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/
