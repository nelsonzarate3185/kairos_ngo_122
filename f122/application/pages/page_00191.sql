prompt --application/pages/page_00191
begin
--   Manifest
--     PAGE: 00191
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
 p_id=>191
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCCLIDOCVEN'
,p_alias=>'CCCLIDOCVEN'
,p_step_title=>'CCCLIDOCVEN'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20221121084815'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39691045269026641)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39691261941026643)
,p_plug_name=>'Historial'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SS.COD_DOCUMENTO,',
'	   S.COD_EMPRESA,',
'	   S.COD_CLIENTE, ',
'	   P.NOMBRE ||''  (''||S.COD_CLIENTE||'')'' NOMBRE,',
'       CASE ',
'		WHEN NVL(S.LIMITE_CREDITO,1) > 0 THEN',
'			NVL(S.LIMITE_CREDITO,1)',
'		ELSE 1 ',
'	   END LINEA,',
'	  (SELECT  C.DESCRIPCION',
'		 FROM DIREC_PERSONAS D, CIUDADES C',
'		WHERE D.COD_PERSONA = S.COD_PERSONA',
'		  AND D.COD_PAIS = C.COD_PAIS',
'		  AND D.COD_PROVINCIA = C.COD_PROVINCIA',
'		  AND D.COD_CIUDAD = C.COD_CIUDAD AND ROWNUM =1 )LOCALIDAD,',
'	  PV.NOMBRE VENDEDOR,',
'      ''- ''||SS.DESCRIPCION DOCUMENTO   ,',
'	  SS.FECHA_VENCIMIENTO,',
'	  SS.OBSERVACION',
'',
' FROM CC_COMPROBANTES_PRESENTADOS C, PERSONAS P,',
'	  CC_CLIENTES S,CC_DOCUMENTOS_CARPETA D,',
'	  FV_VENDEDORES FV ,PERSONAS PV,',
'	  ZONAS_GEOGRAFICAS ZO,DIREC_PERSONAS DP,',
'	  VIEW_DOC_VENCIDOS  SS',
'WHERE S.COD_EMPRESA = ''1''',
'  AND C.COD_CLIENTE = S.COD_CLIENTE',
'  AND S.COD_PERSONA = P.COD_PERSONA',
'  AND S.COD_CLIENTE = C.COD_CLIENTE',
'  AND SS.COD_CLIENTE = S.COD_CLIENTE',
'  AND D.COD_DOCUMENTO = C.COD_DOCUMENTO',
'  AND FV.COD_EMPRESA = S.COD_EMPRESA',
'  AND FV.COD_VENDEDOR = S.COD_VENDEDOR',
'  AND FV.COD_PERSONA = PV.COD_PERSONA',
'  AND (S.COD_CLIENTE = :P_COD_CLIENTE_DES OR :P_COD_CLIENTE_DES IS NULL)',
'  AND (S.COD_VENDEDOR = :P_COD_VENDEDOR OR :P_COD_VENDEDOR IS NULL)',
'  AND ZO.COD_ZONA(+) = S.COD_ZONA',
'  AND S.COD_PERSONA     = DP.COD_PERSONA (+)',
'  AND DP.POR_DEFECTO(+)  = ''S''',
'  AND ( :P_COD_PAIS        IS NULL OR DP.COD_PAIS       = :P_COD_PAIS        )',
'  AND ( :P_COD_PROVINCIA   IS NULL OR DP.COD_PROVINCIA  = :P_COD_PROVINCIA   )',
'  AND ( :P_COD_CIUDAD      IS NULL OR DP.COD_CIUDAD     = :P_COD_CIUDAD      )',
'  AND ( :P_COD_COBRADOR    IS NULL OR S.COD_COBRADOR    = :P_COD_COBRADOR    )',
'  AND ( :P_COD_ZONA        IS NULL OR S.COD_ZONA        = :P_COD_ZONA        )',
'  AND ( :P_COD_CORPORACION IS NULL OR S.COD_CORPORACION = :P_COD_CORPORACION )',
'  AND ( :P_COD_SUCURSAL    IS NULL OR S.COD_SUCURSAL    = :P_COD_SUCURSAL    )',
'  AND ( :P_COD_SECTOR      IS NULL OR P.COD_SECTOR      = :P_COD_SECTOR      )',
'  AND ( :P_TIP_CLIENTE     IS NULL OR S.TIP_CLIENTE     = :P_TIP_CLIENTE   OR S.TIP_CLIENTE     = :P_TIP_CLIENTE1  OR S.TIP_CLIENTE     = :P_TIP_CLIENTE2  )',
'  AND ( :P_ES_FISICA	   IS NULL OR P.ES_FISICA       = :P_ES_FISICA)',
'  AND ( :P_TIPO_SOCIEDAD   IS NULL OR P.TIPO_SOCIEDAD   = :P_TIPO_SOCIEDAD)',
'  AND ( :P_ESTADO          IS NULL OR S.ESTADO          = :P_ESTADO          )',
'  AND ( :P_GRUPO_ZONA 	   IS NULL OR ZO.COD_GRUPO      = :P_GRUPO_ZONA)',
'  AND NVL(S.LIMITE_CREDITO,0) >= NVL(:P_LINEA,0)',
'GROUP BY SS.COD_DOCUMENTO, S.COD_CLIENTE, P.NOMBRE, S.COD_EMPRESA,S.LIMITE_CREDITO, S.COD_PERSONA, PV.NOMBRE,',
'SS.DESCRIPCION,SS.FECHA_VENCIMIENTO,SS.VENDEDOR, SS.OBSERVACION',
'ORDER BY TO_NUMBER(SS.COD_DOCUMENTO) ASC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Historial'
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
 p_id=>wwv_flow_imp.id(42074706250341110)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>42074706250341110
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42074835741341111)
,p_db_column_name=>'COD_DOCUMENTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Documento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42074931474341112)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42075041565341113)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42075146077341114)
,p_db_column_name=>'NOMBRE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42075284190341115)
,p_db_column_name=>'LINEA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Linea'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42075376120341116)
,p_db_column_name=>'LOCALIDAD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Localidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42075457053341117)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42075596272341118)
,p_db_column_name=>'DOCUMENTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Documento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42075642007341119)
,p_db_column_name=>'FECHA_VENCIMIENTO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42075739807341120)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(46849058678578609)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'468491'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_DOCUMENTO:COD_EMPRESA:COD_CLIENTE:NOMBRE:LINEA:LOCALIDAD:VENDEDOR:DOCUMENTO:FECHA_VENCIMIENTO:OBSERVACION'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39691134510026642)
,p_name=>'P191_P_COD_PAIS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(39691045269026641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39691371971026644)
,p_name=>'P191_P_COD_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(39691045269026641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39691498571026645)
,p_name=>'P191_P_COD_CIUDAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(39691045269026641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39691572785026646)
,p_name=>'P191_P_ES_FISICA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(39691045269026641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39691666801026647)
,p_name=>'P191_P_COD_PROVINCIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(39691045269026641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39691750962026648)
,p_name=>'P191_P_COD_ZONA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(39691045269026641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39691850867026649)
,p_name=>'P191_P_TIP_CLIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(39691045269026641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39691924963026650)
,p_name=>'P191_P_ESTADO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(39691045269026641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42073895178341101)
,p_name=>'P191_P_COD_COBRADOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(39691045269026641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42073977591341102)
,p_name=>'P191_P_COD_CORPORACION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(39691045269026641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42074093995341103)
,p_name=>'P191_P_COD_SECTOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(39691045269026641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42074171592341104)
,p_name=>'P191_P_TIP_CLIENTE2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(39691045269026641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42074240736341105)
,p_name=>'P191_P_TIPO_SOCIEDAD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(39691045269026641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42074310226341106)
,p_name=>'P191_P_GRUPO_ZONA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(39691045269026641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42074440506341107)
,p_name=>'P191_P_LINEA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(39691045269026641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42074547631341108)
,p_name=>'P191_P_COD_VENDEDOR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(39691045269026641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42074660513341109)
,p_name=>'P191_P_COD_CLIENTE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(39691045269026641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
