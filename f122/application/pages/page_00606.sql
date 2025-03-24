prompt --application/pages/page_00606
begin
--   Manifest
--     PAGE: 00606
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
 p_id=>606
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Solicitud de Asistencia Wango - CASOLASI'
,p_alias=>'SOLICITUD-DE-ASISTENCIA-WANGO'
,p_step_title=>'Solicitud de Asistencia Wango'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-header  a , #checktext {color: darkblue; }',
'.a-IRR-header {    background-color: #fff8b7;',
'background-image: linear-gradient(180deg, #fff8b7 0%, #FFFB7D 100%); ',
'}',
'#cabecera, #c1, #c2, #c3, #p1 ,#p2, #p3{    ',
'  background-color: #7d96b4  !important;',
'} ',
'',
'.t-Body-mainContent  { ',
'                        background: #082b642f!important;',
'                    } ',
'  ',
'  .t-Form-label{',
'                color:  #003A85  !important;  ',
'                font-weight: bold;   ',
'                } ',
'',
'.a-IRR-header , .a-IRR-headerLink {',
'      background: #003a85!important;',
'       color: yellow       !important;',
' }',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20241210074836'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106963509847997902)
,p_plug_name=>'CABECERA'
,p_region_name=>'cabecera'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106963756689997904)
,p_plug_name=>'CAB_1'
,p_region_name=>'c1'
,p_parent_plug_id=>wwv_flow_imp.id(106963509847997902)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106963822476997905)
,p_plug_name=>'CAB_2'
,p_region_name=>'c2'
,p_parent_plug_id=>wwv_flow_imp.id(106963509847997902)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106965091692997917)
,p_plug_name=>'CAB_3'
,p_region_name=>'c3'
,p_parent_plug_id=>wwv_flow_imp.id(106963509847997902)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106965233548997919)
,p_plug_name=>'CA_SOLICITUD_SERVICIO_DIST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    seq_id P_ID,',
'    C001  COD_EMPRESA,',
'    C002  SER_PLANILLA,',
'    C003  FEC_PLANILLA ,',
'    C004  COD_DEPARTAMENTO,',
'    C005  COD_CIUDAD,',
'    C006  COD_DISTRIBUIDOR,',
'    C007  COD_CLIENTE_SETUP,',
'    C008  EMAIL,',
'    C009  CANT_REAGENDADA,',
'    C010  TELEFONO,',
'    C011  CATEGORIA_PRODUCTO,',
'    C012  NRO_PLANILLA,',
'    C013  FECHA_REAGENDADA,',
'    C014  HORA_REAGENDADA,',
'    C015  TIPO,',
'    C016  NRO_GARANTIA,',
'    C018  ESTADO,',
'    C019  FECHA_ESTADO,',
'    C020  CANAL_COMUNICACION,',
'    C021  FECHA_VISITA,',
'    C022  NRO_OT,',
'    C023  SER_OT,',
'    C024  OBSERVACION,',
'    C025  ORIGEN_SETUP,',
'    C026  FECHA_HORA,',
'    C027  CI_CLIENTE,',
'    C028  DIRECCION,',
'    C029  FACTURA ,',
'    C030  CELULAR,',
'    --to_char( to_date(C031 ,''dd/mm/yyyy''),''dd/mm/yyyy'')   FECHA_COMPRA',
'    C031 FECHA_COMPRA,',
'    C032  COD_CLIENTE,',
'    C033  COD_ARTICULO,',
'    C034  v_fecHA_ot ,',
'    C035  v_distribuidor,',
'    C036  R_ID',
'    ,c038 v_cliente',
'    , null editar',
'    , NULL VER',
'    , NULL MAINTENANCE',
'    , NULL VISITAS',
'    , NULL PROMOTORA',
'    , NULL RETIRO',
'    , NULL VER_FACTURA',
'    , CASE WHEN BLOB001 IS NOT NULL THEN',
'            ''<span class="fa fa-image" aria-hidden="true"></span>''',
'        ELSE',
'           null',
'        END IMAGEN',
'    ,decode(C022,null,null,''MODIFICAR'')operacion',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_CA_SOLICITUD_SERVICIO_DIST'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CA_SOLICITUD_SERVICIO_DIST'
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
 p_id=>wwv_flow_imp.id(204750756469882315)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron registros'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>204750756469882315
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204750819197882316)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204750982049882317)
,p_db_column_name=>'SER_PLANILLA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Planilla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204751023396882318)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha Alta '
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204751107299882319)
,p_db_column_name=>'COD_DEPARTAMENTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Departamento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204751277108882320)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204751333611882321)
,p_db_column_name=>'COD_DISTRIBUIDOR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Distribuidor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204751407182882322)
,p_db_column_name=>'COD_CLIENTE_SETUP'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Cliente Setup'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204751574304882323)
,p_db_column_name=>'EMAIL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204751603565882324)
,p_db_column_name=>'CANT_REAGENDADA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cant Reagendada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204751764222882325)
,p_db_column_name=>'TELEFONO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204751820627882326)
,p_db_column_name=>'CATEGORIA_PRODUCTO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204751908793882327)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nro.'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204752086687882328)
,p_db_column_name=>'FECHA_REAGENDADA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fecha Reagendada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204752193198882329)
,p_db_column_name=>'HORA_REAGENDADA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Hora Reagendada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204752283071882330)
,p_db_column_name=>'TIPO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204752392593882331)
,p_db_column_name=>'NRO_GARANTIA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Nro Garantia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204752402213882332)
,p_db_column_name=>'ESTADO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204752575838882333)
,p_db_column_name=>'FECHA_ESTADO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Fecha Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204752653774882334)
,p_db_column_name=>'CANAL_COMUNICACION'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Canal Comunicacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204752788055882335)
,p_db_column_name=>'FECHA_VISITA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Fecha Visita'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204752894831882336)
,p_db_column_name=>'NRO_OT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Nro Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204752986738882337)
,p_db_column_name=>'SER_OT'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Ser Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204753078444882338)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204753173137882339)
,p_db_column_name=>'ORIGEN_SETUP'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Origen Setup'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204753293318882340)
,p_db_column_name=>'FECHA_HORA'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Fecha Hora'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204753394791882341)
,p_db_column_name=>'CI_CLIENTE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Ci Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204753460308882342)
,p_db_column_name=>'DIRECCION'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204753543362882343)
,p_db_column_name=>'FACTURA'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204753608573882344)
,p_db_column_name=>'CELULAR'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Celular'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204753853713882346)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204753944892882347)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204754034374882348)
,p_db_column_name=>'R_ID'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'R Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204929837324038304)
,p_db_column_name=>'P_ID'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'P_ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204929979351038305)
,p_db_column_name=>'VER'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Ver'
,p_column_link=>'javascript:$s(''P606_SEQ_ID_VER'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-eye"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204930034676038306)
,p_db_column_name=>'MAINTENANCE'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'OT'
,p_column_link=>'f?p=&APP_ID.:730:&SESSION.::&DEBUG.:730:P730_COD_CLIENTE,P730_COD_DISTRIBUIDOR,P730_PARAM_NRO_OT,P730_PARAM_SER_OT,P730_OPERACION,P730_NRO_COMPROBANTE_REF,P730_P_NRO_SERVICIO_PARAM,P730_P_TIP_SERVICIO_PARAM,P730_COD_ARTICULO_OT_CALL:#COD_CLIENTE#,#CO'
||'D_DISTRIBUIDOR#,#NRO_OT#,#SER_OT#,#OPERACION#,#NRO_OT#,#NRO_PLANILLA#,SU,#COD_ARTICULO#'
,p_column_linktext=>'<span class="fa fa-tools" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204930101578038307)
,p_db_column_name=>'VISITAS'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'V'
,p_column_link=>'javascript:$s(''P606_SEQ_ID_VISITAS'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-pencil" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204930237827038308)
,p_db_column_name=>'PROMOTORA'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'P'
,p_column_link=>'f?p=&APP_ID.:329:&SESSION.::&DEBUG.:329:P329_COD_CLIENTE:#COD_DISTRIBUIDOR#'
,p_column_linktext=>'<span class="fa fa-user" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204930339760038309)
,p_db_column_name=>'RETIRO'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'R'
,p_column_link=>'f?p=&APP_ID.:409:&SESSION.::&DEBUG.:409:P409_COD_DISTRIBUIDOR,P409_COD_CLIENTE_BUSQ,P409_COD_ARTICULO_CR_ED,P409_FACTURA_CR_ED,P409_GARANTIA_CR_ED,P409_FEC_COMPRA_CR_ED,P409_RUC:#COD_DISTRIBUIDOR#,#COD_CLIENTE#,#COD_ARTICULO#,#FACTURA#,#NRO_GARANTIA#'
||',#FECHA_COMPRA#,#CI_CLIENTE#'
,p_column_linktext=>' <span class="fa fa-truck" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204930763188038313)
,p_db_column_name=>'V_FECHA_OT'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Fecha Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204930856503038314)
,p_db_column_name=>'V_DISTRIBUIDOR'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Distribuidor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204933743549038343)
,p_db_column_name=>'EDITAR'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P606_SEQ_ID_EDITAR'',''#P_ID#'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157028288921586135)
,p_db_column_name=>'V_CLIENTE'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157028645314586139)
,p_db_column_name=>'VER_FACTURA'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'F'
,p_column_link=>'javascript:$s(''P606_SEQ_ID_VER_FACTURA'',''#P_ID#'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157029082328586143)
,p_db_column_name=>'IMAGEN'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Factura'
,p_column_link=>'f?p=&APP_ID.:752:&SESSION.::&DEBUG.:752:P752_NRO,P752_SER:#NRO_PLANILLA#,#SER_PLANILLA#'
,p_column_linktext=>'#IMAGEN#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157029174121586144)
,p_db_column_name=>'FECHA_COMPRA'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Fecha Compra'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(832975056950065715)
,p_db_column_name=>'OPERACION'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Operacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(204934898074036838)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2049349'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VER:EDITAR:NRO_PLANILLA:FEC_PLANILLA:V_DISTRIBUIDOR:COD_CLIENTE:V_CLIENTE:TELEFONO:CATEGORIA_PRODUCTO:V_FECHA_OT:FECHA_VISITA:ESTADO:MAINTENANCE:VISITAS:PROMOTORA:RETIRO:IMAGEN:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106965343218997920)
,p_plug_name=>'PIE_1'
,p_region_name=>'p1'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>960
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106967812048997945)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204931683569038322)
,p_plug_name=>'REAGENDA'
,p_region_css_classes=>'u-color-17'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204934134543038347)
,p_plug_name=>'EDITAR'
,p_region_css_classes=>'u-color-17'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204750556921882313)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(106965091692997917)
,p_button_name=>'BT_REFRESH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204931972381038325)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(204931683569038322)
,p_button_name=>'BT_HOY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Hoy'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204932089779038326)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(204931683569038322)
,p_button_name=>'BT_SIGUIENTE_DIA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>unistr('Sig. d\00EDa')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204932124222038327)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(204931683569038322)
,p_button_name=>'BT_5_DIAS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>unistr('5 D\00EDas')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204932263939038328)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(204931683569038322)
,p_button_name=>'BT_10_DIAS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'10 Dias'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157029213656586145)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(106965091692997917)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204932350588038329)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(204931683569038322)
,p_button_name=>'BT_8_A_10'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'8 a 10Hs'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204933649671038342)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(106965091692997917)
,p_button_name=>'BT_GUARDAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-normal-text'
,p_icon_css_classes=>'fa-save-as'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204932421648038330)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(204931683569038322)
,p_button_name=>'BT_10_A_12'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'10 a 12Hs'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204932582911038331)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(204931683569038322)
,p_button_name=>'BT_13_A_15'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'13 a 15Hs'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204932661134038332)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(204931683569038322)
,p_button_name=>'BT_15_A_18'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'15 a 18Hs'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204932935726038335)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(204931683569038322)
,p_button_name=>'BT_ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(206346089069901602)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(204934134543038347)
,p_button_name=>'BT_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204933063552038336)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(204931683569038322)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(206346111614901603)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(204934134543038347)
,p_button_name=>'BT_CANCELAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106964095758997907)
,p_name=>'P606_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(106963756689997904)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:Pendiente Vendedor;PENDIENTE,Visita Rechazada;VISITA_RECHAZADA,Visita Aceptada;VISITA_ACEPTADA,Volver a llamar;VOLVER_A_LLAMAR,Visita Realizada;VISITA_REALIZADA,Ense\00F1anza de Uso;ENSE\00D1ANZA_USO,Confirmado;Confirmado,Anulado;Anulado,Todos;T,Pendi')
||'ente de Factura;PENDIENTE_FACTURA,Pendiente de Cliente;PEDIENTE_CLIENTE'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106964132616997908)
,p_name=>'P606_CATEGORIA_PRODUCTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(106963756689997904)
,p_prompt=>'Categoria Producto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cc.categoria_producto||'' - ''||cc.categoria_producto nombre,cc.categoria_producto codigo_rapido',
'FROM   CA_SOLICITUD_SERVICIO_DIST cc, cc_clientes   c, personas p ',
'where cc.cod_empresa=:P_COD_EMPRESA',
'and cc.cod_empresa=c.cod_empresa',
'and cc.cod_distribuidor=c.cod_cliente',
'and c.cod_persona=p.cod_persona',
'',
'AND nvl(cc.estado,''S'') NOT IN (''CONFIRMADO'',''ANULADO'')',
'group by categoria_producto',
'  union all',
' SELECT ''TODOS'' nombre,''T'' codigo_rapido',
'FROM dual',
' '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'T'
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
 p_id=>wwv_flow_imp.id(106964269611997909)
