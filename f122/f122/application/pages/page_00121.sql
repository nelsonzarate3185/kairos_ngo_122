prompt --application/pages/page_00121
begin
--   Manifest
--     PAGE: 00121
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
 p_id=>121
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CRM'
,p_alias=>'CRM'
,p_step_title=>'CRM'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function go(x){',
'   $("#P121_SCORING").fadeOut({',
'    duration:500,    ',
'    step:function(now, fx){',
'      $(this).css("top",-55 * ( 2 - now) + "px");',
'    }',
'  });',
'  $({score: 0}).animate({score: x},{',
'    duration: 1000, ',
'    easing:"linear",    ',
'    opacity: ''0.5'',',
'    step: function(now, fx){         ',
'      /*$("#P121_SCORING").html(Math.floor(now));*/',
'        $("#P121_SCORING").html(parseFloat(now).toFixed(1));',
'',
'    }, ',
'    queue:false,',
'    complete: function(now, fx){',
'      score = x ;',
'    }',
'  }); ',
'  ',
'  $("#P121_SCORING").fadeIn({',
'    duration:700,',
'    easing:"linear",',
'    step:function(now, fx){',
'      $(this).css("top", -55 * now  +"px");',
'    }',
'  });',
'',
'}  ',
' ',
'  $("t-HeroRegion-icon").click(function(){',
'  alert("The paragraph was clicked.");',
'});',
' ',
'',
'function setea_region() { ',
'            $("#r_datos_cliente").find("button.t-Button--hideShow").eq(0).click();    ',
'   }',
' ',
'',
' ///$(".s-g-row a").attr("target", "_blank");'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  ',
'     .t-Body-contentInner {    ',
'       /* background-image:  linear-gradient(315deg, #294d91, #232f44 );*/ ',
'        /*background-image: linear-gradient(  #e2ecff 0%, #d7e5fa 45%, #b8d2fa  100%);*/',
'                background-color: #F1EDFF;',
'                background-image: linear-gradient(180deg, #d5e3ec 0%, #c3d6eb 50%, #5a7aaa 100%);',
' ',
'         } ',
'    .t-Region .t-Region-body{',
'            background: #f7f5f5;    ',
'            border-radius: 0.5rem;}',
'',
'     .t-Form-fieldContainer--floatingLabel .t-Form-inputContainer .apex-item-display-only {',
'           /* background-color: #D0EAF3;*/',
'            color:darkblue;',
'            border-color:#D8E5E9;',
'            border-style: solid;/*outset;*/',
'            border-radius: 0.5rem;',
'            box-shadow: inset 20px 20px 60px #ececec,/* #dafded*/',
'		                inset -20px -20px 60px #ffffff;',
'        }',
'        #r_datos_cliente, #R211781588883825112{',
'            /*box-shadow: #0e0370 0px 5px 15px; */',
'            border-color: #4e83c0;/* #AFA8BA;*/',
'            border-width: 1px;',
'            border-style: solid;/*outset;*/',
'',
'        }',
'',
'    .t-Form-fieldContainer--floatingLabel .t-Form-label {',
'        color:darkblue;/* #2C6676;  */',
'        font-weight: bold;',
'        ',
'    }',
'    ',
'    #B243582162522819309, #btn{',
'             border: 1px solid yellow;',
'            background: linear-gradient(0deg, #003a85 30%, #7ea3db 100%);',
'            color: #ffef00 ;            ',
'            margin-top:20rem;',
'    }',
'',
'     #hist{',
'             border: 1px solid yellow;',
'            background: linear-gradient(0deg, #003a85 30%, #7ea3db 100%);',
'            color: #ffef00 ;            ',
'            //margin-top:20rem;',
'    }',
'',
'',
'    #R199903941866511150{        ',
'                        background: #E0EAFC;  /* fallback for old browsers */',
'                        background: -webkit-linear-gradient(to bottom,  #6e87be,#2980B9);  /* Chrome 10-25, Safari 5.1-6 */',
'                        background: linear-gradient(to bottom,   #fbffd7,#2980B9); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */',
'                        }',
'',
'                .at-card:hover > .card-header {             ',
'                    transform: scale(1.15);',
'                    border-radius: 20px;     ',
'                }',
'                .at-card:hover {',
'                        box-shadow: 0px 0px 30px 1px #3b2529;',
'                }',
' ',
'',
'/*----------------RESUMEN-----------------*/',
' .s-g-container{margin:0;',
'                padding:0;          ',
'                }',
'',
' #RES-TEXT',
' {  font-size:12px; ',
'    margin:0;',
'    /*text-align: center;*/',
'    }',
'',
'  #RES-TEXT-TIT',
' {color:#000885; font-weight: bold;}',
' ',
'/*----------------------*/',
'@keyframes slide {',
'                    ',
'                    from {left: -220px;}',
'                    to {left: 0px;}',
'}',
'',
'@keyframes mymove {',
'                    from {top: 220px;}',
'                    to {top: 0px;}',
'}',
'   #P121_CALIFIC_STAR_LABEL{',
'                color: #000885;',
'                font-weight: bold;',
'   }',
'    #icon-star {',
'                color: #ffb01f;',
'                 font-size: 1.5em;  ',
'                position: relative;',
'                animation: slide 2s ;',
'                /*animation-fill-mode: forwards;*/ ',
'                 } ',
'       ',
'    ',
'    #icon-star-chk {',
'                color:#dfd5c2;',
'                 font-size: 1.5em;                 ',
'                position: relative;',
'                animation: slide 2s ;',
'                /*animation-fill-mode: forwards; */',
'                 } ',
'           ',
'',
'',
'',
'    .t-HeroRegion   , #R211781588883825112 , #P121_SCORING_LABEL , #P121_CALIFICACION_LABEL ,    ',
'    .t-Form-fieldContainer--floatingLabel .t-Form-inputContainer .apex-item-display-only{',
'        color:  black; ',
'        font-weight: bold;',
'    }',
'',
'    .t-HeroRegion-title {',
'        color:#042f87;',
'        FONT-WEIGHT: bold;    ',
'    }',
'  ',
'',
'.javainhand {',
'   float: right;',
'    height: -22px;',
'     margin-right: 1%;',
'     padding: 10px; ',
'    position: relative;',
'    width: 24%;',
'    ',
'}',
'.circle-tile {',
'    margin-bottom: 15px;',
'    text-align: center;',
'}',
'.circle-tile-heading {',
'    border: 2px solid #ffffffbb;',
'    border-radius: 100%;',
'    color: #FFFFFF;',
'    height: 80px;',
'    margin: 0 auto -40px;',
'    position: relative;',
'    transition: all 0.3s ease-in-out 0s;',
'    width: 80px;',
'}',
'',
'.circle-tile-heading:hover{',
'                transform: scale(1.1); ',
'}  ',
'',
'.circle-tile-content:hover  {    ',
'                box-shadow: 0px 0px 30px 1px #412026;',
'} ',
'',
'',
'.circle-tile-heading .fa {',
'    line-height: 80px;',
'}',
'.circle-tile-content {',
'    padding-top: 50px;',
'       border-radius: 5px;',
'    margin: 5px;',
'}',
'.circle-tile-description {',
'    font-weight: 700;',
'    line-height: 1;',
'}',
'.circle-tile-number {',
'    text-transform: capitalize;',
'    font-size: 20px;',
'     padding: 5px 0 15px; ',
'} ',
'',
'',
'.circle-tile-footer {',
'    background-color: rgba(0, 0, 0, 0.1);',
'    color: rgba(255, 255, 255, 0.5);',
'    display: block;',
'    padding: 5px;',
'    transition: all 0.3s ease-in-out 0s;',
'}',
' ',
' ',
'',
'.circle-tile-footer:hover {',
'    background-color: #00000033;',
'    color: #cbf7ffbb;',
'    text-decoration: none;',
'}',
'/*',
'.circle-tile-heading.dark-blue:hover {',
'    background-color: #2E4154;',
'}',
'.circle-tile-heading.green:hover {',
'    background-color: #138F77;',
'}',
'.circle-tile-heading.orange:hover {',
'    background-color: #DA8C10;',
'}',
'.circle-tile-heading.blue:hover {',
'    background-color: #2473A6;',
'}',
'.circle-tile-heading.red:hover {',
'    background-color: #B71C1C;',
'}',
'.circle-tile-heading.purple:hover {',
'    background-color: #7F3D9B;',
'}',
'*/',
'.tile-img {',
'    text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.9);',
'}',
'',
'.dark-blue {',
'    background-color: #33ce95;',
'    background-image: linear-gradient(180deg, #5ce6b3 0%, #20228abd 100%);',
'',
'}',
'',
'.light-gray {background-color: #415f79;',
'background-image: linear-gradient(  #66a8a0 ,#20228abd , #1190ff);',
'',
'}',
'',
'.light-green {background-color: #00e46a;',
'background-image: linear-gradient(  #b3ffd0,#187c47,#08b91f/* #23c574*/ );',
'}',
'.green {background-color: #00ff77;',
'background-image: linear-gradient( #c2ff7d 0%, #008521  100%);',
'',
'}',
'.blue {',
'    background-color: #85dcf5;',
'background-image: linear-gradient(225deg, #85dcf5 0%, #0d85e2 50%, #020c5a 100%);',
'',
'}',
'.orange {background-color:  #c48865 ;',
'background-image: linear-gradient(   #fce4a4, #ff5d2b ,#fdd056 ); ',
'',
'}',
'.red {background-color: #ff6c6c;',
'background-image: linear-gradient(0deg, #FF6125 0%, #f7f468 100%);',
'',
'}',
'.purple { background-color: #D9AFD9;',
'background-image: linear-gradient(0deg, #900094 0%, #E8D5B5 100%);',
'',
'}',
'',
'.gray {background-color: #698ab1;',
'background-image: linear-gradient(#FFFADE ,#683f7a, #a34f9b); ',
'}',
'',
'.dark-gray {background-color: #515f79;',
'background-image: linear-gradient(135deg, #515f79 0%, #042f87 100%);',
'',
'}',
'',
'.yellow {background-color: #92de00;',
'background-image: linear-gradient(45deg, #92de00 0%, #f1ff09 100%);',
'',
'}',
'',
'.circle-tile-footer {',
'    background-color: rgba(247, 250, 244, 0.1);',
'    color: rgba(255, 255, 255, 1.5);',
'    display: block;',
'    padding: 5px;',
'    transition: all 0.3s ease-in-out 0s;',
'}',
'',
'',
'',
'#P121_SCORING{',
'  padding: 10px;',
'  transform-style: preserve-3d;  ',
'  font-family: ''Oswald'', sans-serif;',
'  color:rgb(255, 0, 106);',
'  text-shadow: 1px 1px 5px black;',
'  ',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250322102912'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(253771300124851630)
,p_plug_name=>'FICHA CLIENTE'
,p_icon_css_classes=>'fa-cart-plus'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(270103631249279226)
,p_plug_name=>'Datos del Cliente'
,p_region_name=>'r_datos_cliente'
,p_parent_plug_id=>wwv_flow_imp.id(253771300124851630)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(265650795071165611)
,p_plug_name=>'Cobranzas Creditos'
,p_icon_css_classes=>'fa-user-chart'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--scrollBody:margin-top-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(295575787778902500)
,p_plug_name=>'Cards_Region'
,p_region_name=>'reg_gral_tarjetas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(253773148053851649)
,p_plug_name=>'Resumen'
,p_region_name=>'resumen'
,p_parent_plug_id=>wwv_flow_imp.id(295575787778902500)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH HFACT',
'     AS (select ''<p ID="RES-TEXT"> Ultima Compra: ''||to_char(vc.FEC_ULTIMA_COMPRA,''dd/mm/yyyy'') || ''&nbsp;&nbsp;&nbsp;&nbsp;  Pendiente a Facturar: ''||to_char(vc.PEDIDOS_PENDIENTES,''9G999G999G999G990'')||''</p>''  vta,       ',
'       ''<p ID="RES-TEXT">Venta Mes:''||to_char(vc.VENTA_mes,''9G999G999G999G990'') ||''</p><p ID="RES-TEXT"> Venta Anual: ''||to_char(vc.VENTA_anio,''9G999G999G999G990'')||''</p>'' value',
'        from v_cliente_apex vc',
'        where cod_cliente=:P121_COD_CLIENTE), ',
'',
'     RCall  ',
'     AS (  SELECT to_char(nvl(/*max(rl.FEC_LLAMADA) */  max(to_date(to_char(rl.FEC_LLAMADA,''DD/MM/YYYY'')|| '' ''||rl.hora,''DD/MM/YYYY HH24:MI:SS''))  ',
'                   ,trunc(sysdate)),''DD/MM/YYYY HH24:MI:SS'') Ultimallamada,',
'             ''<p ID="RES-TEXT"> Total de Llamadas Recibidas: ''||nvl(to_char(count(*)),'''') ||''</p>''   Cant_llamadas       ',
'            FROM v_llamadas_entrantes RL                                            ',
'            WHERE :P121_COD_CLIENTE  is not null',
'            and   RL.cod_cliente=:P121_COD_CLIENTE  ',
'           ---- AND  rl.Motivo_principal=''LLAMADAS_ENTRANTES''      ',
'     ), ',
'',
'    LOGIST AS(',
'                    SELECT ''<p ID="RES-TEXT">Pedidos a Fact.: ''||nvl((select trim(to_char(sum(c.tot_comprobante),''999G999G999G990''))',
'                                                                        from vt_pedidos_cabecera c',
'                                                                        where c.cod_empresa=:P_COD_EMPRESA',
'                                                                        and :P121_COD_CLIENTE is not null',
'                                                                        and   c.cod_cliente=:P121_COD_CLIENTE                    ',
'                                                                        and   c.estado=''P''),0)||''</p>''PEDPEND,',
'                        ''Ultima Facturacion: ''||nvl(( select to_char(max(f.fec_comprobante),''DD/MM/YYYY'')||'' por Gs. ''||trim(to_char(sum(f.importe),''999G999G999G990''))  ',
'                    from v_ventas_clientes f',
'                    where  f.cod_cliente=:P121_COD_CLIENTE',
'                    and  :P121_COD_CLIENTE is not null',
'                    and    f.fec_comprobante in (select max(ff.fec_comprobante)',
'                                                from v_ventas_clientes ff',
'                                                where ff.COD_CLIENTE=f.COD_CLIENTE)',
'                    ),0)ULTFAC,',
'                    ''<p ID="RES-TEXT">Reparto Pendiente: ''||nvl((select   count(distinct rc.nro_planilla)||''</p><p ID="RES-TEXT">Valor de Reparto: ''||trim(to_char(sum(c.tot_comprobante),''999G999G999G990''))',
'                    from    rp_reparto_cabecera      rc,',
'                            rp_reparto_detalle       rd,',
'                            vt_comprobantes_cabecera c',
'                    where  rc.cod_empresa=:P_COD_EMPRESA',
'                    and    nvl(rc.estado,''P'')<>''R''',
'                    and    rc.fec_rendicion is null',
'                    and    rc.fec_planilla>trunc(sysdate-10)',
'                    and    rc.cod_empresa=rd.cod_empresa',
'                    and    rc.nro_planilla=rd.nro_planilla ',
'                    and    rd.cod_empresa = c.cod_empresa',
'                    and    rd.tip_comprobante = c.tip_comprobante',
'                    and    rd.ser_comprobante = c.ser_comprobante',
'                    and    rd.nro_comprobante = c.nro_comprobante ',
'                    and    c.cod_cliente=:P121_COD_CLIENTE',
'                    ),0)||''Gs.</p>'' DATREP',
'                    FROM DUAL',
'            ),',
' ',
'',
'    SNC AS  ( select  count(*)  CANT,      ',
'                        CASE',
'                            WHEN c.estado=''FINALIZADO'' THEN',
'                                ''FINALIZADO''',
'                            WHEN c.estado IN (''RECHAZADO'',''ANULADO'') THEN',
'                                ''ANULADO''',
'                            ELSE',
'                                ''EN PROCESO''',
'                            END ESTADO',
'                from  ca_conformidad c',
'                where c.cod_empresa=:P_COD_EMPRESA',
'                and c.cod_cliente=:P121_COD_CLIENTE',
'                GROUP BY CASE',
'                            WHEN c.estado=''FINALIZADO'' THEN',
'                                ''FINALIZADO''',
'                            WHEN c.estado IN (''RECHAZADO'',''ANULADO'') THEN',
'                                ''ANULADO''',
'                            ELSE',
'                                ''EN PROCESO''',
'                            END ',
'                ) ,',
' ',
'',
'    DAT5 AS (select count(*) VAL,',
'                            case',
'                                when NVL(NCR, ''N'')= ''S'' or  NVL(cambio, ''N'') = ''S'' then',
'                                    ''NCR/CAMBIO''',
'                                WHEN NVL(IND_ENTREGA, ''N'')= ''S''   OR NVL(IND_RETIRADO, ''N'') = ''S'' THEN',
'                                    ''CERRADAS''',
'                                ELSE',
'                                    ''EN PROCESO'' ',
'                                END  ESTADO',
'                        from INV.Vt_Ordenes_Trabajo',
'                        where cod_cliente=:P121_COD_CLIENTE',
'                        and cod_empresa=:P_COD_EMPRESA',
'                        group by        case',
'                                when NVL(NCR, ''N'')= ''S'' or  NVL(cambio, ''N'') = ''S'' then',
'                                    ''NCR/CAMBIO''',
'                                WHEN NVL(IND_ENTREGA, ''N'')= ''S'' OR NVL(IND_RETIRADO, ''N'') = ''S'' THEN',
'                                    ''CERRADAS''',
'                                ELSE',
'                                    ''EN PROCESO'' ',
'                                END  ',
'                        ) ,',
'',
'----------------------------------------------------------------------------------------------------------------',
'    OTS AS (select  ''Promedio de demora: ''||to_char((avg(trunc(sysdate-ot.fec_comprobante))),''990D90'')||'' dias'' PROM,',
'                    ''OT mas Antigua: ''||TO_CHAR(min(ot.fec_comprobante),''DD/MM/YYYY'') OTANT,',
'                    ''Cant. OTs Vencidas: ''|| sum(  case ',
'                            when ot.estado_presu in (''C'',''CPR'',''CRR'',''CSR'',''CSS'',''CE'',''CAD'') then',
'                                0',
'                            else',
'                                1',
'                            end )Cantot,',
'                    '' OTs para Retiro: '' || sum(  case ',
'                            when ot.estado_presu in (''C'',''CPR'',''CRR'',''CSR'',''CSS'',''CE'',''CAD'') then',
'                                1',
'                            else',
'                                0',
'                            end ) Cantotret',
'                            ',
'                from vt_ordenes_trabajo ot,',
'                    ca_estado_ot eo',
'                where ot.cod_empresa=:P_COD_EMPRESA',
'                and   :P121_COD_CLIENTE is not null',
'                and   ot.cod_cliente=:P121_COD_CLIENTE',
'                and   ot.fec_entrega is null',
'                and   ot.fec_anulado is null',
'                and   ot.fec_cierre is null',
'                and   nvl(ot.ind_entrega,''N'')<>''S''',
'                and   nvl(ot.ind_facturado,''N'')<>''S''',
'                and  fec_comprobante>trunc(sysdate-180,''MM'')',
'                and  ot.estado_presu=eo.cod_estado',
'                and  ot.cod_empresa=eo.cod_empresa ',
'                /*',
'             union all',
'              select  ''Promedio de demora:  dias'' PROM,',
'                      ''OT mas Antigua: '' OTANT,',
'                      ''Cant. OTs Vencidas: '' antot,',
'                    '' OTs para Retiro: '' Cantotret                            ',
'                from dual ',
'                where   :P121_COD_CLIENTE is null',
'                */',
'                ),',
'----------------------------------------------------------------------------------------------------------------',
'',
'    DAT6 AS (select  TO_CHAR(count(*)) VALUE',
'                from INV.Vt_Ordenes_Trabajo',
'                where cod_cliente=:P121_COD_CLIENTE',
'                and cod_empresa= :P_COD_EMPRESA',
'                AND  NVL(IND_ENTREGA, ''N'')= ''S'' ',
'                AND  NVL(IND_RETIRADO, ''N'')= ''S'' ',
'                AND  NVL(NCR, ''N'')<> ''S'' ',
'                AND  NVL(cambio, ''N'') <> ''S'' ',
'                AND  NVL(IND_SNC, ''N'') <> ''S''       ',
'                ) ,',
'    DAT7 AS (select  TO_CHAR(count(*)) VALUE',
'                from INV.Vt_Ordenes_Trabajo',
'                where cod_cliente=:P121_COD_CLIENTE',
'                and cod_empresa= :P_COD_EMPRESA',
'                AND  NVL(IND_ENTREGA, ''N'')<> ''S'' ',
'                AND  NVL(IND_RETIRADO, ''N'')<> ''S'' ',
'                AND  NVL(NCR, ''N'')<> ''S'' ',
'                AND  NVL(cambio, ''N'') <> ''S'' ',
'                AND  NVL(IND_SNC, ''N'') <> ''S''  ',
'    ),',
'    DAT8 AS (select  TO_CHAR(count(*)) VALUE',
'                from INV.Vt_Ordenes_Trabajo',
'                where cod_cliente=:P121_COD_CLIENTE',
'                and cod_empresa=:P_COD_EMPRESA',
'                AND(  NVL(NCR, ''N'')= ''S'' ',
'                OR  NVL(cambio, ''N'') = ''S'' ',
'                OR  NVL(IND_SNC, ''N'') = ''S''  )',
'    )',
'',
'',
'',
'SELECT ',
'       ''icon'' AS CARD_TYPE, ',
'       ''fa-phone'' AS CARD_ICON, -----''fa-phone ',
'       ''orange'' AS CARD_ICON_COLOR, ',
'       -----''background-image: linear-gradient(45deg, red, blue);'' AS CARD_HEADER_STYLE, ',
'       ''background-color: #43f4ff;background-image: linear-gradient(135deg, #43f4ff 0%, #14185c 100%);''AS CARD_HEADER_STYLE,',
'       NULL AS CARD_HEADER_CLASS,',
'       ''<span ID="RES-TEXT-TIT">Ultima llamada Recibida</span>'' AS CARD_TITLE, ',
'       ''<p ID="RES-TEXT">Fecha: ''|| Ultimallamada ',
'       || (SELECT '' ''||rl.hora||''</p><p ID="RES-TEXT">''||substr(LOWER(rl.observacion),0,''80'')|| ''</p>'' datos ',
'                                            FROM v_llamadas_entrantes RL',
'                                            WHERE RL.cod_cliente=:P121_COD_CLIENTE',
'                                            AND  to_char(rl.FEC_LLAMADA,''DD/MM/YYYY'')|| '' ''||rl.hora=Ultimallamada',
'                                            --and   rl.FEC_LLAMADA=TO_DATE(Ultimallamada ,''DD/MM/YYYY'')',
'                                            --AND  rl.Motivo_principal=''LLAMADAS_ENTRANTES'' ',
'                                            and rownum=''1''   ',
'                                            )                       AS CARD_VALUE,  ',
'       (SELECT ''Agente: ''||rl.agente||'' Motivo: ''||rl.Motivo',
'                                            FROM v_llamadas_entrantes RL',
'                                            WHERE RL.cod_cliente=:P121_COD_CLIENTE',
'                                             AND (to_char(rl.FEC_LLAMADA,''DD/MM/YYYY'')|| '' ''||rl.hora)=Ultimallamada',
'                                           ',
'                                           -- and   rl.FEC_LLAMADA=TO_DATE(Ultimallamada ,''DD/MM/YYYY'')',
'                                            ---AND  rl.Motivo_principal=''LLAMADAS_ENTRANTES'' ',
'                                            and rownum=''1''   ',
'                                            ) AS CARD_FOOTER, ',
'       ---''f?p=''||:APP_ID||'':122:''||:APP_SESSION ||''::NO::P122_COD_CLIENTE:''||:P121_COD_CLIENTE AS CARD_LINK, ',
'      --- ''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':133:''||:APP_SESSION ||''::NO::P133_COD_CLIENTE:''||:P121_COD_CLIENTE||'''''');'' AS CARD_LINK, ',
'      ''javascript:apex.navigation.openInNewWindow(''''''||APEX_UTIL.PREPARE_URL(p_url => ''f?p=''||:APP_ID||'':133:''||:APP_SESSION ||''::NO::P133_COD_CLIENTE:''||:P121_COD_CLIENTE,p_checksum_type => ''SESSION'')||'''''');''  AS CARD_LINK, ',
'       NULL AS CARD_CHART_DATA, ',
'       NULL AS CARD_CHART_CONFIG ',
'FROM   RCall',
'',
'',
'',
'UNION ALL ',
'SELECT ',
'       ''icon'' AS CARD_TYPE, ',
'        ''fa-tools''AS CARD_ICON, ',
'       ''#00FF3C'' AS CARD_ICON_COLOR, ',
'       ''background-color: #FF3CAC;background-image: linear-gradient(225deg, #FF3CAC 0%, #784BA0 50%, #2B86C5 100%);'' AS CARD_HEADER_STYLE,',
'       NULL AS CARD_HEADER_CLASS,',
'       ''<span ID="RES-TEXT-TIT">ORDENES DE TRABAJO</span>'' AS CARD_TITLE, ',
'         ''<p ID="RES-TEXT">''||Cantot||''</p>'' ',
'         ||''<p ID="RES-TEXT">''||OTANT||''</p>'' ',
'         ||''<p ID="RES-TEXT">''||PROM||''</p>'' ',
'         AS CARD_VALUE,  ',
'        Cantotret AS CARD_FOOTER, ',
'      --  APEX_UTIL.PREPARE_URL(p_url => ''f?p=''||:APP_ID||'':94:''||:APP_SESSION ||''::NO::P94_PARAM_CLIENTE:''||:P121_COD_CLIENTE,p_checksum_type => ''SESSION'')   AS CARD_LINK, ',
'     ''javascript:apex.navigation.openInNewWindow(''''''||APEX_UTIL.PREPARE_URL(p_url => ''f?p=''||:APP_ID||'':142:''||:APP_SESSION ||''::NO::P142_PARAM_CLIENTE,P142_FECHA_INI:''|| :P121_COD_CLIENTE ||'',01/07/2022'',p_checksum_type => ''SESSION'') ||'''''');'' AS CAR'
||'D_LINK, ',
'       ---''f?p=''||:APP_ID||'':94:''||:APP_SESSION ||''::NO::P94_PARAM_CLIENTE:''||:P121_COD_CLIENTE AS CARD_LINK, ',
'       NULL AS CARD_CHART_DATA, ',
'       NULL AS CARD_CHART_CONFIG ',
'FROM   OTS ',
' ',
'',
'UNION ALL ',
'SELECT ',
'       ''icon'' AS CARD_TYPE, ',
'       ''fa-truck''AS CARD_ICON, ',
'       ''#4158D0'' AS CARD_ICON_COLOR, ',
'       ''background-color: #85FFBD;background-image: linear-gradient(45deg, #85FFBD 0%, #FFFB7D 100%);'' AS CARD_HEADER_STYLE,',
'       NULL AS CARD_HEADER_CLASS,',
'       ''<span ID="RES-TEXT-TIT">LOGISTICA</span>'' AS CARD_TITLE, ',
'       PEDPEND||DATREP AS CARD_VALUE, ',
'        ULTFAC AS CARD_FOOTER, ',
'        ---''f?p=''||:APP_ID||'':125:''||:APP_SESSION ||''::NO::P125_COD_CLIENTE:''||:P121_COD_CLIENTE AS CARD_LINK, ',
'       ''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':134:''||:APP_SESSION ||''::NO::P134_COD_CLIENTE:''||:P121_COD_CLIENTE||'''''');'' AS CARD_LINK, ',
'       NULL AS CARD_CHART_DATA, ',
'       NULL AS CARD_CHART_CONFIG ',
'FROM   LOGIST '))
,p_plug_source_type=>'PLUGIN_APEX.MATERIAL.CARDS'
,p_ajax_items_to_submit=>'P121_COD_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "cardWidth": 4,',
'  "refresh": 0',
'}'))
,p_attribute_02=>'N'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "ALLOWED_ATTR": [',
'    "accesskey",',
'    "align",',
'    "alt",',
'    "always",',
'    "autocomplete",',
'    "autoplay",',
'    "border",',
'    "cellpadding",',
'    "cellspacing",',
'    "charset",',
'    "class",',
'    "colspan",',
'    "dir",',
'    "height",',
'    "href",',
'    "id",',
'    "lang",',
'    "name",',
'    "rel",',
'    "required",',
'    "rowspan",',
'    "src",',
'    "style",',
'    "summary",',
'    "tabindex",',
'    "target",',
'    "title",',
'    "type",',
'    "value",',
'    "width"',
'  ],',
'  "ALLOWED_TAGS": [',
'    "a",',
'    "address",',
'    "b",',
'    "blockquote",',
'    "br",',
'    "caption",',
'    "code",',
'    "dd",',
'    "div",',
'    "dl",',
'    "dt",',
'    "em",',
'    "figcaption",',
'    "figure",',
'    "h1",',
'    "h2",',
'    "h3",',
'    "h4",',
'    "h5",',
'    "h6",',
'    "hr",',
'    "i",',
'    "img",',
'    "label",',
'    "li",',
'    "nl",',
'    "ol",',
'    "p",',
'    "pre",',
'    "s",',
'    "span",',
'    "strike",',
'    "strong",',
'    "sub",',
'    "sup",',
'    "table",',
'    "tbody",',
'    "td",',
'    "th",',
'    "thead",',
'    "tr",',
'    "u",',
'    "ul"',
'  ]',
'}'))
,p_attribute_04=>'Error occured'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(270104684041279236)
,p_plug_name=>'charts'
,p_region_name=>'rcharts'
,p_parent_plug_id=>wwv_flow_imp.id(295575787778902500)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH HFACT',
'     AS (select to_char(VC.FEC_COMPROBANTE,''MM'')ODR, SUBSTR(decode(to_char(VC.FEC_COMPROBANTE,''MONTH''),to_char(sysdate,''MONTH''),'''',to_char(VC.FEC_COMPROBANTE,''MONTH'')),0,3)MES, sum(nvl(vd.monto_total, 0) + NVL(VD.TOTAL_IVA, 0) * CASE',
'                                WHEN VC.TIP_COMPROBANTE = ''NCR'' THEN',
'                                 -1',
'                                ELSE',
'                                 1',
'                              END',
'                              )TOT',
'                     from VT_COMPROBANTES_CABECERA vc,',
'                          VT_COMPROBANTES_DETALLE  vd',
'                    where vc.cod_empresa = :P_COD_EMPRESA',
'                      and vc.cod_cliente = :P121_COD_CLIENTE      ',
'                      and vc.cod_empresa = vd.cod_empresa',
'                     ---- AND VC.FEC_COMPROBANTE < trunc(SYSDATE, ''MM'')',
'                      AND VC.FEC_COMPROBANTE > trunc(ADD_MONTHS(SYSDATE,-3), ''MM'')',
'                      and vc.tip_comprobante = vd.tip_comprobante',
'                      and vc.ser_comprobante = vd.ser_comprobante',
'                      and vc.nro_comprobante = vd.nro_comprobante',
'                      and NVL(vc.estado, ''P'') not in (''A'')',
'                      GROUP BY to_char(VC.FEC_COMPROBANTE,''MONTH''),to_char(VC.FEC_COMPROBANTE,''MM'')',
'                       ORDER BY 1 aSC',
'                       ), ',
'',
'     RCall  ',
'     AS (  SELECT max(rl.FEC_LLAMADA) Ultimallamada,',
'             ''<p ID="RES-TEXT"> Total de Llamadas Recibidas: ''||to_char(count(*)) ||''</p>''   Cant_llamadas       ',
'            FROM v_llamadas_entrantes RL',
'            WHERE RL.cod_cliente=:P121_COD_CLIENTE        ',
'     ), ',
'',
'    LOGIST AS(',
'                    SELECT (select ''<p ID="RES-TEXT">Pedidos a Fact.: ''||trim(to_char(sum(c.tot_comprobante),''999G999G999G990''))||''</p>''',
'                    from vt_pedidos_cabecera c',
'                    where c.cod_empresa= :P_COD_EMPRESA',
'                    and   c.cod_cliente=''889''',
'                    and   c.estado=''P'')PEDPEND,',
'                    (',
'                    select ''Ultima Facturacion: ''||to_char(max(f.fec_comprobante),''DD/MM/YYYY'')||'' por Gs. ''||trim(to_char(sum(f.importe),''999G999G999G990''))  ',
'                    from v_ventas_clientes f',
'                    where  f.cod_cliente=''889''',
'                    and    f.fec_comprobante in (select max(ff.fec_comprobante)',
'                                                from v_ventas_clientes ff',
'                                                where ff.COD_CLIENTE=f.COD_CLIENTE)',
'                    )ULTFAC,',
'                    (select   ''<p ID="RES-TEXT">Reparto Pendiente: ''||count(distinct rc.nro_planilla)||''</p><p ID="RES-TEXT">Valor de Reparto: ''||trim(to_char(sum(c.tot_comprobante),''999G999G999G990''))||''Gs.</p>''',
'                    from    rp_reparto_cabecera      rc,',
'                            rp_reparto_detalle       rd,',
'                            vt_comprobantes_cabecera c',
'                    where  rc.cod_empresa= :P_COD_EMPRESA',
'                    and    nvl(rc.estado,''P'')<>''R''',
'                    and    rc.fec_rendicion is null',
'                    and    rc.fec_planilla>trunc(sysdate-10)',
'                    and    rc.cod_empresa=rd.cod_empresa',
'                    and    rc.nro_planilla=rd.nro_planilla ',
'                    and    rd.cod_empresa = c.cod_empresa',
'                    and    rd.tip_comprobante = c.tip_comprobante',
'                    and    rd.ser_comprobante = c.ser_comprobante',
'                    and    rd.nro_comprobante = c.nro_comprobante ',
'                    and    c.cod_cliente=''889''',
'                    )DATREP',
'                    FROM DUAL',
'            ),',
'',
'     CART  ',
'     AS ( select v.cod_marca MARCA,',
'                sum(monto) IMPORTE',
'            from V_CARTERIZACION_CLIENTES v',
'            where v.cod_cliente=:P121_COD_CLIENTE',
'            group by v.cod_marca), ',
'',
'',
'    SNC AS  ( select  count(*)  CANT,      ',
'                        CASE',
'                            WHEN c.OPERACION=''NCR'' THEN',
'                                ''Nota de Credito'' ',
'                            ELSE',
'                                ''Para Cambio''',
'                            END ESTADO',
'                from  ca_conformidad c',
'                where c.cod_empresa=:P_COD_EMPRESA',
'                and c.cod_cliente=:P121_COD_CLIENTE',
'                and c.estado in (''CREADO'',''PROCESADO'',''AUTORIZADO'')',
'                and c.fec_solicitud>trunc(sysdate-180,''MM'')',
'                GROUP BY CASE WHEN c.OPERACION=''NCR'' THEN',
'                                ''Nota de Credito'' ',
'                            ELSE',
'                                ''Para Cambio''',
'                            END',
'                ) , ',
' ',
'        SNC2 AS  ( select  count(*)  CANT,C.ESTADO',
'                from  ca_conformidad c',
'                where c.cod_empresa=:P_COD_EMPRESA',
'                and c.cod_cliente=:P121_COD_CLIENTE',
'                and c.estado in (''CREADO'',''PROCESADO'',''AUTORIZADO'')',
'                and c.fec_solicitud>trunc(sysdate-180,''MM'')',
'                GROUP BY C.ESTADO',
'                ) , ',
' ',
'',
'',
'',
'    DAT5 AS (select count(*) VAL,',
'                            case',
'                                when NVL(NCR, ''N'')= ''S'' or  NVL(cambio, ''N'') = ''S'' then',
'                                    ''NCR/CAMBIO''',
'                                WHEN NVL(IND_ENTREGA, ''N'')= ''S''   OR NVL(IND_RETIRADO, ''N'') = ''S'' THEN',
'                                    ''CERRADAS''',
'                                ELSE',
'                                    ''EN PROCESO'' ',
'                                END  ESTADO',
'                        from INV.Vt_Ordenes_Trabajo',
'                        where cod_cliente=:P121_COD_CLIENTE',
'                        and cod_empresa= :P_COD_EMPRESA',
'                        and  fec_COMPROBANTE>trunc(sysdate-180,''MM'')  ',
'                        group by        case',
'                                when NVL(NCR, ''N'')= ''S'' or  NVL(cambio, ''N'') = ''S'' then',
'                                    ''NCR/CAMBIO''',
'                                WHEN NVL(IND_ENTREGA, ''N'')= ''S'' OR NVL(IND_RETIRADO, ''N'') = ''S'' THEN',
'                                    ''CERRADAS''',
'                                ELSE',
'                                    ''EN PROCESO'' ',
'                                END  ',
'                        ) ,',
'',
'----------------------------------------------------------------------------------------------------------------',
'    OTS AS (select /*eo.descripcion, ot.*---ot.fec_entrega ,ot.fec_anulado ,ot.fec_cierre,ot.ind_entrega,ot.ind_facturado */ ',
'       ''Promedio de demora: ''||to_char((avg(trunc(sysdate-ot.fec_comprobante))),''990D90'')||'' dias'' PROM,',
'       ''OT mas Antigua: ''||TO_CHAR(min(ot.fec_comprobante),''DD/MM/YYYY'') OTANT,',
'      '' OTs en Proceso: ''|| sum(  case ',
'               when ot.estado_presu in (''C'',''CPR'',''CRR'',''CSR'',''CSS'',''CE'',''CAD'') then',
'                  0',
'               else',
'                 1',
'             end )Cantot,',
'     '' OTs pendientes de Retiro: '' || sum(  case ',
'               when ot.estado_presu in (''C'',''CPR'',''CRR'',''CSR'',''CSS'',''CE'',''CAD'') then',
'                  1',
'               else',
'                 0',
'             end ) Cantotret',
'             ',
'from vt_ordenes_trabajo ot,',
'     ca_estado_ot eo',
'where ot.cod_empresa=:P_COD_EMPRESA',
'and   ot.cod_cliente=:P121_COD_CLIENTE',
'and   ot.fec_entrega is null',
'and   ot.fec_anulado is null',
'and   ot.fec_cierre is null',
' and   nvl(ot.ind_entrega,''N'')<>''S''',
' and   nvl(ot.ind_facturado,''N'')<>''S''',
' and  fec_comprobante>trunc(sysdate-180,''MM'')',
' and  ot.estado_presu=eo.cod_estado',
' and  ot.cod_empresa=eo.cod_empresa  ',
'  ),',
'----------------------------------------------------------------------------------------------------------------',
'',
'    DAT6 AS (select  TO_CHAR(count(*)) VALUE',
'                from INV.Vt_Ordenes_Trabajo',
'                where cod_cliente=:P121_COD_CLIENTE',
'                and cod_empresa= :P_COD_EMPRESA',
'                and  fec_COMPROBANTE>trunc(sysdate-180,''MM'')     ',
'                AND  NVL(IND_ENTREGA, ''N'')= ''S'' ',
'                AND  NVL(IND_RETIRADO, ''N'')= ''S'' ',
'                AND  NVL(NCR, ''N'')<> ''S'' ',
'                AND  NVL(cambio, ''N'') <> ''S'' ',
'                AND  NVL(IND_SNC, ''N'') <> ''S''                  ',
'                ) ,',
'    DAT7 AS (select  TO_CHAR(count(*)) VALUE',
'                from INV.Vt_Ordenes_Trabajo',
'                where cod_cliente=:P121_COD_CLIENTE',
'                and cod_empresa= :P_COD_EMPRESA',
'                and  fec_COMPROBANTE>trunc(sysdate-180,''MM'')  ',
'                AND  NVL(IND_ENTREGA, ''N'')<> ''S'' ',
'                AND  NVL(IND_RETIRADO, ''N'')<> ''S'' ',
'                AND  NVL(NCR, ''N'')<> ''S'' ',
'                AND  NVL(cambio, ''N'') <> ''S'' ',
'                AND  NVL(IND_SNC, ''N'') <> ''S''   ',
'    ),',
'    DAT8 AS (select  TO_CHAR(count(*)) VALUE',
'                from INV.Vt_Ordenes_Trabajo',
'                where cod_cliente=:P121_COD_CLIENTE',
'                and cod_empresa= :P_COD_EMPRESA',
'                and  fec_COMPROBANTE>trunc(sysdate-180,''MM'')  ',
'                AND(  NVL(NCR, ''N'')= ''S'' ',
'                OR  NVL(cambio, ''N'') = ''S'' ',
'                OR  NVL(IND_SNC, ''N'') = ''S''  ) ',
'    ) ',
'  ',
'',
'SELECT ',
'       ''chart-bar'' AS CARD_TYPE, ',
'       ''fa-bar-chart'' AS CARD_ICON, ',
'       null AS CARD_ICON_COLOR,',
'       ''background-color: #14b57a;background-image: linear-gradient(180deg, #14b57a 0%, #302b9c 100%);''  AS CARD_HEADER_STYLE,',
'       NULL AS CARD_HEADER_CLASS,',
'       ''<p style="color:#000885; font-weight: bold;">Resumen de Ordenes de Trabajos</p>'' AS CARD_TITLE, ',
'       ''<p style="font-size:13px; margin:0;">Cantidad OT: ''||to_char((SELECT  sum(VAL)  FROM   DAT5),''999G999G990'')||''</p>'' AS CARD_VALUE, ',
'       ''ORDENES DE TRABAJO'' AS CARD_FOOTER, ',
'       ''javascript:apex.navigation.openInNewWindow(''''''||APEX_UTIL.PREPARE_URL(p_url => ''f?p=''||:APP_ID||'':142:''||:APP_SESSION ||''::NO::P142_PARAM_CLIENTE:''||:P121_COD_CLIENTE,p_checksum_type => ''SESSION'') ||'''''');'' AS CARD_LINK,         ',
'       ''{',
'           "labels": ["Cerradas", "en Proceso", "SNC"],            ',
'            "series": [['' ||nvl((SELECT  VALUE  FROM   DAT6),2) ||'', ',
'                       '' ||nvl((SELECT  VALUE  FROM   DAT7),1) ||'',',
'                       '' ||nvl((SELECT  VALUE  FROM   DAT8),3) ||'']]                        ',
'        }'' AS CARD_CHART_DATA,',
'       ''{',
'          "total": 100,',
'          "donut": true,',
'          "donutWidth": 260,',
'          "sliceWidth": 30',
'        }'' AS CARD_CHART_CONFIG',
'FROM   DUAL   ',
'where :P121_COD_CLIENTE is not null',
'UNION ALL',
'SELECT ''chart-pie'' AS CARD_TYPE,',
'       ''fa-pie-chart'' AS CARD_ICON,',
'       NULL AS CARD_ICON_COLOR,',
'       ''background-color: #9a8ccf;background-image: linear-gradient(0deg, #FF5052 0%, #8BFFEF 100%);''  AS CARD_HEADER_STYLE,',
'       NULL AS CARD_HEADER_CLASS, ',
'       ''<p style="color:#000885; font-weight: bold;">Resumen de Solicitud No Conforme</p>'' AS CARD_TITLE,        ',
'       ''<p style="font-size:13px; margin:0;">''||(SELECT LISTAGG(ESTADO||'': ''||TO_CHAR(CANT,''999G999G999'')',
'       , ''&nbsp;&nbsp;&nbsp;&nbsp;'') WITHIN GROUP (ORDER BY ROWNUM) FROM SNC)||''</p>'' AS CARD_VALUE,  ',
'       ''SNC Pendientes:&nbsp;''||(select TO_CHAR(sum(CANT),''999G999G999'') from snc) AS CARD_FOOTER,',
'       ''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':161:''||:APP_SESSION ||''::NO::P161_COD_CLIENTE:''||:P121_COD_CLIENTE ||'''''');'' AS CARD_LINK,',
'       ''{             ',
'          "labels": [''||nvl((SELECT LISTAGG(''"''||ESTADO||''"'', '','') WITHIN GROUP (ORDER BY ROWNUM) FROM SNC2),''"A","B","C"'') ||''],',
'          "series": [''||nvl((SELECT LISTAGG(TO_CHAR(CANT), '','') WITHIN GROUP (ORDER BY ROWNUM) FROM SNC2),''1,3,2'')||''],',
'          "colors": ["#FF6A88","#2BFF88","#2BD2FF"] ',
'        }'' AS CARD_CHART_DATA,',
'       ''{ "donutSolid": false   ,   ',
'           "labelOffset": 20',
'        }'' AS CARD_CHART_CONFIG',
'FROM   DUAL ',
'where :P121_COD_CLIENTE is not null',
'UNION ALL',
'SELECT ''chart-line'' AS CARD_TYPE,',
'       ''fa-line-chart'' AS CARD_ICON,',
'       NULL AS CARD_ICON_COLOR,',
'       ''background-color: #08AEEA;background-image: linear-gradient(0deg, #08AEEA 0%, #2AF598 100%);'' AS CARD_HEADER_STYLE,',
'       NULL AS CARD_HEADER_CLASS, ',
'        ''<p style="color:#000885; font-weight: bold;">Resumen de Ventas</p>'' AS CARD_TITLE,',
'       ''<p style="font-size:12px; ">Total Vta.: ''||(select to_char(sum(tot),''999G999G999G990'') from HFACT)||'' </p>'' AS CARD_VALUE,',
'       ''Ventas de los Ultimos 3 meses'' AS CARD_FOOTER,',
'       ''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':138:''||:APP_SESSION ||''::NO::P138_COD_CLIENTE:''||:P121_COD_CLIENTE ||'''''');''  AS CARD_LINK,',
'       ''{',
'          "labels": [ "",''||nvl((SELECT LISTAGG(''"''||MES||''"'', '','') WITHIN GROUP (ORDER BY ROWNUM) FROM HFACT) ,''"1","2","3"'')||''],',
'          "series": [[0,''||nvl((SELECT LISTAGG(''"''||TOT||''"'', '','') WITHIN GROUP (ORDER BY ROWNUM) FROM HFACT),''"2","3","1"'') ||'']]',
'        }'' AS CARD_CHART_DATA,',
'       ''{',
'            "low": 0,',
'            "showArea": true',
'        }'' AS CARD_CHART_CONFIG',
'FROM   DUAL',
'where :P121_COD_CLIENTE is not null ',
'',
'',
'',
'',
''))
,p_plug_source_type=>'PLUGIN_APEX.MATERIAL.CARDS'
,p_ajax_items_to_submit=>'P121_COD_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "cardWidth": 4,',
'  "refresh": 0',
'}'))
,p_attribute_02=>'N'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "ALLOWED_ATTR": [',
'    "accesskey",',
'    "align",',
'    "alt",',
'    "always",',
'    "autocomplete",',
'    "autoplay",',
'    "border",',
'    "cellpadding",',
'    "cellspacing",',
'    "charset",',
'    "class",',
'    "colspan",',
'    "dir",',
'    "height",',
'    "href",',
'    "id",',
'    "lang",',
'    "name",',
'    "rel",',
'    "required",',
'    "rowspan",',
'    "src",',
'    "style",',
'    "summary",',
'    "tabindex",',
'    "target",',
'    "title",',
'    "type",',
'    "value",',
'    "width"',
'  ],',
'  "ALLOWED_TAGS": [',
'    "a",',
'    "address",',
'    "b",',
'    "blockquote",',
'    "br",',
'    "caption",',
'    "code",',
'    "dd",',
'    "div",',
'    "dl",',
'    "dt",',
'    "em",',
'    "figcaption",',
'    "figure",',
'    "h1",',
'    "h2",',
'    "h3",',
'    "h4",',
'    "h5",',
'    "h6",',
'    "hr",',
'    "i",',
'    "img",',
'    "label",',
'    "li",',
'    "nl",',
'    "ol",',
'    "p",',
'    "pre",',
'    "s",',
'    "span",',
'    "strike",',
'    "strong",',
'    "sub",',
'    "sup",',
'    "table",',
'    "tbody",',
'    "td",',
'    "th",',
'    "thead",',
'    "tr",',
'    "u",',
'    "ul"',
'  ]',
'}'))
,p_attribute_04=>'Error occured'
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(497620952510447432)
,p_name=>'Card'
,p_region_name=>'rcards'
,p_parent_plug_id=>wwv_flow_imp.id(295575787778902500)
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 2 as sort_order',
', ''Venta del Mes'' title',
', (to_char((sum(nvl(vd.monto_total, 0) + NVL(VD.TOTAL_IVA, 0) * CASE',
'                                WHEN VC.TIP_COMPROBANTE = ''NCR'' THEN',
'                                 -1',
'                                ELSE',
'                                 1',
'                              END',
'                              )), ''999G999G999G999G9990''))  data',
',''fa-cart-arrow-down fa-fw fa-3x'' as icon_class',
',''orange'' as class1',
',''red'' as class2',
',''f?p=''||:APP_ID||'':138:''||:APP_SESSION ||''::NO::P138_COD_CLIENTE:''||:P121_COD_CLIENTE   as LINK',
'---,''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':123:''||:APP_SESSION ||''::NO::P123_COD_CLIENTE:''||:P121_COD_CLIENTE ||'''''');''  as LINK',
' from VT_COMPROBANTES_CABECERA vc,',
'        VT_COMPROBANTES_DETALLE  vd',
'    where vc.cod_empresa = :P_COD_EMPRESA',
'    and vc.cod_cliente = :P121_COD_CLIENTE',
'    and vc.cod_empresa = vd.cod_empresa',
'    AND trunc(VC.FEC_COMPROBANTE, ''MM'') = trunc(SYSDATE, ''MM'')',
'    and vc.tip_comprobante = vd.tip_comprobante',
'    and vc.ser_comprobante = vd.ser_comprobante',
'    and vc.nro_comprobante = vd.nro_comprobante',
'    and NVL(vc.estado, ''P'') not in (''A'') ',
'                       ',
'UNION ALL',
'select 3 as sort_order',
',''Solicitud No Conforme'' title',
'/*',
',''Cambio: ''||trim(to_char(sum(decode(operacion,''NCR'',1,0)), ''999G999G999G999G9990''))',
'       ||'' / Not.Cred:''||trim(to_char(sum(decode(operacion,''CMB'',1,0)), ''999G999G999G999G9990'')) */ ',
'       ',
' ,trim(to_char(COUNT(NRO_SOLICITUD), ''999G999G999G999G9990''))   data',
',''fa-wrench fa-fw fa-3x '' as icon_class',
',''light-green'' as class1',
',''green'' as class2',
',''f?p=''||:APP_ID||'':161:''||:APP_SESSION ||''::NO::P161_COD_CLIENTE:''||:P121_COD_CLIENTE as LINK',
'---,''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':119:''||:APP_SESSION ||''::NO::P119_COD_CLIENTE:''||:P121_COD_CLIENTE ||'''''');'' as LINK',
'from ca_conformidad',
'where cod_cliente=:P121_COD_CLIENTE',
'and estado in (''CREADO'',''PROCESADO'',''AUTORIZADO'')',
'and fec_solicitud>trunc(sysdate-180,''MM'')',
'---where   nvl(es_fisica,''N'') =''N''',
'-----where cod_pais not in (''PAR'') ',
'UNION ALL',
'select 1 as sort_order',
', DECODE(NVL(deuda_vencida,0),0,''Cuenta a Pagar'',''Deuda Vencida'') title',
', to_char(DECODE(NVL(deuda_vencida,0),0,deuda_total,deuda_vencida), ''999G999G999G999G990'') data',
', ''fa-calculator  fa-fw fa-3x''as icon_class --- ''fa-cog fa-fw fa-3x'' ',
', ''light-gray'' as class1',
', ''dark-blue'' as class2',
',''f?p=''||:APP_ID||'':136:''||:APP_SESSION ||''::NO::P136_COD_CLIENTE:''||:P121_COD_CLIENTE   as LINK',
'---, ''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':124:''||:APP_SESSION ||''::NO::P124_COD_CLIENTE:''||:P121_COD_CLIENTE ||'''''');'' as LINK',
'from  inv.v_cliente_apex where cod_cliente = :P121_COD_CLIENTE',
'',
'UNION ALL',
'select 4 as sort_order',
',''Contactos de ''||to_char(sysdate,''MONTH'') title',
',''Ent.: ''||entrantes||''    Sal.: ''||salientes data',
',''fa-commenting fa-fw fa-3x'' as icon_class',
',''gray'' as class1',
',''purple'' as class2',
',APEX_UTIL.PREPARE_URL(p_url => ''f?p=''||:APP_ID||'':133:''||:APP_SESSION ||''::NO::P133_COD_CLIENTE:''||:P121_COD_CLIENTE,p_checksum_type => ''SESSION'')   as LINK',
'---,''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':122:''||:APP_SESSION ||''::NO::P122_COD_CLIENTE:''||:P121_COD_CLIENTE ||'''''');''  as LINK',
'from (SELECT  sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   1',
'              else 0 end) entrantes,',
'            sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   0',
'              else 1 end) salientes',
'    FROM v_llamadas_entrantes',
'    WHERE COD_CLIENTE=:P121_COD_CLIENTE',
'    AND  Motivo_principal<>''VISITAS CAST''',
'    and trunc(FEC_LLAMADA,''MM'')=TRUNC(SYSDATE ,''MM''))'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P121_COD_CLIENTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(27006312906008679)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26957500562675446)
,p_query_column_id=>1
,p_column_alias=>'SORT_ORDER'
,p_column_display_sequence=>10
,p_column_heading=>'Sort Order'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26957912109675446)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>20
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26958334049675446)
,p_query_column_id=>3
,p_column_alias=>'DATA'
,p_column_display_sequence=>30
,p_column_heading=>'Data'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26958726759675447)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>40
,p_column_heading=>'Icon Class'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26959150272675447)
,p_query_column_id=>5
,p_column_alias=>'CLASS1'
,p_column_display_sequence=>50
,p_column_heading=>'Class1'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26959528322675447)
,p_query_column_id=>6
,p_column_alias=>'CLASS2'
,p_column_display_sequence=>60
,p_column_heading=>'Class2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26959931247675447)
,p_query_column_id=>7
,p_column_alias=>'LINK'
,p_column_display_sequence=>70
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26945771195675437)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(253771300124851630)
,p_button_name=>'STOCK'
,p_button_static_id=>'btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Stock'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1103765066422237809)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(265650795071165611)
,p_button_name=>'historial'
,p_button_static_id=>'hist'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Historial del Cliente'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1103765187557237810)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(265650795071165611)
,p_button_name=>'Cta_cte'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Saldos(Pdf)'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26946143737675437)
,p_name=>'P121_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(253771300124851630)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     SELECT DISTINCT NVL(TRIM(P.NOMBRE),TRIM(P.NOMB_FANTASIA))||'' ''||(SELECT LISTAGG(Numero, ''  '') ',
'             WITHIN GROUP (ORDER BY ROWNUM) ',
'         FROM   IDENT_PERSONAS IP',
'         WHERE   IP.cod_ident in (''CI'',''RUC'')',
'         AND    IP.COD_PERSONA=C.COD_PERSONA',
'         ) || '' '' || C.COD_CLIENTE DATOS',
'           , C.COD_CLIENTE',
'     FROM CC_CLIENTES C',
'          ,PERSONAS P',
'     WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'     AND   C.COD_PERSONA=P.COD_PERSONA',
'     AND   P.NOMBRE NOT LIKE ''%NO USAR%''',
'     AND   P.NOMBRE NOT LIKE ''--%''',
'     AND   P.NOMBRE NOT LIKE ''**%''',
'     ORDER BY 1 ASC',
'      ',
'         ',
'         '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-users-chat'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'4'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26946862083675439)
,p_name=>'P121_NOM_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(270103631249279226)
,p_prompt=>'Nombre Cliente'
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
 p_id=>wwv_flow_imp.id(26947206851675439)
