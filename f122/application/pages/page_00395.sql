prompt --application/pages/page_00395
begin
--   Manifest
--     PAGE: 00395
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
 p_id=>395
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Cabecera Carga de Recibos - CCRECIBO'
,p_alias=>'RECIBOS'
,p_step_title=>'RECIBOS'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color:  hsl(147, 69%, 87%)  !important;',
'   border-color:  #c9fceb  !important;',
'}',
'',
'',
'#recibo   th.a-IRR-header {',
'  background-color:  rgb(218, 238, 239);',
' /* border-color: rgb(43, 79, 80);*/',
'}',
'',
'#filtro   th.a-IRR-header {',
'  background-color:  rgb(218, 238, 239);',
' /* border-color: rgb(43, 79, 80);*/',
'}',
'/* ',
' #GRILLA  td {',
'  background-color: rgb(218, 239, 223); ',
'  border-color: rgb(43, 79, 80);',
'}',
'',
' ',
'*/',
'',
' ',
'.chip {',
'    padding: 4px 10px;',
'    border-radius: 16px;',
'    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, .05);',
'}',
'',
'.chip-success {',
'    background: #cdffe0;',
'    color: #00592e;',
'}',
'',
'.chip-danger {',
'    background: #ffebeb;',
'    color: #a50000;',
'}',
'',
'.chip-warning {',
'    background: #fffedc;',
'    color: #764400;',
'}',
'',
'.chip-primary {',
'    background: #e9f5ff;',
'    color: #004f95;',
'}',
'',
'.chip-purple {',
'    background: #eddbfa;',
'    color: #5200a5;',
'}',
'',
'.chip-pink {',
'    background: #ffeffa;',
'    color: #990067;',
'}',
'',
'.chip-orange {',
'    background: #fff2e4;',
'    color: #8d3600;',
'}',
'',
'.chip-teal {',
'    background: #e4fdff;',
'    color: #00526e;',
'}',
'',
'    #recibo{',
'            background-color: #003a85 !important;',
'            box-shadow: black 1px 1px 5px 1px;',
'            }',
' .a-IRR-header {',
'    background: #003a85 !important;',
'    background-color: #003a85 !important;',
'      }',
' ',
'.a-IRR-headerLink {',
'	color: #FFED00 !important; ',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230927131028'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117369689802768824)
,p_plug_name=>'Detalle de Recibos'
,p_region_name=>'recibo'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>950
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REC.COD_EMPRESA,',
'       REC.COD_SUCURSAL,',
'       (SELECT COD_SUCURSAL||'' - ''||DESCRIPCION',
'          FROM SUCURSALES',
'         WHERE COD_EMPRESA = REC.COD_EMPRESA',
'           AND COD_SUCURSAL = REC.COD_SUCURSAL) DESC_SUCURSAL,',
'       REC.SER_RECIBO,',
'       REC.NRO_RECIBO,',
'       REC.FEC_RECIBO,',
'       REC.COD_CLIENTE,',
'       (SELECT C.COD_CLIENTE||'' - ''||NVL(LTRIM(P.NOMBRE), LTRIM(P.NOMB_FANTASIA))',
'          FROM CC_CLIENTES C,',
'               PERSONAS P',
'         WHERE C.COD_EMPRESA = REC.COD_EMPRESA',
'           AND C.COD_PERSONA = P.COD_PERSONA',
'           AND C.COD_CLIENTE = REC.COD_CLIENTE) DESC_CLIENTE,',
'       REC.COD_COBRADOR,',
'       (SELECT C.COD_COBRADOR||'' - ''||NVL(LTRIM(P.NOMBRE), LTRIM(P.NOMB_FANTASIA))',
'          FROM CC_COBRADORES C,',
'               PERSONAS P',
'         WHERE C.COD_EMPRESA = REC.COD_EMPRESA',
'           AND C.COD_PERSONA = P.COD_PERSONA ',
'           AND C.COD_COBRADOR = REC.COD_COBRADOR) DESC_COBRADOR,',
'       REC.COD_MONEDA,',
'       (SELECT COD_MONEDA||'' - ''||DESCRIPCION',
'          FROM MONEDAS',
'         WHERE COD_MONEDA = REC.COD_MONEDA) DESC_MONEDA,',
'       REC.TIP_CAMBIO,',
'       REC.COD_USUARIO,',
'       (DECODE(REC.ANULADO,''N'',''NO'',''S'',''SI'')) ANULADO,',
'       REC.FEC_ANULACION,',
'              CCRECIBO.OBTENER_DESC_ESTADO(pestado => CASE WHEN NVL(REC.ANULADO,''N'')=''S''THEN ''A'' ELSE REC.ESTADO END) ESTADO,',
'       REC.COD_CUSTODIO,',
'       (SELECT C.COD_CUSTODIO||'' - ''||C.DESCRIPCION',
'          FROM CC_CUSTODIOS C',
'         WHERE C.COD_EMPRESA = REC.COD_EMPRESA ',
'           AND C.COD_CUSTODIO = REC.COD_CUSTODIO) DESC_CUSTODIO,',
'       REC.REFERENCIA,',
'       REC.ROWID ROW_ID,',
'       NULL EDITAR, tot_recibo,',
'       CASE WHEN NVL(REC.ANULADO,''N'')=''S'' THEN ''1'' WHEN REC.NRO_MOV_CAJ IS NULL THEN ''2''   ELSE ''1'' END control',
'  FROM CC_RECIBOS REC',
' WHERE REC.COD_EMPRESA = :P_COD_EMPRESA',
'',
'AND   (NVL(:P395_CLIENTE,''T'')=''T'' OR :P395_CLIENTE=rec.COD_CLIENTE)',
'AND   (NVL(:P395_COBRADOR,''T'')=''T'' OR :P395_COBRADOR=rec.COD_COBRADOR)',
' ',
'AND   ( :P395_NRO_RECIBO is null OR :P395_NRO_RECIBO=rec.nro_recibo)',
'AND   ( :P395_SER_RECIBO is null OR :P395_SER_RECIBO=rec.ser_recibo)',
'---AND   TRUNC( OT.FEC_COMPROBANTE) >= NVL(TO_DATE(:P54_FECHA_INI,''DD/MM/YYYY''),TRUNC(SYSDATE-90,''MM''))',
'AND   ( :P395_FECHA_INI is null OR rec.fec_recibo >= TO_DATE(:P395_FECHA_INI,''DD/MM/YYYY''))',
'AND   ( :P395_FECHA_FIN is null OR rEC.fec_recibo <= TO_DATE(:P395_FECHA_FIN,''DD/MM/YYYY''))',
' ORDER BY fec_recibo desc, REC.COD_EMPRESA, REC.SER_RECIBO, REC.NRO_RECIBO'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P395_CLIENTE,P395_SER_RECIBO,P395_NRO_RECIBO,P395_FECHA_INI,P395_FECHA_FIN,P395_COBRADOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detalle de Recibos'
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
 p_id=>wwv_flow_imp.id(117369738543768825)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>117369738543768825
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117369822481768826)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117369977221768827)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117370013263768828)
,p_db_column_name=>'SER_RECIBO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Recibo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117370148856768829)
,p_db_column_name=>'NRO_RECIBO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Recibo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117370230535768830)
,p_db_column_name=>'FEC_RECIBO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha Recibo'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117370330467768831)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117370491408768832)
,p_db_column_name=>'COD_COBRADOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Cobrador'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117370575380768833)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117370601186768834)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tipo Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117370702935768835)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117370837660768836)
,p_db_column_name=>'ANULADO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Anulado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117370924114768837)
,p_db_column_name=>'FEC_ANULACION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('Fecha de Anulaci\00F3n')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117371003380768838)
,p_db_column_name=>'ESTADO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117371110689768839)
,p_db_column_name=>'COD_CUSTODIO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cod Custodio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117371277569768840)
,p_db_column_name=>'REFERENCIA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Referencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117371350559768841)
,p_db_column_name=>'EDITAR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:394:&SESSION.::&DEBUG.:394:P394_CONTROL_ORIGEN,P394_ROWID:#CONTROL#,#ROW_ID#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117371920515768847)
,p_db_column_name=>'DESC_CLIENTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117372040962768848)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117372146651768849)
,p_db_column_name=>'DESC_COBRADOR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cobrador'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117372278217768850)
,p_db_column_name=>'DESC_CUSTODIO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Custodio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118476375392648201)
,p_db_column_name=>'DESC_MONEDA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118476642526648204)
,p_db_column_name=>'ROW_ID'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Row Id'
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
 p_id=>wwv_flow_imp.id(194844572741616048)