,p_name=>'P606_PROVEEDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(106963756689997904)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  o.cod_proveedor ||'' - ''||p.nombre,o.cod_proveedor codigo_rapido',
'from CA_SOLICITUD_SERVICIO_DIST s,vt_ordenes_trabajo o, cm_proveedores pro, personas p ',
'where s.cod_empresa=:P_COD_EMPRESA',
'and s.estado not in  (''CONFIRMADO'',''ANULADO'')',
'and s.cod_empresa = o.cod_empresa ',
'       	and o.nro_servicio = s.NRO_PLANILLA',
'	  	and o.tip_servicio = ''SU''',
'      and pro.cod_empresa=o.cod_empresa',
'      and pro.cod_proveedor=o.cod_proveedor',
'      and pro.cod_persona=p.cod_persona',
' group by o.cod_proveedor, p.nombre',
'  union all',
' SELECT ''TODOS'' nombre,''T'' codigo_rapido',
'FROM dual'))
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
 p_id=>wwv_flow_imp.id(106964375766997910)
,p_name=>'P606_ORIGEN_SETUP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(106963756689997904)
,p_prompt=>'Origen Setup'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:WHIRPOOL SETUP;27,TOKIO SETUP;31,FITNES;25,TODOS;T'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106964466621997911)
,p_name=>'P606_FEC_PLANILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(106963822476997905)
,p_prompt=>'Fecha Desde'
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
 p_id=>wwv_flow_imp.id(106964578093997912)
