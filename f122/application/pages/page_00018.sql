prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Rendicion de Ots Autorizados'
,p_alias=>'RENDICION-DE-OTS-AUTORIZADOS'
,p_step_title=>unistr('Rendici\00F3n de Ots Autorizados')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doDescarga(P_FECHA_HASTA,P_FECHA_DESDE,P_TIPO,P_NRO_PRO_INICIAL,P_COD_DISTRIBUIDOR,P_NRO_FINAL,P_SERIE,P_FEC_CIE_INICIAL,P_COD_ORIGEN,P_NRO_PRO_FINAL,P_COD_PROVEEDOR,P_COD_EMPRESA,P_FEC_REN_INI1,P_NRO_INICIAL,P_COD_SUCURSAL,P_FEC_FINAL,P_COD'
||'_ARTICULO_HAS,P_FEC_CIE_FINAL,P_FEC_INICIAL,P_FEC_REN_FIN,P_COD_ARTICULO_DES,P_FEC_REN_INIL,P_FEC_REN_FIN){',
'    console.log($v(''P18_URL''));',
'    window.open(unescape($v(''P18_URL'').replace(/&amp;/g,''g'')),"_blank");',
'    //window.open((vURL.replace(/&amp;/g,''g'')),"_blank");',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#bt_ejecutar{',
'    margin-left: 20%;',
'    width: 60%;',
'}',
'',
'#bt_ots_rendida{',
'    margin-left: 20%;',
'    width: 60%;',
'}',
'',
'#bt_rendir{',
'    margin-left: 20%;',
'    width: 60%;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20250213100104'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7325411849529601)
,p_plug_name=>unistr('Rendici\00F3n de Ots Autorizados')
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46154207541357419)
,p_plug_name=>unistr('Periodo de Recepci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46154320198357420)
,p_plug_name=>unistr('Periodo de Rendici\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46154452187357421)
,p_plug_name=>'Periodo de Fin'
,p_parent_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46154597418357422)
,p_plug_name=>'Periodo de Entrega'
,p_parent_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46154616468357423)
,p_plug_name=>'Principal 2'
,p_parent_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44786264766780537)
,p_plug_name=>unistr('Repuestos entregados en garant\00EDa - VTREOTAUT')
,p_parent_plug_id=>wwv_flow_imp.id(46154616468357423)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_region_attributes=>'style="margin-top:10px;"'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OT.COD_PROVEEDOR, ',
'		   P.NOMBRE,',
'	       D.COD_ARTICULO,',
'		   A.DESCRIPCION DESC_ARTICULO,',
'	       C.FEC_ENT_SAL, ',
'		   OT.TIP_COMPROBANTE, ',
'	       OT.SER_COMPROBANTE,',
'		   OT.NRO_COMPROBANTE,',
'		   OT.NRO_OT_PROVEEDOR,',
'		   OT.COD_DISTRIBUIDOR,',
'		   SUM((DECODE( NVL( IND_ENT_SAL, ''N'' ), ''S'', NVL( D.CANTIDAD, 0 ), NVL( D.CANTIDAD, 0 ) * -1 ) )) CANTIDAD,',
'			INV.VTRRENOT.PRECIO(PI_COD_ARTICULO => D.COD_ARTICULO,',
'							    PI_COD_EMPRESA  => :P18_COD_EMPRESA,',
'							    PI_COD_CLIENTE  => CL.COD_CLIENTE,',
'							    PI_FEC_ENT_SAL  => C.FEC_ENT_SAL) PRECIO,',
'       		INV.VTRRENOT.BASE(PI_PRECIO_BASE 	   => A.PRECIO_BASE,',
'						      PI_TIPO_CAMBIO_DIA   => M.TIPO_CAMBIO_DIA,',
'						      PI_COD_EMPRESA 	   => :P18_COD_EMPRESA,',
'						      PI_COD_GRUPO_ART     => A.COD_GRUPO_ART) BASE,',
'			   ''REPUESTO'' TIPO,',
'      --------------- ',
'			CASE ',
'				WHEN NVL(D.IND_PRECIO,''N'') =''S'' THEN',
'					''121''',
'				ELSE',
'					A.COD_CATEGORIA',
'			END  COD_CATEGORIA,',
'			D.PRECIO_VENTA,',
'		    OT.NRO_COMPROBANTE NROCMP,',
'			DECODE(INSTR(UPPER(A.DESCRIPCION), ''COMPRA LOCAL''),0,1,2) COD_TIPO,',
'			NVL(INV.VTRRENOT.CF_PRECIO (PI_COD_CATEGORIA => INV.VTRRENOT.CATEGORIA(PI_IND_PRECIO => D.IND_PRECIO,',
'														  						   PI_COD_CATEGORIA => A.COD_CATEGORIA),',
'												                                   PI_PRECIO_VENTA => D.PRECIO_VENTA,',
'															   PI_PRECIO => INV.VTRRENOT.PRECIO(PI_COD_ARTICULO => D.COD_ARTICULO,',
'																														   PI_COD_EMPRESA   => :P18_COD_EMPRESA, ',
'																													       PI_COD_CLIENTE    => CL.COD_CLIENTE,',
'																													       PI_FEC_ENT_SAL     => C.FEC_ENT_SAL),',
'															   PI_BASE => INV.VTRRENOT.BASE(PI_PRECIO_BASE 	   => A.PRECIO_BASE,',
'																							PI_TIPO_CAMBIO_DIA => M.TIPO_CAMBIO_DIA,',
'																							PI_COD_EMPRESA 	   => :P18_COD_EMPRESA,',
'																							PI_COD_GRUPO_ART   => A.COD_GRUPO_ART)),0) CF_PRECIO',
'			',
' FROM ST_ENTSAL_CAB C,',
'	      ST_ENTSAL_DET D,',
'	      ST_ARTICULOS A,',
'	      ST_MOTIVO_ENT_SAL MO,',
'	      VT_ORDENES_TRABAJO OT,',
'		  ST_ARTICULOS A1,',
'		  CM_PROVEEDORES PRO,',
'		  CC_CLIENTES CL,',
'		  MONEDAS M,',
'		  PERSONAS P',
'       ',
'WHERE OT.COD_EMPRESA = :P18_COD_EMPRESA ',
'  AND ( C.COD_SUCURSAL = :P18_COD_SUCURSAL OR :P18_COD_SUCURSAL IS NULL )',
'  AND M.COD_MONEDA = A.COD_MONEDA_BASE',
'  /*AND ( $P{P_COD_ARTICULO_DES  IS NULL OR  A.COD_ARTICULO =  $P{P_COD_ARTICULO_DES )',
'  AND ( $P{P_COD_ARTICULO_HAS  IS NULL OR A.COD_ARTICULO =  $P{P_COD_ARTICULO_HAS )*/',
'  AND (( OT.FEC_COMPROBANTE >= TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  OR  TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'  AND ( OT.FEC_COMPROBANTE <=  TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'  AND (( OT.FEC_CIERRE >= TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'  AND ( OT.FEC_CIERRE <=  TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')  OR TO_DATE( :P18_FEC_CIE_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'  AND (OT.COD_DISTRIBUIDOR = :P18_COD_DISTRIBUIDOR  OR   :P18_COD_DISTRIBUIDOR  IS NULL)',
'  AND (OT.COD_PROVEEDOR = :P18_COD_PROVEEDOR  OR  :P18_COD_PROVEEDOR   IS NULL)',
'  AND (OT.COD_ORIGEN = :P18_COD_ORIGEN  OR :P18_COD_ORIGEN  IS NULL)          ',
'  AND (OT.SER_COMPROBANTE = :P18_SER_COMPROBANTE  OR :P18_SER_COMPROBANTE  IS NULL)',
'  AND (OT.NRO_COMPROBANTE BETWEEN NVL( :P18_NRO_INICIAL ,1) AND NVL( :P18_NRO_FINAL ,99999999999))',
'  AND (OT.NRO_OT_PROVEEDOR BETWEEN NVL( :P18_NRO_PRO_INICIAL  ,1) AND NVL( :P18_NRO_PRO_FINAL   ,99999999999))',
'  AND PRO.COD_EMPRESA = OT.COD_EMPRESA',
'  AND PRO.COD_PROVEEDOR = OT.COD_PROVEEDOR',
'  AND PRO.COD_EMPRESA = CL.COD_EMPRESA',
'  AND PRO.COD_PERSONA = CL.COD_PERSONA',
'  AND PRO.COD_PERSONA = P.COD_PERSONA',
'  AND NVL(OT.ANULADO,''N'')<>''S''',
'  AND C.COD_EMPRESA = OT.COD_EMPRESA',
'  AND C.TIP_COMPROBANTE_REF = OT.TIP_COMPROBANTE',
'  AND C.SER_COMPROBANTE_REF = OT.SER_COMPROBANTE',
'  AND C.NRO_COMPROBANTE_REF = OT.NRO_COMPROBANTE',
'  AND A1.COD_EMPRESA = OT.COD_EMPRESA',
'  AND A1.COD_ARTICULO = OT.COD_ARTICULO',
'  AND (''RP'' = :P18_TIPO  OR :P18_TIPO  IS NULL)',
'  AND C.COD_EMPRESA = D.COD_EMPRESA',
'  AND C.TIP_ENT_SAL = D.TIP_ENT_SAL',
'  AND C.SER_ENT_SAL = D.SER_ENT_SAL',
'  AND C.NUM_ENT_SAL = D.NUM_ENT_SAL',
'  AND D.COD_EMPRESA = A.COD_EMPRESA',
'  AND D.COD_ARTICULO = A.COD_ARTICULO',
'  AND C.COD_MOTIVO_ENT_SAL IN (''55'')',
'  AND NVL(IND_RENDIDO,''N'') <> ''S''',
'  AND C.COD_MOTIVO_ENT_SAL  = MO.COD_MOTIVO_ENT_SAL(+)',
'  AND NVL( OT.IND_GARANTIA, ''N'' ) = ''S''',
'  AND :P18_VTREOTAUT = 1',
'GROUP BY C.COD_EMPRESA,D.COD_IVA,C.COD_MOTIVO_ENT_SAL,D.COD_ARTICULO,',
'		 A.DESCRIPCION,A.COD_LINEA,A.COD_FAMILIA,A.COD_RUBRO,',
'		 A1.COD_ARTICULO,A1.DESCRIPCION,C.FEC_ENT_SAL,OT.TIP_COMPROBANTE, ',
'		 OT.SER_COMPROBANTE, OT.NRO_COMPROBANTE,OT.COD_CLIENTE,OT.NOM_CLIENTE,',
'		 OT.COD_DISTRIBUIDOR,CL.COD_CLIENTE,A.PRECIO_BASE,M.TIPO_CAMBIO_DIA,',
'		 A.COD_EMPRESA,A.COD_ARTICULO,A.COD_GRUPO_ART,OT.SER_COMPROBANTE,',
'		 OT.NRO_COMPROBANTE,OT.NRO_OT_PROVEEDOR,OT.COD_PROVEEDOR,P.NOMBRE,',
'		 A.COD_CATEGORIA,D.PRECIO_VENTA,OT.FEC_COMPROBANTE,D.IND_PRECIO',
'UNION ALL',
' ',
' SELECT OT.COD_PROVEEDOR, ',
'		    P.NOMBRE,',
'			MO.COD_ARTICULO,',
'			A.DESCRIPCION DESC_ARTICULO,',
'			OT.FEC_COMPROBANTE,',
'			OT.TIP_COMPROBANTE,',
'			OT.SER_COMPROBANTE,',
'			OT.NRO_COMPROBANTE,',
'			OT.NRO_OT_PROVEEDOR,',
'			OT.COD_DISTRIBUIDOR,',
'			CASE ',
'				WHEN NVL(MO.IND_RECLAMO,''N'')=''S'' THEN 0',
'			ELSE',
'				SUM(NVL(MO.CANTIDAD,1)) ',
'			END CANTIDAD,',
'			SUM(MO.MONTO) PRECIO,',
'	       ------------------------------------------------------',
'			SUM(MO.MONTO) BASE,',
'	        ''MANO DE OBRA'' TIPO, ',
'	       --------------- ',
'			NULL CATEGORIA,',
'			0 PRECIO_VENTA,',
'			OT.NRO_COMPROBANTE NROCMP,',
'			DECODE(INSTR(UPPER(A.DESCRIPCION), ''FLETE''),0,4,3) COD_TIPO,',
'			NVL(INV.VTRRENOT.CF_PRECIO (PI_COD_CATEGORIA => NULL ,',
'        								PI_PRECIO_VENTA => 0,',
'                                        PI_PRECIO => SUM(MO.MONTO) ,',
'                                        PI_BASE => SUM(MO.MONTO)),0) CF_PRECIO',
'   FROM VT_ORDENES_TRABAJO_MO MO,',
'	        ST_ARTICULOS A,',
'			VT_ORDENES_TRABAJO OT,',
'			ST_ARTICULOS A1,',
'			CM_PROVEEDORES PRO,',
'			CC_CLIENTES CL,',
'			MONEDAS M,',
'			PERSONAS P',
'  WHERE OT.COD_EMPRESA =  :P18_COD_EMPRESA ',
'	AND M.COD_MONEDA = A.COD_MONEDA_BASE',
'	/*AND ( $P{P_COD_ARTICULO_DES  IS NULL OR  A.COD_ARTICULO =  $P{P_COD_ARTICULO_DES )',
'	AND ( $P{P_COD_ARTICULO_HAS  IS NULL OR A.COD_ARTICULO =  $P{P_COD_ARTICULO_HAS )*/',
'	AND (( OT.FEC_COMPROBANTE >=  TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  IS NULL )',
'	AND ( OT.FEC_COMPROBANTE <= TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')  OR TO_DATE( :P18_FEC_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'	AND (( OT.FEC_CIERRE >=TO_DATE( :P18_FEC_CIE_INICIAL,''DD/MM/YYYY'') OR TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'	AND ( OT.FEC_CIERRE <= TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')  OR  TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'	AND (OT.COD_DISTRIBUIDOR = :P18_COD_DISTRIBUIDOR  OR :P18_COD_DISTRIBUIDOR  IS NULL)',
'	AND (OT.COD_PROVEEDOR = :P18_COD_PROVEEDOR  OR :P18_COD_PROVEEDOR   IS NULL)',
'	AND (OT.COD_ORIGEN = :P18_COD_ORIGEN  OR :P18_COD_ORIGEN  IS NULL)          ',
'	AND (OT.SER_COMPROBANTE =  :P18_SER_COMPROBANTE  OR :P18_SER_COMPROBANTE  IS NULL)',
'	AND (OT.NRO_COMPROBANTE BETWEEN NVL( :P18_NRO_INICIAL ,1) AND NVL( :P18_NRO_FINAL ,99999999999))',
'	AND (OT.NRO_OT_PROVEEDOR BETWEEN NVL( :P18_NRO_PRO_INICIAL   ,1) AND NVL( :P18_NRO_PRO_FINAL ,99999999999))',
'	AND PRO.COD_EMPRESA = OT.COD_EMPRESA',
'	AND PRO.COD_PROVEEDOR = OT.COD_PROVEEDOR',
'	AND PRO.COD_EMPRESA = CL.COD_EMPRESA',
'	AND PRO.COD_PERSONA = CL.COD_PERSONA',
'	AND PRO.COD_PERSONA = P.COD_PERSONA',
'	AND MO.COD_EMPRESA = OT.COD_EMPRESA',
'	AND MO.TIP_COMPROBANTE = OT.TIP_COMPROBANTE',
'	AND MO.SER_COMPROBANTE = OT.SER_COMPROBANTE',
'	AND MO.NRO_COMPROBANTE = OT.NRO_COMPROBANTE',
'	AND A1.COD_EMPRESA = OT.COD_EMPRESA',
'	AND A1.COD_ARTICULO = OT.COD_ARTICULO ',
'	AND (''MO'' = :P18_TIPO  OR :P18_TIPO  IS NULL)',
'	AND NVL(OT.ANULADO,''N'') <> ''S''',
'	AND MO.COD_EMPRESA = A.COD_EMPRESA',
'	AND MO.COD_ARTICULO = A.COD_ARTICULO',
'	AND NVL(IND_RENDIDO,''N'') <> ''S''',
'	AND (''MO'' = :P18_TIPO  OR :P18_TIPO  IS NULL)',
'	AND NVL( OT.IND_GARANTIA, ''N'' ) = ''S''',
'    AND :P18_VTREOTAUT = 1',
'GROUP BY OT.COD_EMPRESA,MO.COD_ARTICULO, A.DESCRIPCION,A.COD_LINEA,A.COD_FAMILIA,',
'		 A.COD_RUBRO,A1.COD_ARTICULO,A1.DESCRIPCION,OT.FEC_COMPROBANTE,OT.TIP_COMPROBANTE,',
'		 OT.SER_COMPROBANTE,OT.NRO_COMPROBANTE,OT.COD_CLIENTE,OT.NOM_CLIENTE,OT.COD_DISTRIBUIDOR,',
'		 CL.COD_CLIENTE,A.PRECIO_BASE,M.TIPO_CAMBIO_DIA,A.COD_EMPRESA,A.COD_ARTICULO,',
'		 A.COD_GRUPO_ART,OT.SER_COMPROBANTE,OT.NRO_COMPROBANTE,OT.NRO_OT_PROVEEDOR,OT.COD_PROVEEDOR,',
'		 P.NOMBRE,MO.IND_RECLAMO',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P18_VTREOTAUT,P18_COD_EMPRESA,P18_COD_SUCURSAL,P18_FEC_INICIAL,P18_FEC_FINAL,P18_FEC_CIE_INICIAL,P18_FEC_CIE_FINAL,P18_COD_DISTRIBUIDOR,P18_COD_PROVEEDOR,P18_COD_ORIGEN,P18_SER_COMPROBANTE,P18_NRO_INICIAL,P18_NRO_FINAL,P18_NRO_PRO_INICIAL,P18_NRO_PRO'
||'_FINAL,P18_TIPO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Repuestos entregados en garant\00EDa - VTREOTAUT')
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
 p_id=>wwv_flow_imp.id(46157236203357449)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>46157236203357449
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46157398663357450)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46273849959139301)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46273940313139302)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46274091073139303)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46274144785139304)
,p_db_column_name=>'FEC_ENT_SAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec Ent Sal'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46274280081139305)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46274350432139306)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46274406618139307)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Nro.'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46274528277139308)
,p_db_column_name=>'NRO_OT_PROVEEDOR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nro. Ot Proveedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46274622388139309)
,p_db_column_name=>'COD_DISTRIBUIDOR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Distribuidor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46274732040139310)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46274857813139311)
,p_db_column_name=>'PRECIO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46274926357139312)
,p_db_column_name=>'BASE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Base'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46275080317139313)
,p_db_column_name=>'TIPO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46275125932139314)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46275247227139315)
,p_db_column_name=>'PRECIO_VENTA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Precio Venta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46275325595139316)
,p_db_column_name=>'NROCMP'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nrocmp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46275436886139317)
,p_db_column_name=>'COD_TIPO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Tipo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46275510162139318)
,p_db_column_name=>'CF_PRECIO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Costo Unitario'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(46311328243147441)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'463114'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SER_COMPROBANTE:NRO_COMPROBANTE:NRO_OT_PROVEEDOR:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:CF_PRECIO::APXWS_CC_001'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(46312418859166411)
,p_report_id=>wwv_flow_imp.id(46311328243147441)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'ABS( S * K)'
,p_format_mask=>'999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Costo Total'
,p_report_label=>'Costo Total'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46275700830139320)
,p_plug_name=>'Resumen por Tipo'
,p_parent_plug_id=>wwv_flow_imp.id(44786264766780537)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum((decode( nvl( ind_ent_sal, ''N'' ), ''S'', nvl( d.cantidad, 0 ), nvl( d.cantidad, 0 ) * -1 ) )) cantidad,',
'		   INV.VTRRENOT.PRECIO(PI_COD_ARTICULO => d.cod_articulo,',
'													   PI_COD_EMPRESA  => :P18_COD_EMPRESA,',
'													   PI_COD_CLIENTE  => CL.COD_CLIENTE,',
'													   PI_FEC_ENT_SAL  => c.fec_ent_sal) PRECIO,  ',
'	 ------------------------------------------------------',
'		   INV.VTRRENOT.BASE(PI_PRECIO_BASE 	 => A.precio_base,',
'												 PI_TIPO_CAMBIO_DIA  => m.tipo_cambio_dia,',
'												 PI_COD_EMPRESA 	 => :P18_COD_EMPRESA,',
'												 PI_COD_GRUPO_ART 	 => A.COD_GRUPO_ART) BASE,',
'			''REPUESTO'' TIPO,',
'	      ---------------',
'		   INV.VTRRENOT.CATEGORIA(PI_IND_PRECIO    => d.ind_precio,',
'								  						     PI_COD_CATEGORIA => A.COD_CATEGORIA) CATEGORIA,',
'			D.PRECIO_VENTA,',
'			NVL(INV.VTRRENOT.CF_PRECIO (PI_COD_CATEGORIA =>INV.VTRRENOT.CATEGORIA(PI_IND_PRECIO    => d.ind_precio,',
'                                                                                  PI_COD_CATEGORIA => A.COD_CATEGORIA) ,',
'															  PI_PRECIO_VENTA => D.PRECIO_VENTA,',
'															  PI_PRECIO =>INV.VTRRENOT.PRECIO(PI_COD_ARTICULO => d.cod_articulo,',
'																															   PI_COD_EMPRESA  => :P18_COD_EMPRESA,',
'																															   PI_COD_CLIENTE  => CL.COD_CLIENTE,',
'																															   PI_FEC_ENT_SAL  => c.fec_ent_sal) ,',
'															  PI_BASE => INV.VTRRENOT.BASE(PI_PRECIO_BASE 	 => A.precio_base,',
'																														 PI_TIPO_CAMBIO_DIA  => m.tipo_cambio_dia,',
'																														 PI_COD_EMPRESA 	 => :P18_COD_EMPRESA,',
'																														 PI_COD_GRUPO_ART 	 => A.COD_GRUPO_ART)),0) CF_PRECIO',
'   from st_entsal_cab c,',
'	        st_entsal_det d,',
'	        st_articulos a,',
'	        st_motivo_ent_sal mo,',
'	        vt_ordenes_trabajo ot,',
'			st_articulos a1,',
'			CM_PROVEEDORES PRO, ',
'			CC_CLIENTES CL,',
'			MONEDAS M,',
'			PERSONAS P',
'        ',
'  where OT.cod_empresa = :P18_COD_EMPRESA ',
'    and ( c.cod_sucursal = :P18_COD_SUCURSAL or :P18_COD_SUCURSAL is null )',
'    AND M.COD_MONEDA = A.COD_MONEDA_BASE',
'    /*and ( :P18_COD_ARTICULO_DES  is null or  A.cod_articulo = :P18_COD_ARTICULO_DES )',
'    and ( :P18_COD_ARTICULO_HAS  is null or A.cod_articulo = :P18_COD_ARTICULO_HAS )*/',
'    and (( ot.fec_comprobante >= TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  or  TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')   is null )',
'    and ( ot.fec_comprobante <= TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')  or TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')   is null ))',
'    and (( ot.fec_cierre >= TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  or TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')   is null )',
'    and ( ot.fec_cierre <= TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')  or TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')   is null ))',
'    and (ot.cod_distribuidor = :P18_COD_DISTRIBUIDOR  or :P18_COD_DISTRIBUIDOR  is null)',
'    and (ot.cod_proveedor = :P18_COD_PROVEEDOR  or :P18_COD_PROVEEDOR  is null)',
'    and (ot.COD_ORIGEN = :P18_COD_ORIGEN  or :P18_COD_ORIGEN  is null)          ',
'    and (ot.ser_comprobante = :P18_SER_COMPROBANTE   or :P18_SER_COMPROBANTE  is null)',
'    AND (OT.NRO_COMPROBANTE BETWEEN NVL( :P18_NRO_INICIAL ,1) AND NVL( :P18_NRO_FINAL ,99999999999))',
'    AND (OT.NRO_OT_PROVEEDOR BETWEEN NVL( :P18_NRO_PRO_INICIAL ,1) AND NVL( :P18_NRO_PRO_FINAL ,99999999999))',
'    AND PRO.COD_EMPRESA = OT.COD_EMPRESA',
'    AND PRO.COD_PROVEEDOR = OT.COD_PROVEEDOR',
'    AND PRO.COD_EMPRESA = CL.COD_EMPRESA',
'    AND PRO.COD_PERSONA = CL.COD_PERSONA',
'    AND PRO.COD_PERSONA = P.COD_PERSONA',
'    and nvl(ot.anulado,''N'') <> ''S''',
'    and c.cod_empresa = ot.cod_empresa',
'    and c.tip_comprobante_ref = ot.tip_comprobante',
'    and c.ser_comprobante_ref = ot.ser_comprobante',
'    and c.nro_comprobante_ref = ot.nro_comprobante',
'	and a1.cod_empresa=ot.cod_empresa',
'	and a1.cod_articulo=ot.cod_articulo  ',
'	AND (''RP'' = :P18_TIPO  OR :P18_TIPO  IS NULL)',
'    and c.cod_empresa = d.cod_empresa',
'    and c.tip_ent_sal = d.tip_ent_sal',
'    and c.ser_ent_sal = d.ser_ent_sal',
'    and c.num_ent_sal = d.num_ent_sal',
'    and d.cod_empresa = a.cod_empresa',
'    and d.cod_articulo = a.cod_articulo',
'	AND C.COD_MOTIVO_ENT_SAL  IN (''55'')',
'	AND NVL(IND_RENDIDO,''N'') <> ''S''',
'	and c.cod_motivo_ent_sal = mo.cod_motivo_ent_sal(+)',
'    and nvl( ot.ind_garantia, ''N'' ) = ''S''',
'    ',
'GROUP BY  c.cod_empresa, d.cod_iva,c.cod_motivo_ent_sal,d.cod_articulo, a.descripcion,a.cod_linea,a.cod_familia,',
'		  a.cod_rubro,A1.COD_ARTICULO, A1.DESCRIPCION, c.fec_ent_sal, ot.tip_comprobante, ot.ser_comprobante, ot.nro_comprobante,',
'		  ot.cod_cliente,ot.nom_cliente,ot.cod_distribuidor, CL.COD_CLIENTE,A.precio_base ,m.tipo_cambio_dia,',
'		  A.COD_EMPRESA, A.COD_ARTICULO,A.COD_GRUPO_ART, OT.SER_COMPROBANTE, ot.nro_comprobante,OT.NRO_OT_PROVEEDOR,OT.COD_PROVEEDOR,',
'		  P.NOMBRE, A.COD_CATEGORIA,D.PRECIO_VENTA,ot.fec_comprobante,d.ind_precio',
'',
' UNION ALL',
' ',
'     select case ',
'				when nvl(mo.ind_reclamo,''N'')=''S'' THEN 0',
'			 ELSE',
'				SUM(nvl(MO.CANTIDAD,1)) ',
'			END cantidad,',
'			SUM(MO.MONTO) PRECIO,',
' ------------------------------------------------------',
'			SUM(MO.MONTO) PRECIO,',
'			CASE ',
'				WHEN A.DESCRIPCION LIKE ''%FLETE%'' THEN',
'					''FLETE'' ',
'				ELSE',
'					''MANO DE OBRA'' ',
'				END TIPO,',
'--------------- ',
'			NULL CATEGORIA,',
'			0 PRECIO_VENTA,',
'			NVL(INV.VTRRENOT.CF_PRECIO (PI_COD_CATEGORIA => NULL ,',
'                                        PI_PRECIO_VENTA => 0,',
'                                          PI_PRECIO => SUM(MO.MONTO) ,',
'                                          PI_BASE => SUM(MO.MONTO)),0) CF_PRECIO',
'     from VT_ORDENES_TRABAJO_MO MO,',
'			  st_articulos a,',
'			  vt_ordenes_trabajo ot,',
'			  st_articulos a1,',
'			  CM_PROVEEDORES PRO,',
'			  CC_CLIENTES CL,',
'			  MONEDAS M,',
'			  PERSONAS P ',
'    where OT.cod_empresa = :P18_COD_EMPRESA ',
'	  AND M.COD_MONEDA = A.COD_MONEDA_BASE',
'      and (:P18_COD_ARTICULO_DES is null or  A.cod_articulo = :P18_COD_ARTICULO_DES )',
'      and (:P18_COD_ARTICULO_HAS is null or A.cod_articulo = :P18_COD_ARTICULO_HAS )',
'      and (( ot.fec_comprobante >= TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  or TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')   is null )',
'      and ( ot.fec_comprobante <=  TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')  or  TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')   is null ))',
'      and (( ot.fec_cierre >= TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  or TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')   is null )',
'      and ( ot.fec_cierre <=  TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'') or TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')   is null ))',
'      and (ot.cod_distribuidor = :P18_COD_DISTRIBUIDOR  or  :P18_COD_DISTRIBUIDOR  is null)',
'	  and (ot.cod_proveedor = :P18_COD_PROVEEDOR  or :P18_COD_PROVEEDOR   is null)',
'	  and (ot.COD_ORIGEN = :P18_COD_ORIGEN or :P18_COD_ORIGEN  is null)          ',
'      and (ot.ser_comprobante = :P18_SERIE  or :P18_SERIE  is null)',
'      AND (OT.NRO_COMPROBANTE BETWEEN NVL( :P18_NRO_INICIAL ,1) AND NVL( :P18_NRO_FINAL ,99999999999))',
'      AND (OT.NRO_OT_PROVEEDOR BETWEEN NVL( :P18_NRO_PRO_INICIAL ,1) AND NVL(:P18_NRO_PRO_FINAL ,99999999999))',
'      AND PRO.COD_EMPRESA = OT.COD_EMPRESA',
'      AND PRO.COD_PROVEEDOR = OT.COD_PROVEEDOR',
'      AND PRO.COD_EMPRESA = CL.COD_EMPRESA',
'      AND PRO.COD_PERSONA = CL.COD_PERSONA',
'      AND PRO.COD_PERSONA = P.COD_PERSONA',
'      and MO.cod_empresa = ot.cod_empresa',
'      and MO.TIP_COMPROBANTE = ot.tip_comprobante',
'      and MO.ser_comprobante = ot.ser_comprobante',
'      and MO.nro_comprobante = ot.nro_comprobante',
'      and a1.cod_empresa=ot.cod_empresa',
'	  and a1.cod_articulo=ot.cod_articulo',
'	  AND(''MO'' = :P18_TIPO  OR :P18_TIPO  IS NULL)',
'	  and nvl(ot.anulado,''N'')<>''S''',
'      and MO.cod_empresa = a.cod_empresa',
'      and MO.cod_articulo = a.cod_articulo',
'	  AND NVL(IND_RENDIDO,''N'') <> ''S''',
'	  AND (''MO'' = :P18_TIPO OR  :P18_TIPO   IS NULL)',
'      and nvl( ot.ind_garantia, ''N'' ) = ''S''',
'',
'GROUP BY OT.cod_empresa,MO.cod_articulo, a.descripcion,a.cod_linea,a.cod_familia, a.cod_rubro,A1.COD_ARTICULO, ',
'		 A1.DESCRIPCION,OT.FEC_COMPROBANTE, ot.tip_comprobante, ot.ser_comprobante, ot.nro_comprobante,ot.cod_cliente,ot.nom_cliente,',
'		 ot.cod_distribuidor , CL.COD_CLIENTE,A.precio_base ,m.tipo_cambio_dia,A.COD_EMPRESA, A.COD_ARTICULO,A.COD_GRUPO_ART,',
'		 OT.SER_COMPROBANTE, ot.nro_comprobante, OT.NRO_OT_PROVEEDOR,OT.COD_PROVEEDOR, P.NOMBRE,mo.ind_reclamo',
'ORDER BY 4'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen por Tipo'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(46275883868139321)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>46275883868139321
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46275963523139322)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46276037042139323)
,p_db_column_name=>'PRECIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46276188090139324)
,p_db_column_name=>'BASE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Base'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46276231887139325)
,p_db_column_name=>'TIPO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46276345601139326)
,p_db_column_name=>'CATEGORIA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46276454829139327)
,p_db_column_name=>'PRECIO_VENTA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Precio Venta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46276513361139328)
,p_db_column_name=>'CF_PRECIO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cf Precio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(46316563369009899)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'463166'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CANTIDAD:PRECIO:BASE:TIPO:CATEGORIA:PRECIO_VENTA:CF_PRECIO'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(47772402946494928)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Por Tipo'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'477725'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'TIPO:APXWS_CC_001:'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
,p_sum_columns_on_break=>'APXWS_CC_001'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(47772839325494929)
,p_report_id=>wwv_flow_imp.id(47772402946494928)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'ABS( G * A)'
,p_format_mask=>'999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Total'
,p_report_label=>'Total'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(47773214052494929)
,p_report_id=>wwv_flow_imp.id(47772402946494928)
,p_group_by_columns=>'TIPO'
,p_function_01=>'SUM'
,p_function_column_01=>'APXWS_CC_001'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990D00'
,p_function_sum_01=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(47774441440500378)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'General'
,p_report_seq=>10
,p_report_alias=>'477745'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO:APXWS_CC_001:'
,p_sum_columns_on_break=>'APXWS_CC_001'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(47774862503500379)
,p_report_id=>wwv_flow_imp.id(47774441440500378)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'ABS( G * A)'
,p_format_mask=>'999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Total'
,p_report_label=>'Total'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46276614114139329)
,p_plug_name=>unistr('Repuestos entregados en garant\00EDa - VTREOTAUTCL')
,p_parent_plug_id=>wwv_flow_imp.id(46154616468357423)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-top:10px;"'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OT.COD_PROVEEDOR, ',
'	   P.NOMBRE,',
'       D.COD_ARTICULO,',
'	   A.DESCRIPCION DESC_ARTICULO,',
'       C.FEC_ENT_SAL, ',
'	   OT.TIP_COMPROBANTE, ',
'	   OT.SER_COMPROBANTE, ',
'	   OT.NRO_COMPROBANTE,',
'	   OT.NRO_OT_PROVEEDOR,',
'	   OT.COD_DISTRIBUIDOR,',
'       SUM((DECODE( NVL( IND_ENT_SAL, ''N'' ), ''S'', NVL( D.CANTIDAD, 0 ), NVL( D.CANTIDAD, 0 ) * -1 ) )) CANTIDAD,       ',
'       INV.VTRRENOT.PRECIO_VTREOTAUTCL(PI_COD_EMPRESA => :P18_COD_EMPRESA ,',
'									   PI_COD_ARTICULO => D.COD_ARTICULO,',
'									   PI_FEC_ENT_SAL => C.FEC_ENT_SAL,',
'									   PI_COD_CLIENTE => CL.COD_CLIENTE ) PRECIO,',
'																			',
'       ------------------------------------------------------',
'      INV.VTRRENOT.BASE(PI_PRECIO_BASE => A.PRECIO_BASE,',
'			  							    PI_TIPO_CAMBIO_DIA => M.TIPO_CAMBIO_DIA,',
'			  								PI_COD_EMPRESA 	=> :P18_COD_EMPRESA  ,',
'			  								PI_COD_GRUPO_ART 	=> A.COD_GRUPO_ART) BASE,',
'	   ''COMPRA LOCAL'' TIPO,',
'      --------------- ',
'	 INV.VTRRENOT.CATEGORIA(PI_IND_PRECIO => D.IND_PRECIO,',
'				   			PI_COD_CATEGORIA => A.COD_CATEGORIA) COD_CATEGORIA, ',
'	  D.PRECIO_VENTA,',
'	  INV.VTRRENOT.CF_PRECIO (PI_COD_CATEGORIA => INV.VTRRENOT.CATEGORIA(PI_IND_PRECIO => D.IND_PRECIO,',
'				   									  			         PI_COD_CATEGORIA => A.COD_CATEGORIA),',
'					 								   PI_PRECIO_VENTA => D.PRECIO_VENTA,',
'					  								   PI_PRECIO => INV.VTRRENOT.PRECIO_VTREOTAUTCL(PI_COD_ARTICULO => D.COD_ARTICULO,',
'																								    PI_COD_EMPRESA => :P18_COD_EMPRESA  ,',
'																								    PI_COD_CLIENTE => CL.COD_CLIENTE,',
'																								    PI_FEC_ENT_SAL => C.FEC_ENT_SAL),',
'													  PI_BASE => INV.VTRRENOT.BASE(PI_PRECIO_BASE     => A.PRECIO_BASE,',
'												  							       PI_TIPO_CAMBIO_DIA => M.TIPO_CAMBIO_DIA,',
'												  								   PI_COD_EMPRESA 	  => :P18_COD_EMPRESA  ,',
'												  								   PI_COD_GRUPO_ART   => A.COD_GRUPO_ART)) CF_PRECIO',
' FROM ST_ENTSAL_CAB C,',
'		  ST_ENTSAL_DET D,',
'		  ST_ARTICULOS A,',
'		  ST_MOTIVO_ENT_SAL MO,',
'		  VT_ORDENES_TRABAJO OT,',
'		  ST_ARTICULOS A1,',
'		  CM_PROVEEDORES PRO,',
'		  CC_CLIENTES CL,',
'		  MONEDAS M,',
'		  PERSONAS P       ',
'WHERE OT.COD_EMPRESA = :P18_COD_EMPRESA ',
' -- AND ( C.COD_SUCURSAL = :P18_COD_SUCURSAL  OR :P18_COD_SUCURSAL  IS NULL ) CORROBORAR QUE REALMENTE NO NECESITA SUCURSAL',
'  AND M.COD_MONEDA=A.COD_MONEDA_BASE',
'  /*AND ( :P18_COD_ARTICULO_DES  IS NULL OR  A.COD_ARTICULO = :P18_COD_ARTICULO_DES )',
'  AND ( :P18_COD_ARTICULO_HAS  IS NULL OR A.COD_ARTICULO  = :P18_COD_ARTICULO_HAS )*/',
'  AND (( OT.FEC_COMPROBANTE >= TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'' ) OR TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  IS NULL )',
'  AND ( OT.FEC_COMPROBANTE <= TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'  AND (( OT.FEC_CIERRE >= TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'' ) OR TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'' )   IS NULL )',
'  AND ( OT.FEC_CIERRE <= TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'' )  OR TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'' )   IS NULL ))',
'  AND (OT.COD_DISTRIBUIDOR = :P18_COD_DISTRIBUIDOR OR :P18_COD_DISTRIBUIDOR  IS NULL)',
'  AND (OT.COD_PROVEEDOR = :P18_COD_PROVEEDOR  OR :P18_COD_PROVEEDOR   IS NULL)',
'  AND (OT.COD_ORIGEN = :P18_COD_ORIGEN  OR :P18_COD_ORIGEN  IS NULL)          ',
'  AND (OT.SER_COMPROBANTE = :P18_SER_COMPROBANTE  OR :P18_SER_COMPROBANTE  IS NULL)',
'  AND (OT.NRO_COMPROBANTE BETWEEN NVL( :P18_NRO_INICIAL ,1) AND NVL(:P18_NRO_FINAL ,99999999999))',
'  AND (OT.NRO_OT_PROVEEDOR BETWEEN NVL( :P18_NRO_PRO_INICIAL ,1) AND NVL( :P18_NRO_PRO_FINAL ,99999999999))   ',
'  AND PRO.COD_EMPRESA = OT.COD_EMPRESA',
'  AND PRO.COD_PROVEEDOR = OT.COD_PROVEEDOR',
'  AND PRO.COD_EMPRESA = CL.COD_EMPRESA',
'  AND PRO.COD_PERSONA = CL.COD_PERSONA',
'  AND PRO.COD_PERSONA = P.COD_PERSONA',
'  AND NVL(OT.ANULADO,''N'') <> ''S''  ',
'  AND C.COD_EMPRESA = OT.COD_EMPRESA',
'  AND C.TIP_COMPROBANTE_REF = OT.TIP_COMPROBANTE',
'  AND C.SER_COMPROBANTE_REF = OT.SER_COMPROBANTE',
'  AND C.NRO_COMPROBANTE_REF = OT.NRO_COMPROBANTE',
'  AND A1.COD_EMPRESA = OT.COD_EMPRESA',
'  AND A1.COD_ARTICULO = OT.COD_ARTICULO',
'  AND A.COD_CATEGORIA = ''121''',
'  AND C.COD_EMPRESA = D.COD_EMPRESA',
'  AND C.TIP_ENT_SAL = D.TIP_ENT_SAL',
'  AND C.SER_ENT_SAL = D.SER_ENT_SAL',
'  AND C.NUM_ENT_SAL = D.NUM_ENT_SAL',
'  AND D.COD_EMPRESA = A.COD_EMPRESA',
'  AND D.COD_ARTICULO = A.COD_ARTICULO',
' AND C.COD_MOTIVO_ENT_SAL  IN (''55'')',
' AND NVL(IND_RENDIDO,''N'') <> ''S''',
' AND C.COD_MOTIVO_ENT_SAL  = MO.COD_MOTIVO_ENT_SAL(+)',
' AND NVL( OT.IND_GARANTIA, ''N'' ) = ''S''',
' --AND :P18_VTREOTAUTCL = 1',
'GROUP BY  C.COD_EMPRESA, D.COD_IVA,C.COD_MOTIVO_ENT_SAL,',
'		  D.COD_ARTICULO, A.DESCRIPCION,A.COD_LINEA,A.COD_FAMILIA,',
'		  A.COD_RUBRO,A1.COD_ARTICULO, A1.DESCRIPCION,',
'		 C.FEC_ENT_SAL, OT.TIP_COMPROBANTE, OT.SER_COMPROBANTE, OT.NRO_COMPROBANTE,',
'		 OT.COD_CLIENTE,OT.NOM_CLIENTE,OT.COD_DISTRIBUIDOR, CL.COD_CLIENTE,A.PRECIO_BASE ,M.TIPO_CAMBIO_DIA,',
'		 A.COD_EMPRESA, A.COD_ARTICULO,A.COD_GRUPO_ART, OT.SER_COMPROBANTE, OT.NRO_COMPROBANTE,',
'		 OT.NRO_OT_PROVEEDOR,OT.COD_PROVEEDOR, P.NOMBRE, A.COD_CATEGORIA,D.PRECIO_VENTA,',
'		OT.FEC_COMPROBANTE,D.IND_PRECIO',
'ORDER BY 9,4'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P18_VTREOTAUTCL,P18_COD_EMPRESA,P18_COD_SUCURSAL,P18_FEC_INICIAL,P18_FEC_FINAL,,P18_FEC_CIE_INICIAL,P18_FEC_CIE_FINAL,P18_COD_DISTRIBUIDOR,P18_COD_PROVEEDOR,P18_COD_ORIGEN,P18_SER_COMPROBANTE,P18_NRO_INICIAL,P18_NRO_FINAL,P18_NRO_PRO_INICIAL,P18_NRO_'
||'PRO_FINAL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Repuestos entregados en garant\00EDa - VTREOTAUTCL')
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
 p_id=>wwv_flow_imp.id(46276776675139330)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>46276776675139330
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46276804561139331)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46276963073139332)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46277060131139333)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Repuesto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46277173455139334)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46277232426139335)
,p_db_column_name=>'FEC_ENT_SAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec Ent Sal'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46277314052139336)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46277484833139337)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46277548936139338)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Nro'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46277642769139339)
,p_db_column_name=>'NRO_OT_PROVEEDOR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nro. Ot Proveedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46277767714139340)
,p_db_column_name=>'COD_DISTRIBUIDOR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Distribuidor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46277891237139341)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46277975742139342)
,p_db_column_name=>'PRECIO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46278046241139343)
,p_db_column_name=>'BASE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Base'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46278166065139344)
,p_db_column_name=>'TIPO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46278201106139345)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46278395763139346)
,p_db_column_name=>'PRECIO_VENTA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Precio Venta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46278434995139347)
,p_db_column_name=>'CF_PRECIO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Costo Unitario'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(46569886895629580)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'465699'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_PROVEEDOR:NOMBRE:COD_ARTICULO:DESC_ARTICULO:FEC_ENT_SAL:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:NRO_OT_PROVEEDOR:COD_DISTRIBUIDOR:CANTIDAD:PRECIO:BASE:TIPO:COD_CATEGORIA:PRECIO_VENTA:CF_PRECIO'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(47770214903489059)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Por Proveedor'
,p_report_seq=>10
,p_report_alias=>'477703'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'COD_PROVEEDOR:NOMBRE:SER_COMPROBANTE:NRO_COMPROBANTE:NRO_OT_PROVEEDOR:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:CF_PRECIO:APXWS_CC_001:'
,p_break_on=>'COD_PROVEEDOR:NOMBRE:0:0:0:0'
,p_break_enabled_on=>'COD_PROVEEDOR:NOMBRE:0:0:0:0'
,p_sum_columns_on_break=>'APXWS_CC_001'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(47770667845489059)
,p_report_id=>wwv_flow_imp.id(47770214903489059)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'ABS( K * Q)'
,p_format_mask=>'999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Costo Total'
,p_report_label=>'Costo Total'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(47771454829490435)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Por Tipo'
,p_report_seq=>10
,p_report_alias=>'477715'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TIPO:SER_COMPROBANTE:NRO_COMPROBANTE:NRO_OT_PROVEEDOR:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:CF_PRECIO:APXWS_CC_001:'
,p_break_on=>'TIPO:0:0:0:0:0'
,p_break_enabled_on=>'TIPO:0:0:0:0:0'
,p_sum_columns_on_break=>'APXWS_CC_001'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(47771851618490436)
,p_report_id=>wwv_flow_imp.id(47771454829490435)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'ABS( K * Q)'
,p_format_mask=>'999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Costo Total'
,p_report_label=>'Costo Total'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46564083044620012)
,p_plug_name=>unistr('Respuestos entregados en garant\00EDa - VTREOTAUTRES')
,p_parent_plug_id=>wwv_flow_imp.id(46154616468357423)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-top:10px;"'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OT.COD_PROVEEDOR, ',
'	   P.NOMBRE,',
'       ''COMPRA LOCAL'' COD_ARTICULO,',
'	   ''COMPRA LOCAL'' DESC_ARTICULO,',
'       SUM(ABS((DECODE( NVL( IND_ENT_SAL, ''N'' ), ''S'', NVL( D.CANTIDAD, 0 ), NVL( D.CANTIDAD, 0 ) * -1 ) ))) CANTIDAD,  ',
'	   SUM(ABS((DECODE( NVL( IND_ENT_SAL, ''N'' ), ''S'', NVL( D.CANTIDAD, 0 ), NVL( D.CANTIDAD, 0 ) * -1 ) ))*D.PRECIO_VENTA) PRECIO,',
'       ------------------------------------------------------',
'	   MAX ((',
'         SELECT (ROUND(A.PRECIO_BASE * ( 1 + (NVL(10,0)/100)),0) +',
'					  (ROUND(A.PRECIO_BASE * ( 1 + (NVL(10,0)/100)),0) *',
'				 		NVL(COEFICIENTE,0) / 100 )) *   NVL(M.TIPO_CAMBIO_DIA,1)',
'           FROM VT_COEF_PRECIOS_GRUP',
'        WHERE COD_EMPRESA = A.COD_EMPRESA',
'            AND COD_LISTA_PRECIO = ''1''',
'            AND COD_GRUPO_ART = A.COD_GRUPO_ART) )BASE,',
'	   ''COMPRA LOCAL'' TIPO,',
'	   D.COD_ARTICULO DET_ART,   ',
'      --------------- ',
'       NULL COD_CATEGORIA, ',
'       MAX(D.PRECIO_VENTA) PRECIO_VENTA',
'       ',
'  FROM ST_ENTSAL_CAB C,',
'       ST_ENTSAL_DET D,',
'       ST_ARTICULOS A,',
'       ST_MOTIVO_ENT_SAL MO,',
'       VT_ORDENES_TRABAJO OT,',
'	   ST_ARTICULOS A1,',
'	   CM_PROVEEDORES PRO,',
'	   CC_CLIENTES CL,',
'	   MONEDAS M,',
'	   PERSONAS P',
'        ',
' WHERE OT.COD_EMPRESA = :P18_COD_EMPRESA ',
'   --AND ( C.COD_SUCURSAL = :P18_COD_SUCURSAL OR :P18_COD_SUCURSAL  IS NULL )',
'   AND M.COD_MONEDA = A.COD_MONEDA_BASE',
'   /*AND (:P18_COD_ARTICULO_DES IS NULL OR  A.COD_ARTICULO =  :P18_COD_ARTICULO_DES )',
'   AND (:P18_COD_ARTICULO_HAS  IS NULL OR A.COD_ARTICULO = :P18_COD_ARTICULO_HAS )*/',
'   AND (( OT.FEC_COMPROBANTE >= TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'   AND ( OT.FEC_COMPROBANTE <= TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'   AND (( OT.FEC_CIERRE >= TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  IS NULL )',
'   AND ( OT.FEC_CIERRE <= TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'') OR TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'   AND (OT.COD_DISTRIBUIDOR = :P18_COD_DISTRIBUIDOR  OR  :P18_COD_DISTRIBUIDOR  IS NULL)',
'   AND (OT.COD_PROVEEDOR = :P18_COD_PROVEEDOR  OR :P18_COD_PROVEEDOR   IS NULL)',
'   AND (OT.COD_ORIGEN = :P18_COD_ORIGEN  OR  :P18_COD_ORIGEN  IS NULL)          ',
'   AND (OT.SER_COMPROBANTE = :P18_SER_COMPROBANTE OR  :P18_SER_COMPROBANTE IS NULL)',
'   AND (OT.NRO_COMPROBANTE BETWEEN NVL( :P18_NRO_INICIAL ,1) AND NVL( :P18_NRO_FINAL ,99999999999))',
'   AND (OT.NRO_OT_PROVEEDOR BETWEEN NVL( :P18_NRO_PRO_INICIAL ,1) AND NVL(:P18_NRO_PRO_FINAL ,99999999999))',
'   AND PRO.COD_EMPRESA = OT.COD_EMPRESA',
'   AND PRO.COD_PROVEEDOR = OT.COD_PROVEEDOR',
'   AND PRO.COD_EMPRESA = CL.COD_EMPRESA',
'   AND PRO.COD_PERSONA = CL.COD_PERSONA',
'   AND PRO.COD_PERSONA = P.COD_PERSONA',
'   AND NVL(OT.ANULADO,''N'') <> ''S''',
'   AND C.COD_EMPRESA = OT.COD_EMPRESA',
'   AND C.TIP_COMPROBANTE_REF = OT.TIP_COMPROBANTE',
'   AND C.SER_COMPROBANTE_REF = OT.SER_COMPROBANTE',
'   AND C.NRO_COMPROBANTE_REF = OT.NRO_COMPROBANTE',
'   AND A1.COD_EMPRESA = OT.COD_EMPRESA',
'   AND A1.COD_ARTICULO = OT.COD_ARTICULO',
'   AND A.COD_CATEGORIA = ''121''',
'   AND C.COD_EMPRESA = D.COD_EMPRESA',
'   AND C.TIP_ENT_SAL = D.TIP_ENT_SAL',
'   AND C.SER_ENT_SAL = D.SER_ENT_SAL',
'   AND C.NUM_ENT_SAL = D.NUM_ENT_SAL',
'   AND D.COD_EMPRESA = A.COD_EMPRESA',
'   AND D.COD_ARTICULO = A.COD_ARTICULO',
'   AND C.COD_MOTIVO_ENT_SAL IN (''55'')',
'   AND NVL(IND_RENDIDO,''N'') <> ''S''',
'   AND C.COD_MOTIVO_ENT_SAL = MO.COD_MOTIVO_ENT_SAL(+)',
'   AND NVL( OT.IND_GARANTIA, ''N'' ) = ''S''',
'   AND :P18_VTREOTAUTRES = 1',
'GROUP BY OT.COD_PROVEEDOR, ',
'					 P.NOMBRE,',
'					 D.COD_ARTICULO',
'',
'UNION ALL',
'',
'SELECT OT.COD_PROVEEDOR, ',
'	   P.NOMBRE,',
'       ''REPUESTOS EN GARANTIA'' COD_ARTICULO,',
'	   ''REPUESTOS EN GARANTIA'' DESC_ARTICULO,',
'       SUM(ABS(DECODE( NVL( IND_ENT_SAL, ''N'' ), ''S'', NVL( D.CANTIDAD, 0 ), NVL( D.CANTIDAD, 0 ) * -1 ) )) CANTIDAD,   ',
'       NVL(',
'			(SELECT AVG((D5.MONTO_TOTAL+D5.TOTAL_IVA)/CANTIDAD)',
'			   FROM   VT_COMPROBANTES_DETALLE D5,VT_PEDIDOS_CABECERA_REP RR',
'			  WHERE D5.COD_EMPRESA=''1''',
'				AND D5.COD_EMPRESA=RR.COD_EMPRESA',
'				AND RR.TIP_COMPROBANTE=''PER''',
'				AND D5.SER_PEDIDO= RR.SER_COMPROBANTE',
'				AND D5.NRO_PEDIDO=RR.NRO_COMPROBANTE',
'				AND D5.COD_ARTICULO=D.COD_ARTICULO',
'				AND RR.TIP_COMPROBANTE_REF=OT.TIP_COMPROBANTE',
'				AND RR.SER_COMPROBANTE_REF=OT.SER_COMPROBANTE',
'				AND RR.NRO_COMPROBANTE_REF=OT.NRO_COMPROBANTE',
'				AND ROWNUM=1),',
'			NVL (',
'					(SUM(  (SELECT AVG((D1.MONTO_TOTAL+D1.TOTAL_IVA)/CANTIDAD)',
'							FROM VT_COMPROBANTES_CABECERA C1, VT_COMPROBANTES_DETALLE D1',
'						   WHERE C1.COD_EMPRESA=C.COD_EMPRESA',
'							 AND C1.COD_EMPRESA=D1.COD_EMPRESA',
'							 AND C1.TIP_COMPROBANTE=D1.TIP_COMPROBANTE',
'							 AND C1.SER_COMPROBANTE=D1.SER_COMPROBANTE',
'							 AND C1.NRO_COMPROBANTE=D1.NRO_COMPROBANTE',
'',
'							AND C1.FEC_COMPROBANTE<= (C.FEC_ENT_SAL)',
'							AND C1.COD_SECTOR <>''101''',
'							AND C1.COD_CLIENTE=CL.COD_CLIENTE',
'							AND C1.FEC_COMPROBANTE>SYSDATE-360',
'							AND D1.COD_ARTICULO=D.COD_ARTICULO',
'							AND C1.FEC_COMPROBANTE =(SELECT MAX(C2.FEC_COMPROBANTE)',
'													   FROM VT_COMPROBANTES_CABECERA C2, VT_COMPROBANTES_DETALLE D2',
'													  WHERE C2.COD_EMPRESA=C.COD_EMPRESA',
'														AND C2.COD_EMPRESA=D2.COD_EMPRESA',
'														AND C2.TIP_COMPROBANTE=D2.TIP_COMPROBANTE',
'														AND C2.SER_COMPROBANTE=D2.SER_COMPROBANTE',
'														AND C2.NRO_COMPROBANTE=D2.NRO_COMPROBANTE',
'														AND C2.FEC_COMPROBANTE<= (C.FEC_ENT_SAL)',
'',
'														AND C2.COD_SECTOR <>''101''',
'														AND C2.COD_CLIENTE=CL.COD_CLIENTE',
'														AND C2.FEC_COMPROBANTE>SYSDATE-360',
'														AND D2.COD_ARTICULO=D.COD_ARTICULO))*',
'			(ABS(DECODE( NVL( IND_ENT_SAL, ''N'' ), ''S'', NVL( D.CANTIDAD, 0 ), NVL( D.CANTIDAD, 0 ) * -1 ) ))  ',
'						)',
'					),',
'				SUM (',
'						(SELECT ( ROUND(A.PRECIO_BASE * ( 1 + (NVL(10,0)/100)),0) +',
'						  ( ROUND(A.PRECIO_BASE * ( 1 + (NVL(10,0)/100)),0) *',
'						   NVL(COEFICIENTE,0) / 100 )) *   NVL(M.TIPO_CAMBIO_DIA,1)',
'						 ',
'						  FROM VT_COEF_PRECIOS_GRUP',
'						 WHERE COD_EMPRESA = A.COD_EMPRESA',
'						   AND COD_LISTA_PRECIO = ''1''',
'						   AND COD_GRUPO_ART = A.COD_GRUPO_ART',
'',
'						) *	(ABS(DECODE( NVL( IND_ENT_SAL, ''N'' ), ''S'', NVL( D.CANTIDAD, 0 ), NVL( D.CANTIDAD, 0 ) * -1 ) ))',
'					)	',
'				)	',
'		)PRECIO,',
'-----------------------------------------------------',
'		SUM(',
'			(SELECT (ROUND(A.PRECIO_BASE * ( 1 + (NVL(10,0)/100)),0) +',
'					(ROUND(A.PRECIO_BASE * ( 1 + (NVL(10,0)/100)),0) *',
'					NVL(COEFICIENTE,0) / 100 )) *   NVL(M.TIPO_CAMBIO_DIA,1)',
'			   FROM VT_COEF_PRECIOS_GRUP',
'			  WHERE COD_EMPRESA = A.COD_EMPRESA',
'			    AND COD_LISTA_PRECIO = ''1''',
'			    AND COD_GRUPO_ART = A.COD_GRUPO_ART',
'		    ) * (ABS(DECODE( NVL( IND_ENT_SAL, ''N'' ), ''S'', NVL( D.CANTIDAD, 0 ), NVL( D.CANTIDAD, 0 ) * -1 ) ))',
'		   )BASE,',
'		''REPUESTO'' TIPO, ',
'        D.COD_ARTICULO DET_ART, ',
'      --------------- ',
'		NULL COD_CATEGORIA, ',
'		MAX(D.PRECIO_VENTA) PRECIO_VENTA',
'       ',
'   FROM ST_ENTSAL_CAB C,',
'        ST_ENTSAL_DET D,',
'        ST_ARTICULOS A,',
'        ST_MOTIVO_ENT_SAL MO,',
'        VT_ORDENES_TRABAJO OT,',
'		ST_ARTICULOS A1,',
'		CM_PROVEEDORES PRO,',
'		CC_CLIENTES CL,',
'		MONEDAS M,',
'		PERSONAS P',
'        ',
'  WHERE OT.COD_EMPRESA = :P18_COD_EMPRESA ',
'   -- AND ( C.COD_SUCURSAL = :P18_COD_SUCURSAL OR :P18_COD_SUCURSAL  IS NULL )',
'    AND M.COD_MONEDA=A.COD_MONEDA_BASE',
'    /*AND (:P18_COD_ARTICULO_DES  IS NULL OR  A.COD_ARTICULO = :P18_COD_ARTICULO_DES )',
'    AND (:P18_COD_ARTICULO_HAS  IS NULL OR A.COD_ARTICULO = :P18_COD_ARTICULO_HAS )*/',
'    AND (( OT.FEC_COMPROBANTE >= TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'    AND ( OT.FEC_COMPROBANTE <=  TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')  IS NULL ))',
'    AND (( OT.FEC_CIERRE >= TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  IS NULL )',
'    AND ( OT.FEC_CIERRE <= TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'') OR TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')  IS NULL ))',
'    AND (OT.COD_DISTRIBUIDOR = :P18_COD_DISTRIBUIDOR OR :P18_COD_DISTRIBUIDOR IS NULL)',
'    AND (OT.COD_PROVEEDOR =   :P18_COD_PROVEEDOR OR :P18_COD_PROVEEDOR  IS NULL)',
'    AND (OT.COD_ORIGEN = :P18_COD_ORIGEN OR  :P18_COD_ORIGEN IS NULL)          ',
'    AND (OT.SER_COMPROBANTE = :P18_SER_COMPROBANTE  OR :P18_SER_COMPROBANTE IS NULL)',
'    AND (OT.NRO_COMPROBANTE BETWEEN NVL( :P18_NRO_INICIAL ,1) AND NVL( :P18_NRO_FINAL ,99999999999))',
'    AND (OT.NRO_OT_PROVEEDOR BETWEEN NVL( :P18_NRO_PRO_INICIAL ,1) AND NVL(:P18_NRO_PRO_FINAL ,99999999999))',
'    AND PRO.COD_EMPRESA = OT.COD_EMPRESA',
'    AND PRO.COD_PROVEEDOR = OT.COD_PROVEEDOR',
'    AND PRO.COD_EMPRESA = CL.COD_EMPRESA',
'    AND PRO.COD_PERSONA = CL.COD_PERSONA',
'    AND PRO.COD_PERSONA =P.COD_PERSONA',
'    AND NVL(OT.ANULADO,''N'') <> ''S''',
'    AND C.COD_EMPRESA = OT.COD_EMPRESA',
'    AND C.TIP_COMPROBANTE_REF = OT.TIP_COMPROBANTE',
'    AND C.SER_COMPROBANTE_REF = OT.SER_COMPROBANTE',
'    AND C.NRO_COMPROBANTE_REF = OT.NRO_COMPROBANTE',
'    AND A1.COD_EMPRESA=OT.COD_EMPRESA',
'    AND A1.COD_ARTICULO=OT.COD_ARTICULO',
'    AND NVL(A.COD_CATEGORIA,''D'')<>''121''',
'    AND C.COD_EMPRESA = D.COD_EMPRESA',
'    AND C.TIP_ENT_SAL = D.TIP_ENT_SAL',
'    AND C.SER_ENT_SAL = D.SER_ENT_SAL',
'    AND C.NUM_ENT_SAL = D.NUM_ENT_SAL',
'    AND D.COD_EMPRESA = A.COD_EMPRESA',
'    AND D.COD_ARTICULO = A.COD_ARTICULO',
'    AND C.COD_MOTIVO_ENT_SAL IN (''55'')',
'    AND NVL(IND_RENDIDO,''N'') <> ''S''',
'    AND C.COD_MOTIVO_ENT_SAL = MO.COD_MOTIVO_ENT_SAL(+)',
'    AND NVL( OT.IND_GARANTIA, ''N'' ) = ''S''',
'    AND :P18_VTREOTAUTRES = 1',
'GROUP BY OT.COD_PROVEEDOR,P.NOMBRE,D.COD_ARTICULO,',
'		 OT.TIP_COMPROBANTE,OT.SER_COMPROBANTE,OT.NRO_COMPROBANTE',
'',
'  UNION ALL',
'',
'SELECT OT.COD_PROVEEDOR, ',
'	   P.NOMBRE,',
'       MO.COD_ARTICULO, ',
'	   A.DESCRIPCION DESC_ARTICULO,',
'       SUM(NVL(MO.CANTIDAD,1)) CANTIDAD,',
'	   SUM(MO.MONTO*NVL(MO.CANTIDAD,1)) PRECIO,',
'------------------------------------------------------',
'	   SUM(MO.MONTO*NVL(MO.CANTIDAD,1)) BASE,',
'	   ''MANO DE OBRA'' TIPO, ',
'       MO.COD_ARTICULO DET_ART,	',
'      --------------- ',
'       NULL COD_CATEGORIA,',
'	   0 PRECIO_VENTA',
'  FROM VT_ORDENES_TRABAJO_MO MO,',
'       ST_ARTICULOS A,',
'	   VT_ORDENES_TRABAJO OT,',
'	   ST_ARTICULOS A1,',
'	   CM_PROVEEDORES PRO,',
'	   CC_CLIENTES CL,',
'	   MONEDAS M,',
'	   PERSONAS P',
' WHERE OT.COD_EMPRESA = :P18_COD_EMPRESA ',
'   AND M.COD_MONEDA = A.COD_MONEDA_BASE',
'   /*AND (:P18_COD_ARTICULO_DES  IS NULL OR  A.COD_ARTICULO = :P18_COD_ARTICULO_DES )',
'   AND (:P18_COD_ARTICULO_HAS  IS NULL OR A.COD_ARTICULO =  :P18_COD_ARTICULO_HAS )*/',
'   AND (( OT.FEC_COMPROBANTE >= TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')   OR TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  IS NULL )',
'   AND ( OT.FEC_COMPROBANTE <=  TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')  OR TO_DATE( :P18_FEC_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'   AND (( OT.FEC_CIERRE >= TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'') OR TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  IS NULL )',
'   AND ( OT.FEC_CIERRE <= TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')  OR TO_DATE( :P18_FEC_CIE_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'   AND (OT.COD_DISTRIBUIDOR = :P18_COD_DISTRIBUIDOR  OR  :P18_COD_DISTRIBUIDOR  IS NULL)',
'   AND (OT.COD_PROVEEDOR = :P18_COD_PROVEEDOR  OR :P18_COD_PROVEEDOR   IS NULL)',
'   AND (OT.COD_ORIGEN = :P18_COD_ORIGEN  OR  :P18_COD_ORIGEN  IS NULL)          ',
'   AND (OT.SER_COMPROBANTE = :P18_SER_COMPROBANTE  OR  :P18_SER_COMPROBANTE IS NULL)',
'   AND (OT.NRO_COMPROBANTE BETWEEN NVL(:P18_NRO_INICIAL ,1) AND NVL(:P18_NRO_FINAL ,99999999999))',
'   AND (OT.NRO_OT_PROVEEDOR BETWEEN NVL(:P18_NRO_PRO_INICIAL ,1) AND NVL( :P18_NRO_PRO_FINAL ,99999999999))',
'   AND PRO.COD_EMPRESA = OT.COD_EMPRESA',
'   AND PRO.COD_PROVEEDOR = OT.COD_PROVEEDOR',
'   AND PRO.COD_EMPRESA = CL.COD_EMPRESA',
'   AND PRO.COD_PERSONA = CL.COD_PERSONA',
'   AND PRO.COD_PERSONA = P.COD_PERSONA',
'   AND NVL(OT.IND_RECLAMO,''N'')<>''S''',
'   AND MO.COD_EMPRESA = OT.COD_EMPRESA',
'   AND MO.TIP_COMPROBANTE = OT.TIP_COMPROBANTE',
'   AND MO.SER_COMPROBANTE = OT.SER_COMPROBANTE',
'   AND MO.NRO_COMPROBANTE = OT.NRO_COMPROBANTE',
'   AND A1.COD_EMPRESA = OT.COD_EMPRESA',
'   AND A1.COD_ARTICULO = OT.COD_ARTICULO',
'   AND A.DESCRIPCION NOT LIKE ''%FLETE%''    ',
'   AND NVL(OT.ANULADO,''N'') <> ''S''',
'   AND MO.COD_EMPRESA = A.COD_EMPRESA',
'   AND MO.COD_ARTICULO = A.COD_ARTICULO',
'   AND NVL(IND_RENDIDO,''N'') <> ''S''',
'   AND (''MO'' = :P18_TIPO  OR :P18_TIPO  IS NULL)',
'   AND NVL( OT.IND_GARANTIA, ''N'' ) = ''S''',
'   AND :P18_VTREOTAUTRES = 1',
'GROUP BY OT.COD_EMPRESA,OT.COD_PROVEEDOR, P.NOMBRE,',
'         MO.COD_ARTICULO, A.DESCRIPCION ',
'       ',
'UNION ALL',
'',
'SELECT OT.COD_PROVEEDOR, P.NOMBRE,',
'       ''FLETE'' COD_ARTICULO, ',
'       CASE WHEN OT.IND_INSTALACION =''S'' THEN',
'			''FLETE INSTALACION''',
'       ELSE',
'			''FLETE REPARACION'' ',
'	   END DESC_ARTICULO,  ',
'       SUM(NVL(MO.CANTIDAD,1)) CANTIDAD, ',
'       SUM(MO.MONTO) PRECIO,',
'	------------------------------------------------------ ',
'	   SUM(MO.MONTO) BASE,',
'       ''FLETE'' TIPO,',
'	   A1.COD_ARTICULO DET_ART,',
'      --------------- ',
'       NULL COD_CATEGORIA,',
'	   0 PRECIO_VENTA',
'  FROM  VT_ORDENES_TRABAJO_MO MO,',
'        ST_ARTICULOS A,',
'		VT_ORDENES_TRABAJO OT,',
'		ST_ARTICULOS A1,',
'		CM_PROVEEDORES PRO,',
'		CC_CLIENTES CL,',
'		MONEDAS M,',
'		PERSONAS P',
'  WHERE OT.COD_EMPRESA =  :P18_COD_EMPRESA ',
'    AND M.COD_MONEDA = A.COD_MONEDA_BASE',
'    /*AND ( :P18_COD_ARTICULO_DES  IS NULL OR  A.COD_ARTICULO = :P18_COD_ARTICULO_DES )',
'    AND ( :P18_COD_ARTICULO_HAS  IS NULL OR A.COD_ARTICULO =  :P18_COD_ARTICULO_HAS )*/',
'    AND (( OT.FEC_COMPROBANTE >= TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  IS NULL )',
'    AND ( OT.FEC_COMPROBANTE <= TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'    AND (( OT.FEC_CIERRE >= TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'    AND ( OT.FEC_CIERRE <= TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')   IS NULL ))    ',
'    AND (OT.COD_DISTRIBUIDOR = :P18_COD_DISTRIBUIDOR  OR :P18_COD_DISTRIBUIDOR  IS NULL)',
'    AND (OT.COD_PROVEEDOR = :P18_COD_PROVEEDOR  OR :P18_COD_PROVEEDOR   IS NULL)',
'    AND (OT.COD_ORIGEN = :P18_COD_ORIGEN OR :P18_COD_ORIGEN  IS NULL)          ',
'    AND (OT.SER_COMPROBANTE = :P18_SER_COMPROBANTE  OR  :P18_SER_COMPROBANTE IS NULL)',
'    AND (OT.NRO_COMPROBANTE BETWEEN NVL(:P18_NRO_INICIAL ,1) AND NVL(:P18_NRO_FINAL ,99999999999))',
'    AND (OT.NRO_OT_PROVEEDOR BETWEEN NVL(:P18_NRO_PRO_INICIAL ,1) AND NVL(:P18_NRO_PRO_FINAL,99999999999))',
'    AND PRO.COD_EMPRESA = OT.COD_EMPRESA',
'    AND PRO.COD_PROVEEDOR = OT.COD_PROVEEDOR',
'    AND PRO.COD_EMPRESA = CL.COD_EMPRESA',
'    AND PRO.COD_PERSONA = CL.COD_PERSONA',
'    AND PRO.COD_PERSONA = P.COD_PERSONA',
'    AND MO.COD_EMPRESA = OT.COD_EMPRESA',
'    AND MO.TIP_COMPROBANTE = OT.TIP_COMPROBANTE',
'    AND MO.SER_COMPROBANTE = OT.SER_COMPROBANTE',
'    AND MO.NRO_COMPROBANTE = OT.NRO_COMPROBANTE',
'	AND A1.COD_EMPRESA = OT.COD_EMPRESA',
'	AND A1.COD_ARTICULO = OT.COD_ARTICULO',
'	AND A.DESCRIPCION LIKE ''%FLETE%''    ',
'	AND NVL(OT.ANULADO,''N'') <> ''S''',
'    AND MO.COD_EMPRESA = A.COD_EMPRESA',
'    AND MO.COD_ARTICULO = A.COD_ARTICULO',
'	AND NVL(IND_RENDIDO,''N'') <> ''S''',
'	AND (''MO'' = :P18_TIPO  OR :P18_TIPO  IS NULL)',
'    AND NVL( OT.IND_GARANTIA, ''N'' ) = ''S''',
'    AND :P18_VTREOTAUTRES = 1',
'GROUP BY OT.COD_EMPRESA,OT.COD_PROVEEDOR, P.NOMBRE,A1.COD_ARTICULO,',
'       CASE WHEN OT.IND_INSTALACION = ''S'' THEN ''FLETE INSTALACION''',
'       ELSE ''FLETE REPARACION'' END      ',
'ORDER BY 1,4'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P18_VTREOTAUTRES,P18_COD_EMPRESA,P18_COD_SUCURSAL,P18_FEC_INICIAL,P18_FEC_FINAL,,P18_FEC_CIE_INICIAL,P18_FEC_CIE_FINAL,P18_COD_DISTRIBUIDOR,P18_COD_PROVEEDOR,P18_COD_ORIGEN,P18_SER_COMPROBANTE,P18_NRO_INICIAL,P18_NRO_FINAL,P18_NRO_PRO_INICIAL,P18_NRO'
||'_PRO_FINAL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Respuestos entregados en garant\00EDa - VTREOTAUTRES')
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(46564193197620013)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>46564193197620013
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46564232920620014)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46564375210620015)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46564439376620016)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Repuesto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46564508665620017)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46564640321620018)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46564721248620019)
,p_db_column_name=>'PRECIO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46564857521620020)
,p_db_column_name=>'BASE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Base'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46564944592620021)
,p_db_column_name=>'TIPO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46565024089620022)
,p_db_column_name=>'DET_ART'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Det Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46565180791620023)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46565209045620024)
,p_db_column_name=>'PRECIO_VENTA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Precio Venta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(46589395752084664)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'465894'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_view_mode=>'REPORT'
,p_report_columns=>'COD_PROVEEDOR:NOMBRE:TIPO:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:PRECIO:APXWS_CC_001:'
,p_break_on=>'0:0'
,p_break_enabled_on=>'0:0'
,p_sum_columns_on_break=>'CANTIDAD:PRECIO'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(46592637448416099)
,p_report_id=>wwv_flow_imp.id(46589395752084664)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'F / E'
,p_format_mask=>'999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Costo Unit.'
,p_report_label=>'Costo Unit.'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(47775616340503820)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Agrupado por Tipo'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'477757'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_view_mode=>'REPORT'
,p_report_columns=>'COD_PROVEEDOR:NOMBRE:TIPO:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:PRECIO:APXWS_CC_001:'
,p_break_on=>'0:0'
,p_break_enabled_on=>'0:0'
,p_sum_columns_on_break=>'CANTIDAD:PRECIO'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(47776029192503820)
,p_report_id=>wwv_flow_imp.id(47775616340503820)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'F / E'
,p_format_mask=>'999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Costo Unit.'
,p_report_label=>'Costo Unit.'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(47776462644503821)
,p_report_id=>wwv_flow_imp.id(47775616340503820)
,p_group_by_columns=>'COD_PROVEEDOR:NOMBRE:TIPO:DESC_ARTICULO'
,p_function_01=>'SUM'
,p_function_column_01=>'CANTIDAD'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Cantidad'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_function_02=>'SUM'
,p_function_column_02=>'PRECIO'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Monto total'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'N'
,p_sort_column_01=>'DESC_ARTICULO'
,p_sort_direction_01=>'ASC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(47777332725507003)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Por Proveedor y Tipo'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'477774'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_view_mode=>'REPORT'
,p_report_columns=>'COD_PROVEEDOR:NOMBRE:TIPO:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:PRECIO:APXWS_CC_001:'
,p_break_on=>'COD_PROVEEDOR:NOMBRE:TIPO:DESC_ARTICULO:0:0'
,p_break_enabled_on=>'COD_PROVEEDOR:NOMBRE:TIPO:DESC_ARTICULO:0:0'
,p_sum_columns_on_break=>'CANTIDAD:PRECIO'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(47777706519507004)
,p_report_id=>wwv_flow_imp.id(47777332725507003)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'F / E'
,p_format_mask=>'999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Costo Unit.'
,p_report_label=>'Costo Unit.'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46565845481620030)
,p_plug_name=>unistr('Repuestos entregados en garant\00EDa - VTREOTAUTREND')
,p_parent_plug_id=>wwv_flow_imp.id(46154616468357423)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-top:10px;"'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OT.COD_PROVEEDOR, ',
'		P.NOMBRE,',
'		D.COD_ARTICULO,',
'		A.DESCRIPCION DESC_ARTICULO,',
'		C.FEC_ENT_SAL, ',
'		OT.TIP_COMPROBANTE, ',
'		OT.SER_COMPROBANTE, ',
'		OT.NRO_COMPROBANTE,',
'		OT.NRO_OT_PROVEEDOR,',
'		OT.COD_DISTRIBUIDOR,',
'       ABS(SUM((DECODE( NVL( IND_ENT_SAL, ''N'' ), ''S'', NVL( D.CANTIDAD, 0 ), NVL( D.CANTIDAD, 0 ) * -1 ) )) )CANTIDAD,',
'       ',
'		INV.VTRRENOT.PRECIO_VTREOTAUTREND (PI_COD_EMPRESA     		=> C.COD_EMPRESA,',
'										   PI_TIP_COMPROBANTE	 =>OT.TIP_COMPROBANTE,',
'										   PI_SER_COMPROBANTE 	=> OT.SER_COMPROBANTE,',
'										   PI_NRO_COMPROBANTE => OT.NRO_COMPROBANTE,',
'										   PI_COD_ARTICULO   			=> D.COD_ARTICULO,',
'										   PI_PRECIO_VENTA    			=> D.PRECIO_VENTA,',
'										   PI_FEC_ENT_SAL    			=> C.FEC_ENT_SAL,',
'										   PI_COD_CLIENTE   			=> CL.COD_CLIENTE) PRECIO,   ',
'       ------------------------------------------------------',
'		INV.VTRRENOT.BASE_VTREOTAUTREND (PI_PRECIO_VENTA    	=>D.PRECIO_VENTA,',
'										 PI_IND_PRECIO        		 =>  D.IND_PRECIO,',
'										 PI_TIPO_CAMBIO_DIA => M.TIPO_CAMBIO_DIA,',
'										 PI_PRECIO_BASE    		 => A.PRECIO_BASE,',
'										 PI_COD_EMPRESA    	 => C.COD_EMPRESA,',
'										 PI_COD_GRUPO_ART   => A.COD_GRUPO_ART) BASE,',
'',
'		CASE ',
'			WHEN ( SELECT RR.NRO_COMPROBANTE',
'				     FROM   VT_COMPROBANTES_DETALLE D1,VT_PEDIDOS_CABECERA_REP RR',
'				    WHERE D1.COD_EMPRESA=C.COD_EMPRESA      ',
'					  AND D1.COD_EMPRESA=RR.COD_EMPRESA',
'					  AND RR.TIP_COMPROBANTE=''PER''',
'					  AND D1.SER_PEDIDO= RR.SER_COMPROBANTE',
'					  AND D1.NRO_PEDIDO=RR.NRO_COMPROBANTE',
'					  AND D1.COD_ARTICULO=D.COD_ARTICULO',
'					  AND RR.TIP_COMPROBANTE_REF=OT.TIP_COMPROBANTE',
'					  AND RR.SER_COMPROBANTE_REF=OT.SER_COMPROBANTE',
'					  AND RR.NRO_COMPROBANTE_REF=OT.NRO_COMPROBANTE',
'					  AND ROWNUM=1) IS NULL THEN ''COMPRA LOCAL'' ',
'		ELSE ''REPUESTOS'' ',
'		END TIPO,',
'		INV.VTRRENOT.CATEGORIA(PI_IND_PRECIO => D.IND_PRECIO,',
'				   			   PI_COD_CATEGORIA => A.COD_CATEGORIA) COD_CATEGORIA, ',
'		D.PRECIO_VENTA,',
'		OT.NRO_COMPROBANTE NOTP,',
'		DECODE(INSTR(UPPER(A.DESCRIPCION), ''COMPRA LOCAL''),0,1,2) COD_TIPO,',
'		NVL((SELECT DISTINCT  D1.TIP_COMPROBANTE||''-''||D1.SER_COMPROBANTE||''-''||D1.NRO_COMPROBANTE',
'			   FROM VT_PEDIDOS_CABECERA_REP PED, VT_COMPROBANTES_DETALLE D1',
'			  WHERE PED.COD_EMPRESA=OT.COD_EMPRESA',
'				AND PED.TIP_COMPROBANTE_REF=OT.TIP_COMPROBANTE',
'				AND PED.SER_COMPROBANTE_REF=OT.SER_COMPROBANTE',
'				AND PED.NRO_COMPROBANTE_REF=OT.NRO_COMPROBANTE',
'				AND D1.COD_EMPRESA=PED.COD_EMPRESA',
'				AND D1.SER_PEDIDO=PED.SER_COMPROBANTE',
'				AND D1.NRO_PEDIDO=PED.NRO_COMPROBANTE ',
'				AND D.COD_ARTICULO=D1.COD_ARTICULO',
'				AND ROWNUM=1),''COMPRA LOCAL'')FACTURA, ',
'		TRUNC(OT.FEC_RENDIDO) FECHA_RENDICION, ',
'		A1.COD_ARTICULO COD_PRODUCTO, ',
'		A1.DESCRIPCION DESC_PRODUCTO,',
'			INV.VTRRENOT.CF_PRECIO_VTREOTAUTREND (PI_COD_CATEGORIA => INV.VTRRENOT.CATEGORIA(PI_IND_PRECIO => D.IND_PRECIO,',
'																							 PI_COD_CATEGORIA => A.COD_CATEGORIA),',
'												  PI_PRECIO_VENTA   => D.PRECIO_VENTA,',
'												  PI_PRECIO         => INV.VTRRENOT.PRECIO_VTREOTAUTREND (PI_COD_EMPRESA     => C.COD_EMPRESA,',
'																										  PI_TIP_COMPROBANTE => OT.TIP_COMPROBANTE,',
'																										  PI_SER_COMPROBANTE => OT.SER_COMPROBANTE,',
'																										   PI_NRO_COMPROBANTE => OT.NRO_COMPROBANTE,',
'																										   PI_COD_ARTICULO    => D.COD_ARTICULO,',
'																										   PI_PRECIO_VENTA    => D.PRECIO_VENTA,',
'																										   PI_FEC_ENT_SAL     => C.FEC_ENT_SAL,',
'																										   PI_COD_CLIENTE     => CL.COD_CLIENTE),',
'												  PI_BASE           => INV.VTRRENOT.BASE_VTREOTAUTREND (PI_PRECIO_VENTA    	 => D.PRECIO_VENTA,',
'																										  PI_IND_PRECIO      =>  D.IND_PRECIO,',
'																										  PI_TIPO_CAMBIO_DIA => M.TIPO_CAMBIO_DIA,',
'																										  PI_PRECIO_BASE     => A.PRECIO_BASE,',
'																										  PI_COD_EMPRESA     => C.COD_EMPRESA,',
'																										  PI_COD_GRUPO_ART   => A.COD_GRUPO_ART)) CF_PRECIO',
'   FROM ST_ENTSAL_CAB C,',
'        ST_ENTSAL_DET D,',
'        ST_ARTICULOS A,',
'        ST_MOTIVO_ENT_SAL MO,',
'        VT_ORDENES_TRABAJO OT,',
'		ST_ARTICULOS A1,',
'		CM_PROVEEDORES PRO,',
'		CC_CLIENTES CL,',
'		MONEDAS M,',
'		PERSONAS P',
'  WHERE OT.COD_EMPRESA = :P_COD_EMPRESA ',
'    ',
'	AND M.COD_MONEDA = A.COD_MONEDA_BASE',
'    /*AND ( :P18_COD_ARTICULO_DES  IS NULL OR  A.COD_ARTICULO = :P18_COD_ARTICULO_DES )',
'    AND ( :P18_COD_ARTICULO_HAS  IS NULL OR A.COD_ARTICULO = :P18_COD_ARTICULO_HAS )*/',
'    AND (( OT.FEC_COMPROBANTE >= TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  OR  TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'    AND ( OT.FEC_COMPROBANTE <=  TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'    AND (( OT.FEC_CIERRE >= TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'    AND ( OT.FEC_CIERRE <= TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'    AND (OT.COD_DISTRIBUIDOR = :P18_COD_DISTRIBUIDOR  OR  :P18_COD_DISTRIBUIDOR  IS NULL)',
'    AND (OT.COD_PROVEEDOR = :P18_COD_PROVEEDOR  OR :P18_COD_PROVEEDOR IS NULL)',
'	AND (OT.COD_ORIGEN = :P18_COD_ORIGEN  OR  :P18_COD_ORIGEN  IS NULL)          ',
'    AND (OT.SER_COMPROBANTE = :P18_SER_COMPROBANTE  OR :P18_SER_COMPROBANTE  IS NULL)',
'    AND (OT.NRO_COMPROBANTE BETWEEN NVL(:P18_NRO_INICIAL ,1) AND NVL(:P18_NRO_FINAL ,99999999999))',
'    AND PRO.COD_EMPRESA = OT.COD_EMPRESA',
'    AND PRO.COD_PROVEEDOR = OT.COD_PROVEEDOR',
'    AND PRO.COD_EMPRESA = CL.COD_EMPRESA',
'    AND PRO.COD_PERSONA = CL.COD_PERSONA',
'    AND PRO.COD_PERSONA = P.COD_PERSONA',
'	AND NVL(OT.ANULADO,''N'') <> ''S''',
'    AND C.COD_EMPRESA = OT.COD_EMPRESA',
'    AND C.TIP_COMPROBANTE_REF = OT.TIP_COMPROBANTE',
'    AND C.SER_COMPROBANTE_REF = OT.SER_COMPROBANTE',
'    AND C.NRO_COMPROBANTE_REF = OT.NRO_COMPROBANTE',
'	AND A1.COD_EMPRESA = OT.COD_EMPRESA',
'	AND A1.COD_ARTICULO = OT.COD_ARTICULO',
'	AND (''RP'' = :P18_TIPO OR :P18_TIPO  IS NULL)',
'    AND C.COD_EMPRESA = D.COD_EMPRESA',
'    AND C.TIP_ENT_SAL = D.TIP_ENT_SAL',
'    AND C.SER_ENT_SAL = D.SER_ENT_SAL',
'    AND C.NUM_ENT_SAL = D.NUM_ENT_SAL',
'    AND D.COD_EMPRESA = A.COD_EMPRESA',
'    AND D.COD_ARTICULO = A.COD_ARTICULO',
'	AND C.COD_MOTIVO_ENT_SAL  IN (''55'')',
'    AND (( TO_DATE(TO_CHAR(OT.FEC_RENDIDO,''DD/MM/YYYY'') ,''DD/MM/YYYY'') >= TO_DATE(:P18_FEC_REN_INICIAL,''DD/MM/YYYY'')   )',
'    AND ( TO_DATE(TO_CHAR(OT.FEC_RENDIDO,''DD/MM/YYYY'') ,''DD/MM/YYYY'') <= TO_DATE(:P18_FEC_REN_FINAL,''DD/MM/YYYY'')  ))',
'    AND C.COD_MOTIVO_ENT_SAL  = MO.COD_MOTIVO_ENT_SAL(+)',
'    AND NVL( OT.IND_GARANTIA, ''N'' ) = ''S''',
'    /*AND :P18_VTREOTAUTREND = 1*/',
'    ',
'GROUP BY C.COD_EMPRESA, D.COD_IVA,C.COD_MOTIVO_ENT_SAL,',
'         D.COD_ARTICULO, A.DESCRIPCION,A.COD_LINEA,A.COD_FAMILIA,',
'		 A.COD_RUBRO,A1.COD_ARTICULO, A1.DESCRIPCION,',
'		 C.FEC_ENT_SAL, OT.TIP_COMPROBANTE, OT.SER_COMPROBANTE, OT.NRO_COMPROBANTE,',
'		 OT.COD_CLIENTE,OT.NOM_CLIENTE,OT.COD_DISTRIBUIDOR, CL.COD_CLIENTE,A.PRECIO_BASE ,M.TIPO_CAMBIO_DIA,',
'		 A.COD_EMPRESA, A.COD_ARTICULO,A.COD_GRUPO_ART, OT.SER_COMPROBANTE, OT.NRO_COMPROBANTE,',
'		 OT.NRO_OT_PROVEEDOR,OT.COD_PROVEEDOR, P.NOMBRE, A.COD_CATEGORIA,D.PRECIO_VENTA,',
'		 OT.FEC_COMPROBANTE,D.IND_PRECIO,OT.COD_EMPRESA,TRUNC(OT.FEC_RENDIDO),',
'		 A1.COD_ARTICULO , A1.DESCRIPCION  ',
'',
'UNION ALL',
'  ',
'SELECT OT.COD_PROVEEDOR, ',
'	   P.NOMBRE,',
'       MO.COD_ARTICULO,',
'	   A.DESCRIPCION DESC_ARTICULO,',
'       OT.FEC_COMPROBANTE, ',
'	   OT.TIP_COMPROBANTE, ',
'	   OT.SER_COMPROBANTE, ',
'	   OT.NRO_COMPROBANTE,',
'	   OT.NRO_OT_PROVEEDOR,',
'	   OT.COD_DISTRIBUIDOR,',
'	   CASE ',
'			WHEN NVL(MO.IND_RECLAMO,''N'')=''S''  THEN  0',
'	   ELSE',
'			SUM(NVL(ROUND(MO.CANTIDAD),1)) ',
'	   END CANTIDAD,',
'	   CASE ',
'			WHEN NVL(MO.IND_RECLAMO,''N'') <> ''S'' THEN',
'				MAX(ROUND(MO.MONTO) )',
'	   ELSE	0 ',
'	   END PRECIO,',
'  ------------------------------------------------------   ',
'	   CASE ',
'			WHEN NVL(MO.IND_RECLAMO,''N'') <> ''S'' THEN',
'				MAX(ROUND(MO.MONTO) )',
'	   ELSE 0',
'	   END BASE,',
'       DECODE(INSTR(UPPER(A.DESCRIPCION),''FLETE''),0,''MANO DE OBRA'',''FLETE'') TIPO,      ',
'       NULL CATEGORIA,',
'	   0 PRECIO_VENTA,',
'       OT.NRO_COMPROBANTE NOTP,',
'	   DECODE(INSTR(UPPER(A.DESCRIPCION), ''FLETE''),0,4,3) COD_TIPO,',
'	   '' '' FACTURA , ',
'	   TRUNC(OT.FEC_RENDIDO) FECHA_RENDICION, ',
'	   A1.COD_ARTICULO COD_PRODUCTO, ',
'	   A1.DESCRIPCION DESC_PRODUCTO,',
'	   INV.VTRRENOT.CF_PRECIO_VTREOTAUTREND (PI_COD_CATEGORIA => NULL,',
'											PI_PRECIO_VENTA   => 0,',
'											PI_PRECIO        => CASE WHEN NVL(MO.IND_RECLAMO,''N'') <> ''S'' THEN MAX(ROUND(MO.MONTO) )  ELSE	0  END ,',
'											PI_BASE          => CASE WHEN NVL(MO.IND_RECLAMO,''N'') <> ''S'' THEN 	MAX(ROUND(MO.MONTO) )   ELSE 0  END ) CF_PRECIO',
'  FROM VT_ORDENES_TRABAJO_MO MO,',
'       ST_ARTICULOS A,',
'	   VT_ORDENES_TRABAJO OT,',
'		ST_ARTICULOS A1,',
'		CM_PROVEEDORES PRO,',
'		CC_CLIENTES CL,',
'		MONEDAS M,',
'		PERSONAS P      ',
'  WHERE OT.COD_EMPRESA = :P18_COD_EMPRESA ',
'	AND M.COD_MONEDA = A.COD_MONEDA_BASE',
'    /*AND ( :P18_COD_ARTICULO_DES  IS NULL OR A.COD_ARTICULO = :P18_COD_ARTICULO_DES )',
'    AND ( :P18_COD_ARTICULO_HAS  IS NULL OR A.COD_ARTICULO = :P18_COD_ARTICULO_HAS )*/',
'	AND (( OT.FEC_COMPROBANTE >= TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  IS NULL )',
'    AND ( OT.FEC_COMPROBANTE <= TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'    AND (( OT.FEC_CIERRE >= TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'    AND ( OT.FEC_CIERRE <= TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')   IS NULL ))    ',
'    AND (OT.COD_DISTRIBUIDOR = :P18_COD_DISTRIBUIDOR  OR :P18_COD_DISTRIBUIDOR  IS NULL)',
'    AND (OT.COD_PROVEEDOR = :P18_COD_PROVEEDOR  OR :P18_COD_PROVEEDOR   IS NULL)',
'	AND (OT.COD_ORIGEN = :P18_COD_ORIGEN  OR  :P18_COD_ORIGEN  IS NULL)          ',
'    AND (OT.SER_COMPROBANTE = :P18_SER_COMPROBANTE  OR :P18_SER_COMPROBANTE  IS NULL)',
'    AND (OT.NRO_COMPROBANTE BETWEEN NVL( :P18_NRO_INICIAL ,1) AND NVL( :P18_NRO_FINAL ,99999999999))',
'    AND PRO.COD_EMPRESA = OT.COD_EMPRESA',
'    AND PRO.COD_PROVEEDOR = OT.COD_PROVEEDOR',
'    AND PRO.COD_EMPRESA = CL.COD_EMPRESA',
'    AND PRO.COD_PERSONA = CL.COD_PERSONA',
'    AND PRO.COD_PERSONA = P.COD_PERSONA ',
'    AND MO.COD_EMPRESA = OT.COD_EMPRESA',
'    AND MO.TIP_COMPROBANTE = OT.TIP_COMPROBANTE',
'    AND MO.SER_COMPROBANTE = OT.SER_COMPROBANTE',
'    AND MO.NRO_COMPROBANTE = OT.NRO_COMPROBANTE',
'	AND A1.COD_EMPRESA = OT.COD_EMPRESA',
'	AND A1.COD_ARTICULO = OT.COD_ARTICULO',
'	AND (''MO'' = :P18_TIPO  OR :P18_TIPO  IS NULL)',
'	AND NVL(OT.ANULADO,''N'') <> ''S''',
'    AND MO.COD_EMPRESA = A.COD_EMPRESA',
'    AND MO.COD_ARTICULO = A.COD_ARTICULO',
'    AND (( TO_DATE(TO_CHAR(OT.FEC_RENDIDO,''DD/MM/YYYY'') ,''DD/MM/YYYY'') >= TO_DATE(:P18_FEC_REN_INICIAL,''DD/MM/YYYY'')   )',
'    AND ( TO_DATE(TO_CHAR(OT.FEC_RENDIDO,''DD/MM/YYYY'') ,''DD/MM/YYYY'') <= TO_DATE(:P18_FEC_REN_FINAL,''DD/MM/YYYY'')  ))',
'    AND NVL(IND_RENDIDO,''N'')=''S''',
'    AND NVL( OT.IND_GARANTIA, ''N'' ) = ''S''',
'    AND :P18_VTREOTAUTREND = 1',
'',
'GROUP BY OT.COD_EMPRESA, MO.COD_ARTICULO, A.DESCRIPCION,A.COD_LINEA,A.COD_FAMILIA,',
'		 A.COD_RUBRO,A1.COD_ARTICULO, A1.DESCRIPCION,',
'		 OT.FEC_COMPROBANTE, OT.TIP_COMPROBANTE, OT.SER_COMPROBANTE, OT.NRO_COMPROBANTE,',
'		 OT.COD_CLIENTE,OT.NOM_CLIENTE,OT.COD_DISTRIBUIDOR , CL.COD_CLIENTE,A.PRECIO_BASE ,M.TIPO_CAMBIO_DIA,',
'		 A.COD_EMPRESA, A.COD_ARTICULO,A.COD_GRUPO_ART, OT.SER_COMPROBANTE, OT.NRO_COMPROBANTE,',
'		 OT.NRO_OT_PROVEEDOR,OT.COD_PROVEEDOR, P.NOMBRE,MO.IND_RECLAMO,TRUNC(OT.FEC_RENDIDO), A1.COD_ARTICULO ,A1.DESCRIPCION  ',
'',
'ORDER BY 7 DESC, 8 ASC, 19 DESC,9 ASC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P18_VTREOTAUTREND,P18_COD_EMPRESA,P18_FEC_INICIAL,P18_FEC_FINAL,P18_FEC_CIE_INICIAL,P18_FEC_CIE_FINAL,P18_COD_DISTRIBUIDOR,P18_COD_PROVEEDOR,P18_COD_ORIGEN,P18_SER_COMPROBANTE,P18_NRO_INICIAL,P18_NRO_FINAL,P18_TIPO,P18_FEC_REN_INICIAL,P18_FEC_REN_FIN'
||'AL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Repuestos entregados en garant\00EDa - VTREOTAUTREND')
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
 p_id=>wwv_flow_imp.id(46565999696620031)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>46565999696620031
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46566043973620032)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46566143426620033)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46566203144620034)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Repuesto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46566387586620035)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46566412510620036)
,p_db_column_name=>'FEC_ENT_SAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec Ent Sal'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46566582644620037)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46566620155620038)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46566744874620039)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Nro.'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46566832485620040)
,p_db_column_name=>'NRO_OT_PROVEEDOR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nro. Ot Proveedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46566956775620041)
,p_db_column_name=>'COD_DISTRIBUIDOR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Distribuidor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46567014994620042)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46567183068620043)
,p_db_column_name=>'PRECIO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46567240038620044)
,p_db_column_name=>'BASE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Base'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46567328770620045)
,p_db_column_name=>'TIPO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46567468724620046)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46567529589620047)
,p_db_column_name=>'PRECIO_VENTA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Precio Venta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46567672112620048)
,p_db_column_name=>'NOTP'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Notp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46567792869620049)
,p_db_column_name=>'COD_TIPO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Tipo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46567863614620050)
,p_db_column_name=>'FACTURA'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46874253755296001)
,p_db_column_name=>'FECHA_RENDICION'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Fecha Rendicion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46874378227296002)
,p_db_column_name=>'COD_PRODUCTO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Producto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46874446785296003)
,p_db_column_name=>'DESC_PRODUCTO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Desc Producto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46874594268296004)
,p_db_column_name=>'CF_PRECIO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Costo Unit.'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(46900197527510384)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'469002'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SER_COMPROBANTE:NRO_COMPROBANTE:TIPO:FACTURA:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:CF_PRECIO:APXWS_CC_001:NOMBRE:COD_PROVEEDOR:'
,p_break_on=>'COD_PROVEEDOR:NOMBRE:0:0:0:0'
,p_break_enabled_on=>'COD_PROVEEDOR:NOMBRE:0:0:0:0'
,p_sum_columns_on_break=>'APXWS_CC_001'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(1024655401144286193)
,p_report_id=>wwv_flow_imp.id(46900197527510384)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'K  * W'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Costo Total'
,p_report_label=>'Costo Total'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(47764023798461280)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Por Proveedor'
,p_report_seq=>10
,p_report_alias=>'477641'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SER_COMPROBANTE:NRO_COMPROBANTE:FACTURA:NRO_OT_PROVEEDOR:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:CF_PRECIO:COD_PROVEEDOR:NOMBRE::APXWS_CC_001'
,p_break_on=>'COD_PROVEEDOR:NOMBRE:0:0:0:0'
,p_break_enabled_on=>'COD_PROVEEDOR:NOMBRE:0:0:0:0'
,p_sum_columns_on_break=>'APXWS_CC_001'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(47764439424461281)
,p_report_id=>wwv_flow_imp.id(47764023798461280)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'ABS( W * K )'
,p_format_mask=>'999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Monto Total'
,p_report_label=>'Monto Total'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46874681700296005)
,p_plug_name=>'Resumen Repuesto y Facturas'
,p_parent_plug_id=>wwv_flow_imp.id(46565845481620030)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT D.COD_EMPRESA,',
'	   D.COD_ARTICULO ARTICULO_FACT,',
'	   A.DESCRIPCION DESC_ARTICULO_FACT, ',
'	   OT.SER_COMPROBANTE SERIE_OT_FACT, ',
'	   OT.NRO_COMPROBANTE NRO_OT_FACT,',
'	   OT.NRO_OT_PROVEEDOR NRO_PROVEEDOR_FACT,',
'	   SUM((DECODE( NVL( IND_ENT_SAL, ''N'' ), ''S'', NVL( D.CANTIDAD, 0 ), NVL( D.CANTIDAD, 0 ) * -1 ) )) * -1 CANTIDAD_FACT,',
'	   SUM(DD.MONTO_TOTAL + DD.TOTAL_IVA) *',
'	   CASE',
'			WHEN DD.TIP_COMPROBANTE=''NCR'' THEN -1',
'	   ELSE 1 END  IMPORTE_FACT,',
'	   DD.TIP_COMPROBANTE TIPO_FACTURA_FACT,',
'	   DD.SER_COMPROBANTE SERIE_FACTURA_FACT,',
'	   DD.NRO_COMPROBANTE NRO_FACTURA_FACT',
'   FROM ST_ENTSAL_CAB C,',
'		ST_ENTSAL_DET D,',
'		ST_ARTICULOS A,',
'		ST_MOTIVO_ENT_SAL MO,',
'		VT_ORDENES_TRABAJO OT,',
'		ST_ARTICULOS A1,',
'		CM_PROVEEDORES PRO,',
'		CC_CLIENTES CL,',
'		MONEDAS M,',
'		PERSONAS P,',
'		VT_PEDIDOS_CABECERA_REP PED,',
'		VT_PEDIDOS_DETALLE_REP PEDD,',
'		VT_COMPROBANTES_DETALLE DD',
'        ',
'  WHERE OT.COD_EMPRESA = :P18_COD_EMPRESA',
'    --AND ( C.COD_SUCURSAL = :P18_COD_SUCURSAL  OR :P18_COD_SUCURSAL  IS NULL )',
'	AND M.COD_MONEDA = A.COD_MONEDA_BASE',
'    /*AND ( :P18_COD_ARTICULO_DES  IS NULL OR A.COD_ARTICULO = :P18_COD_ARTICULO_DES )',
'    AND ( :P18_COD_ARTICULO_HAS  IS NULL OR A.COD_ARTICULO = :P18_COD_ARTICULO_HAS )*/',
'    AND (( OT.FEC_COMPROBANTE >= TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'    AND ( OT.FEC_COMPROBANTE <= TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'    AND (( OT.FEC_CIERRE >= TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'    AND ( OT.FEC_CIERRE <=  TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'    AND (OT.COD_DISTRIBUIDOR = :P18_COD_DISTRIBUIDOR  OR  :P18_COD_DISTRIBUIDOR  IS NULL)',
'    AND (OT.COD_PROVEEDOR = :P18_COD_PROVEEDOR  OR :P18_COD_PROVEEDOR IS NULL)',
'	AND (OT.COD_ORIGEN = :P18_COD_ORIGEN  OR :P18_COD_ORIGEN  IS NULL)          ',
'    AND (OT.SER_COMPROBANTE = :P18_SER_COMPROBANTE  OR :P18_SER_COMPROBANTE  IS NULL)',
'    AND (OT.NRO_COMPROBANTE BETWEEN NVL( :P18_NRO_INICIAL ,1) AND NVL( :P18_NRO_FINAL ,99999999999))   ',
'    AND PRO.COD_EMPRESA = OT.COD_EMPRESA',
'    AND PRO.COD_PROVEEDOR = OT.COD_PROVEEDOR',
'    AND PRO.COD_EMPRESA = CL.COD_EMPRESA',
'    AND PRO.COD_PERSONA = CL.COD_PERSONA',
'    AND PRO.COD_PERSONA = P.COD_PERSONA',
'	AND NVL(OT.ANULADO,''N'') <> ''S''   ',
'    AND C.COD_EMPRESA = OT.COD_EMPRESA',
'    AND C.TIP_COMPROBANTE_REF = OT.TIP_COMPROBANTE',
'    AND C.SER_COMPROBANTE_REF = OT.SER_COMPROBANTE',
'    AND C.NRO_COMPROBANTE_REF = OT.NRO_COMPROBANTE',
'	AND A1.COD_EMPRESA = OT.COD_EMPRESA',
'	AND A1.COD_ARTICULO = OT.COD_ARTICULO',
'	AND (''RP'' = :P18_TIPO  OR :P18_TIPO IS NULL)',
'    AND C.COD_EMPRESA = D.COD_EMPRESA',
'    AND C.TIP_ENT_SAL = D.TIP_ENT_SAL',
'    AND C.SER_ENT_SAL = D.SER_ENT_SAL',
'    AND C.NUM_ENT_SAL = D.NUM_ENT_SAL',
'    AND D.COD_EMPRESA = A.COD_EMPRESA',
'    AND D.COD_ARTICULO = A.COD_ARTICULO',
'	AND C.COD_MOTIVO_ENT_SAL  IN (''55'')',
'	AND (( TO_DATE(TO_CHAR(OT.FEC_RENDIDO,''DD/MM/YYYY'') ,''DD/MM/YYYY'') >= TO_DATE(:P18_FEC_REN_INICIAL,''DD/MM/YYYY'')   )',
'    AND ( TO_DATE(TO_CHAR(OT.FEC_RENDIDO,''DD/MM/YYYY'') ,''DD/MM/YYYY'') <=  TO_DATE(:P18_FEC_REN_FINAL,''DD/MM/YYYY'')  ))',
'    AND C.COD_MOTIVO_ENT_SAL  = MO.COD_MOTIVO_ENT_SAL(+)',
'    AND NVL( OT.IND_GARANTIA, ''N'' ) = ''S''',
'----------------------------------------------------',
'	AND  PED.COD_EMPRESA = OT.COD_EMPRESA',
'	AND PED.TIP_COMPROBANTE_REF = OT.TIP_COMPROBANTE',
'	AND PED.SER_COMPROBANTE_REF = OT.SER_COMPROBANTE',
'	AND PED.NRO_COMPROBANTE_REF = OT.NRO_COMPROBANTE',
'	AND PEDD.COD_EMPRESA = PED.COD_EMPRESA',
'	AND PEDD.TIP_COMPROBANTE = PED.TIP_COMPROBANTE',
'	AND PEDD.SER_COMPROBANTE = PED.SER_COMPROBANTE',
'	AND PEDD.NRO_COMPROBANTE = PED.NRO_COMPROBANTE ',
'	AND PEDD.COD_ARTICULO = D.COD_ARTICULO',
'	AND DD.COD_EMPRESA = PED.COD_EMPRESA',
'	AND DD.SER_PEDIDO = PED.SER_COMPROBANTE',
'	AND DD.NRO_PEDIDO = PED.NRO_COMPROBANTE ',
'	AND DD.COD_ARTICULO = D.COD_ARTICULO',
'    AND :P18_VTREOTAUTREND = 1',
'-------------------------------------',
'    ',
'GROUP BY C.COD_EMPRESA, D.COD_IVA,C.COD_MOTIVO_ENT_SAL,',
'		 D.COD_ARTICULO, A.DESCRIPCION,A.COD_LINEA,A.COD_FAMILIA,',
'		 A.COD_RUBRO,A1.COD_ARTICULO, A1.DESCRIPCION,',
'		 C.FEC_ENT_SAL, OT.TIP_COMPROBANTE, OT.SER_COMPROBANTE, OT.NRO_COMPROBANTE,',
'		 OT.COD_CLIENTE,OT.NOM_CLIENTE,OT.COD_DISTRIBUIDOR, CL.COD_CLIENTE,A.PRECIO_BASE ,M.TIPO_CAMBIO_DIA,',
'		 A.COD_EMPRESA, A.COD_ARTICULO,A.COD_GRUPO_ART, OT.SER_COMPROBANTE, OT.NRO_COMPROBANTE,',
'		 OT.NRO_OT_PROVEEDOR,OT.COD_PROVEEDOR, P.NOMBRE, A.COD_CATEGORIA,D.PRECIO_VENTA,',
'		 OT.FEC_COMPROBANTE,D.IND_PRECIO,OT.COD_EMPRESA,',
'		 DD.SER_COMPROBANTE, DD.NRO_COMPROBANTE, DD.TIP_COMPROBANTE,D.COD_EMPRESA'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P18_VTREOTAUTREND,P18_COD_EMPRESA,P18_FEC_INICIAL,P18_FEC_FINAL,P18_FEC_CIE_INICIAL,P18_FEC_CIE_FINAL,P18_COD_DISTRIBUIDOR,P18_COD_PROVEEDOR,P18_COD_ORIGEN,P18_SER_COMPROBANTE,P18_NRO_INICIAL,P18_NRO_FINAL,P18_TIPO,P18_FEC_REN_INICIAL,P18_FEC_REN_FIN'
||'AL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen Repuesto y Facturas'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1016655826716866417)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NZARATE'
,p_internal_uid=>1016655826716866417
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016655985730866418)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016656027838866419)
,p_db_column_name=>'ARTICULO_FACT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Articulo Fact'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016656160844866420)
,p_db_column_name=>'DESC_ARTICULO_FACT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Desc Articulo Fact'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016656252970866421)
,p_db_column_name=>'SERIE_OT_FACT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Serie Ot Fact'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016656320653866422)
,p_db_column_name=>'NRO_OT_FACT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro Ot Fact'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016656446572866423)
,p_db_column_name=>'NRO_PROVEEDOR_FACT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro Proveedor Fact'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016656582237866424)
,p_db_column_name=>'CANTIDAD_FACT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cantidad Fact'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016656675699866425)
,p_db_column_name=>'IMPORTE_FACT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Importe Fact'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016656745027866426)
,p_db_column_name=>'TIPO_FACTURA_FACT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tipo Factura Fact'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016656809117866427)
,p_db_column_name=>'SERIE_FACTURA_FACT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Serie Factura Fact'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016656903226866428)
,p_db_column_name=>'NRO_FACTURA_FACT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Nro Factura Fact'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1024638398951217481)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10246384'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPRESA:ARTICULO_FACT:DESC_ARTICULO_FACT:SERIE_OT_FACT:NRO_OT_FACT:NRO_PROVEEDOR_FACT:CANTIDAD_FACT:IMPORTE_FACT:TIPO_FACTURA_FACT:SERIE_FACTURA_FACT:NRO_FACTURA_FACT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46875970169296018)
,p_plug_name=>'Resumen por Tipo'
,p_parent_plug_id=>wwv_flow_imp.id(46565845481620030)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
' tipo, sum(',
' ',
'case when  tipo =''COMPRA LOCAL'' THEN ',
'      NVL(PRECIO_VENTA,(NVL(PRECIO,BASE)))',
'	ELSE',
'		',
' (NVL(PRECIO,BASE))',
'end * abs(cantidad)) total',
'',
'from (SELECT SUM((DECODE( NVL( IND_ENT_SAL, ''N'' ), ''S'', NVL( D.CANTIDAD, 0 ), NVL( D.CANTIDAD, 0 ) * -1 ) )) CANTIDAD,',
'       SUM(INV.VTRRENOT.PRECIO_VTREOTAUTREND (PI_COD_EMPRESA          => C.COD_EMPRESA  ,',
'                      PI_TIP_COMPROBANTE =>OT.TIP_COMPROBANTE ,',
'                      PI_SER_COMPROBANTE => OT.SER_COMPROBANTE,',
'                      PI_NRO_COMPROBANTE => OT.NRO_COMPROBANTE,',
'                      PI_COD_ARTICULO    => D.COD_ARTICULO,',
'                       PI_PRECIO_VENTA     => D.PRECIO_VENTA ,',
'                       PI_FEC_ENT_SAL      => C.FEC_ENT_SAL,',
'                       PI_COD_CLIENTE      => CL.COD_CLIENTE)) PRECIO, ',
'       ------------------------------------------------------    ',
'      INV.VTRRENOT.BASE_VTREOTAUTREND (PI_PRECIO_VENTA  => D.PRECIO_VENTA,',
'                   PI_IND_PRECIO      => D.IND_PRECIO,',
'                   PI_TIPO_CAMBIO_DIA => M.TIPO_CAMBIO_DIA,',
'                   PI_PRECIO_BASE     => A.PRECIO_BASE,',
'                   PI_COD_EMPRESA     => C.COD_EMPRESA,',
'                   PI_COD_GRUPO_ART   => A.COD_GRUPO_ART) BASE,',
'',
'      --------------- ''REPUESTO'' TIPO',
'CASE WHEN  ( SELECT RR.NRO_COMPROBANTE',
'         FROM VT_COMPROBANTES_DETALLE D1,',
'              VT_PEDIDOS_CABECERA_REP RR',
'         WHERE D1.COD_EMPRESA=C.COD_EMPRESA      ',
'          AND D1.COD_EMPRESA=RR.COD_EMPRESA',
'          AND RR.TIP_COMPROBANTE=''PER''',
'          AND D1.SER_PEDIDO= RR.SER_COMPROBANTE',
'          AND D1.NRO_PEDIDO=RR.NRO_COMPROBANTE',
'          AND D1.COD_ARTICULO=D.COD_ARTICULO',
'          AND RR.TIP_COMPROBANTE_REF=OT.TIP_COMPROBANTE',
'          AND RR.SER_COMPROBANTE_REF=OT.SER_COMPROBANTE',
'          AND RR.NRO_COMPROBANTE_REF=OT.NRO_COMPROBANTE',
'          AND ROWNUM = 1) IS NULL',
'  THEN ''COMPRA LOCAL'' ELSE ''REPUESTOS'' END TIPO,',
'',
'      INV.VTRRENOT.CATEGORIA_VTREOTAUTREND (PI_IND_PRECIO      => D.IND_PRECIO,',
'                          PI_COD_EMPRESA     => C.COD_EMPRESA,',
'                          PI_COD_ARTICULO    => D.COD_ARTICULO,',
'                          PI_TIP_COMPROBANTE => OT.TIP_COMPROBANTE,',
'                          PI_SER_COMPROBANTE => OT.SER_COMPROBANTE,',
'                          PI_NRO_COMPROBANTE => OT.NRO_COMPROBANTE,',
'                          PI_COD_CATEGORIA   => A.COD_CATEGORIA) COD_CATEGORIA,',
'      ',
'      D.PRECIO_VENTA,',
'      INV.VTRRENOT.CF_PRECIO_VTREOTAUTREND (PI_COD_CATEGORIA => INV.VTRRENOT.CATEGORIA_VTREOTAUTREND (PI_IND_PRECIO      => D.IND_PRECIO,',
'                                                        PI_COD_EMPRESA     => C.COD_EMPRESA,',
'                                                        PI_COD_ARTICULO    => D.COD_ARTICULO,',
'                                                        PI_TIP_COMPROBANTE => OT.TIP_COMPROBANTE,',
'                                                        PI_SER_COMPROBANTE => OT.SER_COMPROBANTE,',
'                                                        PI_NRO_COMPROBANTE => OT.NRO_COMPROBANTE,',
'                                                        PI_COD_CATEGORIA   => A.COD_CATEGORIA),',
'                          PI_PRECIO_VENTA  => D.PRECIO_VENTA,',
'                          PI_PRECIO        => INV.VTRRENOT.PRECIO_VTREOTAUTREND (PI_COD_EMPRESA     => C.COD_EMPRESA,',
'                                                                                                          PI_TIP_COMPROBANTE => OT.TIP_COMPROBANTE,',
'                                                                                                          PI_SER_COMPROBANTE => OT.SER_COMPROBANTE,',
'                                                                                                          PI_NRO_COMPROBANTE => OT.NRO_COMPROBANTE,',
'                                                                                                          PI_COD_ARTICULO   => D.COD_ARTICULO,',
'                                                                                                          PI_PRECIO_VENTA   => D.PRECIO_VENTA,',
'                                                                                                          PI_FEC_ENT_SAL    => C.FEC_ENT_SAL,',
'                                                                                                          PI_COD_CLIENTE    => CL.COD_CLIENTE),',
'                          PI_BASE          => INV.VTRRENOT.BASE_VTREOTAUTREND (PI_PRECIO_VENTA    => D.PRECIO_VENTA,',
'                                                     PI_IND_PRECIO      => D.IND_PRECIO,',
'                                                     PI_TIPO_CAMBIO_DIA => M.TIPO_CAMBIO_DIA,',
'                                                     PI_PRECIO_BASE     => A.PRECIO_BASE,',
'                                                     PI_COD_EMPRESA     => C.COD_EMPRESA,',
'                                                     PI_COD_GRUPO_ART   => A.COD_GRUPO_ART)) CF_PRECIO',
'from ST_ENTSAL_CAB C,',
'        ST_ENTSAL_DET D,',
'        ST_ARTICULOS A,',
'        ST_MOTIVO_ENT_SAL MO,',
'        VT_ORDENES_TRABAJO OT,',
'    ST_ARTICULOS A1,',
'    CM_PROVEEDORES PRO,',
'    CC_CLIENTES CL,',
'    MONEDAS M,',
'    PERSONAS P',
'        ',
'   WHERE OT.COD_EMPRESA =   :P18_COD_EMPRESA ',
'     --AND ( C.COD_SUCURSAL =  :P18_COD_SUCURSAL  OR :P18_COD_SUCURSAL  IS NULL )',
'     AND M.COD_MONEDA=A.COD_MONEDA_BASE',
'     /*AND ( :P18_COD_ARTICULO_DES  IS NULL OR  A.COD_ARTICULO    = :P18_COD_ARTICULO_DES )',
'     AND ( :P18_COD_ARTICULO_HAS  IS NULL OR A.COD_ARTICULO    =  :P18_COD_ARTICULO_HAS )*/',
'     AND (( OT.FEC_COMPROBANTE >= TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'     AND ( OT.FEC_COMPROBANTE <=  TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')  OR  TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'     AND (( OT.FEC_CIERRE >=  TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  IS NULL )',
'     AND ( OT.FEC_CIERRE <= TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'     AND (OT.COD_DISTRIBUIDOR = :P18_COD_DISTRIBUIDOR OR  :P18_COD_DISTRIBUIDOR  IS NULL)',
'     AND (OT.COD_PROVEEDOR = :P18_COD_PROVEEDOR  OR  :P18_COD_PROVEEDOR  IS NULL)',
'     AND (OT.COD_ORIGEN = :P18_COD_ORIGEN OR  :P18_COD_ORIGEN  IS NULL)          ',
'     AND (OT.SER_COMPROBANTE = :P18_SER_COMPROBANTE  OR  :P18_SER_COMPROBANTE  IS NULL)',
'     AND (OT.NRO_COMPROBANTE BETWEEN NVL( :P18_NRO_INICIAL ,1) AND NVL( :P18_NRO_FINAL ,99999999999))',
'     AND PRO.COD_EMPRESA=OT.COD_EMPRESA',
'     AND PRO.COD_PROVEEDOR=OT.COD_PROVEEDOR',
'     AND PRO.COD_EMPRESA=CL.COD_EMPRESA',
'     AND PRO.COD_PERSONA=CL.COD_PERSONA',
'     AND PRO.COD_PERSONA=P.COD_PERSONA',
'     AND NVL(OT.ANULADO,''N'')<>''S''',
'     AND C.COD_EMPRESA         = OT.COD_EMPRESA',
'     AND C.TIP_COMPROBANTE_REF = OT.TIP_COMPROBANTE',
'     AND C.SER_COMPROBANTE_REF = OT.SER_COMPROBANTE',
'     AND C.NRO_COMPROBANTE_REF = OT.NRO_COMPROBANTE',
'     AND A1.COD_EMPRESA=OT.COD_EMPRESA',
'     AND A1.COD_ARTICULO=OT.COD_ARTICULO   ',
'     AND (''RP'' = :P18_TIPO  OR :P18_TIPO  IS NULL)',
'     AND C.COD_EMPRESA         = D.COD_EMPRESA',
'     AND C.TIP_ENT_SAL         = D.TIP_ENT_SAL',
'     AND C.SER_ENT_SAL         = D.SER_ENT_SAL',
'     AND C.NUM_ENT_SAL         = D.NUM_ENT_SAL',
'     AND D.COD_EMPRESA         = A.COD_EMPRESA',
'     AND D.COD_ARTICULO        = A.COD_ARTICULO',
'   AND C.COD_MOTIVO_ENT_SAL  IN (''55'')',
'     AND (( TO_DATE(TO_CHAR(OT.FEC_RENDIDO,''DD/MM/YYYY'') ,''DD/MM/YYYY'') >= TO_DATE(:P18_FEC_REN_INICIAL,''DD/MM/YYYY'')   )',
'     AND ( TO_DATE(TO_CHAR(OT.FEC_RENDIDO,''DD/MM/YYYY'') ,''DD/MM/YYYY'') <= TO_DATE(:P18_FEC_REN_FINAL,''DD/MM/YYYY'') ))',
'   AND NVL(IND_RENDIDO,''N'')=''S''',
'     AND C.COD_MOTIVO_ENT_SAL  = MO.COD_MOTIVO_ENT_SAL(+)',
'     AND NVL( OT.IND_GARANTIA, ''N'' ) = ''S''',
'     AND :P18_VTREOTAUTREND = 1',
'    ',
'GROUP BY C.COD_EMPRESA, D.COD_IVA,C.COD_MOTIVO_ENT_SAL,',
'         D.COD_ARTICULO, A.DESCRIPCION,A.COD_LINEA,A.COD_FAMILIA,',
'         A.COD_RUBRO,A1.COD_ARTICULO, A1.DESCRIPCION,',
'         C.FEC_ENT_SAL, OT.TIP_COMPROBANTE, OT.SER_COMPROBANTE, OT.NRO_COMPROBANTE,',
'     OT.COD_CLIENTE,OT.NOM_CLIENTE,OT.COD_DISTRIBUIDOR , CL.COD_CLIENTE,A.PRECIO_BASE ,M.TIPO_CAMBIO_DIA,',
'     A.COD_EMPRESA, A.COD_ARTICULO,A.COD_GRUPO_ART, OT.SER_COMPROBANTE, OT.NRO_COMPROBANTE,',
'     OT.NRO_OT_PROVEEDOR,OT.COD_PROVEEDOR, P.NOMBRE, A.COD_CATEGORIA,D.PRECIO_VENTA,',
'     OT.FEC_COMPROBANTE,D.IND_PRECIO',
'',
'  UNION ALL',
'   ',
'     SELECT ',
'',
'     CASE WHEN NVL(MO.IND_RECLAMO,''N'')=''S''  THEN',
'       0',
'     ELSE',
'       SUM(NVL(ROUND(MO.CANTIDAD),1)) ',
'     END CANTIDAD,',
'       ',
'     CASE WHEN NVL(MO.IND_RECLAMO,''N'')<>''S''   THEN',
'       MAX(ROUND(MO.MONTO) )',
'     ELSE',
'        0 ',
'     END PRECIO, ',
'       ------------------------------------------------------  ',
'     CASE WHEN NVL(MO.IND_RECLAMO,''N'')<>''S''   THEN',
'      MAX(ROUND(MO.MONTO) )',
'     ELSE',
'      0 ',
'     END   BASE,',
'         DECODE(INSTR(UPPER(A.DESCRIPCION),''FLETE''),0,''MANO DE OBRA'',''FLETE'') TIPO,',
'     NULL CATEGORIA ,',
'     0 PRECIO_VENTA,',
'     INV.VTRRENOT.CF_PRECIO_VTREOTAUTREND (PI_COD_CATEGORIA => NULL,',
'                       PI_PRECIO_VENTA  => 0,',
'                       PI_PRECIO        => CASE WHEN NVL(MO.IND_RECLAMO,''N'')<>''S''THEN MAX(ROUND(MO.MONTO) )ELSE 0 END,',
'                       PI_BASE          => CASE WHEN NVL(MO.IND_RECLAMO,''N'')<>''S''THEN MAX(ROUND(MO.MONTO) )ELSE 0 END) CF_PRECIO',
'       ',
'   FROM VT_ORDENES_TRABAJO_MO MO,',
'        ST_ARTICULOS A,',
'        VT_ORDENES_TRABAJO OT,',
'    ST_ARTICULOS A1,',
'    CM_PROVEEDORES PRO, ',
'    CC_CLIENTES CL,',
'    MONEDAS M,',
'    PERSONAS P     ',
'  WHERE OT.COD_EMPRESA = :P18_COD_EMPRESA',
'    AND M.COD_MONEDA = A.COD_MONEDA_BASE',
'    /*AND ( :P18_COD_ARTICULO_DES  IS NULL OR  A.COD_ARTICULO    =  :P18_COD_ARTICULO_DES )',
'    AND ( :P18_COD_ARTICULO_HAS  IS NULL OR A.COD_ARTICULO    =  :P18_COD_ARTICULO_HAS ) */',
'    AND (( OT.FEC_COMPROBANTE >= TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'    AND ( OT.FEC_COMPROBANTE <=  TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')  OR  TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'    AND (( OT.FEC_CIERRE >=  TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'    AND ( OT.FEC_CIERRE <=  TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')  OR  TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'    AND (OT.COD_DISTRIBUIDOR = :P18_COD_DISTRIBUIDOR  OR :P18_COD_DISTRIBUIDOR  IS NULL)',
'    AND (OT.COD_PROVEEDOR =  :P18_COD_PROVEEDOR  OR :P18_COD_PROVEEDOR   IS NULL)',
'    AND (OT.COD_ORIGEN = :P18_COD_ORIGEN  OR  :P18_COD_ORIGEN  IS NULL)          ',
'    AND (OT.SER_COMPROBANTE = :P18_SER_COMPROBANTE  OR  :P18_SER_COMPROBANTE  IS NULL)',
'    AND (OT.NRO_COMPROBANTE BETWEEN NVL( :P18_NRO_INICIAL ,1) AND NVL( :P18_NRO_FINAL ,99999999999)) ',
'    AND PRO.COD_EMPRESA = OT.COD_EMPRESA',
'    AND PRO.COD_PROVEEDOR = OT.COD_PROVEEDOR',
'    AND PRO.COD_EMPRESA = CL.COD_EMPRESA',
'    AND PRO.COD_PERSONA = CL.COD_PERSONA',
'    AND PRO.COD_PERSONA = P.COD_PERSONA',
'    AND MO.COD_EMPRESA = OT.COD_EMPRESA',
'    AND MO.TIP_COMPROBANTE = OT.TIP_COMPROBANTE',
'    AND MO.SER_COMPROBANTE = OT.SER_COMPROBANTE',
'    AND MO.NRO_COMPROBANTE = OT.NRO_COMPROBANTE',
'  AND A1.COD_EMPRESA = OT.COD_EMPRESA',
'  AND A1.COD_ARTICULO = OT.COD_ARTICULO    ',
'  AND (''MO'' = :P18_TIPO OR :P18_TIPO  IS NULL)',
'    AND NVL(MO.IND_RECLAMO,''N'') <> ''S''',
'  AND NVL(OT.ANULADO,''N'') <> ''S''',
'    AND MO.COD_EMPRESA = A.COD_EMPRESA',
'    AND MO.COD_ARTICULO = A.COD_ARTICULO',
'    AND (( TO_DATE(TO_CHAR(OT.FEC_RENDIDO,''DD/MM/YYYY'') ,''DD/MM/YYYY'') >= TO_DATE(:P18_FEC_REN_INICIAL,''DD/MM/YYYY'')   )',
'    AND ( TO_DATE(TO_CHAR(OT.FEC_RENDIDO,''DD/MM/YYYY'') ,''DD/MM/YYYY'') <= TO_DATE(:P18_FEC_REN_FINAL,''DD/MM/YYYY'')  ))',
'  AND NVL(IND_RENDIDO,''N'')=''S''',
'  AND (''MO'' = :P18_TIPO  OR :P18_TIPO  IS NULL)',
'    AND NVL( OT.IND_GARANTIA, ''N'' ) = ''S''',
'    AND :P18_VTREOTAUTREND = 1',
'',
'GROUP BY OT.COD_EMPRESA,MO.COD_ARTICULO, A.DESCRIPCION,A.COD_LINEA,A.COD_FAMILIA,',
'     A.COD_RUBRO,A1.COD_ARTICULO, A1.DESCRIPCION,',
'     OT.FEC_COMPROBANTE, OT.TIP_COMPROBANTE, OT.SER_COMPROBANTE, OT.NRO_COMPROBANTE,',
'     OT.COD_CLIENTE,OT.NOM_CLIENTE,OT.COD_DISTRIBUIDOR , CL.COD_CLIENTE,A.PRECIO_BASE ,M.TIPO_CAMBIO_DIA,',
'     A.COD_EMPRESA, A.COD_ARTICULO,A.COD_GRUPO_ART, OT.SER_COMPROBANTE, OT.NRO_COMPROBANTE,',
'     OT.NRO_OT_PROVEEDOR,OT.COD_PROVEEDOR, P.NOMBRE,MO.IND_RECLAMO',
'ORDER BY 4)',
'group by tipo'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P18_VTREOTAUTREND,P18_COD_EMPRESA,P18_FEC_INICIAL,P18_FEC_FINAL,P18_FEC_CIE_INICIAL,P18_FEC_CIE_FINAL,P18_COD_DISTRIBUIDOR,P18_COD_PROVEEDOR,P18_COD_ORIGEN,P18_SER_COMPROBANTE,P18_NRO_INICIAL,P18_NRO_FINAL,P18_TIPO,P18_FEC_REN_INICIAL,P18_FEC_REN_FIN'
||'AL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen por Tipo'
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
 p_id=>wwv_flow_imp.id(46876025116296019)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>46876025116296019
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46876450428296023)
,p_db_column_name=>'TIPO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016657062180866429)
,p_db_column_name=>'TOTAL'
,p_display_order=>50
,p_column_identifier=>'H'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(46901358655510620)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'469014'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'TIPO:TOTAL:'
,p_sum_columns_on_break=>'TOTAL'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(47761309535451980)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Agrupado por Tipo'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'477614'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'TIPO:APXWS_CC_001'
,p_sum_columns_on_break=>'APXWS_CC_001'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(47761708695451981)
,p_report_id=>wwv_flow_imp.id(47761309535451980)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'ABS ( G * A )'
,p_format_mask=>'999G999G999G999'
,p_column_type=>'NUMBER'
,p_column_label=>'Total'
,p_report_label=>'Total'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(47762144691451983)
,p_report_id=>wwv_flow_imp.id(47761309535451980)
,p_group_by_columns=>'TIPO'
,p_function_01=>'SUM'
,p_function_column_01=>'APXWS_CC_001'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Total'
,p_function_format_mask_01=>'999G999G999G999'
,p_function_sum_01=>'N'
,p_sort_column_01=>'TIPO'
,p_sort_direction_01=>'ASC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(47763090105457617)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Por Tipo'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'477631'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'TIPO:APXWS_CC_001'
,p_sum_columns_on_break=>'APXWS_CC_001'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(47763410538457618)
,p_report_id=>wwv_flow_imp.id(47763090105457617)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'ABS ( G * A )'
,p_format_mask=>'999G999G999G999'
,p_column_type=>'NUMBER'
,p_column_label=>'Total'
,p_report_label=>'Total'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46991860080146502)
,p_plug_name=>unistr('Respuestos entregados en garant\00EDa - VTREOTAUTRESREND')
,p_parent_plug_id=>wwv_flow_imp.id(46154616468357423)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-top:10px;"'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tipo, cod_articulo, desc_articulo,sum(precio) precio, sum(cantidad)cantidad from (SELECT OT.COD_PROVEEDOR, ',
'     P.NOMBRE,',
'       (CASE WHEN ',
'         ( SELECT RR.NRO_COMPROBANTE    ',
'             FROM VT_COMPROBANTES_DETALLE D1,VT_PEDIDOS_CABECERA_REP RR',
'            WHERE D1.COD_EMPRESA=C.COD_EMPRESA      ',
'              AND D1.COD_EMPRESA=RR.COD_EMPRESA',
'              AND RR.TIP_COMPROBANTE=''PER''',
'            AND D1.SER_PEDIDO= RR.SER_COMPROBANTE',
'            AND D1.NRO_PEDIDO=RR.NRO_COMPROBANTE',
'            AND D1.COD_ARTICULO=D.COD_ARTICULO',
'              AND RR.TIP_COMPROBANTE_REF=OT.TIP_COMPROBANTE',
'            AND RR.SER_COMPROBANTE_REF=OT.SER_COMPROBANTE',
'            AND RR.NRO_COMPROBANTE_REF=OT.NRO_COMPROBANTE',
'              AND ROWNUM = 1) IS NULL',
'        THEN ''COMPRA LOCAL'' ELSE ''REPUESTOS'' END)  COD_ARTICULO,',
'        (CASE WHEN  ( SELECT RR.NRO_COMPROBANTE ',
'               FROM VT_COMPROBANTES_DETALLE D1,VT_PEDIDOS_CABECERA_REP RR',
'              WHERE D1.COD_EMPRESA=C.COD_EMPRESA      ',
'              AND D1.COD_EMPRESA=RR.COD_EMPRESA',
'              AND RR.TIP_COMPROBANTE=''PER''',
'              AND D1.SER_PEDIDO= RR.SER_COMPROBANTE',
'              AND D1.NRO_PEDIDO=RR.NRO_COMPROBANTE',
'              AND D1.COD_ARTICULO=D.COD_ARTICULO',
'              AND RR.TIP_COMPROBANTE_REF=OT.TIP_COMPROBANTE',
'              AND RR.SER_COMPROBANTE_REF=OT.SER_COMPROBANTE',
'              AND RR.NRO_COMPROBANTE_REF=OT.NRO_COMPROBANTE',
'              AND ROWNUM = 1) IS NULL',
'',
'     THEN ''COMPRA LOCAL'' ELSE ''REPUESTOS'' END) DESC_ARTICULO,',
'    SUM(ABS((DECODE( NVL( IND_ENT_SAL, ''N'' ), ''S'', NVL( D.CANTIDAD, 0 ), NVL( D.CANTIDAD, 0 ) * -1 ) ))) CANTIDAD,',
'    INV.VTRRENOT.PRECIO_VTREOTAUTRESREND (PI_COD_EMPRESA     => C.COD_EMPRESA,',
'                        PI_TIP_COMPROBANTE => OT.TIP_COMPROBANTE,',
'                        PI_SER_COMPROBANTE => OT.SER_COMPROBANTE,',
'                        PI_NRO_COMPROBANTE => OT.NRO_COMPROBANTE,',
'                        PI_COD_ARTICULO   => D.COD_ARTICULO,',
'                        PI_PRECIO_VENTA    => D.PRECIO_VENTA,',
'                        PI_FEC_ENT_SAL     => C.FEC_ENT_SAL,',
'                        PI_COD_CLIENTE     => CL.COD_CLIENTE,',
'                        PI_IND_PRECIO    => D.IND_PRECIO) PRECIO,',
'       ------------------------------------------------------',
'       MAX ((',
'         SELECT ( ROUND(A.PRECIO_BASE * ( 1 + (NVL(10,0)/100)),0) +',
'          ( ROUND(A.PRECIO_BASE * ( 1 + (NVL(10,0)/100)),0) *',
'           NVL(COEFICIENTE,0) / 100 )) *   NVL(M.TIPO_CAMBIO_DIA,1)',
'         ',
'          FROM VT_COEF_PRECIOS_GRUP',
'         WHERE COD_EMPRESA = A.COD_EMPRESA',
'           AND COD_LISTA_PRECIO = ''1''',
'           AND COD_GRUPO_ART = A.COD_GRUPO_ART',
'',
'       ) )BASE,',
'',
'    (CASE WHEN ( SELECT RR.NRO_COMPROBANTE',
'             FROM   VT_COMPROBANTES_DETALLE D1,VT_PEDIDOS_CABECERA_REP RR',
'             WHERE D1.COD_EMPRESA=C.COD_EMPRESA      ',
'             AND D1.COD_EMPRESA=RR.COD_EMPRESA',
'             AND RR.TIP_COMPROBANTE=''PER''',
'               AND D1.SER_PEDIDO= RR.SER_COMPROBANTE',
'             AND D1.NRO_PEDIDO=RR.NRO_COMPROBANTE',
'             AND D1.COD_ARTICULO=D.COD_ARTICULO',
'             AND RR.TIP_COMPROBANTE_REF = OT.TIP_COMPROBANTE',
'             AND RR.SER_COMPROBANTE_REF = OT.SER_COMPROBANTE',
'             AND RR.NRO_COMPROBANTE_REF = OT.NRO_COMPROBANTE',
'             AND ROWNUM = 1) IS NULL',
'',
'    THEN ''COMPRA LOCAL'' ELSE ''REPUESTOS'' END)TIPO, ',
'    D.COD_ARTICULO DET_ART,',
'    NULL COD_CATEGORIA,',
'      MAX(D.PRECIO_VENTA) PRECIO_VENTA, ',
'      C.NRO_COMPROBANTE_REF NRO_COMPROBANTE_REF,',
'      P.COD_PERSONA',
'        ',
'   FROM ST_ENTSAL_CAB C,',
'        ST_ENTSAL_DET D,',
'        ST_ARTICULOS A,',
'        ST_MOTIVO_ENT_SAL MO,',
'        VT_ORDENES_TRABAJO OT,',
'    ST_ARTICULOS A1,',
'    CM_PROVEEDORES PRO,',
'    CC_CLIENTES CL,',
'    MONEDAS M,',
'    PERSONAS P',
'        ',
'   WHERE OT.COD_EMPRESA =  :P18_COD_EMPRESA',
'     --AND ( C.COD_SUCURSAL =  :P18_COD_SUCURSAL  OR  :P18_COD_SUCURSAL  IS NULL )',
'     AND M.COD_MONEDA=A.COD_MONEDA_BASE',
'     /*AND ( :P18_COD_ARTICULO_DES  IS NULL OR  A.COD_ARTICULO =  :P18_COD_ARTICULO_DES )',
'     AND ( :P18_COD_ARTICULO_HAS  IS NULL OR A.COD_ARTICULO = :P18_COD_ARTICULO_HAS)*/',
'     AND (( OT.FEC_COMPROBANTE >= TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'     AND ( OT.FEC_COMPROBANTE <=  TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'     AND (( OT.FEC_CIERRE >= TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'     AND ( OT.FEC_CIERRE <=  TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'     AND (OT.COD_DISTRIBUIDOR = :P18_COD_DISTRIBUIDOR  OR :P18_COD_DISTRIBUIDOR  IS NULL)',
'     AND (OT.COD_PROVEEDOR =  :P18_COD_PROVEEDOR  OR :P18_COD_PROVEEDOR   IS NULL)',
'     AND (OT.COD_ORIGEN = :P18_COD_ORIGEN  OR :P18_COD_ORIGEN  IS NULL)          ',
'     AND (OT.SER_COMPROBANTE = :P18_SER_COMPROBANTE  OR :P18_SER_COMPROBANTE  IS NULL)',
'     AND (OT.NRO_COMPROBANTE BETWEEN NVL( :P18_NRO_INICIAL ,1) AND NVL( :P18_NRO_FINAL ,99999999999)) ',
'     AND PRO.COD_EMPRESA = OT.COD_EMPRESA',
'     AND PRO.COD_PROVEEDOR = OT.COD_PROVEEDOR',
'     AND PRO.COD_EMPRESA = CL.COD_EMPRESA',
'     AND PRO.COD_PERSONA = CL.COD_PERSONA',
'     AND PRO.COD_PERSONA = P.COD_PERSONA',
'   AND NVL(OT.ANULADO,''N'') <> ''S''',
'     AND C.COD_EMPRESA = OT.COD_EMPRESA',
'     AND C.TIP_COMPROBANTE_REF = OT.TIP_COMPROBANTE',
'     AND C.SER_COMPROBANTE_REF = OT.SER_COMPROBANTE',
'     AND C.NRO_COMPROBANTE_REF = OT.NRO_COMPROBANTE',
'     AND A1.COD_EMPRESA = OT.COD_EMPRESA',
'     AND A1.COD_ARTICULO = OT.COD_ARTICULO',
'     AND C.COD_EMPRESA = D.COD_EMPRESA',
'     AND C.TIP_ENT_SAL = D.TIP_ENT_SAL',
'     AND C.SER_ENT_SAL = D.SER_ENT_SAL',
'     AND C.NUM_ENT_SAL = D.NUM_ENT_SAL',
'     AND D.COD_EMPRESA = A.COD_EMPRESA',
'     AND D.COD_ARTICULO = A.COD_ARTICULO',
'     AND C.COD_MOTIVO_ENT_SAL  IN (''55'')',
'     AND (( TO_DATE(TO_CHAR(OT.FEC_RENDIDO,''DD/MM/YYYY'') ,''DD/MM/YYYY'') >=  TO_DATE(:P18_FEC_REN_INICIAL,''DD/MM/YYYY'')   )',
'     AND ( TO_DATE(TO_CHAR(OT.FEC_RENDIDO,''DD/MM/YYYY'') ,''DD/MM/YYYY'') <=  TO_DATE(:P18_FEC_REN_FINAL,''DD/MM/YYYY'')  ))',
'     AND C.COD_MOTIVO_ENT_SAL  = MO.COD_MOTIVO_ENT_SAL(+)',
'     AND NVL( OT.IND_GARANTIA, ''N'' ) = ''S''',
'     AND :P18_VTREOTAUTRESREND = 1',
'   ',
'GROUP BY OT.COD_PROVEEDOR, P.NOMBRE, P.COD_PERSONA, D.COD_ARTICULO, ',
'C.NRO_COMPROBANTE_REF, A.COD_CATEGORIA, D.IND_PRECIO, C.COD_EMPRESA, OT.TIP_COMPROBANTE, ',
'OT.SER_COMPROBANTE, OT.NRO_COMPROBANTE, D.PRECIO_VENTA, INV.VTRRENOT.PRECIO_VTREOTAUTRESREND (PI_COD_EMPRESA => C.COD_EMPRESA, PI_TIP_COMPROBANTE => OT.TIP_COMPROBANTE, PI_SER_COMPROBANTE => OT.SER_COMPROBANTE, PI_NRO_COMPROBANTE => OT.NRO_COMPROBANT'
||'E, PI_COD_ARTICULO => D.COD_ARTICULO, PI_PRECIO_VENTA => D.PRECIO_VENTA, PI_FEC_ENT_SAL => C.FEC_ENT_SAL, PI_COD_CLIENTE => CL.COD_CLIENTE, PI_IND_PRECIO => D.IND_PRECIO)',
'    ',
'UNION ALL',
' ',
'     SELECT OT.COD_PROVEEDOR, ',
'   P.NOMBRE,',
'     MO.COD_ARTICULO, ',
'   A.DESCRIPCION DESC_ARTICULO,',
'     SUM(NVL(ROUND(MO.CANTIDAD),1))  CANTIDAD,  ',
'     SUM(ROUND(MO.MONTO)*NVL(ROUND(MO.CANTIDAD),1)) PRECIO, ',
'       ------------------------------------------------------',
'     SUM(ROUND(MO.MONTO)*NVL(ROUND(MO.CANTIDAD),1)) BASE,       ',
'     ''MANO DE OBRA'' TIPO, ',
'   MO.COD_ARTICULO DET_ART,    ',
'      --------------- ',
'     NULL CATEGORIA,',
'   0 PRECIO_VENTA,',
'   OT.NRO_COMPROBANTE NRO_COMPROBANTE_REF,',
'   P.COD_PERSONA',
'FROM VT_ORDENES_TRABAJO_MO MO,',
'   ST_ARTICULOS A,',
'   VT_ORDENES_TRABAJO OT,',
'   ST_ARTICULOS A1,',
'   CM_PROVEEDORES PRO,',
'   CC_CLIENTES CL,',
'   MONEDAS M,',
'   PERSONAS P     ',
'   WHERE OT.COD_EMPRESA =  :P18_COD_EMPRESA',
'   AND M.COD_MONEDA = A.COD_MONEDA_BASE',
'     /*AND ( :P18_COD_ARTICULO_DES  IS NULL OR  A.COD_ARTICULO =  :P18_COD_ARTICULO_DES )',
'     AND ( :P18_COD_ARTICULO_HAS IS NULL OR A.COD_ARTICULO =  :P18_COD_ARTICULO_HAS )*/',
'     AND (( OT.FEC_CIERRE >= TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'     AND ( OT.FEC_CIERRE <=  TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')  IS NULL ))',
'     AND (OT.COD_DISTRIBUIDOR = :P18_COD_DISTRIBUIDOR  OR :P18_COD_DISTRIBUIDOR IS NULL)',
'     AND (OT.COD_PROVEEDOR = :P18_COD_PROVEEDOR  OR :P18_COD_PROVEEDOR   IS NULL)',
'   AND (OT.COD_ORIGEN =  :P18_COD_ORIGEN  OR :P18_COD_ORIGEN  IS NULL)          ',
'     AND (OT.SER_COMPROBANTE = :P18_SER_COMPROBANTE  OR :P18_SER_COMPROBANTE  IS NULL)',
'     AND (OT.NRO_COMPROBANTE BETWEEN NVL( :P18_NRO_INICIAL ,1) AND NVL( :P18_NRO_FINAL ,99999999999))',
'     AND PRO.COD_EMPRESA = OT.COD_EMPRESA',
'     AND PRO.COD_PROVEEDOR = OT.COD_PROVEEDOR',
'     AND PRO.COD_EMPRESA = CL.COD_EMPRESA',
'     AND PRO.COD_PERSONA = CL.COD_PERSONA',
'     AND PRO.COD_PERSONA = P.COD_PERSONA',
'     AND MO.COD_EMPRESA = OT.COD_EMPRESA',
'     AND MO.TIP_COMPROBANTE = OT.TIP_COMPROBANTE',
'     AND MO.SER_COMPROBANTE = OT.SER_COMPROBANTE',
'     AND MO.NRO_COMPROBANTE = OT.NRO_COMPROBANTE',
'     AND A1.COD_EMPRESA = OT.COD_EMPRESA',
'   AND A1.COD_ARTICULO = OT.COD_ARTICULO',
'   AND A.DESCRIPCION NOT LIKE ''%FLETE%''    ',
'     AND NVL(MO.IND_RECLAMO,''N'') <> ''S''',
'   AND NVL(OT.ANULADO,''N'') <> ''S''',
'     AND MO.COD_EMPRESA = A.COD_EMPRESA',
'     AND MO.COD_ARTICULO = A.COD_ARTICULO',
'     AND (( TO_DATE(TO_CHAR(OT.FEC_RENDIDO,''DD/MM/YYYY'') ,''DD/MM/YYYY'') >= TO_DATE(:P18_FEC_REN_INICIAL,''DD/MM/YYYY'') )',
'     AND ( TO_DATE(TO_CHAR(OT.FEC_RENDIDO,''DD/MM/YYYY'') ,''DD/MM/YYYY'') <=  TO_DATE(:P18_FEC_REN_FINAL,''DD/MM/YYYY'')  ))',
'   AND NVL(IND_RENDIDO,''N'')=''S''',
'   AND (''MO'' =  :P18_TIPO  OR  :P18_TIPO  IS NULL)',
'     AND NVL( OT.IND_GARANTIA, ''N'' ) = ''S''',
'     AND :P18_VTREOTAUTRESREND = 1',
'    ',
'GROUP BY OT.COD_EMPRESA,OT.COD_PROVEEDOR, P.NOMBRE,',
'         MO.COD_ARTICULO, A.DESCRIPCION , OT.NRO_COMPROBANTE,P.COD_PERSONA',
'       ',
'UNION ALL',
'',
'     SELECT OT.COD_PROVEEDOR, P.NOMBRE,',
'       ''FLETE'', ',
'       CASE WHEN OT.IND_INSTALACION=''S'' THEN',
'       ''FLETE INSTALACION''',
'       ELSE',
'       ''FLETE REPARACION'' END',
'        DESC_ARTICULO,',
'   ',
'      SUM(NVL(ROUND(MO.CANTIDAD),1))  CANTIDAD, ',
'      MAX(ROUND(MO.MONTO)   )  PRECIO, ',
'       ------------------------------------------------------ ',
'      MAX(ROUND(MO.MONTO)) BASES,',
'      ''FLETE'' TIPO, ',
'    MO.COD_ARTICULO DET_ART,',
'      --------------- ',
'       NULL CATEGORIA,',
'     0 PRECIO_VENTA,',
'     OT.NRO_COMPROBANTE NRO_COMPROBANTE_REF,',
'     P.COD_PERSONA',
'   FROM VT_ORDENES_TRABAJO_MO MO,',
'        ST_ARTICULOS A,',
'        VT_ORDENES_TRABAJO OT,',
'      ST_ARTICULOS A1,',
'      CM_PROVEEDORES PRO,',
'    CC_CLIENTES CL,',
'      MONEDAS M,',
'      PERSONAS P',
'   WHERE OT.COD_EMPRESA = :P18_COD_EMPRESA',
'     AND M.COD_MONEDA = A.COD_MONEDA_BASE',
'     /*AND ( :P18_COD_ARTICULO_DES  IS NULL OR  A.COD_ARTICULO = :P18_COD_ARTICULO_DES )',
'     AND ( :P18_COD_ARTICULO_HAS  IS NULL OR A.COD_ARTICULO = :P18_COD_ARTICULO_HAS )*/',
'     AND (( OT.FEC_CIERRE >= TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'     AND ( OT.FEC_CIERRE <= TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'     AND (OT.COD_DISTRIBUIDOR = :P18_COD_DISTRIBUIDOR  OR :P18_COD_DISTRIBUIDOR  IS NULL)',
'     AND (OT.COD_PROVEEDOR = :P18_COD_PROVEEDOR  OR :P18_COD_PROVEEDOR   IS NULL)',
'   AND (OT.COD_ORIGEN = :P18_COD_ORIGEN  OR  :P18_COD_ORIGEN  IS NULL)          ',
'     AND (OT.SER_COMPROBANTE =  :P18_SER_COMPROBANTE  OR  :P18_SER_COMPROBANTE  IS NULL)',
'     AND (OT.NRO_COMPROBANTE BETWEEN NVL( :P18_NRO_INICIAL ,1) AND NVL( :P18_NRO_FINAL ,99999999999))',
'     AND PRO.COD_EMPRESA = OT.COD_EMPRESA',
'     AND PRO.COD_PROVEEDOR = OT.COD_PROVEEDOR',
'     AND PRO.COD_EMPRESA = CL.COD_EMPRESA',
'     AND PRO.COD_PERSONA = CL.COD_PERSONA',
'     AND PRO.COD_PERSONA = P.COD_PERSONA',
'     AND MO.COD_EMPRESA = OT.COD_EMPRESA',
'     AND MO.TIP_COMPROBANTE = OT.TIP_COMPROBANTE',
'     AND MO.SER_COMPROBANTE = OT.SER_COMPROBANTE',
'     AND MO.NRO_COMPROBANTE = OT.NRO_COMPROBANTE',
'     AND A1.COD_EMPRESA = OT.COD_EMPRESA',
'     AND A1.COD_ARTICULO = OT.COD_ARTICULO',
'     AND A.DESCRIPCION LIKE ''%FLETE%''    ',
'     AND NVL(MO.IND_RECLAMO,''N'') <> ''S''',
'     AND NVL(OT.ANULADO,''N'') <> ''S''',
'     AND MO.COD_EMPRESA = A.COD_EMPRESA',
'     AND MO.COD_ARTICULO = A.COD_ARTICULO',
'     AND (( TO_DATE(TO_CHAR(OT.FEC_RENDIDO,''DD/MM/YYYY'') ,''DD/MM/YYYY'') >= TO_DATE(:P18_FEC_REN_INICIAL,''DD/MM/YYYY'')  )',
'     AND ( TO_DATE(TO_CHAR(OT.FEC_RENDIDO,''DD/MM/YYYY'') ,''DD/MM/YYYY'') <= TO_DATE(:P18_FEC_REN_FINAL,''DD/MM/YYYY'')  ))',
'     AND NVL(IND_RENDIDO,''N'') = ''S''',
'     AND (''MO'' = :P18_TIPO  OR  :P18_TIPO  IS NULL)',
'     AND NVL( OT.IND_GARANTIA, ''N'' ) = ''S''',
'     AND :P18_VTREOTAUTRESREND = 1',
'',
'GROUP BY OT.COD_EMPRESA,OT.COD_PROVEEDOR, P.NOMBRE,A1.COD_ARTICULO,',
'       CASE WHEN OT.IND_INSTALACION = ''S''',
'       THEN ''FLETE INSTALACION''',
'       ELSE',
'       ''FLETE REPARACION'' END,OT.NRO_COMPROBANTE,P.COD_PERSONA,MO.COD_ARTICULO',
'ORDER BY 1,4)',
'group by tipo, cod_articulo, desc_articulo'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P18_VTREOTAUTRESREND,P18_COD_EMPRESA,P18_FEC_INICIAL,P18_FEC_FINAL,P18_FEC_CIE_INICIAL,P18_FEC_CIE_FINAL,P18_COD_DISTRIBUIDOR,P18_COD_PROVEEDOR,P18_COD_ORIGEN,P18_SER_COMPROBANTE,P18_NRO_INICIAL,P18_NRO_FINAL,P18_FEC_REN_INICIAL,P18_FEC_REN_FINAL,P18'
||'_TIPO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Respuestos entregados en garant\00EDa - VTREOTAUTRESREND')
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(46991953736146503)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>46991953736146503
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46992263479146506)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Repuesto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46992369940146507)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46992404476146508)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46992784700146511)
,p_db_column_name=>'TIPO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016657836001866437)
,p_db_column_name=>'PRECIO'
,p_display_order=>90
,p_column_identifier=>'O'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(47044246766957708)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'470443'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:PRECIO:'
,p_break_on=>'TIPO:0:0:0:0:0'
,p_break_enabled_on=>'TIPO:0:0:0:0:0'
,p_sum_columns_on_break=>'PRECIO'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(47765338650469217)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Por Proveedor y Tipo'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'477654'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'TIPO:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:APXWS_CC_001'
,p_break_on=>'COD_PROVEEDOR:NOMBRE:TIPO:0:0:0'
,p_break_enabled_on=>'COD_PROVEEDOR:NOMBRE:TIPO:0:0:0'
,p_sum_columns_on_break=>'PRECIO:APXWS_CC_001:CANTIDAD'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(47765713424469218)
,p_report_id=>wwv_flow_imp.id(47765338650469217)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'F / E'
,p_format_mask=>'999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Costo Unit.'
,p_report_label=>'Costo Unit.'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(47766666327472445)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Agrupado por Tipo'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'477667'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:APXWS_CC_001'
,p_break_on=>'COD_PROVEEDOR:NOMBRE:TIPO:0:0:0'
,p_break_enabled_on=>'COD_PROVEEDOR:NOMBRE:TIPO:0:0:0'
,p_sum_columns_on_break=>'PRECIO'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(47767082802472447)
,p_report_id=>wwv_flow_imp.id(47766666327472445)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'F / E'
,p_format_mask=>'999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Costo Unit.'
,p_report_label=>'Costo Unit.'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(47767407715472448)
,p_report_id=>wwv_flow_imp.id(47766666327472445)
,p_group_by_columns=>'TIPO'
,p_function_01=>'SUM'
,p_function_column_01=>'CANTIDAD'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Cantidad'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_function_02=>'SUM'
,p_function_column_02=>'PRECIO'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Monto total'
,p_function_format_mask_02=>'999G999G999G999'
,p_function_sum_02=>'N'
,p_sort_column_01=>'TIPO'
,p_sort_direction_01=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46993898267146522)
,p_plug_name=>'Saldo Resumen'
,p_parent_plug_id=>wwv_flow_imp.id(46991860080146502)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_SECTOR R_COD_SECTOR,',
'	   DESC_SECTOR R_DESC_SECTOR,',
'	   UPPER(DESC_MONEDA_CUOTA) R_DESC_MONEDA_CUOTA , ',
'	   SUM(SALDO_CUOTA) R_SALDO_CUOTA, ',
'	   SUM(MONTO_CUOTA) R_MONTO_CUOTA, ',
'	   COD_PERSONA COD_PERS',
'FROM (',
'SELECT SAL.COD_CLIENTE,',
'       SAL.TIPO_COMPROBANTE,',
'       SAL.SER_COMPROBANTE,',
'       SAL.NRO_COMPROBANTE,',
'       SAL.FEC_VENCIMIENTO,',
'       SAL.SALDO_CUOTA,',
'       SAL.COD_MONEDA_CUOTA,',
'       MON.DECIMALES,',
'       LOWER(MON.DESCRIPCION) DESC_MONEDA_CUOTA,',
'       MON.SIGLAS DESC_MONEDA_GRUPO,',
'       SAL.COD_CUSTODIO COD_CUSTODIO,',
'       SAL.FEC_ACOBRAR,',
'       CLI.COD_PERSONA,',
'       SAL.MONTO_CUOTA,',
'       SAL.TIP_CAMBIO_US,',
'       DECODE(LTRIM(RTRIM(PER.NOMBRE)),',
'              NULL,',
'              LTRIM(RTRIM(PER.NOMB_FANTASIA)),',
'              LTRIM(RTRIM(PER.NOMBRE))) NOM_CLIENTE,',
'       SAL.NRO_CUOTA,',
'       SAL.COD_SECTOR,',
'       NVL(SEC.DESCRIPCION, ''SIN SECCION'') DESC_SECTOR,',
'       SAL.NRO_VALOR,',
'       SAL.COD_PER_JURIDICA,',
'       TO_CHAR(SAL.FEC_VENCIMIENTO, ''MM'') MES,',
'       TO_CHAR(SAL.FEC_VENCIMIENTO, ''YYYY'') ANIO',
'  FROM CC_SALDOS SAL,',
'       PERSONAS PER,',
'       MONEDAS MON,',
'       CC_CLIENTES CLI,',
'       PERSONAS_FISICAS PF,',
'       SECTORES SEC',
' WHERE CLI.COD_EMPRESA = :P18_COD_EMPRESA ',
'   AND SAL.COD_CLIENTE BETWEEN NVL( :P18_COD_CLIENTE, '' '') AND NVL(:P18_COD_CLIENTE , ''999999999'')',
'   AND NVL(SAL.SALDO_CUOTA, 0) <> 0',
'   AND TRUNC(SAL.FEC_ACOBRAR) <TRUNC(SYSDATE)',
'   AND SAL.COD_EMPRESA = CLI.COD_EMPRESA',
'   AND SAL.COD_CLIENTE = CLI.COD_CLIENTE',
'   AND CLI.COD_PERSONA = PER.COD_PERSONA',
'   AND CLI.COD_PERSONA = PF.COD_PER_FISICA',
'   AND SAL.COD_MONEDA_CUOTA = MON.COD_MONEDA(+)',
'   AND SAL.COD_EMPRESA = SEC.COD_EMPRESA(+)',
'   AND SAL.COD_SECTOR = SEC.COD_SECTOR(+)',
'   AND PF.COD_PER_FISICA = :P18_COD_PERSONA',
'   AND :P18_VTREOTAUTRESREND = 1',
'',
'UNION ALL',
'',
'SELECT SAL.COD_CLIENTE,',
'       SAL.TIPO_COMPROBANTE,',
'       SAL.SER_COMPROBANTE,',
'       SAL.NRO_COMPROBANTE,',
'       SAL.FEC_VENCIMIENTO,',
'       SAL.SALDO_CUOTA,',
'       SAL.COD_MONEDA_CUOTA,',
'       MON.DECIMALES,',
'       LOWER(MON.DESCRIPCION) DESC_MONEDA_CUOTA,',
'       MON.SIGLAS DESC_MONEDA_GRUPO,',
'       SAL.COD_CUSTODIO COD_CUSTODIO,',
'       SAL.FEC_ACOBRAR,',
'       CLI.COD_PERSONA,',
'       SAL.MONTO_CUOTA,',
'       SAL.TIP_CAMBIO_US,',
'       DECODE(LTRIM(RTRIM(PER.NOMBRE)),',
'              NULL,',
'              LTRIM(RTRIM(PER.NOMB_FANTASIA)),',
'              LTRIM(RTRIM(PER.NOMBRE))) NOM_CLIENTE,',
'       SAL.NRO_CUOTA,',
'       SAL.COD_SECTOR,',
'       NVL(SEC.DESCRIPCION, ''SIN SECCION'') DESC_SECTOR,',
'       SAL.NRO_VALOR,',
'       SAL.COD_PER_JURIDICA,',
'       TO_CHAR(SAL.FEC_VENCIMIENTO, ''MM'') MES,',
'       TO_CHAR(SAL.FEC_VENCIMIENTO, ''YYYY'') ANIO',
'  FROM CC_SALDOS SAL,',
'       PERSONAS PER,',
'       MONEDAS MON,',
'       CC_CLIENTES CLI,',
'       PERSONAS_JURIDICAS PF,',
'       SECTORES SEC',
' WHERE SAL.COD_EMPRESA = :P18_COD_EMPRESA   ',
'   AND SAL.COD_CLIENTE BETWEEN NVL(:P18_COD_CLIENTE , '' '') ',
'   AND NVL(:P18_COD_CLIENTE , ''999999999'')',
'   AND NVL(SAL.SALDO_CUOTA, 0) <> 0',
'   AND  TRUNC(SAL.FEC_ACOBRAR) <TRUNC(SYSDATE)',
'   AND SAL.COD_EMPRESA = CLI.COD_EMPRESA',
'   AND SAL.COD_CLIENTE = CLI.COD_CLIENTE',
'   AND CLI.COD_PERSONA = PER.COD_PERSONA',
'   AND CLI.COD_PERSONA = PF.COD_PER_JURIDICA ',
'   AND SAL.COD_MONEDA_CUOTA = MON.COD_MONEDA(+)',
'   AND SAL.COD_EMPRESA = SEC.COD_EMPRESA(+)',
'   AND SAL.COD_SECTOR = SEC.COD_SECTOR(+)',
'   AND CLI.COD_PERSONA = :P18_COD_PERSONA',
'   AND :P18_VTREOTAUTRESREND = 1',
'   ',
'UNION ALL',
'',
'SELECT CLI.COD_CLIENTE,',
'       ''DFL'' TIPO_COMPROBANTE,',
'       ''A'' SER_COMPROBANTE,',
'       0 NRO_COMPROBANTE,',
'       SYSDATE FEC_VENCIMIENTO,',
'       0 SALDO_CUOTA,',
'       ''1'' COD_MONEDA_CUOTA,',
'       0 DECIMALES,',
'       NULL DESC_MONEDA_CUOTA,',
'       ''DFL'' DESC_MONEDA_GRUPO,',
'       NULL COD_CUSTODIO,',
'       SYSDATE FEC_ACOBRAR,',
'       CLI.COD_PERSONA,',
'       0 MONTO_CUOTA,',
'       0 TIP_CAMBIO_US,',
'       DECODE(LTRIM(RTRIM(PER.NOMBRE)),',
'              NULL,',
'              LTRIM(RTRIM(PER.NOMB_FANTASIA)),',
'              LTRIM(RTRIM(PER.NOMBRE))) NOM_CLIENTE,',
'       0 NRO_CUOTA,',
'       NULL COD_SECTOR,',
'       NULL DESC_SECTOR,',
'       NULL NRO_VALOR,',
'       '' '',',
'       '' '' MES,',
'       '' '' ANIO',
'  FROM PERSONAS PER, CC_CLIENTES CLI',
' WHERE CLI.COD_EMPRESA =  :P18_COD_EMPRESA ',
'   AND CLI.COD_CLIENTE BETWEEN NVL(:P18_COD_CLIENTE , '' '') AND  NVL(:P18_COD_CLIENTE , ''999999999'')',
'   AND CLI.COD_PERSONA = PER.COD_PERSONA',
'   AND COD_CLIENTE IN (SELECT COD_CLIENTE',
'                         FROM CC_VALORES',
'                        WHERE COD_EMPRESA = CLI.COD_EMPRESA',
'                          AND NVL(ESTADO_VALOR, ''P'') = ''R'')',
'   AND PER.COD_PERSONA = :P18_COD_PERSONA',
'   AND :P18_VTREOTAUTRESREND = 1',
'UNION ALL',
'',
'SELECT SAL.COD_CLIENTE,',
'       SAL.TIP_DOCUMENTO,',
'       SAL.SER_DOCUMENTO,',
'       TO_NUMBER(SAL.NRO_VALOR),',
'       SAL.FEC_VENCIMIENTO,',
'       SAL.MONTO_VALOR,',
'       SAL.COD_MONEDA,',
'       MON.DECIMALES,',
'       LOWER(MON.DESCRIPCION) DESC_MONEDA_CUOTA,',
'       MON.SIGLAS DESC_MONEDA_GRUPO,',
'       SAL.COD_CUSTODIO COD_CUSTODIO,',
'       SAL.FEC_ACOBRAR,',
'       CLI.COD_PERSONA,',
'       SAL.MONTO_VALOR,',
'       SAL.TIP_CAMBIO_DOLAR,',
'       DECODE(LTRIM(RTRIM(PER.NOMBRE)),',
'              NULL,',
'              LTRIM(RTRIM(PER.NOMB_FANTASIA)),',
'              LTRIM(RTRIM(PER.NOMBRE))) NOM_CLIENTE,',
'       SAL.NRO_CUOTA,',
'       ''0'' COD_SECTOR,',
'       NVL(''VALORES A DEPOSITAR'', ''VALORES A DEPOSITAR'') DESC_SECTOR,',
'       SAL.NRO_VALOR,',
'       SAL.COD_PER_JURIDICA,',
'       TO_CHAR(SAL.FEC_VENCIMIENTO, ''MM'') MES,',
'       TO_CHAR(SAL.FEC_VENCIMIENTO, ''YYYY'') ANIO',
'  FROM CC_VALORES SAL,',
'       PERSONAS PER,',
'       MONEDAS MON,',
'       CC_CLIENTES CLI,',
'       personas  PF,',
'       CC_FORMAS_COBROS CO',
' WHERE SAL.COD_EMPRESA = :P18_COD_EMPRESA ',
'   AND SAL.COD_CLIENTE = :P18_COD_CLIENTE ',
'   AND NVL(SAL.ESTADO_VALOR, ''P'') <> ''D''',
'   AND NVL(SAL.ESTADO_VALOR, ''P'') NOT IN (''CR'', ''CP'', ''C'', ''R'')',
'   AND TRUNC(SAL.FEC_EMISION) <TRUNC(SYSDATE)',
'   AND SAL.COD_EMPRESA = CLI.COD_EMPRESA',
'   AND SAL.COD_CLIENTE = CLI.COD_CLIENTE',
'   AND CLI.COD_PERSONA = PER.COD_PERSONA',
'   AND SAL.COD_PER_JURIDICA = PF.cod_persona   ',
'   AND SAL.COD_MONEDA = MON.COD_MONEDA',
'   AND SAL.COD_EMPRESA = CO.COD_EMPRESA',
'   AND SAL.COD_PER_JURIDICA = CO.COD_PER_JURIDICA',
'   AND SAL.TIP_DOCUMENTO = CO.TIP_DOCUMENTO',
'   AND SAL.NRO_VALOR = CO.NRO_VALOR',
'   AND SAL.FEC_EMISION <> SAL.FEC_VENCIMIENTO',
'   AND CO.SUB_TIPO_TRANS = ''16''',
'   AND CO.COD_PER_JURIDICA = :P18_COD_PERSONA',
'   AND :P18_VTREOTAUTRESREND = 1',
')',
'GROUP BY COD_SECTOR,DESC_SECTOR,DESC_MONEDA_CUOTA,COD_PERSONA'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P18_VTREOTAUTRESREND,P18_COD_EMPRESA,P18_COD_PERSONA,P18_COD_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Saldo Resumen'
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
 p_id=>wwv_flow_imp.id(47063669509147302)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>47063669509147302
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47063753911147303)
,p_db_column_name=>'R_COD_SECTOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sector'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47063897922147304)
,p_db_column_name=>'R_DESC_SECTOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47063940114147305)
,p_db_column_name=>'R_DESC_MONEDA_CUOTA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47064072258147306)
,p_db_column_name=>'R_SALDO_CUOTA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Saldo Cuota'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47064120156147307)
,p_db_column_name=>'R_MONTO_CUOTA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'R Monto Cuota'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47064233648147308)
,p_db_column_name=>'COD_PERS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Pers'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(47112535616266669)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'471126'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'R_COD_SECTOR:R_DESC_SECTOR:R_DESC_MONEDA_CUOTA:R_SALDO_CUOTA:'
,p_break_on=>'0:0:0:0'
,p_break_enabled_on=>'0:0:0:0'
,p_sum_columns_on_break=>'R_SALDO_CUOTA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46994663500146530)
,p_plug_name=>'Resumen Facturas de OTS Rendidas'
,p_parent_plug_id=>wwv_flow_imp.id(46991860080146502)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT D.COD_EMPRESA,',
'	   SUM((DD.MONTO_TOTAL+DD.TOTAL_IVA)) *',
'	   CASE',
'		WHEN DD.TIP_COMPROBANTE=''NCR'' THEN -1 ELSE 1 END IMPORTE_FACT,',
'       DD.TIP_COMPROBANTE TIPO_FACTURA_FACT,',
'       DD.SER_COMPROBANTE SERIE_FACTURA_FACT, ',
'	   DD.NRO_COMPROBANTE NRO_FACTURA_FACT',
'  FROM ST_ENTSAL_CAB C,',
'       ST_ENTSAL_DET D,',
'       ST_ARTICULOS A,',
'       ST_MOTIVO_ENT_SAL MO,',
'       VT_ORDENES_TRABAJO OT,',
'	   ST_ARTICULOS A1,',
'	   CM_PROVEEDORES PRO,',
'	   CC_CLIENTES CL,',
'	   MONEDAS M,',
'	   PERSONAS P, ',
'	   VT_PEDIDOS_CABECERA_REP PED, ',
'	   VT_PEDIDOS_DETALLE_REP PEDD,',
'	   VT_COMPROBANTES_DETALLE DD',
'        ',
' WHERE OT.COD_EMPRESA = :P18_COD_EMPRESA',
'  -- AND ( C.COD_SUCURSAL = :P18_COD_SUCURSAL  OR :P18_COD_SUCURSAL  IS NULL )',
'   AND M.COD_MONEDA = A.COD_MONEDA_BASE',
'   /*AND ( :P18_COD_ARTICULO_DES  IS NULL OR  A.COD_ARTICULO = :P18_COD_ARTICULO_DES )',
'   AND ( :P18_COD_ARTICULO_HAS  IS NULL OR A.COD_ARTICULO = :P18_COD_ARTICULO_HAS )*/',
'   AND (( OT.FEC_COMPROBANTE >= TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'   AND ( OT.FEC_COMPROBANTE <= TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'   AND (( OT.FEC_CIERRE >= TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_INICIAL,''DD/MM/YYYY'')   IS NULL )',
'   AND ( OT.FEC_CIERRE <= TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')  OR TO_DATE(:P18_FEC_CIE_FINAL,''DD/MM/YYYY'')   IS NULL ))',
'   AND (OT.COD_DISTRIBUIDOR = :P18_COD_DISTRIBUIDOR  OR :P18_COD_DISTRIBUIDOR  IS NULL)',
'   AND (OT.COD_PROVEEDOR = :P18_COD_PROVEEDOR OR :P18_COD_PROVEEDOR   IS NULL)',
'   AND (OT.COD_ORIGEN = :P18_COD_ORIGEN  OR :P18_COD_ORIGEN  IS NULL)          ',
'   AND (OT.SER_COMPROBANTE = :P18_SER_COMPROBANTE  OR :P18_SER_COMPROBANTE  IS NULL)',
'   AND (OT.NRO_COMPROBANTE BETWEEN NVL( :P18_NRO_INICIAL ,1) AND NVL( :P18_NRO_FINAL ,99999999999))     ',
'   AND PRO.COD_EMPRESA = OT.COD_EMPRESA',
'   AND PRO.COD_PROVEEDOR = OT.COD_PROVEEDOR',
'   AND PRO.COD_EMPRESA = CL.COD_EMPRESA',
'   AND PRO.COD_PERSONA = CL.COD_PERSONA',
'   AND PRO.COD_PERSONA = P.COD_PERSONA',
'   AND NVL(OT.ANULADO,''N'') <> ''S''  ',
'   AND C.COD_EMPRESA = OT.COD_EMPRESA',
'   AND C.TIP_COMPROBANTE_REF = OT.TIP_COMPROBANTE',
'   AND C.SER_COMPROBANTE_REF = OT.SER_COMPROBANTE',
'   AND C.NRO_COMPROBANTE_REF = OT.NRO_COMPROBANTE',
'   AND A1.COD_EMPRESA = OT.COD_EMPRESA',
'   AND A1.COD_ARTICULO = OT.COD_ARTICULO    ',
'   AND (''RP'' = :P18_TIPO  OR :P18_TIPO  IS NULL)',
'   AND C.COD_EMPRESA = D.COD_EMPRESA',
'   AND C.TIP_ENT_SAL = D.TIP_ENT_SAL',
'   AND C.SER_ENT_SAL = D.SER_ENT_SAL',
'   AND C.NUM_ENT_SAL = D.NUM_ENT_SAL',
'   AND D.COD_EMPRESA = A.COD_EMPRESA',
'   AND D.COD_ARTICULO = A.COD_ARTICULO',
'   AND C.COD_MOTIVO_ENT_SAL  IN (''55'')',
'   AND (( TO_DATE(TO_CHAR(OT.FEC_RENDIDO,''DD/MM/YYYY'') ,''DD/MM/YYYY'') >= TO_DATE(:P18_FEC_REN_INICIAL,''DD/MM/YYYY'')   )',
'   AND ( TO_DATE(TO_CHAR(OT.FEC_RENDIDO,''DD/MM/YYYY'') ,''DD/MM/YYYY'') <= TO_DATE(:P18_FEC_REN_FINAL,''DD/MM/YYYY'')  ))',
'   AND C.COD_MOTIVO_ENT_SAL = MO.COD_MOTIVO_ENT_SAL(+)',
'   AND NVL( OT.IND_GARANTIA, ''N'' ) = ''S''',
'----------------------------------------------------',
'   AND PED.COD_EMPRESA = OT.COD_EMPRESA',
'   AND PED.TIP_COMPROBANTE_REF = OT.TIP_COMPROBANTE',
'   AND PED.SER_COMPROBANTE_REF = OT.SER_COMPROBANTE',
'   AND PED.NRO_COMPROBANTE_REF = OT.NRO_COMPROBANTE',
'   AND PEDD.COD_EMPRESA = PED.COD_EMPRESA',
'   AND PEDD.TIP_COMPROBANTE = PED.TIP_COMPROBANTE',
'   AND PEDD.SER_COMPROBANTE = PED.SER_COMPROBANTE',
'   AND PEDD.NRO_COMPROBANTE = PED.NRO_COMPROBANTE ',
'   AND PEDD.COD_ARTICULO = D.COD_ARTICULO',
'   AND DD.COD_EMPRESA = PED.COD_EMPRESA',
'   AND DD.SER_PEDIDO = PED.SER_COMPROBANTE',
'   AND DD.NRO_PEDIDO = PED.NRO_COMPROBANTE ',
'   AND DD.COD_ARTICULO = D.COD_ARTICULO',
'   AND :P18_VTREOTAUTRESREND = 1',
'-------------------------------------',
'GROUP BY D.COD_EMPRESA,',
'         DD.TIP_COMPROBANTE ,',
'         DD.SER_COMPROBANTE , DD.NRO_COMPROBANTE'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P18_VTREOTAUTRESREND,P18_COD_EMPRESA,P18_FEC_INICIAL,P18_FEC_FINAL,P18_FEC_CIE_INICIAL,P18_FEC_CIE_FINAL,P18_COD_DISTRIBUIDOR,P18_COD_PROVEEDOR,P18_COD_ORIGEN,P18_SER_COMPROBANTE,P18_NRO_INICIAL,P18_NRO_FINAL,P18_TIPO,P18_FEC_REN_INICIAL,P18_FEC_REN_'
||'FINAL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen Facturas de OTS Rendidas'
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
 p_id=>wwv_flow_imp.id(1016657104713866430)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NZARATE'
