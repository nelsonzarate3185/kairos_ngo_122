prompt --application/pages/page_00584
begin
--   Manifest
--     PAGE: 00584
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
 p_id=>584
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TUR - OTS Solicitadas Tecnicos'
,p_alias=>'TUR-OTS-SOLICITADAS-TECNICOS'
,p_step_title=>'TUR - OTS Solicitadas Tecnicos'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>'<meta http-equiv="refresh" content="40" >'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  ',
'  .t-Header-branding, #floating-menu, .t-Footer-topButton , .afbm-float , #PO_SEARCH_NM , #t_Body_content_offset { display:none !important} ',
'/*',
'  .t-Header-branding, #floating-menu,#t_Body_content_offset ,  .t-Footer-topButton{ display:none;} ',
'*/',
' .t-Body, #GRILLA1,#GRILLA2 {',
'     background-color: #001b3f;',
'        background-image: linear-gradient(150deg, #001b3f 0%, #1d74b1 100%);',
' ',
'  }',
'',
' .a-CardView-title {',
'                        font-size: 25px;',
'                        color: darkblue;',
'                    }',
'                ',
' .a-CardView-subTitle {    ',
'                        font-size: 20px;',
'                        font-weight: bold;',
'                        color: black;',
'                        padding-top: 10px;',
'                    }',
'.a-CardView-mainContent {',
'                            font-size: 15px;',
'                            font-family: sans-serif, Times, fantasy,serif; ',
'                            font-weight: bold;',
'                            color: #082447 ;',
'                        }',
'',
'.a-CardView-subContent {',
'                        font-size: 13px;',
'                        font-weight: bold;',
'                        color: black;',
'                        }',
'',
'.clasot{',
'               padding-left: 10rem;',
'         }',
'',
'.a-CardView-item {',
'                    border: 1px solid ;',
'                    border-radius: 16px;',
'                    padding: 1px;',
'                    color: white;',
'                    }',
'.a-CardView  {',
'                    border-radius: 16px; ',
'             }',
'',
'',
'           .ING_SAL{',
'                background-color: #d4a276;',
'                background-image: linear-gradient(19deg, #f0e9ca  20%, #d4a276 100%);',
'                }',
'',
'           .ENT_TEC{',
'                    background-color: #8ac926;',
'                    background-image: linear-gradient(45deg, #e2f1c9 0%, #17cf95 100%);',
'                    }',
'',
'           .SOL_CAJ{',
'                    font-size: 30px;',
'                    background-color: #d6efff;',
'                    background-image: linear-gradient(45deg, #d6efff 0%, #119da4 100%);',
'',
'           }',
'',
'           .SOL_TEC{',
'                    background-color: #f2e9e4;',
'                    background-image: linear-gradient(45deg, #fcf6bd 20%, #b38845 100%); ',
'                    }',
'',
'',
'           .SNC{',
'                    background-color: #faec35;',
'                    background-image: linear-gradient(45deg, #ffe6e8 0%,   #b56576 90%);',
'                    }',
'',
'            .BLANCO{',
'                background-color: #FFFFFF;',
'                background-image: linear-gradient(45deg, #ffffff, #CCE1F0);',
'            }      ',
'             .AMARILLO{',
'                background-color: #FFFFFF;',
'                background-image: linear-gradient(45deg, #ffffff, #DEE949);',
'            }     ',
'              .NARANJA{',
'                background-color: #FFFFFF;',
'                background-image: linear-gradient(45deg, #ffffff, #E8BB48);',
'            }     ',
'            .ROJO{',
'                background-color: #FFFFFF;',
'                background-image: linear-gradient(45deg, #ffffff, #E20C0C);',
'            }  '))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'23'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20250218112939'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(185083514606060703)
,p_plug_name=>unistr('ENTREGA T\00C9CNICO')
,p_region_name=>'GRILLA1'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>7
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  cc.ser_comprobante,',
'        cc.ser_comprobante||''  - ''||cc.nro_comprobante /*||decode(inv.fnc_posicion_ot(cc.cod_empresa, cc.tip_comprobante, cc.ser_comprobante, cc.nro_comprobante) ,null,'''',''        //         Posicion: ''||inv.fnc_posicion_ot(cc.cod_empresa, cc.tip_com'
||'probante, cc.ser_comprobante, cc.nro_comprobante) )*/nro_comprobante, ',
'        A.DESCRIPCION, ',
'        ---inv.fnc_posicion_ot(cc.cod_empresa, cc.tip_comprobante, cc.ser_comprobante, cc.nro_comprobante) POSICION ,',
unistr('        decode(inv.fnc_posicion_ot(cc.cod_empresa, cc.tip_comprobante, cc.ser_comprobante, cc.nro_comprobante) ,null,'''',''POSICI\00D3N: ''||inv.fnc_posicion_ot(cc.cod_empresa, cc.tip_comprobante, cc.ser_comprobante, cc.nro_comprobante) )POSICION,'),
'        O.GARANTIA_OT, ',
'        CC.COD_USUARIO_PED,',
'        CC.FEC_ALTA, ',
'        CC.HORA_ALTA,',
'        CASE WHEN NVL(O.IND_SNC,''N'') = ''S'' THEN ',
'           ''SNC''',
'        ELSE ',
'          CASE WHEN CC.tipo=''E'' AND CC.COD_GRUPO in (''TECNIC'',''TCNPV'')  THEN',
unistr('           ''ENTREGA T\00C9CNICO'''),
'          ELSE ',
'            CASE WHEN CC.COD_GRUPO in (''TECNIC'',''TCNPV'')  THEN ',
unistr('              ''SOLICITUD T\00C9CNICO'''),
'            ELSE ',
'             CASE WHEN CC.tipo=''E'' THEN ',
unistr('               ''INGRESO SAL\00D3N'''),
'             ELSE ',
'               ''SOLICITUD CAJA''',
'             END',
'            END ',
'         END ',
'        END /*||''.        <h2 class="clasot">''||cc.ser_comprobante||'' - ''||cc.nro_comprobante ||''</h2>'' */TIPO_DESC , ',
'        E.NOMBRE PROVEEDOR, ',
'        cc.id_solicitud ,',
'        p.cod_proveedor, ',
'        decode (ORIGEN, ''T'', ''TALLER'', ''R'',''RECEPCION'',''I'',''INGRESO'',''SIN ORIGEN'') ORIGEN, ',
'        CC.tipo,',
'       CASE',
'         WHEN o.nro_ticket IS NULL THEN',
'          (SELECT decode(a.tip_cliente, 1, ''Distribuidor'', ''Cliente Final'')',
'             FROM cc_clientes a',
'            WHERE a.cod_empresa = 1',
'              AND a.cod_cliente = o.cod_cliente',
'              AND rownum = 1)',
'         ELSE',
'             (select decode(a.cod_tipo_cliente,''1'', ''Distribuidor'', ''Cliente Final'')',
'                  from ca_ticket_atencion a',
'                  where a.id_ticket =  o.nro_ticket',
'                  )',
'       END tipo_client,',
'       CASE WHEN NVL(O.IND_SNC,''N'') = ''S'' THEN ',
'           ''SNC''',
'        ELSE ',
'          CASE WHEN CC.tipo=''E'' AND CC.COD_GRUPO in (''TECNIC'',''TCNPV'')  THEN',
'           ''ENT_TEC''',
'          ELSE ',
'            CASE WHEN CC.COD_GRUPO in (''TECNIC'',''TCNPV'')  THEN ',
'              ''SOL_TEC''',
'            ELSE ',
'             CASE WHEN CC.tipo=''E'' THEN ',
'               ''ING_SAL''',
'             ELSE ',
'               ''SOL_CAJ''',
'             END',
'            END ',
'         END ',
'        END CLASE,',
'          CASE',
'        WHEN trunc((sysdate - cc.fec_alta)) > 0 THEN',
'            ''ROJO''',
'        ELSE',
'            CASE',
'                    WHEN trunc(mod((sysdate - cc.fec_alta) *(60 * 24), 60)) BETWEEN 0 AND 5  THEN',
'                        ''AMARILLO''',
'                    WHEN trunc(mod((sysdate - cc.fec_alta) *(60 * 24), 60)) BETWEEN 5 AND 10 THEN',
'                        ''NARANJA''',
'                    WHEN trunc(mod((sysdate - cc.fec_alta) *(60 * 24), 60)) > 10             THEN',
'                        ''ROJO''',
'                    ELSE',
'                        ''BLANCO''',
'            END',
'    END                                                                                                 urgencia',
'from CA_SOLICITUD_OT cc, ST_ARTICULOS A, VT_ORDENES_TRABAJO O, CM_PROVEEDORES P, PERSONAS E',
'where CC.cod_empresa = ''1''',
'AND NVL(CC.ESTADO,''N'')=''P''',
'AND TRUNC(CC.FEC_ALTA)>=TRUNC(SYSDATE-8)',
'AND O.COD_PROVEEDOR <> ''9795''                    ',
'AND (ORIGEN= :P584_ORIGENES OR :P584_ORIGENES IS NULL OR  :P584_ORIGENES  = ''TD'')',
'AND A.COD_EMPRESA= CC.COD_EMPRESA',
'AND A.COD_ARTICULO = o.cod_articulo',
'AND O.COD_EMPRESA = CC.COD_EMPRESA',
'AND O.TIP_COMPROBANTE= CC.TIP_COMPROBANTE',
'AND O.SER_COMPROBANTE = CC.SER_COMPROBANTE ',
'AND O.NRO_COMPROBANTE = CC.NRO_COMPROBANTE ',
'AND P.COD_EMPRESA = CC.COD_EMPRESA',
'AND P.COD_PROVEEDOR = O.COD_PROVEEDOR',
'AND P.COD_PERSONA = E.COD_PERSONA',
'AND (O.cod_proveedor=:P584_TECNICOS or :P584_TECNICOS=''T'')',
'AND NVL(O.ANULADO,''N'')<>''S''',
'AND nvl(nvl(O.ind_entrega,''N''),NVL(O.IND_RETIRADO,''N''))<>''S''',
'AND (:P584_VER_SNC= ''T'' OR (:P584_VER_SNC = ''S'' AND NVL(O.IND_SNC,''N'') =''S'' ) OR (:P584_VER_SNC = ''N'' AND NVL(O.IND_SNC,''N'') =''N'' ))',
'AND ((nvl(:P584_CHK_TKT,''N'')=''N'' AND COD_USUARIO_PED <>''TICKETS'') OR nvl(:P584_CHK_TKT,''N'')=''S'')',
'AND (CASE WHEN NVL(O.IND_SNC,''N'') = ''S'' THEN ',
'           ''SNC''',
'        ELSE ',
'          CASE WHEN CC.tipo=''E'' AND CC.COD_GRUPO in (''TECNIC'',''TCNPV'')  THEN',
unistr('           ''ENTREGA T\00C9CNICO'''),
'          ELSE ',
'            CASE WHEN CC.COD_GRUPO in (''TECNIC'',''TCNPV'')  THEN ',
unistr('              ''SOLICITUD T\00C9CNICO'''),
'            ELSE ',
'             CASE WHEN CC.tipo=''E'' THEN ',
unistr('               ''INGRESO SAL\00D3N'''),
'             ELSE ',
'               ''SOLICITUD CAJA''',
'             END',
'            END ',
'         END ',
unistr('        END)IN(''ENTREGA T\00C9CNICO'',''SNC'')'),
'',
'',
'order by CC.FEC_ALTA'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(185083654398060704)
,p_region_id=>wwv_flow_imp.id(185083514606060703)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
,p_card_css_classes=>'&URGENCIA.'
,p_title_adv_formatting=>false
,p_title_column_name=>'NRO_COMPROBANTE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'PROVEEDOR'
,p_body_adv_formatting=>false
,p_body_column_name=>'DESCRIPCION'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'POSICION'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(953880724539896660)
,p_plug_name=>'Parametros'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(954827097364085592)
,p_plug_name=>unistr('SOLICITUD T\00C9CNICO ')
,p_region_name=>'GRILLA2'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  cc.ser_comprobante,',
'        cc.ser_comprobante||''  - ''||cc.nro_comprobante /*||decode(inv.fnc_posicion_ot(cc.cod_empresa, cc.tip_comprobante, cc.ser_comprobante, cc.nro_comprobante) ,null,'''',''        //         Posicion: ''||inv.fnc_posicion_ot(cc.cod_empresa, cc.tip_com'
||'probante, cc.ser_comprobante, cc.nro_comprobante) )*/nro_comprobante, ',
'        A.DESCRIPCION, ',
'        ---inv.fnc_posicion_ot(cc.cod_empresa, cc.tip_comprobante, cc.ser_comprobante, cc.nro_comprobante) POSICION ,',
unistr('        decode(inv.fnc_posicion_ot(cc.cod_empresa, cc.tip_comprobante, cc.ser_comprobante, cc.nro_comprobante) ,null,'''',''POSICI\00D3N: ''||inv.fnc_posicion_ot(cc.cod_empresa, cc.tip_comprobante, cc.ser_comprobante, cc.nro_comprobante) )POSICION,'),
'        O.GARANTIA_OT, ',
'        CC.COD_USUARIO_PED,',
'        CC.FEC_ALTA, ',
'        CC.HORA_ALTA,',
'        CASE WHEN NVL(O.IND_SNC,''N'') = ''S'' THEN ',
'           ''SNC''',
'        ELSE ',
'          CASE WHEN CC.tipo=''E'' AND CC.COD_GRUPO in (''TECNIC'',''TCNPV'')  THEN',
unistr('           ''ENTREGA T\00C9CNICO'''),
'          ELSE ',
'            CASE WHEN CC.COD_GRUPO in (''TECNIC'',''TCNPV'')  THEN ',
unistr('              ''SOLICITUD T\00C9CNICO'''),
'            ELSE ',
'             CASE WHEN CC.tipo=''E'' THEN ',
unistr('               ''INGRESO SAL\00D3N'''),
'             ELSE ',
'               ''SOLICITUD CAJA''',
'             END',
'            END ',
'         END ',
'        END /*||''.        <h2 class="clasot">''||cc.ser_comprobante||'' - ''||cc.nro_comprobante ||''</h2>'' */TIPO_DESC , ',
'        E.NOMBRE PROVEEDOR, ',
'        cc.id_solicitud ,',
'        p.cod_proveedor, ',
'        decode (ORIGEN, ''T'', ''TALLER'', ''R'',''RECEPCION'',''I'',''INGRESO'',''SIN ORIGEN'') ORIGEN, ',
'        CC.tipo,',
'       CASE',
'         WHEN o.nro_ticket IS NULL THEN',
'          (SELECT decode(a.tip_cliente, 1, ''Distribuidor'', ''Cliente Final'')',
'             FROM cc_clientes a',
'            WHERE a.cod_empresa = 1',
'              AND a.cod_cliente = o.cod_cliente',
'              AND rownum = 1)',
'         ELSE',
'             (select decode(a.cod_tipo_cliente,''1'', ''Distribuidor'', ''Cliente Final'')',
'                  from ca_ticket_atencion a',
'                  where a.id_ticket =  o.nro_ticket',
'                  )',
'       END tipo_client,',
'       CASE WHEN NVL(O.IND_SNC,''N'') = ''S'' THEN ',
'           ''SNC''',
'        ELSE ',
'          CASE WHEN CC.tipo=''E'' AND CC.COD_GRUPO in (''TECNIC'',''TCNPV'')  THEN',
'           ''ENT_TEC''',
'          ELSE ',
'            CASE WHEN CC.COD_GRUPO in (''TECNIC'',''TCNPV'')  THEN ',
'              ''SOL_TEC''',
'            ELSE ',
'             CASE WHEN CC.tipo=''E'' THEN ',
'               ''ING_SAL''',
'             ELSE ',
'               ''SOL_CAJ''',
'             END',
'            END ',
'         END ',
'        END CLASE,',
'        CASE',
'        WHEN trunc((sysdate - cc.fec_alta)) > 0 THEN',
'            ''ROJO''',
'        ELSE',
'            CASE',
'                    WHEN trunc(mod((sysdate - cc.fec_alta) *(60 * 24), 60)) BETWEEN 0 AND 5  THEN',
'                        ''AMARILLO''',
'                    WHEN trunc(mod((sysdate - cc.fec_alta) *(60 * 24), 60)) BETWEEN 5 AND 10 THEN',
'                        ''NARANJA''',
'                    WHEN trunc(mod((sysdate - cc.fec_alta) *(60 * 24), 60)) > 10             THEN',
'                        ''ROJO''',
'                    ELSE',
'                        ''BLANCO''',
'            END',
'    END                                                                                                 urgencia',
'from CA_SOLICITUD_OT cc, ST_ARTICULOS A, VT_ORDENES_TRABAJO O, CM_PROVEEDORES P, PERSONAS E',
'where CC.cod_empresa = ''1''',
'AND NVL(CC.ESTADO,''N'')=''P''       ',
'AND TRUNC(CC.FEC_ALTA)>=TRUNC(SYSDATE-8)',
'AND O.COD_PROVEEDOR <> ''9795''',
'--AND (ORIGEN= :P584_ORIGENES OR :P584_ORIGENES IS NULL OR  :P584_ORIGENES  = ''TD'')',
'AND A.COD_EMPRESA= CC.COD_EMPRESA',
'AND A.COD_ARTICULO = o.cod_articulo',
'AND O.COD_EMPRESA = CC.COD_EMPRESA',
'AND O.TIP_COMPROBANTE= CC.TIP_COMPROBANTE',
'AND O.SER_COMPROBANTE = CC.SER_COMPROBANTE ',
'AND O.NRO_COMPROBANTE = CC.NRO_COMPROBANTE ',
'AND P.COD_EMPRESA = CC.COD_EMPRESA',
'AND P.COD_PROVEEDOR = O.COD_PROVEEDOR',
'AND P.COD_PERSONA = E.COD_PERSONA',
'----AND (O.cod_proveedor=:P584_TECNICOS or :P584_TECNICOS=''T'')',
'AND NVL(O.ANULADO,''N'')<>''S''',
'AND nvl(nvl(O.ind_entrega,''N''),NVL(O.IND_RETIRADO,''N''))<>''S''',
'AND (:P584_VER_SNC= ''T'' OR (:P584_VER_SNC = ''S'' AND NVL(O.IND_SNC,''N'') =''S'' ) OR (:P584_VER_SNC = ''N'' AND NVL(O.IND_SNC,''N'') =''N'' ))',
'---AND ((nvl(:P584_CHK_TKT,''N'')=''N'' AND COD_USUARIO_PED <>''TICKETS'') OR nvl(:P584_CHK_TKT,''N'')=''S'')',
'',
'AND (CASE WHEN NVL(O.IND_SNC,''N'') = ''S'' THEN ',
'           ''SNC''',
'        ELSE ',
'          CASE WHEN CC.tipo=''E'' AND CC.COD_GRUPO in (''TECNIC'',''TCNPV'')  THEN',
unistr('           ''ENTREGA T\00C9CNICO'''),
'          ELSE ',
'            CASE WHEN CC.COD_GRUPO in (''TECNIC'',''TCNPV'')  THEN ',
unistr('              ''SOLICITUD T\00C9CNICO'''),
'            ELSE ',
'             CASE WHEN CC.tipo=''E'' THEN ',
unistr('               ''INGRESO SAL\00D3N'''),
'             ELSE ',
'               ''SOLICITUD CAJA''',
'             END',
'            END ',
'         END ',
unistr('        END)=''SOLICITUD T\00C9CNICO'''),
'',
'',
'',
'order by CC.FEC_ALTA, TIPO_DESC ,E.NOMBRE'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(191783343628796080)
,p_region_id=>wwv_flow_imp.id(954827097364085592)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
,p_card_css_classes=>'&CLASE.'
,p_title_adv_formatting=>false
,p_title_column_name=>'NRO_COMPROBANTE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'PROVEEDOR'
,p_body_adv_formatting=>false
,p_body_column_name=>'DESCRIPCION'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'POSICION'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191779876871796086)
,p_name=>'P584_PROVEEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(953880724539896660)
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
 p_id=>wwv_flow_imp.id(191780251317796084)
,p_name=>'P584_ORIGENES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(953880724539896660)
,p_item_default=>'T'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191780616735796084)
,p_name=>'P584_VER_SNC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(953880724539896660)
,p_item_default=>'T'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191781020655796084)
,p_name=>'P584_TECNICOS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(953880724539896660)
,p_item_default=>'T'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191781465294796084)
,p_name=>'P584_CHK_TKT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(953880724539896660)
,p_item_default=>'S'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191781810150796083)
,p_name=>'P584_USER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(953880724539896660)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191782220499796083)
,p_name=>'P584_SER_OT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(953880724539896660)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191782631108796083)
,p_name=>'P584_NRO_OT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(953880724539896660)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(191790134237796056)
,p_name=>'Oculta region'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98192632712746821)
,p_event_id=>wwv_flow_imp.id(191790134237796056)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''body'').hasClass(''js-navExpanded'')',
'){',
'$(''#t_Button_navControl'').click();',
'};'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(191790674495796056)
,p_event_id=>wwv_flow_imp.id(191790134237796056)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104444646536494202)
);
wwv_flow_imp.component_end;
end;
/