,p_name=>'P606_CANAL_COMUNICACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(106963822476997905)
,p_prompt=>'Canal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cc.canal_comunicacion ||'' - ''|| cc.canal_comunicacion nombre ,cc.canal_comunicacion codigo_rapido',
'FROM   CA_SOLICITUD_SERVICIO_DIST cc, cc_clientes   c, personas p ',
'where cc.cod_empresa=:P_COD_EMPRESA',
'and cc.cod_empresa=c.cod_empresa',
'and cc.cod_distribuidor=c.cod_cliente',
'and c.cod_persona=p.cod_persona',
'',
'AND nvl(cc.estado,''S'') NOT IN (''CONFIRMADO'',''ANULADO'')',
'group by canal_comunicacion',
'  union all',
' SELECT ''TODOS'' nombre ,''T'' codigo_rapido',
'FROM dual',
' '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'T'
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
 p_id=>wwv_flow_imp.id(106964642356997913)
,p_name=>'P606_FEC_PLANILLA_HASTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(106963822476997905)
,p_prompt=>'Fecha Hasta'
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
 p_id=>wwv_flow_imp.id(106964777182997914)
,p_name=>'P606_COD_DEPARTAMENTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(106963822476997905)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PROVINCIA ||'' - ''|| DESCRIPCION nombre,COD_PROVINCIA codigo_rapido',
'FROM provinCIas',
'where cod_pais = ''PAR''--:variables.sector_tarjetas',
' ',
' UNION ALL',
' SELECT ''TODOS'' nombre,''T'' codigo_rapido',
'FROM DUAL',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-location'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106964804562997915)
,p_name=>'P606_DISTRIBUIDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(106963822476997905)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cc.cod_distribuidor||'' - ''||p.nombre nombre,cc.cod_distribuidor codigo_rapido',
'FROM   CA_SOLICITUD_SERVICIO_DIST cc, cc_clientes   c, personas p ',
'where cc.cod_empresa=:P_COD_EMPRESA',
'and cc.cod_empresa=c.cod_empresa',
'and cc.cod_distribuidor=c.cod_cliente',
'and c.cod_persona=p.cod_persona',
'',
'AND nvl(cc.estado,''S'') NOT IN (''CONFIRMADO'',''ANULADO'')',
'group by cc.cod_distribuidor  ,p.nombre',
'  union all',
' SELECT ''TODOS'' nombre,''T'' codigo_rapido',
'FROM dual',
' ',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'T'
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
 p_id=>wwv_flow_imp.id(106964908909997916)