,p_internal_uid=>1016657104713866430
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016657282718866431)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016657333443866432)
,p_db_column_name=>'IMPORTE_FACT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Importe Fact'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016657430650866433)
,p_db_column_name=>'TIPO_FACTURA_FACT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo Factura Fact'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016657531218866434)
,p_db_column_name=>'SERIE_FACTURA_FACT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Serie Factura Fact'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016657605589866435)
,p_db_column_name=>'NRO_FACTURA_FACT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro Factura Fact'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1026211989089594646)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10262120'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPRESA:IMPORTE_FACT:TIPO_FACTURA_FACT:SERIE_FACTURA_FACT:NRO_FACTURA_FACT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12125554423451132)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12125987103451136)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>25
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7327470945529621)
,p_button_sequence=>270
,p_button_plug_id=>wwv_flow_imp.id(46154616468357423)
,p_button_name=>'BT_EJECUTAR'
,p_button_static_id=>'bt_ejecutar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'imprime reporte:',
'1. VTREOTAUTCL',
'2. VTREOTAUT',
'3. VTREOTAUTRES'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7327542993529622)
,p_button_sequence=>280
,p_button_plug_id=>wwv_flow_imp.id(46154616468357423)
,p_button_name=>'BT_OTS_RENDIDA'
,p_button_static_id=>'bt_ots_rendida'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ots Rendidas'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'imrpime reportes:',
'1. VTREOTAUTREND',
'2. VTREOTAUTRESREND'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7327652181529623)
,p_button_sequence=>290
,p_button_plug_id=>wwv_flow_imp.id(46154616468357423)
,p_button_name=>'BT_RENDIR_OTS'
,p_button_static_id=>'bt_rendir'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rendir Ots'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'imprime reporte:',
'1. VTREOTAUT'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47064387780147309)
,p_button_sequence=>320
,p_button_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7325662105529603)
,p_name=>'P18_SER_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_prompt=>'Serie Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_VTRRENOT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo||'' - ''||descripcion D, cod_articulo R',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(7325798808529604)
,p_name=>'P18_FAMILIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_FAMILIA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_familia||'' - ''||descripcion D, ',
'       cod_familia R',
'  FROM st_familia',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO=''S'';'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(7325890059529605)
,p_name=>'P18_COD_LINEA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_prompt=>unistr('L\00EDnea')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_LINEAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_linea||'' - ''||descripcion D, cod_linea R',
'from st_linea ',
' ',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO IN(''S'',''A'') ',
'order by 1'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(7325926314529606)
,p_name=>'P18_COD_MARCA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca||'' - ''||descripcion D, cod_marca R',
'from st_marcas',
'order by descripcion;'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(7326096089529607)
,p_name=>'P18_COD_DISTRIBUIDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DISTRIBUIDOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente||'' - ''||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, ',
'        c.cod_cliente R',
'  from cc_clientes c, personas p ',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(7326110172529608)
,p_name=>'P18_COD_TECNICO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_prompt=>unistr('T\00E9cnico')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TECNICOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  t.cod_tecnico R, t.cod_tecnico ||'' - ''||p.nombre D',
'  from vt_tecnicos t, personas p ',
' where t.cod_empresa = :P_COD_EMPRESA',
'   and t.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(7326298317529609)
,p_name=>'P18_COD_ARTICULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_VTRRENOT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo||'' - ''||descripcion D, cod_articulo R',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA ',
'order by 1'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(7326353197529610)
,p_name=>'P18_COD_PROVEEDOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_proveedor||'' - ''||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, c.cod_proveedor R,c.cod_persona',
'from cm_proveedores c, personas p',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
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
,p_attribute_10=>'COD_PERSONA:P18_COD_PERSONA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7326463124529611)
,p_name=>'P18_COD_CLIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_cliente||'' - ''||nombre D, ',
'         cod_cliente R',
'    FROM cc_clientes c, personas p',
'   WHERE c.cod_empresa = :P_COD_EMPRESA ',
'     AND c.cod_persona = p.cod_persona ',
'     AND nvl(c.estado,''X'') = ''A'' ',
'ORDER BY nombre;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(7326549762529612)
,p_name=>'P18_COD_ORIGEN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ORIGENES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  cod_origen R, cod_origen||'' - ''|| descripcion D',
'from vt_origenes ',
'where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(7326623361529613)
,p_name=>'P18_FEC_INICIAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(46154207541357419)
,p_prompt=>'Fecha Inicial'
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
 p_id=>wwv_flow_imp.id(7326783667529614)