,p_name=>'P121_ESTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(270103631249279226)
,p_prompt=>'ESTADO'
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
 p_id=>wwv_flow_imp.id(26947630938675439)
,p_name=>'P121_SEGMENTACION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(270103631249279226)
,p_prompt=>'Segmentacion'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26948096479675439)
,p_name=>'P121_CALIFIC_STAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(270103631249279226)
,p_prompt=>'Calificacion:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-top-sm'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26948459205675439)
,p_name=>'P121_COD_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(270103631249279226)
,p_prompt=>unistr('C\00F3digo Cliente')
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
 p_id=>wwv_flow_imp.id(26948807155675439)
,p_name=>'P121_NCI'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(270103631249279226)
,p_prompt=>'RUC/NCI'
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
 p_id=>wwv_flow_imp.id(26949247072675440)
,p_name=>'P121_TELEFONO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(270103631249279226)
,p_prompt=>'Telefono'
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
 p_id=>wwv_flow_imp.id(26949637884675440)
,p_name=>'P121_VENDEDOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(270103631249279226)
,p_prompt=>'Vendedor'
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
 p_id=>wwv_flow_imp.id(26950014748675440)
,p_name=>'P121_SUC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(270103631249279226)
,p_prompt=>'Cant.Suc.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26950452384675440)
,p_name=>'P121_COMENTARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(270103631249279226)
,p_prompt=>'Comentario'
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
 p_id=>wwv_flow_imp.id(26950843265675440)