,p_name=>'P606_COD_CIUDAD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(106965091692997917)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_CIUDAD ||'' - ''||DESCRIPCION nombre ,COD_CIUDAD codigo_rapido',
'FROM CIUDADES',
'where cod_pais = ''PAR''--:variables.sector_tarjetas',
' AND COD_PROVINCIA= :P606_COD_DEPARTAMENTO',
' UNION ALL',
' SELECT ''TODOS'' nombre ,''T'' codigo_rapido',
'FROM DUAL'))
,p_lov_cascade_parent_items=>'P606_COD_DEPARTAMENTO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-location'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106965847317997925)
,p_name=>'P606_DET_OBSERVACION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(106965343218997920)
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
 p_id=>wwv_flow_imp.id(106965954679997926)
,p_name=>'P606_DET_EMAIL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(106965343218997920)
,p_prompt=>'Email'
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
 p_id=>wwv_flow_imp.id(106966097672997927)
,p_name=>'P606_DET_FECHA_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(106965343218997920)
,p_prompt=>'Fecha Estado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-calendar-pointer'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106966490263997931)
,p_name=>'P606_DET_SER_OT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(106965343218997920)
,p_prompt=>'Serie OT'
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
 p_id=>wwv_flow_imp.id(106966608809997933)
,p_name=>'P606_DET_CI_CLIENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(106965343218997920)
,p_prompt=>'NCI Cliente'
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
 p_id=>wwv_flow_imp.id(106966747398997934)
,p_name=>'P606_DET_FACTURA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(106965343218997920)
,p_prompt=>'Nro. Factura Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(106966821392997935)
,p_name=>'P606_DET_DIRECCION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(106965343218997920)
,p_prompt=>'Direcion del Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106966971945997936)
,p_name=>'P606_DET_FECHA_HORA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(106965343218997920)
,p_prompt=>'Fecha Solicitud'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-calendar-pointer'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106967053063997937)
,p_name=>'P606_DET_CANAL_COMUNICACION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(106965343218997920)
,p_prompt=>'Canal'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(106967124942997938)
,p_name=>'P606_DET_ORIGEN_SETUP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(106965343218997920)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:WHIRLPOOL SET UP;27,TOKYO SET UP;31,FITNES;25'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(106967271665997939)
,p_name=>'P606_DET_CELULAR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(106965343218997920)
,p_prompt=>'Celular Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-phone'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106967345999997940)
,p_name=>'P606_DET_FECHA_COMPRA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(106965343218997920)
,p_prompt=>'Fecha Compra'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-calendar-pointer'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106967459514997941)
,p_name=>'P606_DET_NRO_OT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(106965343218997920)
,p_prompt=>'Nro. Orden de Trabajo'
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
 p_id=>wwv_flow_imp.id(106967546661997942)
,p_name=>'P606_DET_F_AGENDADA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(106965343218997920)
,p_prompt=>'Fecha Reagenda'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-calendar-pointer'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106967682978997943)
,p_name=>'P606_DET_H_AGENDADA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(106965343218997920)
,p_prompt=>'Hora Reagenda'
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
 p_id=>wwv_flow_imp.id(106967975545997946)