,p_name=>'P18_FEC_FINAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(46154207541357419)
,p_prompt=>'Fecha Final'
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
 p_id=>wwv_flow_imp.id(7326816935529615)
,p_name=>'P18_FEC_CIE_INICIAL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(46154452187357421)
,p_prompt=>'Fecha Inicial'
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
 p_id=>wwv_flow_imp.id(7326905935529616)
,p_name=>'P18_FEC_ENT_INICIAL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(46154597418357422)
,p_prompt=>'Fecha Inicial'
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
 p_id=>wwv_flow_imp.id(7327068913529617)
,p_name=>'P18_NRO_INICIAL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(46154616468357423)
,p_prompt=>'Rango de Ots Inicial'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7327121454529618)
,p_name=>'P18_NRO_PRO_INICIAL'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(46154616468357423)
,p_prompt=>'Rango de Ots Proveedor Inicial'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7327289628529619)
,p_name=>'P18_TIPO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(46154616468357423)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:REPUESTO;RP,MANO DE OBRA;MO,COMPRA LOCAL;CL'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7327374335529620)
,p_name=>'P18_RESUMEN'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(46154616468357423)
,p_prompt=>'Ver Planilla Resumida'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;S'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11520425776287801)
,p_name=>'P18_P_NRO_FINAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12125554423451132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11520511361287802)
,p_name=>'P18_P_NRO_PRO_FINAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12125554423451132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12125335196451130)
,p_name=>'P18_COD_PERSONA'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12126041230451137)
,p_name=>'P18_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12125987103451136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12126294737451139)
,p_name=>'P18_COD_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12125987103451136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12126341769451140)
,p_name=>'P18_NOM_EMPRESA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12125987103451136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12126459518451141)
,p_name=>'P18_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12125987103451136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12126570412451142)
,p_name=>'P18_NOM_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12125987103451136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12126627344451143)
,p_name=>'P18_COD_MODULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12125987103451136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12126785909451144)
,p_name=>'P18_TIPO_ORDEN_TRAB'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12125554423451132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12126875777451145)
,p_name=>'P18_FEC_REN_INICIAL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(46154320198357420)
,p_prompt=>'Fecha Inicial'
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
 p_id=>wwv_flow_imp.id(12126986504451146)