,p_name=>'P121_PERSONA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(270103631249279226)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26951521635675441)
,p_name=>'P121_TIPO_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(265650795071165611)
,p_prompt=>'Tipo Cliente'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26951925911675441)
,p_name=>'P121_MONEDA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(265650795071165611)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26952333413675441)
,p_name=>'P121_SCORING'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(265650795071165611)
,p_prompt=>'Scoring'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26952778527675441)
,p_name=>'P121_LIMITE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(265650795071165611)
,p_prompt=>unistr('Linea Cr\00E9dito:')
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
 p_id=>wwv_flow_imp.id(26953141652675441)
,p_name=>'P121_DISPONIBLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(265650795071165611)
,p_prompt=>'Disponible'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26953541562675442)
,p_name=>'P121_CARTA_GAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(265650795071165611)
,p_prompt=>'Carta Garantia'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26953954298675442)
,p_name=>'P121_CALCULADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(265650795071165611)
,p_prompt=>'Ejecutado'
,p_source=>'0:Monto Ejecutado'
,p_source_type=>'STATIC'
,p_display_as=>'PLUGIN_COM.FOS.PROGRESS_BAR'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config){',
'    config.strokeWidth = 12;',
'    config.trailWidth = 12;',
'    config.height = ''140px'';',
'    return config;',
'}'))
,p_attribute_01=>'circle'
,p_attribute_03=>'solid'
,p_attribute_04=>'#6A5ACD'
,p_attribute_05=>'#7FFFD4'
,p_attribute_07=>'ease-in'
,p_attribute_08=>'1000'
,p_attribute_09=>'on-element'
,p_attribute_10=>'below-element'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26954360822675442)
,p_name=>'P121_SALDO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(265650795071165611)
,p_prompt=>'Saldo Total'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26954768121675442)
,p_name=>'P121_S_VENCIDO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(265650795071165611)
,p_prompt=>'Saldo Vencido'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26955121212675442)
,p_name=>'P121_CALIFICACION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(265650795071165611)
,p_item_default=>'4'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26955563066675443)
,p_name=>'P121_EJECUTADO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(265650795071165611)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26955958064675443)
,p_name=>'P121_PORC'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(265650795071165611)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26960315011675449)
,p_name=>'datos_cod'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P121_COD_CLIENTE'
,p_condition_element=>'P121_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26961310316675450)
,p_event_id=>wwv_flow_imp.id(26960315011675449)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P121_NOM_CLIENTE,P121_NCI,P121_ESTADO,P121_TELEFONO,P121_SUC,P121_TIPO_CLIENTE,P121_LIMITE,P121_CALCULADO,P121_EJECUTADO,P121_DISPONIBLE,P121_CARTA_GAR,P121_MONEDA,P121_COMENTARIO,P121_PORC,P121_VENDEDOR,P121_S_VENCIDO,P121_SALDO,P121_SEGMENTACION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26961808383675451)
,p_event_id=>wwv_flow_imp.id(26960315011675449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(270103631249279226)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26962327284675451)
,p_event_id=>wwv_flow_imp.id(26960315011675449)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	DECLARE',
'        VRUC VARCHAR2(30);',
'    BEGIN ',
'                select nombre,',
'                    telefono,',
'                    ruc,',
'                    estado,',
'                    trim(to_char(linea_de_credito,''999G999G999G990'')),',
'                    moneda,',
'                    tipo_cliente,',
'                    cod_persona,      ',
'                    trim(to_char(linea_ejecutada,''999G999G999G990'')),',
'                    trim(to_char(credito_disponible,''999G999G999G990'')),',
'                    sucursales,',
'                    decode(linea_de_credito,0,0,ROUND(((linea_ejecutada*100)/NVL(linea_de_credito,1)),2))',
'                    ,calific',
'                    ,substr(scoring,0,3)',
'                     ,( ',
'                     (SELECT LISTAGG(''<span class="fa fa-star" id="icon-star" ></span>'', '' '') ',
'                        WITHIN GROUP (ORDER BY ROWNUM) ',
'                        FROM   DUAL ',
'                        CONNECT BY ROWNUM <= calific )',
'                      ||'' '' ||  ',
'                      (SELECT LISTAGG(''<span class="fa fa-star" id="icon-star-chk" ></span>'', '' '') ',
'                        WITHIN GROUP (ORDER BY ROWNUM) ',
'                        FROM   DUAL                         ',
'                        where 0 < 5- calific  ',
'                        CONNECT BY ROWNUM <= 5- calific )                        ',
'                     )  calific                 ',
'                     ,null',
'                    ,codigo_vendedor||'' - ''||nombre_vendedor',
'                ----    ,trim(to_char(DEUDA_VENCIDA,''9G999G999G999G990''))',
'                    ,trim(to_char(DEUDA_TOTAL,''9G999G999G999G990''))',
'                    INTO    :P121_NOM_CLIENTE',
'                            ,:P121_TELEFONO',
'                            ,:P121_NCI',
'                            ,:P121_ESTADO   ',
'                            ,:P121_LIMITE',
'                            ,:P121_MONEDA  ',
'                            ,:P121_TIPO_CLIENTE',
'                            ,:P121_PERSONA  ',
'                            ,:P121_EJECUTADO',
'                            ,:P121_DISPONIBLE',
'                            ,:P121_SUC',
'                            ,:P121_PORC',
'                            ,:P121_CALIFICACION',
'                            ,:P121_SCORING     ',
'                            ,:P121_CALIFIC_STAR   ',
'                            ,:P121_COMENTARIO    ',
'                            ,:P121_VENDEDOR ',
'                         ---   ,:P121_S_VENCIDO',
'                            ,:P121_SALDO',
'                from inv.v_cliente_apex',
'                where  cod_cliente = :P121_COD_CLIENTE',
'                    ; ',
'		EXCEPTION',
'			WHEN OTHERS THEN ',
'					        :P121_NOM_CLIENTE :=NULL;',
'                            :P121_TELEFONO :=NULL;',
'                            :P121_NCI :=NULL;',
'                            :P121_ESTADO    :=NULL;',
'                            :P121_LIMITE :=NULL;',
'                            :P121_MONEDA   :=NULL;',
'                            :P121_TIPO_CLIENTE :=NULL;',
'                            :P121_PERSONA   :=NULL;',
'                            :P121_EJECUTADO :=NULL;',
'                            :P121_DISPONIBLE :=NULL;',
'                            :P121_SUC :=NULL;',
'                            :P121_PORC :=NULL;',
'                            :P121_COMENTARIO:=sqlerrm; ',
'                            :P121_CALIFICACION:=0;',
'                            :P121_SCORING:=0; ',
'                            :P121_VENDEDOR:=null;',
'                           -- :P121_S_VENCIDO:=0;',
'                            :P121_SALDO:=0;',
'			',
'		END;   ',
'',
' '))
,p_attribute_02=>'P121_COD_CLIENTE'
,p_attribute_03=>'P121_NOM_CLIENTE,P121_NCI,P121_ESTADO,P121_TELEFONO,P121_SUC,P121_TIPO_CLIENTE,P121_LIMITE,P121_CALCULADO,P121_EJECUTADO,P121_DISPONIBLE,P121_CARTA_GAR,P121_MONEDA,P121_COMENTARIO,P121_PORC,P121_SCORING,P121_CALIFICACION,P121_CALIFIC_STAR,P121_VENDED'
||'OR,P121_SALDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26962868740675451)
,p_event_id=>wwv_flow_imp.id(26960315011675449)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'begin ',
' select (to_char(DEUDA_VENCIDA,''9G999G999G999G990''))',
' into :P121_S_VENCIDO',
'       from  inv.v_cliente_apex',
'       where  cod_cliente=:P121_COD_CLIENTE; ',
'       /*case',
'         when DEUDA_VENCIDA <= 0 then',
'          ''<span style="font-size:20px;>''||(to_char(DEUDA_VENCIDA,''9G999G999G999G990''))||'' Gs.     &#128515; </span>''',
'         when round((DEUDA_VENCIDA * 10 / DEUDA_TOTAL)) between 1 and 10 then',
'          ''<span style="font-size:20px;">''||(to_char(DEUDA_VENCIDA,''9G999G999G999G990''))||'' Gs.     &#128531;</span>''',
'         when round((DEUDA_VENCIDA * 10 / DEUDA_TOTAL)) between 11 and 15 then',
'          ''<span style="font-size:20px;">''||(to_char(DEUDA_VENCIDA,''9G999G999G999G990''))||'' Gs.     &#128552; </span>''',
'         when round((DEUDA_VENCIDA * 10 / DEUDA_TOTAL)) between 16 and 40 then',
'          ''<span style="font-size:20px;">''||(to_char(DEUDA_VENCIDA,''9G999G999G999G990''))||'' Gs.     &#128561; </span>''',
'         when round((DEUDA_VENCIDA * 10 / DEUDA_TOTAL)) between 41 and 55 then',
'          ''<span style="font-size:20px;">''||(to_char(DEUDA_VENCIDA,''9G999G999G999G990''))||'' Gs.     &#128548; </span>''',
'         ELSE',
'          ''<span style="font-size:20px;">''||(to_char(DEUDA_VENCIDA,''9G999G999G999G990''))||'' Gs.     &#129327; </span>''',
'       END EMOJI',
'       into :P121_S_VENCIDO',
'       from  inv.v_cliente_apex',
'       where  cod_cliente=:P121_COD_CLIENTE; ',
'       */',
'exception',
'    when others then',
'        :P121_S_VENCIDO:=null;  ',
'end;'))
,p_attribute_02=>'P121_COD_CLIENTE'
,p_attribute_03=>'P121_S_VENCIDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26963383868675451)
,p_event_id=>wwv_flow_imp.id(26960315011675449)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'begin   ',
'                select  s.tip_segmento ',
'                into :P121_SEGMENTACION',
'                    from  cc_segmentacion_cliente s',
'                    where s.cod_empresa=  :P_COD_EMPRESA',
'                    and   s.cod_tip_cliente=''27''',
'                    and   (select  sum(DECODE(V.TIP_COMPROBANTE,''NCR'',-1,1)*V.Tot_Gravadas *v.tip_cambio) ',
'                            from vt_comprobantes_cabecera v',
'                            where v.cod_empresa= :P_COD_EMPRESA',
'                            and   trunc(v.fec_comprobante,''YYYY'')=TRUNC(trunc(sysdate,''YYYY'')-1,''YYYY'') ',
'                            and   nvl(v.estado,''P'')<>''A''',
'                            and   v.cod_cliente= :P121_COD_CLIENTE) between nvl(s.vta_anual_min,0)     and    nvl(s.vta_anual_max,0) ',
'                    ',
'        ;',
'exception',
'    when others then',
'        :P121_SEGMENTACION:=null;  ',
'end;'))
,p_attribute_02=>'P121_COD_CLIENTE'
,p_attribute_03=>'P121_SEGMENTACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26963804266675451)
,p_event_id=>wwv_flow_imp.id(26960315011675449)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' var valor =  $v("P121_PORC") +'':'' + $v("P121_EJECUTADO") ;',
' apex.item(''P121_CALCULADO'').setValue(valor);',
' ',
'    $(''#P121_CALIFIC_STAR_LABEL'').text(''Calific.: ''+$v(''P121_CALIFICACION''));',
' ',
' ',
'    ',
'    ',
'    $(''#P121_SCORING'').animate({left: ''100px''}, "slow");    ',
'    $(''#P121_SCORING'').animate({fontSize: ''3em''}, "slow");',
'    ',
'    ',
'  ',
'  go($v("P121_SCORING"));',
' ',
'  ',
' setTimeout(setea_region, 3000); ',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26964322548675452)
,p_event_id=>wwv_flow_imp.id(26960315011675449)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("resumen").refresh();',
'apex.region("rcharts").refresh();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26960815071675450)
,p_event_id=>wwv_flow_imp.id(26960315011675449)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(497620952510447432)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26964702167675452)
,p_name=>'CARGA_DATOS'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P121_CLIENTE'
,p_condition_element=>'P121_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26965284408675452)
,p_event_id=>wwv_flow_imp.id(26964702167675452)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P121_COD_CLIENTE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
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
 p_id=>wwv_flow_imp.id(26965720147675452)