,p_name=>'P606_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(106967812048997945)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106968005832997947)
,p_name=>'P606_CAMBIA_CUSTODIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(106967812048997945)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106968100960997948)
,p_name=>'P606_NOM_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(106967812048997945)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106968377890997950)
,p_name=>'P606_COD_FORMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(106967812048997945)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157028721853586140)
,p_name=>'P606_SEQ_ID_VER_FACTURA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(106965233548997919)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204749347461882301)
,p_name=>'P606_COD_USUARIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(106967812048997945)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204749482316882302)
,p_name=>'P606_CAMBIA_SECTOR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(106967812048997945)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204749697491882304)
,p_name=>'P606_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(106967812048997945)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204749743802882305)
,p_name=>'P606_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(106967812048997945)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204749868600882306)
,p_name=>'P606_NOM_SUCURSAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(106967812048997945)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204749948329882307)
,p_name=>'P606_CAMBIA_NRO_VALOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(106967812048997945)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204750064288882308)
,p_name=>'P606_CAMBIA_FEC_VENCIMIENTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(106967812048997945)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204750165917882309)
,p_name=>'P606_PERMITE_BORRAR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(106967812048997945)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204929770473038303)
,p_name=>'P606_SEQ_ID_VER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(106965233548997919)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204930926038038315)
,p_name=>'P606_SEQ_ID_VISITAS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(106965233548997919)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204931064073038316)
,p_name=>'P606_SEQ_ID_MAINTENACE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(106965233548997919)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204931130536038317)
,p_name=>'P606_SEQ_ID_PROMOTORA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(106965233548997919)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204933319070038339)
,p_name=>'P606_DET_FECHA_REAGENDADA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(204931683569038322)
,p_prompt=>'Fecha Reagendada'
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
 p_id=>wwv_flow_imp.id(204933467821038340)
,p_name=>'P606_DET_HORA_REAGENDADA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(204931683569038322)
,p_prompt=>'Hora Reagendada'
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
 p_id=>wwv_flow_imp.id(204933860582038344)
,p_name=>'P606_SEQ_ID_EDITAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(106965233548997919)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204934230169038348)
,p_name=>'P606_E_FECHA_VISITA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(204934134543038347)
,p_prompt=>'Fecha Visita'
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
 p_id=>wwv_flow_imp.id(204934393042038349)