,p_name=>'P18_FEC_REN_FINAL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(46154320198357420)
,p_prompt=>'Fecha Final'
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
 p_id=>wwv_flow_imp.id(12127010424451147)
,p_name=>'P18_FEC_CIE_FINAL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(46154452187357421)
,p_prompt=>'Fecha Final'
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
 p_id=>wwv_flow_imp.id(12127120248451148)
,p_name=>'P18_FEC_ENT_FINAL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(46154597418357422)
,p_prompt=>'Fecha Final'
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
 p_id=>wwv_flow_imp.id(12127242582451149)
,p_name=>'P18_P_NRO_INICIAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12125554423451132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12127333173451150)
,p_name=>'P18_P_NRO_PRO_INICIAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12125554423451132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44786415999780539)
,p_name=>'P18_NRO_FINAL'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(46154616468357423)
,p_prompt=>'Rango de Ots Final'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44786526256780540)
,p_name=>'P18_NRO_PRO_FINAL'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(46154616468357423)
,p_prompt=>'Rango de Ots Proveedor Final'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46153769339357414)
,p_name=>'P18_VTREOTAUT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46278587444139348)
,p_name=>'P18_VTREOTAUTCL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46565355609620025)
,p_name=>'P18_VTREOTAUTRES'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46876895212296027)
,p_name=>'P18_VTREOTAUTREND'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46876983069296028)
,p_name=>'P18_VTREOTAUTRESREND'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(7325411849529601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7327752310529624)
,p_name=>'VA_VALIDAR_COMPROB'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_SER_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7327893336529625)
,p_event_id=>wwv_flow_imp.id(7327752310529624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P18_SER_COMPROBANTE is not null then',
'       if :P18_SER_COMPROBANTE not in( ''A'', ''B'' ) then',
'          RAISE_APPLICATION_ERROR(-20000, ''Verifique que la serie introducida sea correcta'' ) ;',
'       end if ;',
'    end if ;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P18_SER_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12125138549451128)
,p_name=>'DA_DESCARGAR_EJECUTAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7327470945529621)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12125410050451131)
,p_event_id=>wwv_flow_imp.id(12125138549451128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(:P18_RESUMEN,''N'') != ''S'' THEN',
'    IF :P18_TIPO = ''CL'' THEN',
'        :P18_VTREOTAUTCL := 1;',
'        :P18_VTREOTAUT := 0;',
'        :P18_VTREOTAUTRES := 0;',
'        :P18_VTREOTAUTREND := 0;',
'        :P18_VTREOTAUTRESREND := 0;',
'',
'    ELSE ',
'        :P18_VTREOTAUTCL := 0;',
'        :P18_VTREOTAUT := 1;',
'        :P18_VTREOTAUTRES := 0;',
'        :P18_VTREOTAUTREND := 0;',
'        :P18_VTREOTAUTRESREND := 0;',
'    END IF;',
'ELSE',
'    :P18_VTREOTAUTCL := 0;',
'    :P18_VTREOTAUT := 0;',
'    :P18_VTREOTAUTRES := 1;',
'    :P18_VTREOTAUTREND := 0;',
'    :P18_VTREOTAUTRESREND := 0;',
'END IF;'))
,p_attribute_02=>'P18_SER_COMPROBANTE,P18_NRO_INICIAL,P18_NRO_FINAL,P18_COD_EMPRESA,P18_NRO_PRO_INICIAL,P18_NRO_PRO_FINAL,P18_COD_SUCURSAL,P18_COD_DISTRIBUIDOR,P18_COD_PROVEEDOR,P18_COD_CLIENTE,P18_COD_ORIGEN,P18_FEC_INICIAL,P18_FEC_FINAL,P18_FEC_CIE_INICIAL,P18_FEC_C'
||'IE_FINAL,P18_TIPO,P18_RESUMEN'
,p_attribute_03=>'P18_VTREOTAUTCL,P18_VTREOTAUT,P18_VTREOTAUTRES,P18_VTREOTAUTREND,P18_VTREOTAUTRESREND'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46563081864620002)
,p_event_id=>wwv_flow_imp.id(12125138549451128)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46276614114139329)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P18_VTREOTAUTCL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46563152524620003)
,p_event_id=>wwv_flow_imp.id(12125138549451128)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46276614114139329)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P18_VTREOTAUTCL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46563271956620004)
,p_event_id=>wwv_flow_imp.id(12125138549451128)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44786264766780537)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P18_VTREOTAUT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46563317404620005)
,p_event_id=>wwv_flow_imp.id(12125138549451128)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44786264766780537)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P18_VTREOTAUT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46565435666620026)
,p_event_id=>wwv_flow_imp.id(12125138549451128)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46564083044620012)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P18_VTREOTAUTRES'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46565597208620027)
,p_event_id=>wwv_flow_imp.id(12125138549451128)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46564083044620012)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P18_VTREOTAUTRES'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11520754116287804)
,p_name=>'DA_DESCARGAR_RENDIDA'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7327542993529622)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11520878618287805)
,p_event_id=>wwv_flow_imp.id(11520754116287804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(:P18_RESUMEN,''N'') != ''S'' THEN ',
'    :P18_VTREOTAUTCL := 0;',
'    :P18_VTREOTAUT := 0;',
'    :P18_VTREOTAUTRES := 0;',
'    :P18_VTREOTAUTREND := 1;',
'    :P18_VTREOTAUTRESREND := 0;',
'    ',
'ELSE ',
'    :P18_VTREOTAUTCL := 0;',
'    :P18_VTREOTAUT := 0;',
'    :P18_VTREOTAUTRES := 0;',
'    :P18_VTREOTAUTREND := 0;',
'    :P18_VTREOTAUTRESREND := 1;',
'END IF;'))
,p_attribute_02=>'P18_SER_COMPROBANTE,P18_P_NRO_INICIAL,P18_P_NRO_FINAL,P18_COD_EMPRESA,P18_P_NRO_PRO_INICIAL,P18_P_NRO_PRO_FINAL,P18_COD_SUCURSAL,P18_COD_DISTRIBUIDOR,P18_COD_PROVEEDOR,P18_COD_CLIENTE,P18_COD_ORIGEN,P18_FEC_INICIAL,P18_FEC_FINAL,P18_FEC_CIE_INICIAL,P'
||'18_FEC_CIE_FINAL,P18_TIPO,P18_RESUMEN,P18_FEC_REN_INICIAL,P18_FEC_REN_FINAL'
,p_attribute_03=>'P18_VTREOTAUTCL,P18_VTREOTAUT,P18_VTREOTAUTRES,P18_VTREOTAUTREND,P18_VTREOTAUTRESREND'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46877008611296029)
,p_event_id=>wwv_flow_imp.id(11520754116287804)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46565845481620030)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P18_VTREOTAUTREND'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46877755442296036)
,p_event_id=>wwv_flow_imp.id(11520754116287804)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46875970169296018)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P18_VTREOTAUTREND'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46877869513296037)
,p_event_id=>wwv_flow_imp.id(11520754116287804)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46874681700296005)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P18_VTREOTAUTREND'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46877146249296030)
,p_event_id=>wwv_flow_imp.id(11520754116287804)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46565845481620030)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P18_VTREOTAUTREND'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46993398751146517)
,p_event_id=>wwv_flow_imp.id(11520754116287804)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46991860080146502)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P18_VTREOTAUTRESREND'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46995329605146537)
,p_event_id=>wwv_flow_imp.id(11520754116287804)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46994663500146530)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P18_VTREOTAUTRESREND'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46995483779146538)
,p_event_id=>wwv_flow_imp.id(11520754116287804)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46993898267146522)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P18_VTREOTAUTRESREND'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46993401011146518)
,p_event_id=>wwv_flow_imp.id(11520754116287804)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46991860080146502)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P18_VTREOTAUTRESREND'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11521007513287807)
,p_name=>'DA_DESCARGAR_RENDIR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7327652181529623)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46153532992357412)
,p_event_id=>wwv_flow_imp.id(11521007513287807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P18_VTREOTAUT := 1;',
':P18_VTREOTAUTCL := 0;',
':P18_VTREOTAUTRES := 0;',
':P18_VTREOTAUTREND := 0;',
':P18_VTREOTAUTRESREND := 0;',
'       '))
,p_attribute_03=>'P18_VTREOTAUTCL,P18_VTREOTAUT,P18_VTREOTAUTRES,P18_VTREOTAUTREND,P18_VTREOTAUTRESREND'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46153891561357415)
,p_event_id=>wwv_flow_imp.id(11521007513287807)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44786264766780537)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46154170067357418)
,p_event_id=>wwv_flow_imp.id(11521007513287807)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44786264766780537)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46153902560357416)
,p_name=>'DA_OCULTAR_REGION'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46154042670357417)
,p_event_id=>wwv_flow_imp.id(46153902560357416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44786264766780537)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46563446308620006)
,p_event_id=>wwv_flow_imp.id(46153902560357416)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46276614114139329)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46877502980296034)
,p_event_id=>wwv_flow_imp.id(46153902560357416)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46564083044620012)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46877675423296035)
,p_event_id=>wwv_flow_imp.id(46153902560357416)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46565845481620030)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46993797725146521)
,p_event_id=>wwv_flow_imp.id(46153902560357416)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46991860080146502)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46278754805139350)
,p_name=>'DA_OCULTAR_REGION_VTREOTAUT'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_VTREOTAUT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46562960725620001)
,p_event_id=>wwv_flow_imp.id(46278754805139350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44786264766780537)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P18_VTREOTAUT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46563728912620009)
,p_name=>'DA_OCULTAR_REGION_VTREOTAUTCL'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_VTREOTAUTCL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46563812922620010)
,p_event_id=>wwv_flow_imp.id(46563728912620009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46276614114139329)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P18_VTREOTAUTCL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46565697836620028)
,p_name=>'DA_OCULTAR_REGION_VTREOTAUTRES'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_VTREOTAUTRES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46565762949620029)
,p_event_id=>wwv_flow_imp.id(46565697836620028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46564083044620012)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P18_VTREOTAUTRES'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46877380580296032)
,p_name=>'DA_OCULTAR_REGION_VTREOTAUTREND'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_VTREOTAUTREND'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46877408220296033)
,p_event_id=>wwv_flow_imp.id(46877380580296032)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46565845481620030)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P18_VTREOTAUTREND'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46993530395146519)
,p_name=>'DA_OCULTAR_REGION_VTREOTAUTRESREND'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_VTREOTAUTRESREND'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46993604388146520)
,p_event_id=>wwv_flow_imp.id(46993530395146519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46991860080146502)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47064465702147310)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(47064387780147309)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47064564583147311)
,p_event_id=>wwv_flow_imp.id(47064465702147310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P18_SER_COMPROBANTE := NULL;',
':P18_FAMILIA    := NULL;',
':P18_COD_LINEA  := NULL;',
':P18_COD_MARCA  := NULL;',
':P18_COD_DISTRIBUIDOR   := NULL;',
':P18_COD_TECNICO    := NULL;',
':P18_COD_ARTICULO   := NULL;',
':P18_COD_PROVEEDOR  := NULL;',
':P18_COD_CLIENTE    := NULL;',
':P18_COD_ORIGEN     := NULL;',
':P18_FEC_INICIAL    := NULL;',
':P18_FEC_FINAL      := NULL;',
':P18_FEC_REN_INICIAL    := NULL;',
':P18_FEC_REN_FINAL      := NULL;',
':P18_FEC_CIE_INICIAL    := NULL;',
':P18_FEC_CIE_INICIAL    := NULL;',
':P18_FEC_ENT_INICIAL    := NULL;',
':P18_FEC_ENT_FINAL      := NULL;',
':P18_NRO_FINAL          := NULL;',
':P18_P_NRO_FINAL        := NULL;',
':P18_NRO_PRO_INICIAL    := NULL;',
':P18_NRO_PRO_FINAL      := NULL;'))
,p_attribute_02=>'P18_SER_COMPROBANTE,P18_FAMILIA,P18_COD_LINEA,P18_COD_MARCA,P18_COD_DISTRIBUIDOR,P18_COD_TECNICO,P18_COD_ARTICULO,P18_COD_PROVEEDOR,P18_COD_CLIENTE,P18_COD_ORIGEN,P18_FEC_INICIAL,P18_FEC_FINAL,P18_FEC_REN_INICIAL,P18_FEC_REN_FINAL,P18_FEC_CIE_INICIAL'
||',P18_FEC_CIE_INICIAL,P18_FEC_ENT_INICIAL,P18_FEC_ENT_FINAL,P18_NRO_FINAL,P18_P_NRO_FINAL,P18_NRO_PRO_INICIAL,P18_NRO_PRO_FINAL'
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
 p_id=>wwv_flow_imp.id(47064616603147312)