,p_db_column_name=>'TOT_RECIBO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Tot Recibo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(202411096938397807)
,p_db_column_name=>'CONTROL'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(118377472319587447)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1183775'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'DESC_SUCURSAL:SER_RECIBO:NRO_RECIBO:FEC_RECIBO:DESC_CLIENTE:DESC_COBRADOR:DESC_MONEDA:TIP_CAMBIO:TOT_RECIBO:COD_USUARIO:ANULADO:FEC_ANULACION:ESTADO:DESC_CUSTODIO:REFERENCIA:EDITAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(616348355425723300)
,p_plug_name=>'Filtros'
,p_region_name=>'filtro'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>940
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(201338300483967394)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(616348355425723300)
,p_button_name=>'refrescar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refrescar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-13-text'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(117371496370768842)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(117369689802768824)
,p_button_name=>'BTCREAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Crear'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:394:&SESSION.::&DEBUG.:394:P394_CONTROL_ORIGEN:0'
,p_button_css_classes=>'u-color-21-bg u-color-13-text'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201338799252967388)
,p_name=>'P395_PROVEEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(616348355425723300)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct p.cod_proveedor',
'from usuarios u,',
'     cm_proveedores p',
'where u.cod_usuario= v(''app_user'')',
'AND   u.cod_persona=p.cod_persona',
'AND   p.cod_empresa=''1''',
'AND   NVL(p.ESTADO,''A'')NOT IN (''I'') ',
'AND   p.ind_servicio_tecnico =''STNGO'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201339533340967386)
,p_name=>'P395_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(616348355425723300)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct pr.nombre||'' ''|| CL.COD_CLIENTE CLIENTE,cl.cod_cliente',
'from   ',
'      cc_clientes cl,',
'      personas pr',
'where ''1''=cl.COD_EMPRESA',
'and   cl.cod_persona=pr.cod_persona',
'and   nvl(cl.estado,'''')NOT IN (''I'')  ',
'union all',
'',
'select ''TODOS'',''T''',
'FROM DUAL',
'order by 2'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_lov_null_value=>'T'
,p_cSize=>30
,p_tag_attributes=>'style="background-color:#ebfaff ; border-color:  #7fb2c2"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201339963570967385)
,p_name=>'P395_COBRADOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(616348355425723300)
,p_item_default=>'P0_COD_COBRADOR'
,p_item_default_type=>'ITEM'
,p_prompt=>'Cobrador'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''TODOS'' D, ''T'' C ',
'FROM DUAL',
'UNION ALL',
' select NOMBRE|| '' (''|| C.COD_COBRADOR||'')'' as d,',
'       C.COD_COBRADOR as r ',
'  from CC_COBRADORES C, PERSONAS P',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_PERSONA=P.COD_PERSONA',
'and activo=''S'' ',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'style="background-color:#ebfaff ; border-color:  #7fb2c2"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201340368969967385)
,p_name=>'P395_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(616348355425723300)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''ANULADO'' estado, ''A'' C',
'from  DUAL t',
'union all',
'select ''COBRADO'' estado, ''C'' C',
'from  DUAL t',
'union all',
'select ''PENDIENTE COBRO'' estado, ''P'' C',
'from  DUAL t',
'union all',
'select ''TODOS'', ''T''',
'FROM DUAL',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style="background-color:#ebfaff ; border-color:  #7fb2c2"'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201340713342967385)
,p_name=>'P395_SER_RECIBO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(616348355425723300)
,p_prompt=>'Serie Recibo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201341160761967384)
,p_name=>'P395_NRO_RECIBO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(616348355425723300)
,p_prompt=>'Nro Recibo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201341547462967384)
,p_name=>'P395_FECHA_INI'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(616348355425723300)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha desde'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_tag_attributes=>'style="background-color:#ebfaff ; border-color:  #7fb2c2"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201341928079967383)
,p_name=>'P395_FECHA_FIN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(616348355425723300)
,p_prompt=>'Fecha hasta'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_tag_attributes=>'style="background-color:#ebfaff ; border-color:  #7fb2c2"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201342314648967383)
,p_name=>'P395_USER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(616348355425723300)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(194844121964616044)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(201338300483967394)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194844216524616045)
,p_event_id=>wwv_flow_imp.id(194844121964616044)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(117369689802768824)
);
wwv_flow_imp.component_end;
end;
/