,p_name=>'P606_E_NRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204934134543038347)
,p_prompt=>'Nro.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>' '
,p_tag_attributes=>'READONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204934411904038350)
,p_name=>'P606_E_FEC_PLANILLA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(204934134543038347)
,p_prompt=>'Fecha Alta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>' '
,p_tag_attributes=>'READONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-calendar-check-o'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206345967254901601)
,p_name=>'P606_E_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(204934134543038347)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Pendiente;PENDIENTE,Visita Rechazada;VISITA_RECHAZADA,Visita Aceptada;VISITA_ACEPTADA,Volver a Llamar;VOLVER_A_LLAMAR,Visita Realizada;VISITA_REALIZADA'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206346341501901605)
,p_name=>'P606_E_FECHA_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(204934134543038347)
,p_prompt=>'Fecha Estado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>' '
,p_tag_attributes=>'READONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204754185651882349)
,p_name=>'DA_REFRESH'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204750556921882313)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(832974013653065705)
,p_event_id=>wwv_flow_imp.id(204754185651882349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  var spinner = apex.util.showSpinner();',
' '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204754264686882350)
,p_event_id=>wwv_flow_imp.id(204754185651882349)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.CASOLASI.CARGAR_COL(P_cod_ciudad => :P606_COD_CIUDAD,',
'                    P_cod_departamento => :P606_COD_DEPARTAMENTO,',
'                    P_canal_comunicacion => :P606_CANAL_COMUNICACION,',
'                    P_FEC_PLANILLA_HASTA => :P606_FEC_PLANILLA_HASTA,',
'                    P_fec_planilla => :P606_FEC_PLANILLA,',
'                    P_estado => :P606_ESTADO,',
'                    P_ORIGEN_SETUP => :P606_ORIGEN_SETUP,',
'                    P_categoria_producto => :P606_CATEGORIA_PRODUCTO,',
'                    P_distribuidor  => :P606_DISTRIBUIDOR,',
'                    P_PROVEEDOR  => :P606_PROVEEDOR) ;',
'    EXCEPTION',
'        when OTHERS then            ',
'            raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P606_COD_DEPARTAMENTO,P606_CANAL_COMUNICACION,P606_FEC_PLANILLA_HASTA,P606_FEC_PLANILLA,P606_ESTADO,P606_ORIGEN_SETUP,P606_CATEGORIA_PRODUCTO,P606_DISTRIBUIDOR,P606_PROVEEDOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204929532525038301)
,p_event_id=>wwv_flow_imp.id(204754185651882349)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(106965233548997919)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(832974169350065706)
,p_event_id=>wwv_flow_imp.id(204754185651882349)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove(); ',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204930416488038310)
,p_name=>'DA_SEQ_ID_VER'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P606_SEQ_ID_VER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204930667300038312)
,p_event_id=>wwv_flow_imp.id(204930416488038310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P606_DET_EMAIL,P606_DET_CI_CLIENTE,P606_DET_FACTURA,P606_DET_DIRECCION,P606_DET_CELULAR,P606_DET_FECHA_COMPRA,P606_DET_FECHA_ESTADO,P606_DET_CANAL_COMUNICACION,P606_DET_FECHA_HORA,P606_DET_OBSERVACION,P606_DET_ORIGEN_SETUP,P606_DET_SER_OT,P606_DET_NR'
||'O_OT,P606_DET_F_AGENDADA,P606_DET_H_AGENDADA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204930539067038311)
,p_event_id=>wwv_flow_imp.id(204930416488038310)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C008  EMAIL,',
'        C027  CI_CLIENTE,',
'        C029  FACTURA ,',
'        C028  DIRECCION,',
'        C030  CELULAR,',
'   --     C031  FECHA_COMPRA,',
'   to_char( to_date(C031 ,''yyyy/mm/dd''),''dd/mm/yyyy'')   FECHA_COMPRA,',
'        C019  FECHA_ESTADO,',
'        C020  CANAL_COMUNICACION,',
'        C026  FECHA_HORA,',
'        C024  OBSERVACION,',
'        C025  ORIGEN_SETUP,',
'        C022  NRO_OT,',
'        C023  SER_OT,',
'        C013  FECHA_REAGENDADA,',
'        C014  HORA_REAGENDADA ',
'    INTO :P606_DET_EMAIL,',
'    :P606_DET_CI_CLIENTE,',
'    :P606_DET_FACTURA,',
'    :P606_DET_DIRECCION,',
'    :P606_DET_CELULAR,',
'    :P606_DET_FECHA_COMPRA,',
'    :P606_DET_FECHA_ESTADO,',
'    :P606_DET_CANAL_COMUNICACION,',
'    :P606_DET_FECHA_HORA,',
'    :P606_DET_OBSERVACION,',
'    :P606_DET_ORIGEN_SETUP,',
'    :P606_DET_NRO_OT,',
'    :P606_DET_SER_OT,',
'    :P606_DET_F_AGENDADA,',
'    :P606_DET_H_AGENDADA',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_CA_SOLICITUD_SERVICIO_DIST''',
'    and seq_id = :P606_SEQ_ID_VER;',
'END;'))
,p_attribute_02=>'P606_SEQ_ID_VER'
,p_attribute_03=>'P606_DET_EMAIL,P606_DET_CI_CLIENTE,P606_DET_FACTURA,P606_DET_DIRECCION,P606_DET_CELULAR,P606_DET_FECHA_COMPRA,P606_DET_FECHA_ESTADO,P606_DET_CANAL_COMUNICACION,P606_DET_FECHA_HORA,P606_DET_OBSERVACION,P606_DET_ORIGEN_SETUP,P606_DET_SER_OT,P606_DET_NR'
||'O_OT,P606_DET_F_AGENDADA,P606_DET_H_AGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204931453895038320)
,p_name=>'DA_SEQ_ID_VISITAS'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P606_SEQ_ID_VISITAS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204931518046038321)
,p_event_id=>wwv_flow_imp.id(204931453895038320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204931683569038322)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204933976234038345)
,p_name=>'DA_SEQ_ID_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P606_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157028305769586136)
,p_event_id=>wwv_flow_imp.id(204933976234038345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P606_E_FECHA_ESTADO,P606_E_FECHA_VISITA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204934053303038346)
,p_event_id=>wwv_flow_imp.id(204933976234038345)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204934134543038347)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206346249716901604)
,p_event_id=>wwv_flow_imp.id(204933976234038345)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C003 FEC_PLANILLA ,  ',
'        C012  NRO_PLANILLA,',
'        C019  FECHA_ESTADO,',
'        C021  FECHA_VISITA',
'        ',
'    INTO :P606_E_FEC_PLANILLA,     ',
'    :P606_E_NRO,     ',
'    :P606_E_FECHA_ESTADO,     ',
'    :P606_E_FECHA_VISITA',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_CA_SOLICITUD_SERVICIO_DIST''',
'    and seq_id = :P606_SEQ_ID_EDITAR;',
'END;'))
,p_attribute_02=>'P606_SEQ_ID_EDITAR'
,p_attribute_03=>'P606_E_FEC_PLANILLA,P606_E_NRO,P606_E_FECHA_ESTADO,P606_E_FECHA_VISITA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206346419941901606)
,p_name=>'DA_E_ESTADO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P606_E_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206346502619901607)
,p_event_id=>wwv_flow_imp.id(206346419941901606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P606_E_FECHA_ESTADO := SYSDATE;'
,p_attribute_03=>'P606_E_FECHA_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206346603215901608)
,p_name=>'DA_ACEPTAR_EDITAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(206346089069901602)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206346717905901609)
,p_event_id=>wwv_flow_imp.id(206346603215901608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.CASOLASI.EDITAR_COL(P_SEQ_ID => :P606_SEQ_ID_EDITAR,',
'                     P_ESTADO => :P606_E_ESTADO,',
'                     P_FEC_ESTADO => :P606_E_FECHA_ESTADO,',
'                     P_FEC_VISITA => :P606_E_FECHA_VISITA,',
'                     P_FECHA_REAGENDADA => NULL,',
'                     P_HORA_REAGENDADA => NULL',
'                     );',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_ACEPTAR_EDITAR: ''||SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P606_SEQ_ID_EDITAR,P606_E_ESTADO,P606_E_FECHA_ESTADO,P606_E_FECHA_VISITA'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206346917264901611)
,p_event_id=>wwv_flow_imp.id(206346603215901608)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(106965233548997919)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206346800644901610)
,p_event_id=>wwv_flow_imp.id(206346603215901608)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204934134543038347)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157028493038586137)
,p_event_id=>wwv_flow_imp.id(206346603215901608)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P606_E_NRO,P606_E_FEC_PLANILLA,P606_E_FECHA_VISITA,P606_E_ESTADO,P606_E_FECHA_ESTADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206347012803901612)
,p_name=>'DA_CANCELAR_EDITAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(206346111614901603)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206347124508901613)
,p_event_id=>wwv_flow_imp.id(206347012803901612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204934134543038347)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157028566627586138)
,p_event_id=>wwv_flow_imp.id(206347012803901612)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P606_E_NRO,P606_E_FEC_PLANILLA,P606_E_FECHA_VISITA,P606_E_ESTADO,P606_E_FECHA_ESTADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206347263422901614)
,p_name=>'DA_HOY'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204931972381038325)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206347384075901615)
,p_event_id=>wwv_flow_imp.id(206347263422901614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P606_DET_FECHA_REAGENDADA := SYSDATE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_HOY: '' || SQLERRM);',
'END;    '))
,p_attribute_03=>'P606_DET_FECHA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206347427992901616)
,p_name=>'DA_SIGUIENTE_DIA'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204932089779038326)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206347551944901617)
,p_event_id=>wwv_flow_imp.id(206347427992901616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    DIA_SEMANA VARCHAR2(200);',
'BEGIN',
'   :P606_DET_FECHA_REAGENDADA := sysdate + 1;',
'   BEGIN',
'           SELECT TO_CHAR( TO_DATE(:P606_DET_FECHA_REAGENDADA,''DD/MM/YYYY''), ''DAY'')',
'           INTO DIA_SEMANA',
'           FROM DUAL;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'         APEX_DEBUG.ERROR(''DA_SIGUIENTE_DIA_1: '' || DIA_SEMANA);',
'   END ;',
unistr('   if TRIM(DIA_SEMANA) = ''S\00C1BADO'' OR TRIM(DIA_SEMANA) = ''SATURDAY'' THEN 	'),
'        :P606_DET_FECHA_REAGENDADA:=  sysdate+3; ',
'    elsif TRIM(DIA_SEMANA) = ''DOMINGO'' OR TRIM(DIA_SEMANA) = ''SUNDAY'' THEN ',
'        :P606_DET_FECHA_REAGENDADA:=  sysdate +2;',
'    end if;	',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_SIGUIENTE_DIA_2: '' || SQLERRM);',
'END;    '))
,p_attribute_03=>'P606_DET_FECHA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206347668506901618)
,p_name=>'DA_5_DIAS'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204932124222038327)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206347703914901619)
,p_event_id=>wwv_flow_imp.id(206347668506901618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    DIA_SEMANA VARCHAR2(200);',
'BEGIN',
'   :P606_DET_FECHA_REAGENDADA := sysdate + 5;',
'   BEGIN',
'           SELECT TO_CHAR( TO_DATE(:P606_DET_FECHA_REAGENDADA,''DD/MM/YYYY''), ''DAY'')',
'           INTO DIA_SEMANA',
'           FROM DUAL;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'         APEX_DEBUG.ERROR(''DA_5_DIAS_1: '' || DIA_SEMANA);',
'   END ;',
unistr('   if TRIM(DIA_SEMANA) = ''S\00C1BADO'' OR TRIM(DIA_SEMANA) = ''SATURDAY'' THEN 	'),
'        :P606_DET_FECHA_REAGENDADA:=  sysdate+7; ',
'    elsif TRIM(DIA_SEMANA) = ''DOMINGO'' OR TRIM(DIA_SEMANA) = ''SUNDAY'' THEN ',
'        :P606_DET_FECHA_REAGENDADA:=  sysdate +6;',
'    end if;	',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_5_DIAS_2: '' || SQLERRM);',
'END;    '))
,p_attribute_03=>'P606_DET_FECHA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206347855796901620)
,p_name=>'DA_10_DIAS'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204932263939038328)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206347968912901621)
,p_event_id=>wwv_flow_imp.id(206347855796901620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    DIA_SEMANA VARCHAR2(200);',
'BEGIN',
'   :P606_DET_FECHA_REAGENDADA := sysdate + 10;',
'   BEGIN',
'           SELECT TO_CHAR( TO_DATE(:P606_DET_FECHA_REAGENDADA,''DD/MM/YYYY''), ''DAY'')',
'           INTO DIA_SEMANA',
'           FROM DUAL;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'         APEX_DEBUG.ERROR(''DA_10_DIAS_1: '' || DIA_SEMANA);',
'   END ;',
unistr('   if TRIM(DIA_SEMANA) = ''S\00C1BADO'' OR TRIM(DIA_SEMANA) = ''SATURDAY'' THEN 	'),
'        :P606_DET_FECHA_REAGENDADA:=  sysdate+12; ',
'    elsif TRIM(DIA_SEMANA) = ''DOMINGO'' OR TRIM(DIA_SEMANA) = ''SUNDAY'' THEN ',
'        :P606_DET_FECHA_REAGENDADA:=  sysdate +11;',
'    end if;	',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_10_DIAS_2: '' || SQLERRM);',
'END;    '))
,p_attribute_03=>'P606_DET_FECHA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206348011913901622)
,p_name=>'DA_8_A_10'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204932350588038329)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206348108161901623)
,p_event_id=>wwv_flow_imp.id(206348011913901622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P606_DET_HORA_REAGENDADA := ''08:00 A 10:00 Hs.'';'
,p_attribute_03=>'P606_DET_HORA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206348377959901625)
,p_name=>'DA_10_A_12'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204932421648038330)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206348422972901626)
,p_event_id=>wwv_flow_imp.id(206348377959901625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P606_DET_HORA_REAGENDADA := ''10:00 A 12:00 Hs.'';'
,p_attribute_03=>'P606_DET_HORA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206348501412901627)
,p_name=>'DA_13_A_15'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204932582911038331)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206348681106901628)
,p_event_id=>wwv_flow_imp.id(206348501412901627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P606_DET_HORA_REAGENDADA := ''13:00 A 15:00 Hs.'';'
,p_attribute_03=>'P606_DET_HORA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206348793319901629)
,p_name=>'DA_15_A_18'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204932661134038332)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206348801888901630)
,p_event_id=>wwv_flow_imp.id(206348793319901629)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P606_DET_HORA_REAGENDADA := ''15:00 A 18:00 Hs.'';'
,p_attribute_03=>'P606_DET_HORA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206349009675901632)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204933063552038336)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206349158412901633)
,p_event_id=>wwv_flow_imp.id(206349009675901632)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204931683569038322)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206349287962901634)
,p_name=>'DA_ACEPTAR_REAGENDA'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204932935726038335)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206349394707901635)
,p_event_id=>wwv_flow_imp.id(206349287962901634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.CASOLASI.REAGENDAR(P_SEQ_ID => :P606_SEQ_ID_VISITAS,',
'                     P_FECHA_REAGENDADA => :P606_DET_FECHA_REAGENDADA,',
'                     P_HORA_REAGENDADA => :P606_DET_HORA_REAGENDADA',
'                     );',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_ACEPTAR_REAGENDAR: ''||SQLERRM);',
'END;',
'',
'',
'                   '))
,p_attribute_02=>'P606_SEQ_ID_VISITAS,P606_DET_FECHA_REAGENDADA,P606_DET_HORA_REAGENDADA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206349515773901637)
,p_event_id=>wwv_flow_imp.id(206349287962901634)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204931683569038322)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206349797674901639)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204933649671038342)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206349936309901641)
,p_event_id=>wwv_flow_imp.id(206349797674901639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
,p_attribute_02=>'GUARDAR'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206349895142901640)
,p_event_id=>wwv_flow_imp.id(206349797674901639)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157028859553586141)
,p_name=>'DA_VER_FACTURA'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P606_SEQ_ID_VER_FACTURA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157028978752586142)
,p_event_id=>wwv_flow_imp.id(157028859553586141)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'VER FACTURA'
,p_attribute_02=>'IMAGEN'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157029339678586146)
,p_name=>'DA_LIMPIAR_CAMPOS'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(157029213656586145)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157029421318586147)
,p_event_id=>wwv_flow_imp.id(157029339678586146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P606_COD_DEPARTAMENTO,P606_CANAL_COMUNICACION,P606_FEC_PLANILLA_HASTA,P606_FEC_PLANILLA,P606_ESTADO,P606_ORIGEN_SETUP,P606_CATEGORIA_PRODUCTO,P606_DISTRIBUIDOR,P606_PROVEE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(206349660658901638)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' if  :P606_SEQ_ID_VER  is not null then ',
' ',
' APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE ( p_collection_name => ''COL_CA_SOLICITUD_SERVICIO_DIST'',',
'                                            p_seq =>  :P606_SEQ_ID_VER ,',
'                                            p_attr_number =>  24,',
'                                            p_attr_value => :P606_DET_OBSERVACION); ',
' ',
' APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE ( p_collection_name => ''COL_CA_SOLICITUD_SERVICIO_DIST'',',
'                                            p_seq =>  :P606_SEQ_ID_VER ,',
'                                            p_attr_number =>  37,',
'                                            p_attr_value => ''E''); ',
'',
'end if;',
'',
'',
'    INV.CASOLASI.GUARDAR_DATOS;',
'EXCEPTION',
' WHEN OTHERS THEN',
'    raise_application_error(-20201,''CASOLASI -PR_GUARDAR_DATOS: UPDATE ''||sqlerrm);   ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Datos guardado exitosanente.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(204750490997882312)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- PRE FORM',
'--  Inicializa_Globales;',
' ',
'--EFECTUA : Crea las variables globales en caso de que ',
'--          no existan y almacena los valores en',
'--          variables locales.',
'begin',
'    --Almacena los valores en variables locales',
' :P606_COD_USUARIO := NVL(:P_COD_USUARIO,USER);',
' :P606_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
' :P606_NOM_EMPRESA := NVL(:P_NOM_EMPRESA,NULL);',
' :P606_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,NULL);',
' :P606_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL);',
' :P606_COD_MODULO := NVL(:P_COD_MODULO,''CA'');',
'  :P606_COD_FORMA   := ''CASOLASI'' ;',
'end;',
'--  Inicializa_Locales;',
'--EFECTUA : Inicializa las variables globales locales',
'--          a la forma.',
':P606_COD_MODULO := ''CA'';',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_CA_SOLICITUD_SERVICIO_DIST'');',
'--when new form instance',
':P606_ORIGEN_SETUP:=''T'';',
'--canal;',
'--carga_departamento;',
'--CARGA_STA;',
'--ACTUALIZA_DATOS;',
'-- end when new form instance',
'--valores inciales',
':P606_ESTADO:= ''T'';',
':P606_DISTRIBUIDOR := ''T'';',
':P606_CATEGORIA_PRODUCTO := ''T'';',
':P606_PROVEEDOR := ''T'';',
':P606_CANAL_COMUNICACION := ''T'';',
':P606_COD_DEPARTAMENTO := ''T'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