,p_event_id=>wwv_flow_imp.id(47064465702147310)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7325411849529601)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47064783213147313)
,p_event_id=>wwv_flow_imp.id(47064465702147310)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46154616468357423)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47064865685147314)
,p_name=>'DA_SUBMIT'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_COD_PROVEEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47064984276147315)
,p_event_id=>wwv_flow_imp.id(47064865685147314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P18_COD_PERSONA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12125756056451134)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--inicializa_globales--',
':P18_COD_USUARIO := NVL(:APP_USER, :P_COD_USUARIO);',
':P18_COD_EMPRESA := NVL(''1'', :P_COD_EMPRESA);',
':P18_NOM_EMPRESA := :P_NOM_EMPRESA;',
':P18_COD_SUCURSAL := NVL(''01'', :P_COD_SUCURSAL);',
':P18_NOM_SUCURSAL := :P_NOM_SUCURSAL;',
':P18_COD_MODULO := NVL(''VT'', :P_COD_MODULO);',
'',
':P18_TIPO_ORDEN_TRAB := BS_BUSCA_PARAMETRO(:P18_COD_MODULO,',
'                                            ''TIPO_ORDEN_TRAB'');',
':P18_RESUMEN := ''N'';',
'',
':P18_VTREOTAUT := 0;',
':P18_VTREOTAUTCL := 0;',
':P18_VTREOTAUTRES := 0;',
':P18_VTREOTAUTREND := 0;',
':P18_VTREOTAUTRESREND := 0;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