,p_event_id=>wwv_flow_imp.id(26964702167675452)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P121_CLIENTE  IS NOT NULL THEN',
'',
'    :P121_COD_CLIENTE:=NULL;',
'    :P121_NCI:=NULL;',
'    :P121_PERSONA:=NULL;',
'    DECLARE',
'	vcod_cliente varchar2(30);',
'',
'vcod_persona varchar2(30);',
'',
'vruc varchar2(30);',
'BEGIN',
'	     SELECT',
'	c.cod_cliente,',
'	c.cod_persona,',
'	p.numero',
'                    INTO',
'	vcod_cliente,',
'	vcod_persona,',
'	vruc',
'FROM',
'	CC_CLIENTES C',
'                        ,',
'	IDENT_PERSONAS P',
'WHERE',
'	C.COD_EMPRESA = :P_COD_EMPRESA',
'	AND C.COD_PERSONA = P.COD_PERSONA',
'	AND cod_ident IN (''CI'', ''RUC'')',
'	AND c.cod_cliente = :P121_CLIENTE',
'	AND rownum = ''1'';',
'',
':P121_COD_CLIENTE := vcod_cliente;',
'',
':P121_NCI := vruc;',
'',
':P121_PERSONA := vcod_persona;',
'',
'/**/',
'                    ',
'',
'    EXCEPTION',
'WHEN NO_DATA_FOUND THEN',
'BEGIN',
'	SELECT',
'	c.cod_cliente,',
'	c.cod_persona,',
'	p.numero',
'                        INTO',
'	vcod_cliente,',
'	vcod_persona,',
'	vruc',
'FROM',
'	CC_CLIENTES C',
'                            ,',
'	IDENT_PERSONAS P',
'WHERE',
'	C.COD_EMPRESA = :P_COD_EMPRESA',
'	AND C.COD_PERSONA = P.COD_PERSONA',
'	AND cod_ident IN (''CI'', ''RUC'')',
'	AND p.numero = :P121_CLIENTE;',
'',
':P121_COD_CLIENTE := vcod_cliente;',
'',
':P121_NCI := vruc;',
'',
':P121_PERSONA := vcod_persona ;',
'',
'EXCEPTION',
'WHEN OTHERS THEN ',
'               apex_error.add_error(p_message => ''Dato no encontrado'',',
'                   p_display_location => apex_error.c_on_error_page',
'               );',
'END;',
'WHEN OTHERS THEN',
'            apex_error.add_error(p_message => ''Dato no encontrado'',',
'                   p_display_location => apex_error.c_on_error_page',
'               );',
'END ;',
'ELSE',
'    :P121_COD_CLIENTE:=NULL;',
'    :P121_NCI:=NULL;',
'    :P121_PERSONA:=NULL;',
'END IF;'))
,p_attribute_02=>'P121_CLIENTE'
,p_attribute_03=>'P121_NCI,P121_COD_CLIENTE,P121_PERSONA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1103765406193237813)
,p_event_id=>wwv_flow_imp.id(26964702167675452)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'if :P121_CLIENTE is not null then ',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''PARAMETERS'');',
'',
'',
'',
'APEX_COLLECTION.ADD_MEMBER(p_collection_name=>''PARAMETERS'',',
'                             ',
'                                p_c001           =>''P_COD_CLIENTE'',',
'                                p_c002           =>:P121_CLIENTE,',
'      p_c003 => nvl(:P85_FECHA_INI,add_months(sysdate,-96)),',
'          p_c004 => nvl(:P85_FECHA_FIN,add_months(sysdate,12)),',
'                           p_c005 => ''V'',',
'                           p_c006 => ''S'',',
'                           p_c007 =>  Add_months(sysdate,-36),',
'          p_c008 => (add_months(sysdate,12))',
'                               );',
'COMMIT;',
'',
'end if;',
'END;',
''))
,p_attribute_02=>'P121_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26966162113675452)
,p_name=>'clear_page'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26966631536675453)
,p_event_id=>wwv_flow_imp.id(26966162113675452)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P121_CLIENTE,P121_COD_CLIENTE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26967127058675453)
,p_event_id=>wwv_flow_imp.id(26966162113675452)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'(SELECT LISTAGG(''<span class="fa fa-star" id="icon-star-chk" ></span>'', '' '') ',
'                        WITHIN GROUP (ORDER BY ROWNUM) ',
'                        FROM   DUAL ',
'                        CONNECT BY ROWNUM <=5)  ',
',''0.1''',
'into :P121_CALIFIC_STAR, :P121_SCORING',
'from dual',
';'))
,p_attribute_03=>'P121_CALIFICACION,P121_SCORING,P121_CALIFIC_STAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26967651483675453)
,p_event_id=>wwv_flow_imp.id(26966162113675452)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(497620952510447432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26968138642675453)
,p_event_id=>wwv_flow_imp.id(26966162113675452)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(253773148053851649)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26968687430675453)
,p_event_id=>wwv_flow_imp.id(26966162113675452)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(270104684041279236)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26969089896675453)
,p_name=>'DA_PAGE_126'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26945771195675437)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26969514511675454)
,p_event_id=>wwv_flow_imp.id(26969089896675453)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' apex.navigation.openInNewWindow(''f?p=122:126:&APP_SESSION.::NO::''); ',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1103765238333237811)
,p_name=>'da_historial'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1103765066422237809)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1103765342475237812)
,p_event_id=>wwv_flow_imp.id(1103765238333237811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var comprobante = document.getElementById("P121_CLIENTE").value; ',
'var params = []',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'var anio =''2024'';',
'var anio2 =''2025'';',
'var anioc1 =''2024'';',
'var anioc2 =''2025''; ',
'var cliente = apex.item("P121_CLIENTE").getValue();',
'var usuario = ''&APP_USER.'';',
'var vfacnom = "CCRHISTC";',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_COD_CLIENTE'', value: cliente})',
'params.push({ name: ''P_ANIO'', value: anio}) ',
'params.push({ name: ''P_ANIO_2'', value: anio2}) ',
'params.push({ name: ''P_ANIO_C1'', value: anioc1}) ',
'params.push({ name: ''P_ANIO_C2'', value: anioc2}) ',
'',
'createReportUrl(vfacnom, params)',
'',
'',
''))
);
wwv_flow_imp.component_end;
end;
/
