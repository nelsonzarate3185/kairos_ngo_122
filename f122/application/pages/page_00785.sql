prompt --application/pages/page_00785
begin
--   Manifest
--     PAGE: 00785
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
 p_id=>785
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'contac_center'
,p_alias=>'CONTAC-CENTER'
,p_step_title=>'contac_center'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function go(x){',
'   $("#P785_SCORING").fadeOut({',
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
'        $("#P785_SCORING").html(parseFloat(now).toFixed(1));',
'',
'    }, ',
'    queue:false,',
'    complete: function(now, fx){',
'      score = x ;',
'    }',
'  }); ',
'  ',
'  $("#P785_SCORING").fadeIn({',
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
' ///$(".s-g-row a").attr("target", "_blank");',
'',
'',
' /*function openModal() {',
unistr('    const url = apex.item(''P785_URL_805'').getValue(); // Obt\00E9n la URL generada'),
'    apex.navigation.dialog(',
unistr('        url, // La URL din\00E1mica generada en PL/SQL'),
'        {',
unistr('            title: "P\00E1gina Modal", // T\00EDtulo del modal'),
'            height: "600", // Altura del modal',
'            width: "800", // Ancho del modal',
'            modal: true // Modalidad bloqueante',
'        },',
unistr('        "auto" // Configuraci\00F3n para cierre autom\00E1tico'),
'    );',
'}*/',
''))
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
'',
'',
'//V.',
'',
'.no-close .ui-dialog-titlebar-close {',
'   display: none;',
'}',
'body .ui-dialog .ui-dialog-titlebar {',
'    background-color: #003a85;',
'    border-bottom: 1px solid rgba(0, 0, 0, 0.05);',
'    ',
'}',
'body .ui-dialog .ui-dialog-title {',
'    color: yellow;',
'    font-weight: bold !important;',
'}',
'',
'.t-Region-body>.container .t-Button{ ',
'        margin-top: 15px;',
'        display: flex;',
'        background:white;',
'        background-image: linear-gradient(180deg, #ffee00e4  0%, #fff890 100%);',
'        color:  darkblue;',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #6585af 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color:  yellow;',
'}',
'',
' #btndet{   ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: rgb(97, 91, 0); ',
'        ',
'}',
'',
'',
'',
'',
'//',
'',
'.no-close .ui-dialog-titlebar-close {',
'   display: none;',
'}',
'body .ui-dialog .ui-dialog-titlebar {',
'    background-color: #003a85;',
'    border-bottom: 1px solid rgba(0, 0, 0, 0.05);',
'    ',
'}',
'body .ui-dialog .ui-dialog-title {',
'    color: yellow;',
'    font-weight: bold !important;',
'}',
'',
'.t-Region-body>.container .t-Button{ ',
'        margin-top: 15px;',
'        display: flex;',
'        background:white;',
'        background-image: linear-gradient(180deg, #ffee00e4  0%, #fff890 100%);',
'        color:  darkblue;',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #6585af 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color:  yellow;',
'}',
'',
' #btndet{   ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: rgb(97, 91, 0); ',
'        ',
'}',
'',
'',
'',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;',
'    }',
'',
'#reg_parametros/*, #R12875002688605103,#P12_DETALLE_DISPLAY*/{',
'      background-color: #487ab8 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'',
'#P140_CAMPANIA, #P140_MOTIVO , #P140_CODIGO, #P140_CLIENTE, #P140_ESTADO, ',
'#P140_FECHA_INICIO, #P140_FECHA_FIN, #P140_NRO_REF, #P140_GARANTIA, #P140_TIPO {',
'    background: white;',
'    border-color: darkblue; ',
'    color: darkblue;',
'}      ',
'',
'.a-GV-header,.a-IRR-headerLink {',
'    background: #003a85 !important;',
'    background-color: #003a85 !important;',
'	color: #FFED00 !important; ',
'      }',
'',
'',
'',
'.a-GV-footer { display:none;}',
'',
'',
'    #reg_env, #reg_rep, #reg_dim, #reg_deriva{ ',
'                        background: #80a5bb2f!important;',
'                    } ',
'',
'.highlight {',
'    background-color: rgb(172, 191, 227);   /* Fondo azul */',
'    color: rgb(6, 5, 5);             /* Texto blanco para contraste (opcional) */',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20250214160112'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(375412838781491649)
,p_plug_name=>'Historicos contactos'
,p_region_name=>'reg_reporte'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_CASO,',
'       fecha_alta FECHA,',
'       estado_contacto ESTADO,',
'       OBSERVACION,',
'       PROXIMO_CONTACTO,',
'       null CAMPANIA,',
'       null MOTIVO,',
'       COD_USUARIO,',
'       COD_CLIENTE,',
'       COD_CAMPANIA,',
'       COD_MOTIVO,',
'       null CANT,',
'       TIPO_COMP_REF,',
'       cx_tipo_contacto,',
'       NRO_COMP_REF,',
'       NRO_GARANTIA,',
'       canal,',
'       voz_cliente,',
'       area_derivacion,',
'       NRO_QUALTRICS,',
'       null Reabrir,      ',
'       CASE ',
'    WHEN nvl(c.ind_urgente,''N'') = ''S'' THEN ',
'        ''<span class="fa fa-exclamation-triangle" style="color: red;" title="Urgencia"></span>''',
'    ELSE NULL',
'END  Urgente',
'      -- ind_urgente Urgente',
'  from CRM_CASOS C',
'  where cod_empresa = :P_COD_EMPRESA',
'  and cod_cliente = :P785_CLIENTE',
'  order by nvl(c.ind_urgente,''N'') desc,to_date(fecha_alta) desc,c.estado_contacto'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Historicos contactos'
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
 p_id=>wwv_flow_imp.id(423380024341682503)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'VGAMARRA'
,p_internal_uid=>423380024341682503
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423380120044682504)
,p_db_column_name=>'ID_CASO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Caso'
,p_column_type=>'NUMBER'
,p_static_id=>'ID_CASO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444781447207916312)
,p_db_column_name=>'FECHA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444781516418916313)
,p_db_column_name=>'ESTADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(982026788644398085)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444781605447916314)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444781777648916315)
,p_db_column_name=>'PROXIMO_CONTACTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Proximo Contacto'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444781813749916316)
,p_db_column_name=>'CAMPANIA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Campania'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444781933441916317)
,p_db_column_name=>'MOTIVO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444782005229916318)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444782179919916319)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444782226166916320)
,p_db_column_name=>'COD_CAMPANIA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Campania'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444782385705916321)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Motivo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444782411829916322)
,p_db_column_name=>'CANT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cant'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444782630080916324)
,p_db_column_name=>'NRO_COMP_REF'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Nro Comp Ref'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(981889126818507962)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444782773895916325)
,p_db_column_name=>'NRO_GARANTIA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Nro Garantia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444782840624916326)
,p_db_column_name=>'CANAL'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Canal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(981880448268482037)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444782945142916327)
,p_db_column_name=>'VOZ_CLIENTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Voz Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(981882532861492029)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444783083093916328)
,p_db_column_name=>'AREA_DERIVACION'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Area Derivacion'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(981877954082470160)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444783126300916329)
,p_db_column_name=>'NRO_QUALTRICS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Nro Qualtrics'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444783200778916330)
,p_db_column_name=>'REABRIR'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Reabrir'
,p_column_link=>'f?p=&APP_ID.:804:&SESSION.::&DEBUG.::P804_CLIENTE,P804_CANAL,P804_VOZ_CLIENTE,P804_TIPO_REF,P804_NRO_REF,P804_AREA_DERIVAVION,P804_NRO_QUALTRICS,P804_P_ID_CASO:#COD_CLIENTE#,#CANAL#,#VOZ_CLIENTE#,#CX_TIPO_CONTACTO#,#NRO_COMP_REF#,#AREA_DERIVACION#,#N'
||'RO_QUALTRICS#,#ID_CASO#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444783363793916331)
,p_db_column_name=>'URGENTE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Urgente'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_format_mask=>'PCT_GRAPH:::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(409425292624144416)
,p_db_column_name=>'TIPO_COMP_REF'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Tipo Comp Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444783585046916333)
,p_db_column_name=>'CX_TIPO_CONTACTO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Tipo Contacto'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(981889126818507962)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(423954544179463861)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4239546'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CASO:FECHA:ESTADO:CANAL:VOZ_CLIENTE:CX_TIPO_CONTACTO:OBSERVACION:AREA_DERIVACION:NRO_QUALTRICS:REABRIR:COD_USUARIO:URGENTE:'
,p_sort_column_1=>'URGENTE'
,p_sort_direction_1=>'DESC NULLS LAST'
,p_sort_column_2=>'FECHA'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(420055769780119636)
,p_plug_name=>'Derivaciones'
,p_region_name=>'reg_deriva'
,p_parent_plug_id=>wwv_flow_imp.id(375412838781491649)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.ID_CASO,',
'       c.ID_CONTACTO,',
'       C.COD_EMPRESA,',
'       C.ID_DERIVACION,',
'       C.ID_DERIVACION_PADRE,',
'       C.AREA_DERIVADA COD_AREA_DERIV,',
'       null DPTO_DERIVADO,',
'       C.OPERADOR_REC,',
'       C.FECHA_REC,',
'       C.OBS_REC,',
'       C.OPER_DERIV,',
'       C.FECHA_DERIV,',
'       C.OBS_DERIVADA,',
'       c.oper_deriv COLABORADOR_DERIVADO,',
'       cc.canal, ',
'       cc.voz_cliente,',
'       cc.area_derivacion,',
'       cc.fecha_alta,',
'       cc.tipo_comp_ref tipo_referencia,',
'       c.estado_casos,',
'       C.OPERADOR_FIN,',
'       C.FECHA_FIN,',
'       C.OBS_FIN,',
'       (select     CASE ',
'        WHEN (inv.Sumar_horas_Habiles(pfecha_inicio => cx.fecha_rec,',
'                                     pfecha_fin => NVL(cx.fecha_deriv, SYSDATE)) )  <= cc.valor_decimal THEN ''En Plazo''',
'                ELSE ''Vencido''',
'            END AS estado ',
'        FROM CRM_DERIVACIONES_CONTACTO cx,',
'             CX_REFERENCIAS cc',
'           where cc.cod_referencia = c.area_derivada',
'           AND CX.COD_EMPRESA = :P_COD_EMPRESA',
'           AND CC.COD_TIPO_REFERENCIA = ''12''',
'           AND CC.COD_EMPRESA = CX.COD_EMPRESA',
'           AND CC.COD_REFERENCIA = CX.AREA_DERIVADA',
'           and cx.id_caso = c.id_caso',
'           and cx.estado_casos = ''G'') SLA,',
'            CASE ',
'    	WHEN EXISTS (SELECT 1 ',
'                 FROM CC_DERIVACIONES_FILES f ',
'                 WHERE f.id_caso = c.id_caso ',
'                   AND f.id_derivaciones = c.id_derivacion) ',
'    	THEN',
'        ''<a href="'' || APEX_UTIL.PREPARE_URL(',
'            ''f?p='' || :APP_ID || '':821:'' || :APP_SESSION || ''::NO::P821_ID_CASO,P821_ID_DERIVACION:'' ',
'            || c.ID_CASO || '','' || c.ID_DERIVACION, ''SESSION'') || ',
'            ''" > <span class="fa fa-paperclip" style="color:blue;"></span></a>''',
'    ELSE NULL',
'    END AS VER_ADJUNTO ',
'  from CRM_DERIVACIONES_CONTACTO C, CRM_CASOS cc',
' WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'   AND C.ID_CASO     = :P785_ID_CASO',
'   and c.id_caso = cc.id_caso',
'   ORDER BY  ID_DERIVACION'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P785_ID_CASO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Derivaciones'
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
 p_id=>wwv_flow_imp.id(423345881493455428)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'VGAMARRA'
,p_internal_uid=>423345881493455428
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423346057059455430)
,p_db_column_name=>'ID_CASO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id Caso'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423346189018455431)
,p_db_column_name=>'ID_CONTACTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Id Contacto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423346231224455432)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423346323303455433)
,p_db_column_name=>'ID_DERIVACION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Id Derivacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423346441455455434)
,p_db_column_name=>'ID_DERIVACION_PADRE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Id Derivacion Padre'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423346569992455435)
,p_db_column_name=>'COD_AREA_DERIV'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Area Deriv'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423346741789455437)
,p_db_column_name=>'DPTO_DERIVADO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Dpto Derivado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423346846197455438)
,p_db_column_name=>'OPERADOR_REC'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Operador Rec'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423346946075455439)
,p_db_column_name=>'FECHA_REC'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fecha Rec'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423347047981455440)
,p_db_column_name=>'OBS_REC'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Obs Rec'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423347146039455441)
,p_db_column_name=>'OPER_DERIV'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Oper Deriv'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423347228300455442)
,p_db_column_name=>'FECHA_DERIV'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Fecha Deriv'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423347325302455443)
,p_db_column_name=>'OBS_DERIVADA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Obs Derivada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423379943955682502)
,p_db_column_name=>'COLABORADOR_DERIVADO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Colaborador Derivado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423382462907682527)
,p_db_column_name=>'CANAL'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Canal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(981880448268482037)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423382513562682528)
,p_db_column_name=>'VOZ_CLIENTE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Voz Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(981882532861492029)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423382683775682529)
,p_db_column_name=>'AREA_DERIVACION'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Area Derivacion'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(981877954082470160)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423382768085682530)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423382844111682531)
,p_db_column_name=>'TIPO_REFERENCIA'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Tipo Referencia'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(981889126818507962)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432330732402966513)
,p_db_column_name=>'ESTADO_CASOS'
,p_display_order=>300
,p_column_identifier=>'AE'
,p_column_label=>'Estado Casos'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(982026788644398085)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432330800672966514)
,p_db_column_name=>'SLA'
,p_display_order=>310
,p_column_identifier=>'AF'
,p_column_label=>'SLA'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432333868900966544)
,p_db_column_name=>'OPERADOR_FIN'
,p_display_order=>320
,p_column_identifier=>'AG'
,p_column_label=>'Operador Finalizado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432333956771966545)
,p_db_column_name=>'FECHA_FIN'
,p_display_order=>330
,p_column_identifier=>'AH'
,p_column_label=>'Fecha Finalizada'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432334070602966546)
,p_db_column_name=>'OBS_FIN'
,p_display_order=>340
,p_column_identifier=>'AI'
,p_column_label=>'Obs Finalizada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(627201081334991333)
,p_db_column_name=>'VER_ADJUNTO'
,p_display_order=>350
,p_column_identifier=>'AJ'
,p_column_label=>'Ver Adjunto'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(423412413604683464)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4234125'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CASO:ID_DERIVACION:FECHA_ALTA:VOZ_CLIENTE:TIPO_REFERENCIA:AREA_DERIVACION:FECHA_DERIV:OBS_DERIVADA:OPER_DERIV:FECHA_REC:OPERADOR_REC:OBS_REC:ESTADO_CASOS:FECHA_FIN:OBS_FIN:OPERADOR_FIN:SLA:VER_ADJUNTO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(432331611155966522)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(432331827191966524)
,p_plug_name=>'Contactos Pendientes'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.ROWID,',
'       c.ID_CASO,',
'       c.fecha_rec,',
'       c.estado_casos,',
'       c.OBS_REC,',
'       C.OPERADOR_REC,',
'       c.COD_CLIENTE,',
'       c.canal,',
'       c.voz_cliente,',
'       c.area_derivada,',
'       c.oper_deriv,',
'       c.fecha_deriv,',
'       c.obs_derivada,',
'       C.OPERADOR_FIN,',
'       C.FECHA_FIN,',
'       C.OBS_FIN,',
'           CASE ',
'    WHEN nvl(c.ind_urgente,''N'') = ''S'' THEN ',
'        ''<span class="fa fa-exclamation-triangle" style="color: red;" title="Urgencia"></span>''',
'    ELSE NULL',
'    END urgente,',
'       (select     CASE ',
'        WHEN (inv.Sumar_horas_Habiles(pfecha_inicio => cx.fecha_deriv,',
'                                     pfecha_fin => NVL(cx.fecha_rec, SYSDATE)) )  <= cc.valor_decimal THEN ''En Plazo''',
'                ELSE ''Vencido''',
'            END AS estado ',
'        FROM CRM_DERIVACIONES_CONTACTO cx,',
'             CX_REFERENCIAS cc',
'           where cc.cod_referencia = c.area_derivada',
'           AND CX.COD_EMPRESA = :P_COD_EMPRESA',
'           AND CC.COD_TIPO_REFERENCIA = ''12''',
'           AND CC.COD_EMPRESA = CX.COD_EMPRESA',
'           AND CC.COD_REFERENCIA = CX.AREA_DERIVADA',
'           and cx.id_caso = c.id_caso',
'           and cx.id_derivacion = c.id_derivacion',
'           and cx.estado_casos IN (''G'',''R'')) SLA,',
'          c.id_derivacion,',
'           CASE ',
'    	WHEN EXISTS (SELECT 1 ',
'                 FROM CC_DERIVACIONES_FILES f ',
'                 WHERE f.id_caso = c.id_caso ',
'                   AND f.id_derivaciones = c.id_derivacion) ',
'    	THEN',
'        ''<a href="'' || APEX_UTIL.PREPARE_URL(',
'            ''f?p='' || :APP_ID || '':821:'' || :APP_SESSION || ''::NO::P821_ID_CASO,P821_ID_DERIVACION:'' ',
'            || c.ID_CASO || '','' || c.ID_DERIVACION, ''SESSION'') || ',
'            ''" > <span class="fa fa-paperclip" style="color:blue;"></span></a>''',
'    ELSE NULL',
'    END AS VER_ADJUNTO ',
'  from  CRM_DERIVACIONES_CONTACTO C',
'  where (c.cod_cliente = :P785_CLIENTE or :P785_CLIENTE is null)',
'    and c.cod_empresa = :P_COD_EMPRESA',
'    and c.estado_casos IN (''G'',''R'')',
'   /* and (c.estado_casos = :P794_ESTADO or :P794_ESTADO is null)',
'    and (c.area_derivada = :P794_AREA_DERIVADA or :P794_AREA_DERIVADA is null)*/',
'    and trunc(c.fecha_rec) between to_date(''01/08/2024'',''dd/mm/yyyy'') ',
'                    and to_date(''31/12/2099'',''dd/mm/yyyy'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P785_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Contactos Pendientes'
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
 p_id=>wwv_flow_imp.id(432331901077966525)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'VGAMARRA'
,p_internal_uid=>432331901077966525
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432332015015966526)
,p_db_column_name=>'ROWID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:803:&SESSION.::&DEBUG.::P803_ID_DERIVACION:#ID_DERIVACION#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
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
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432332133177966527)
,p_db_column_name=>'ID_CASO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id Caso'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432332661735966532)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(60039285927378412)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432332727026966533)
,p_db_column_name=>'CANAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Canal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(981880448268482037)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432332868610966534)
,p_db_column_name=>'VOZ_CLIENTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Voz Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(981882532861492029)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432332995718966535)
,p_db_column_name=>'AREA_DERIVADA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Area Derivada'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(981877954082470160)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432333034181966536)
,p_db_column_name=>'OPER_DERIV'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Oper Deriv'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432333104817966537)
,p_db_column_name=>'FECHA_DERIV'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fecha Deriv'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432333241731966538)
,p_db_column_name=>'OBS_DERIVADA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Obs Derivada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432333308589966539)
,p_db_column_name=>'SLA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Sla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432334193921966547)
,p_db_column_name=>'OPERADOR_FIN'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Operador Finalizado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432334257110966548)
,p_db_column_name=>'FECHA_FIN'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Fecha Finalizada'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432334353360966549)
,p_db_column_name=>'OBS_FIN'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Obs Finalizada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(433037470801904214)
,p_db_column_name=>'FECHA_REC'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Fecha Rec'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(433037598995904215)
,p_db_column_name=>'ESTADO_CASOS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Estado Casos'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(982026788644398085)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(433037669107904216)
,p_db_column_name=>'OPERADOR_REC'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Operador Rec'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(433037702725904217)
,p_db_column_name=>'OBS_REC'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Obs Rec'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(444784362641916341)
,p_db_column_name=>'URGENTE'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'Urgente'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_format_mask=>'PCT_GRAPH:::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255220714430587318)
,p_db_column_name=>'ID_DERIVACION'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'Id Derivacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(627200934151991332)
,p_db_column_name=>'VER_ADJUNTO'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'Ver Adjunto'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(432984429880542506)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4329845'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:ID_DERIVACION:ID_CASO:COD_CLIENTE:FECHA_DERIV:CANAL:VOZ_CLIENTE:AREA_DERIVADA:OPER_DERIV:OBS_DERIVADA:FECHA_REC:OPERADOR_REC:OBS_REC:FECHA_FIN:OPERADOR_FIN:OBS_FIN:ESTADO_CASOS:SLA:URGENTE:VER_ADJUNTO:'
,p_sort_column_1=>'URGENTE'
,p_sort_direction_1=>'ASC NULLS LAST'
,p_sort_column_2=>'FECHA_DERIV'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1053951762686094342)
,p_report_id=>wwv_flow_imp.id(432984429880542506)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SLA'
,p_operator=>'='
,p_expr=>'En Plazo'
,p_condition_sql=>' (case when ("SLA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''En Plazo''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#59fc6a'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(669048971785367442)
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
 p_id=>wwv_flow_imp.id(685381302909795038)
,p_plug_name=>'Datos del Cliente'
,p_region_name=>'r_datos_cliente'
,p_parent_plug_id=>wwv_flow_imp.id(669048971785367442)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(710853459439418312)
,p_plug_name=>'Cards_Region'
,p_region_name=>'reg_gral_tarjetas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(375410920454491630)
,p_name=>'Card'
,p_parent_plug_id=>wwv_flow_imp.id(710853459439418312)
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 2 as sort_order',
unistr(',''Facturaci\00F3n/Ncr'' title'),
',null data --''Ent.: ''||entrantes||''    Sal.: ''||salientes data',
',''fa-cart-arrow-down fa-fw fa-3x'' as icon_class',
',''purple'' as class1',
',''purple'' as class2',
',APEX_UTIL.PREPARE_URL(p_url => ''f?p=''||:APP_ID||'':193:''||:APP_SESSION ||''::NO::P193_CLIENTE_S:''||:P785_COD_CLIENTE,p_checksum_type => ''SESSION'')   as LINK',
'--,''f?p=''||:APP_ID||'':193:''||:APP_SESSION ||''::NO::P193_CLIENTE_S:''||:P785_COD_CLIENTE  as LINK',
'---,''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':122:''||:APP_SESSION ||''::NO::P122_COD_CLIENTE:''||:P785_COD_CLIENTE ||'''''');''  as LINK',
'from (SELECT  sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   1',
'              else 0 end) entrantes,',
'            sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   0',
'              else 1 end) salientes',
'    FROM v_llamadas_entrantes',
'    WHERE COD_CLIENTE=:P785_COD_CLIENTE',
'    AND  Motivo_principal<>''VISITAS CAST''',
'    and trunc(FEC_LLAMADA,''MM'')=TRUNC(SYSDATE ,''MM''))',
'UNION ALL',
'select 3 as sort_order',
',''Extracto de Cuenta'' title',
',null data --''Ent.: ''||entrantes||''    Sal.: ''||salientes data',
',''fa fa-file-text fa-fw fa-3x'' as icon_class',
',''purple'' as class1',
',''purple'' as class2',
',''#''    as LINK',
'---,''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':122:''||:APP_SESSION ||''::NO::P122_COD_CLIENTE:''||:P785_COD_CLIENTE ||'''''');''  as LINK',
'from (SELECT  sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   1',
'              else 0 end) entrantes,',
'            sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   0',
'              else 1 end) salientes',
'    FROM v_llamadas_entrantes',
'    WHERE COD_CLIENTE=:P785_COD_CLIENTE',
'    AND  Motivo_principal<>''VISITAS CAST''',
'    and trunc(FEC_LLAMADA,''MM'')=TRUNC(SYSDATE ,''MM''))',
'',
'UNION ALL',
'select 4 as sort_order',
',''Catalogo'' title',
',null data --''Ent.: ''||entrantes||''    Sal.: ''||salientes data',
',''fa fa-file fa-fw fa-3x'' as icon_class',
',''orange'' as class1',
',''orange'' as class2',
',APEX_UTIL.PREPARE_URL(p_url => ''f?p=''||:APP_ID||'':126:''||:APP_SESSION ||''::NO::P133_COD_CLIENTE:''||:P785_COD_CLIENTE,p_checksum_type => ''SESSION'')   as LINK',
'---,''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':122:''||:APP_SESSION ||''::NO::P122_COD_CLIENTE:''||:P785_COD_CLIENTE ||'''''');''  as LINK',
'from (SELECT  sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   1',
'              else 0 end) entrantes,',
'            sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   0',
'              else 1 end) salientes',
'    FROM v_llamadas_entrantes',
'    WHERE COD_CLIENTE=:P785_COD_CLIENTE',
'    AND  Motivo_principal<>''VISITAS CAST''',
'    and trunc(FEC_LLAMADA,''MM'')=TRUNC(SYSDATE ,''MM''))',
'UNION ALL',
'select 5 as sort_order',
',''Logistica'' title',
'/*',
',''Cambio: ''||trim(to_char(sum(decode(operacion,''NCR'',1,0)), ''999G999G999G999G9990''))',
'       ||'' / Not.Cred:''||trim(to_char(sum(decode(operacion,''CMB'',1,0)), ''999G999G999G999G9990'')) */ ',
'       ',
',null   data',
',''fa fa-truck fa-fw fa-3x'' as icon_class',
',''orange'' as class1',
',''orange'' as class2',
',''f?p=''||:APP_ID||'':134:''||:APP_SESSION ||''::NO::P134_COD_CLIENTE:''||:P785_COD_CLIENTE as LINK',
'--,''f?p=''||:APP_ID||'':161:''||:APP_SESSION ||''::NO::P161_COD_CLIENTE:''||:P785_COD_CLIENTE  as LINK',
'--,''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':134:''||:APP_SESSION ||''::NO::P134_COD_CLIENTE:''||:P785_CLIENTE||'''''');'' as LINK',
'--,''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':134:''||:APP_SESSION ||''::NO::P134_COD_CLIENTE:''||:P785_COD_CLIENTE||'''''');'' AS LINK',
'--,''apex_util.prepare_url(''''f?p='' || :APP_ID || '':134:'' || :APP_SESSION || ''::NO::P134_COD_CLIENTE:'' || :P785_COD_CLIENTE || '''''', ''''N'''')'' AS LINK',
'--,''javascript:window.open('''''' || APEX_UTIL.PREPARE_URL(''f?p='' || :APP_ID || '':134:'' || :APP_SESSION || ''::NO::P134_COD_CLIENTE:'' || :P785_COD_CLIENTE) || '''''', ''''_blank'''');'' AS LINK',
'',
'--,''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':134:''||:APP_SESSION ||''::NO::P134_COD_CLIENTE:''||:P785_COD_CLIENTE ||'''''');'' as LINK',
'/*from ca_conformidad',
'where cod_cliente=:P785_COD_CLIENTE',
'and estado in (''CREADO'',''PROCESADO'',''AUTORIZADO'')',
'and fec_solicitud>trunc(sysdate-180,''MM'')*/',
'from (SELECT  sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   1',
'              else 0 end) entrantes,',
'            sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   0',
'              else 1 end) salientes',
'    FROM v_llamadas_entrantes',
'    WHERE COD_CLIENTE=:P785_COD_CLIENTE',
'    AND  Motivo_principal<>''VISITAS CAST''',
'    and trunc(FEC_LLAMADA,''MM'')=TRUNC(SYSDATE ,''MM''))'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P785_COD_CLIENTE'
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
 p_id=>wwv_flow_imp.id(375411068891491631)
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
 p_id=>wwv_flow_imp.id(375411129896491632)
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
 p_id=>wwv_flow_imp.id(375411234572491633)
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
 p_id=>wwv_flow_imp.id(375411303790491634)
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
 p_id=>wwv_flow_imp.id(375411467418491635)
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
 p_id=>wwv_flow_imp.id(375411579376491636)
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
 p_id=>wwv_flow_imp.id(375411679398491637)
,p_query_column_id=>7
,p_column_alias=>'LINK'
,p_column_display_sequence=>70
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(627200106533991324)
,p_name=>'Card2'
,p_parent_plug_id=>wwv_flow_imp.id(710853459439418312)
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 2 as sort_order',
',''Visita de Cobranzas'' title',
',null data --''Ent.: ''||entrantes||''    Sal.: ''||salientes data',
',''fa-usd fa-fw fa-3x'' as icon_class',
',''purple'' as class1',
',''purple'' as class2',
',APEX_UTIL.PREPARE_URL(',
'    p_url => ''f?p='' || :APP_ID || '':46:'' || :APP_SESSION || ''::NO::'',',
'    p_checksum_type => ''SESSION''',
') AS LINK',
'--,''f?p=''||:APP_ID||'':838:''||:APP_SESSION ||''::NO::P838_CLIENTE_S:''||:P785_COD_CLIENTE  as LINK',
'---,''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':122:''||:APP_SESSION ||''::NO::P122_COD_CLIENTE:''||:P785_COD_CLIENTE ||'''''');''  as LINK',
'from (SELECT  sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   1',
'              else 0 end) entrantes,',
'            sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   0',
'              else 1 end) salientes',
'    FROM v_llamadas_entrantes',
'    WHERE COD_CLIENTE=:P785_COD_CLIENTE',
'    AND  Motivo_principal<>''VISITAS CAST''',
'    and trunc(FEC_LLAMADA,''MM'')=TRUNC(SYSDATE ,''MM''))'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P785_COD_CLIENTE'
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
 p_id=>wwv_flow_imp.id(627200208136991325)
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
 p_id=>wwv_flow_imp.id(627200392857991326)
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
 p_id=>wwv_flow_imp.id(627200498066991327)
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
 p_id=>wwv_flow_imp.id(627200532119991328)
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
 p_id=>wwv_flow_imp.id(627200622029991329)
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
 p_id=>wwv_flow_imp.id(627200771647991330)
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
 p_id=>wwv_flow_imp.id(627200872167991331)
,p_query_column_id=>7
,p_column_alias=>'LINK'
,p_column_display_sequence=>70
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(669050819714367461)
,p_plug_name=>'Resumen'
,p_region_name=>'resumen'
,p_parent_plug_id=>wwv_flow_imp.id(710853459439418312)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH HFACT',
'     AS (select ''<p ID="RES-TEXT"> Ultima Compra: ''||to_char(vc.FEC_ULTIMA_COMPRA,''dd/mm/yyyy'') || ''&nbsp;&nbsp;&nbsp;&nbsp;  Pendiente a Facturar: ''||to_char(vc.PEDIDOS_PENDIENTES,''9G999G999G999G990'')||''</p>''  vta,       ',
'       ''<p ID="RES-TEXT">OTs:''||to_char(vc.VENTA_mes,''9G999G999G999G990'') ||''</p><p ID="RES-TEXT"> Venta Anual: ''||to_char(vc.VENTA_anio,''9G999G999G999G990'')||''</p>'' value',
'        from v_cliente_apex vc',
'        where cod_cliente=:P785_COD_CLIENTE), ',
'',
'     RCall  ',
'     AS (  SELECT to_char(nvl(/*max(rl.FEC_LLAMADA) */  max(to_date(to_char(rl.FEC_LLAMADA,''DD/MM/YYYY'')|| '' ''||rl.hora,''DD/MM/YYYY HH24:MI:SS''))  ',
'                   ,trunc(sysdate)),''DD/MM/YYYY HH24:MI:SS'') Ultimallamada,',
'             ''<p ID="RES-TEXT"> Total de Llamadas Recibidas: ''||nvl(to_char(count(*)),'''') ||''</p>''   Cant_llamadas       ',
'            FROM v_llamadas_entrantes RL                                            ',
'            WHERE :P785_COD_CLIENTE  is not null',
'            and   RL.cod_cliente=:P785_COD_CLIENTE  ',
'           ---- AND  rl.Motivo_principal=''LLAMADAS_ENTRANTES''      ',
'     ), ',
'',
'    LOGIST AS(',
'                    SELECT ''<p ID="RES-TEXT">Pedidos a Fact.: ''||nvl((select trim(to_char(sum(c.tot_comprobante),''999G999G999G990''))',
'                                                                        from vt_pedidos_cabecera c',
'                                                                        where c.cod_empresa=:P_COD_EMPRESA',
'                                                                        and :P785_COD_CLIENTE is not null',
'                                                                        and   c.cod_cliente=:P785_COD_CLIENTE                    ',
'                                                                        and   c.estado=''P''),0)||''</p>''PEDPEND,',
'                        ''Ultima Facturacion: ''||nvl(( select to_char(max(f.fec_comprobante),''DD/MM/YYYY'')||'' por Gs. ''||trim(to_char(sum(f.importe),''999G999G999G990''))  ',
'                    from v_ventas_clientes f',
'                    where  f.cod_cliente=:P785_COD_CLIENTE',
'                    and  :P785_COD_CLIENTE is not null',
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
'                    and    c.cod_cliente=:P785_COD_CLIENTE',
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
'                and c.cod_cliente=:P785_COD_CLIENTE',
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
'                        where cod_cliente=:P785_COD_CLIENTE',
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
'                and   :P785_COD_CLIENTE is not null',
'                and   ot.cod_cliente=:P785_COD_CLIENTE',
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
'                where   :P785_COD_CLIENTE is null',
'                */',
'                ),',
'----------------------------------------------------------------------------------------------------------------',
'',
'    DAT6 AS (select  TO_CHAR(count(*)) VALUE',
'                from INV.Vt_Ordenes_Trabajo',
'                where cod_cliente=:P785_COD_CLIENTE',
'                and cod_empresa= :P_COD_EMPRESA',
'                AND  NVL(IND_ENTREGA, ''N'')= ''S'' ',
'                AND  NVL(IND_RETIRADO, ''N'')= ''S'' ',
'                AND  NVL(NCR, ''N'')<> ''S'' ',
'                AND  NVL(cambio, ''N'') <> ''S'' ',
'                AND  NVL(IND_SNC, ''N'') <> ''S''       ',
'                ) ,',
'    DAT7 AS (select  TO_CHAR(count(*)) VALUE',
'                from INV.Vt_Ordenes_Trabajo',
'                where cod_cliente=:P785_COD_CLIENTE',
'                and cod_empresa= :P_COD_EMPRESA',
'                AND  NVL(IND_ENTREGA, ''N'')<> ''S'' ',
'                AND  NVL(IND_RETIRADO, ''N'')<> ''S'' ',
'                AND  NVL(NCR, ''N'')<> ''S'' ',
'                AND  NVL(cambio, ''N'') <> ''S'' ',
'                AND  NVL(IND_SNC, ''N'') <> ''S''  ',
'    ),',
'    DAT8 AS (select  TO_CHAR(count(*)) VALUE',
'                from INV.Vt_Ordenes_Trabajo',
'                where cod_cliente=:P785_COD_CLIENTE',
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
'                                            WHERE RL.cod_cliente=:P785_COD_CLIENTE',
'                                            AND  to_char(rl.FEC_LLAMADA,''DD/MM/YYYY'')|| '' ''||rl.hora=Ultimallamada',
'                                            --and   rl.FEC_LLAMADA=TO_DATE(Ultimallamada ,''DD/MM/YYYY'')',
'                                            --AND  rl.Motivo_principal=''LLAMADAS_ENTRANTES'' ',
'                                            and rownum=''1''   ',
'                                            )                       AS CARD_VALUE,  ',
'       (SELECT ''Agente: ''||rl.agente||'' Motivo: ''||rl.Motivo',
'                                            FROM v_llamadas_entrantes RL',
'                                            WHERE RL.cod_cliente=:P785_COD_CLIENTE',
'                                             AND (to_char(rl.FEC_LLAMADA,''DD/MM/YYYY'')|| '' ''||rl.hora)=Ultimallamada',
'                                           ',
'                                           -- and   rl.FEC_LLAMADA=TO_DATE(Ultimallamada ,''DD/MM/YYYY'')',
'                                            ---AND  rl.Motivo_principal=''LLAMADAS_ENTRANTES'' ',
'                                            and rownum=''1''   ',
'                                            ) AS CARD_FOOTER, ',
'       ---''f?p=''||:APP_ID||'':122:''||:APP_SESSION ||''::NO::P122_COD_CLIENTE:''||:P785_COD_CLIENTE AS CARD_LINK, ',
'      --- ''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':133:''||:APP_SESSION ||''::NO::P133_COD_CLIENTE:''||:P785_COD_CLIENTE||'''''');'' AS CARD_LINK, ',
'      ''javascript:apex.navigation.openInNewWindow(''''''||APEX_UTIL.PREPARE_URL(p_url => ''f?p=''||:APP_ID||'':133:''||:APP_SESSION ||''::NO::P133_COD_CLIENTE:''||:P785_COD_CLIENTE,p_checksum_type => ''SESSION'')||'''''');''  AS CARD_LINK, ',
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
'      --  APEX_UTIL.PREPARE_URL(p_url => ''f?p=''||:APP_ID||'':94:''||:APP_SESSION ||''::NO::P94_PARAM_CLIENTE:''||:P785_COD_CLIENTE,p_checksum_type => ''SESSION'')   AS CARD_LINK, ',
'     ''javascript:apex.navigation.openInNewWindow(''''''||APEX_UTIL.PREPARE_URL(p_url => ''f?p=''||:APP_ID||'':142:''||:APP_SESSION ||''::NO::P142_PARAM_CLIENTE,P142_FECHA_INI:''|| :P785_COD_CLIENTE ||'',01/07/2022'',p_checksum_type => ''SESSION'') ||'''''');'' AS CAR'
||'D_LINK, ',
'       ---''f?p=''||:APP_ID||'':94:''||:APP_SESSION ||''::NO::P94_PARAM_CLIENTE:''||:P785_COD_CLIENTE AS CARD_LINK, ',
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
'        ---''f?p=''||:APP_ID||'':125:''||:APP_SESSION ||''::NO::P125_COD_CLIENTE:''||:P785_COD_CLIENTE AS CARD_LINK, ',
'       ''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':134:''||:APP_SESSION ||''::NO::P134_COD_CLIENTE:''||:P785_COD_CLIENTE||'''''');'' AS CARD_LINK, ',
'       NULL AS CARD_CHART_DATA, ',
'       NULL AS CARD_CHART_CONFIG ',
'FROM   LOGIST '))
,p_plug_source_type=>'PLUGIN_APEX.MATERIAL.CARDS'
,p_ajax_items_to_submit=>'P785_COD_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(912898624170963244)
,p_name=>'Card1'
,p_region_name=>'car1'
,p_parent_plug_id=>wwv_flow_imp.id(710853459439418312)
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*select 2 as sort_order',
', ''OTs'' title',
', trim(to_char(COUNT(nro_comprobante), ''999G999G999G999G999''))   data',
',''fa-wrench fa-fw fa-3x'' as icon_class',
',''light-green'' as class1',
',''green'' as class2',
',''f?p=''||:APP_ID||'':729:''||:APP_SESSION ||''::NO::P729_PARAM_CLIENTE:''||:P785_COD_CLIENTE   as LINK',
'--v''javascript:apex.navigation.openInNewWindow(''''''||APEX_UTIL.PREPARE_URL(p_url => ''f?p=''||:APP_ID||'':142:''||:APP_SESSION ||''::NO::P142_PARAM_CLIENTE,P142_FECHA_INI:''|| :P785_COD_CLIENTE ||'',01/07/2022'',p_checksum_type => ''SESSION'') ||'''''');'' AS CARD_'
||'LINK, ',
'---,''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':123:''||:APP_SESSION ||''::NO::P123_COD_CLIENTE:''||:P785_COD_CLIENTE ||'''''');''  as LINK',
' from vt_ordenes_trabajo vc',
'    where vc.cod_empresa = :P_COD_EMPRESA',
'    and vc.cod_cliente = :P785_CLIENTE',
'   -- AND trunc(VC.FEC_COMPROBANTE, ''MM'') = trunc(SYSDATE, ''MM'')',
'    and nvl(vc.anulado, ''N'') <> ''Sdn''*/',
'',
'select 2 as sort_order',
',''OTs'' title',
',null data --''Ent.: ''||entrantes||''    Sal.: ''||salientes data',
',''fa-wrench fa-fw fa-3x'' as icon_class',
',''light-green'' as class1',
',''green'' as class2',
',''f?p=''||:APP_ID||'':729:''||:APP_SESSION ||''::NO::P729_PARAM_CLIENTE:''||:P785_COD_CLIENTE  as LINK',
'--,''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':122:''||:APP_SESSION ||''::NO::P122_COD_CLIENTE:''||:P785_COD_CLIENTE ||'''''');''  as LINK',
'from (SELECT  sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   1',
'              else 0 end) entrantes,',
'            sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   0',
'              else 1 end) salientes',
'    FROM v_llamadas_entrantes',
'    WHERE COD_CLIENTE=:P785_COD_CLIENTE',
'    AND  Motivo_principal<>''VISITAS CAST''',
'    and trunc(FEC_LLAMADA,''MM'')=TRUNC(SYSDATE ,''MM''))',
'',
'',
'',
'',
'UNION ALL',
'select 3 as sort_order',
',''STAs'' title',
'/*',
',''Cambio: ''||trim(to_char(sum(decode(operacion,''NCR'',1,0)), ''999G999G999G999G9990''))',
'       ||'' / Not.Cred:''||trim(to_char(sum(decode(operacion,''CMB'',1,0)), ''999G999G999G999G9990'')) */ ',
'       ',
' ,null  data',
',''fa fa-tools fa-fw fa-3x '' as icon_class',
',''light-green'' as class1',
',''green'' as class2',
'--,''f?p=''||:APP_ID||'':748:''||:APP_SESSION ||''::NO::P748_COD_RUBROhjhjhj:''||:P785_COD_CLIENTE as LINK',
',APEX_PAGE.GET_URL(p_page => 795,p_items => ''P795_COD_RUBRO'',p_values => :P785_COD_CLIENTE) AS LINK',
'--,''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':748:''||:APP_SESSION ||''::NO::P748_COD_RUBRO:''||:P785_COD_CLIENTE ||'''''');'' as LINK',
'from (SELECT  sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   1',
'              else 0 end) entrantes,',
'            sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   0',
'              else 1 end) salientes',
'    FROM v_llamadas_entrantes',
'    WHERE COD_CLIENTE=:P785_COD_CLIENTE',
'    AND  Motivo_principal<>''VISITAS CAST''',
'    and trunc(FEC_LLAMADA,''MM'')=TRUNC(SYSDATE ,''MM''))',
'',
'UNION ALL',
'select 4 as sort_order',
',''SPP'' title',
',null data --''Ent.: ''||entrantes||''    Sal.: ''||salientes data',
',''fa-commenting fa-fw fa-3x'' as icon_class',
',''green'' as class1',
',''green'' as class2',
',''#''    as LINK',
'---,''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':122:''||:APP_SESSION ||''::NO::P122_COD_CLIENTE:''||:P785_COD_CLIENTE ||'''''');''  as LINK',
'from (SELECT  sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   1',
'              else 0 end) entrantes,',
'            sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   0',
'              else 1 end) salientes',
'    FROM v_llamadas_entrantes',
'    WHERE COD_CLIENTE=:P785_COD_CLIENTE',
'    AND  Motivo_principal<>''VISITAS CAST''',
'    and trunc(FEC_LLAMADA,''MM'')=TRUNC(SYSDATE ,''MM''))',
'',
'union all',
'select 5 as sort_order',
',''Solicitudes No Conformes'' title',
'/*',
',''Cambio: ''||trim(to_char(sum(decode(operacion,''NCR'',1,0)), ''999G999G999G999G9990''))',
'       ||'' / Not.Cred:''||trim(to_char(sum(decode(operacion,''CMB'',1,0)), ''999G999G999G999G9990'')) */ ',
'       ',
' ,null  data',
'--,''fa-wrench fa-fw fa-3x '' as icon_class',
', ''fa fa-file fa-fw fa-3x''as icon_class',
',''light-green'' as class1',
',''green'' as class2',
'--,''f?p=''||:APP_ID||'':806:''||:APP_SESSION ||''::NO::P806_COD_CLIENTE:''||:P785_CLIENTE as LINK',
'/*,''javascript:apex.navigation.dialog({ ',
'    url: ''''f?p='' || :APP_ID || '':806:'' || :APP_SESSION || ''::NO::P806_COD_CLIENTE:'' || :P785_CLIENTE || '''''', ',
'    title: ''''Solicitudes No Conformes'''', ',
'    height: 600, ',
'    width: 800 ',
'});void(0);'' as link*/',
'',
',''f?p=''||:APP_ID||'':161:''||:APP_SESSION ||''::NO::P161_COD_CLIENTE:''||:P785_COD_CLIENTE  as LINK',
'--,''javascript:apex.navigation.openInNewWindow(''''''||''f?p=''||:APP_ID||'':119:''||:APP_SESSION ||''::NO::P119_COD_CLIENTE:''||:P785_COD_CLIENTE ||'''''');'' as LINK',
'from (SELECT  sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   1',
'              else 0 end) entrantes,',
'            sum(case Motivo_principal',
'              when ''LLAMADAS_ENTRANTES'' then',
'                   0',
'              else 1 end) salientes',
'    FROM v_llamadas_entrantes',
'    WHERE COD_CLIENTE=:P785_COD_CLIENTE',
'    AND  Motivo_principal<>''VISITAS CAST''',
'    and trunc(FEC_LLAMADA,''MM'')=TRUNC(SYSDATE ,''MM''))',
'---where   nvl(es_fisica,''N'') =''N''',
'-----where cod_pais not in (''PAR'') '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P785_COD_CLIENTE'
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
 p_id=>wwv_flow_imp.id(415290021685515826)
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
 p_id=>wwv_flow_imp.id(415290486660515827)
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
 p_id=>wwv_flow_imp.id(415290802801515827)
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
 p_id=>wwv_flow_imp.id(415291247518515830)
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
 p_id=>wwv_flow_imp.id(415291648688515830)
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
 p_id=>wwv_flow_imp.id(415292067010515830)
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
 p_id=>wwv_flow_imp.id(415292421739515830)
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
 p_id=>wwv_flow_imp.id(420052469580119603)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(375412838781491649)
,p_button_name=>'NuevoContacto'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo contacto'
,p_icon_css_classes=>'fa fa-comments-o'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(420054823531119627)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(669048971785367442)
,p_button_name=>'mas_datos'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Mas Datos'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(423382191137682524)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(669048971785367442)
,p_button_name=>'Cliente'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--simple:t-Button--iconRight:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cliente '
,p_button_redirect_url=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:92::'
,p_icon_css_classes=>'fa-plus-circle-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(251235201208051403)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(669048971785367442)
,p_button_name=>'Limpiar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--simple:t-Button--iconRight:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(423382274630682525)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(669048971785367442)
,p_button_name=>'pagina_748'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'pagina 748'
,p_button_redirect_url=>'f?p=&APP_ID.:748:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(420052975497119608)
,p_branch_name=>'Go to Page 791'
,p_branch_action=>'f?p=&APP_ID.:791:&SESSION.::&DEBUG.:791:P791_CLIENTE,P791_NRO_CONTACTO:&P785_COD_CLIENTE.,&P785_TELEFONO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(420052469580119603)
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'NuevoContacto'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(444780801936916306)
,p_branch_name=>'Go to Page 805'
,p_branch_action=>'f?p=&APP_ID.:810:&SESSION.::&DEBUG.:810::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(375412581466491646)
,p_name=>'P785_SCORING'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415278601027515815)
,p_name=>'P785_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(669048971785367442)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_CASOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CLIENTE,',
'       COD_CLIENTE,',
'       NCI,',
'       RUC,',
'       TELEFONO       ',
' from INV.VW_CLIENTES_CASOS',
'     ORDER BY 1 ASC'))
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
 p_id=>wwv_flow_imp.id(415279360093515817)
,p_name=>'P785_NOM_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
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
 p_id=>wwv_flow_imp.id(415279707723515817)
,p_name=>'P785_ESTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
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
 p_id=>wwv_flow_imp.id(415280137752515818)
,p_name=>'P785_SEGMENTACION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
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
 p_id=>wwv_flow_imp.id(415280581331515818)
,p_name=>'P785_CALIFIC_STAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415280960505515818)
,p_name=>'P785_COD_CLIENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
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
 p_id=>wwv_flow_imp.id(415281377142515820)
,p_name=>'P785_NCI'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
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
 p_id=>wwv_flow_imp.id(415281731356515820)
,p_name=>'P785_TELEFONO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
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
 p_id=>wwv_flow_imp.id(415282162712515820)
,p_name=>'P785_VENDEDOR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
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
 p_id=>wwv_flow_imp.id(415282545592515821)
,p_name=>'P785_SUC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
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
 p_id=>wwv_flow_imp.id(415282932896515821)
,p_name=>'P785_COMENTARIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415283304317515821)
,p_name=>'P785_PERSONA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416427246536355917)
,p_name=>'P785_TIPO_CLIENTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
,p_prompt=>'Tipo Cliente'
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
 p_id=>wwv_flow_imp.id(416427365988355918)
,p_name=>'P785_SALDO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416427472986355919)
,p_name=>'P785_CALIFICACION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416427573864355920)
,p_name=>'P785_PORC'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416427648146355921)
,p_name=>'P785_DISPONIBLE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416427711783355922)
,p_name=>'P785_LIMITE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416427818149355923)
,p_name=>'P785_MONEDA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416427963965355924)
,p_name=>'P785_EJECUTADO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416428037860355925)
,p_name=>'P785_S_VENCIDO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416429204435355937)
,p_name=>'P785_CALIFIC_STAR_LABEL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(420052221269119601)
,p_name=>'P785_ASESOR_CC'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
,p_prompt=>'Asesor CC'
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
 p_id=>wwv_flow_imp.id(420052370092119602)
,p_name=>'P785_EJECOBRANZAS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(685381302909795038)
,p_prompt=>'Ej Cobranzas'
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
 p_id=>wwv_flow_imp.id(423329528761972448)
,p_name=>'P785_ID_CASO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(375412838781491649)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(428846110509297333)
,p_name=>'P785_URL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(669048971785367442)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432945891055271423)
,p_name=>'P785_PARAM_CLIENTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(669048971785367442)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415294201977515832)
,p_name=>'datos_cod'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P785_COD_CLIENTE'
,p_condition_element=>'P785_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415294722153515832)
,p_event_id=>wwv_flow_imp.id(415294201977515832)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P785_NOM_CLIENTE,P785_NCI,P785_ESTADO,P785_TELEFONO,P785_SUC,P785_COMENTARIO,P785_VENDEDOR,P785_SEGMENTACION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415295208664515832)
,p_event_id=>wwv_flow_imp.id(415294201977515832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(685381302909795038)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415295707861515832)
,p_event_id=>wwv_flow_imp.id(415294201977515832)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	DECLARE',
'        VRUC VARCHAR2(30);',
'    BEGIN ',
'                select nombre,',
'                    null telefono,',
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
'                     ,null   calific                 ',
'                     ,null',
'                    ,codigo_vendedor||'' - ''||nombre_vendedor',
'                ----    ,trim(to_char(DEUDA_VENCIDA,''9G999G999G999G990''))',
'                    ,trim(to_char(DEUDA_TOTAL,''9G999G999G999G990'')),',
'                    (select  s.tip_segmento ',
'                       from  cc_segmentacion_cliente s',
'                    where s.cod_empresa=  :P_COD_EMPRESA',
'                    and   s.cod_tip_cliente=''27''',
'                    and   (select  sum(DECODE(V.TIP_COMPROBANTE,''NCR'',-1,1)*V.Tot_Gravadas *v.tip_cambio) ',
'                            from vt_comprobantes_cabecera v',
'                            where v.cod_empresa= :P_COD_EMPRESA',
'                           -- and   trunc(v.fec_comprobante,''YYYY'')=TRUNC(trunc(sysdate,''YYYY'')-1,''YYYY'') ',
'                            and   nvl(v.estado,''P'')<>''A''',
'                            and   v.cod_cliente= :P785_CLIENTE) between nvl(s.vta_anual_min,0)     and    nvl(s.vta_anual_max,0) ) segmentacion',
'                    INTO    :P785_NOM_CLIENTE',
'                            ,:P785_TELEFONO',
'                            ,:P785_NCI',
'                            ,:P785_ESTADO   ',
'                            ,:P785_LIMITE',
'                            ,:P785_MONEDA  ',
'                            ,:P785_TIPO_CLIENTE',
'                            ,:P785_PERSONA  ',
'                            ,:P785_EJECUTADO',
'                            ,:P785_DISPONIBLE',
'                            ,:P785_SUC',
'                            ,:P785_PORC',
'                            ,:P785_CALIFICACION',
'                            ,:P785_SCORING     ',
'                            ,:P785_CALIFIC_STAR   ',
'                            ,:P785_COMENTARIO    ',
'                            ,:P785_VENDEDOR ',
'                         ---   ,:P785_S_VENCIDO',
'                            ,:P785_SALDO',
'                            ,:P785_SEGMENTACION',
'                from inv.v_cliente_apex',
'                where  cod_cliente = :P785_COD_CLIENTE',
'                    ; ',
'		EXCEPTION',
'			WHEN OTHERS THEN ',
'					     raise_application_error(-20003,sqlerrm);',
'			',
'		END;   ',
'',
' '))
,p_attribute_02=>'P785_COD_CLIENTE'
,p_attribute_03=>'P785_NOM_CLIENTE,P785_NCI,P785_ESTADO,P785_TELEFONO,P785_SUC,P785_COMENTARIO,P785_CALIFIC_STAR,P785_VENDEDOR,P785_SEGMENTACION,P785_TIPO_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415296242507515833)
,p_event_id=>wwv_flow_imp.id(415294201977515832)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'begin ',
' select (to_char(DEUDA_VENCIDA,''9G999G999G999G990''))',
' into :P785_S_VENCIDO',
'       from  inv.v_cliente_apex',
'       where  cod_cliente=:P785_COD_CLIENTE; ',
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
'       into :P785_S_VENCIDO',
'       from  inv.v_cliente_apex',
'       where  cod_cliente=:P785_COD_CLIENTE; ',
'       */',
'exception',
'    when others then',
'        :P785_S_VENCIDO:=null;  ',
'end;'))
,p_attribute_02=>'P785_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415296701134515833)
,p_event_id=>wwv_flow_imp.id(415294201977515832)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'begin   ',
'                select  s.tip_segmento ',
'                into :P785_SEGMENTACION',
'                    from  cc_segmentacion_cliente s',
'                    where s.cod_empresa=  :P_COD_EMPRESA',
'                    and   s.cod_tip_cliente=''27''',
'                    and   (select  sum(DECODE(V.TIP_COMPROBANTE,''NCR'',-1,1)*V.Tot_Gravadas *v.tip_cambio) ',
'                            from vt_comprobantes_cabecera v',
'                            where v.cod_empresa= :P_COD_EMPRESA',
'                            and   trunc(v.fec_comprobante,''YYYY'')=TRUNC(trunc(sysdate,''YYYY'')-1,''YYYY'') ',
'                            and   nvl(v.estado,''P'')<>''A''',
'                            and   v.cod_cliente= :P785_CLIENTE) between nvl(s.vta_anual_min,0)     and    nvl(s.vta_anual_max,0) ',
'                    ',
'        ;',
'exception',
'    when others then',
'        :P785_SEGMENTACION:=null;  ',
'end;'))
,p_attribute_02=>'P785_COD_CLIENTE,P785_CLIENTE'
,p_attribute_03=>'P785_SEGMENTACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415297223601515833)
,p_event_id=>wwv_flow_imp.id(415294201977515832)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' var valor =  $v("P785_PORC") +'':'' + $v("P785_EJECUTADO") ;',
' apex.item(''P785_CALCULADO'').setValue(valor);',
' ',
'  //  $(''#P785_CALIFIC_STAR_LABEL'').text(''Calific.: ''+$v(''P785_CALIFICACION''));',
' ',
' ',
'    ',
'    ',
'   //$(''#P785_SCORING'').animate({left: ''100px''}, "slow");    ',
'   // $(''#P785_SCORING'').animate({fontSize: ''3em''}, "slow");',
'    ',
'    ',
'  ',
'  //go($v("P785_SCORING"));',
' ',
'  ',
' setTimeout(setea_region, 3000); ',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415297799087515833)
,p_event_id=>wwv_flow_imp.id(415294201977515832)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("resumen").refresh();',
'apex.region("rcharts").refresh();',
'apex.region("card1").refresh();'))
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
 p_id=>wwv_flow_imp.id(415298254861515833)
,p_event_id=>wwv_flow_imp.id(415294201977515832)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(912898624170963244)
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428845557807297327)
,p_event_id=>wwv_flow_imp.id(415294201977515832)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(710853459439418312)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(420666486495328312)
,p_event_id=>wwv_flow_imp.id(415294201977515832)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(912898624170963244)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415292800152515830)
,p_name=>'CARGA_DATOS'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P785_CLIENTE'
,p_condition_element=>'P785_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415293391808515831)
,p_event_id=>wwv_flow_imp.id(415292800152515830)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P785_COD_CLIENTE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415293827854515831)
,p_event_id=>wwv_flow_imp.id(415292800152515830)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P785_CLIENTE  IS NOT NULL THEN',
'',
'    :P785_COD_CLIENTE:=NULL;',
'    :P785_NCI:=NULL;',
'    :P785_PERSONA:=NULL;',
'    DECLARE',
'	vcod_cliente varchar2(30);',
'',
'vcod_persona varchar2(30);',
'',
'vruc varchar2(30);',
'vnombre varchar2(200);',
'vestado varchar2(35);',
'vtelefono varchar2(50);',
'vtipo_cliente varchar2(30);',
'vsegmentacion varchar2(60);',
'vnombre_vendedor varchar2(60);',
'vcobrador varchar2(100);',
'vcantidad_suc varchar2(10);',
'vejecredito varchar2(100);',
'BEGIN',
'    SELECT',
'          c.cod_cliente,',
'          c.cod_persona,',
'          c.ruc numero,',
'          c.nombre,',
'          c.estado,',
'          c.telefono,',
'          c.tipo_cliente,',
'          (select  s.tip_segmento ',
'                       from  cc_segmentacion_cliente s',
'                    where s.cod_empresa=  :P_COD_EMPRESA',
'                    and   s.cod_tip_cliente=''27''',
'                    and   (select  sum(DECODE(V.TIP_COMPROBANTE,''NCR'',-1,1)*V.Tot_Gravadas *v.tip_cambio) ',
'                            from vt_comprobantes_cabecera v',
'                            where v.cod_empresa= :P_COD_EMPRESA',
'                           -- and   trunc(v.fec_comprobante,''YYYY'')=TRUNC(trunc(sysdate,''YYYY'')-1,''YYYY'') ',
'                            and   nvl(v.estado,''P'')<>''A''',
'                            and   v.cod_cliente= :P785_CLIENTE) between nvl(s.vta_anual_min,0)     and    nvl(s.vta_anual_max,0) ) segmentacion,',
'           c.nombre_vendedor,',
'           c.agente_cobro,',
'           c.sucursales,',
'           c.agente_credito',
'                            INTO',
'          vcod_cliente,',
'          vcod_persona,',
'          vruc,',
'          vnombre,',
'          vestado,',
'          vtelefono,',
'          vtipo_cliente,',
'          vsegmentacion,',
'          vnombre_vendedor,',
'          vcobrador,',
'          vcantidad_suc,',
'          vejecredito',
'        FROM INV.V_CLIENTE_APEX c',
'        WHERE c.cod_cliente = :P785_CLIENTE',
'          AND rownum = ''1'';',
'        :P785_COD_CLIENTE := vcod_cliente;',
'        :P785_NCI := vruc;',
'        :P785_PERSONA := vcod_persona;',
'        :P785_NOM_CLIENTE := vnombre;',
'        :P785_ESTADO := vestado;',
'        :P785_TELEFONO := vtelefono;',
'        :P785_TIPO_CLIENTE := vtipo_cliente;',
'        :P785_SEGMENTACION := vsegmentacion;',
'        :P785_VENDEDOR := vnombre_vendedor;',
'        :P785_ASESOR_CC := vcobrador;',
'        :P785_SUC := vcantidad_suc;',
'        :P785_EJECOBRANZAS := vejecredito;',
'           SELECT  APEX_PAGE.GET_URL (p_application => 122,',
'            p_page   => 162,',
'            p_items  => ''P162_COD_CLIENTE'',',
'            p_values => vcod_cliente) ',
'            INTO :P785_URL',
'            FROM DUAL;         ',
'        /*  SELECT APEX_PAGE.GET_URL(',
'                 p_application => 122, ',
'                 p_page        => 805,',
'                 p_items       => ''P805_COD_CLIENTE'',',
'                 p_values      => vcod_cliente',
'                       ) ',
'                  INTO :P785_URL_805',
'                  FROM DUAL;*/',
'',
'        EXCEPTION',
'        WHEN OTHERS THEN',
'            apex_error.add_error(p_message => ''Dato no encontrado'',',
'                   p_display_location => apex_error.c_on_error_page',
'               );',
'               raise_application_error(-20002,sqlerrm);',
'',
'END ;',
'',
' ',
'ELSE',
'    :P785_COD_CLIENTE:=NULL;',
'    :P785_NCI:=NULL;',
'    :P785_PERSONA:=NULL;',
'END IF;'))
,p_attribute_02=>'P785_CLIENTE'
,p_attribute_03=>'P785_NCI,P785_COD_CLIENTE,P785_PERSONA,P785_NOM_CLIENTE,P785_ESTADO,P785_TELEFONO,P785_TIPO_CLIENTE,P785_SEGMENTACION,P785_VENDEDOR,P785_URL,P785_SUC,P785_ASESOR_CC,P785_EJECOBRANZAS'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(416430550802355950)
,p_event_id=>wwv_flow_imp.id(415292800152515830)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(375412838781491649)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(420666581857328313)
,p_event_id=>wwv_flow_imp.id(415292800152515830)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(912898624170963244)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432333457012966540)
,p_event_id=>wwv_flow_imp.id(415292800152515830)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(432331827191966524)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251290072028714727)
,p_event_id=>wwv_flow_imp.id(415292800152515830)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(375410920454491630)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415298610184515833)
,p_name=>'clear_page'
,p_event_sequence=>50
,p_condition_element=>'P785_PARAM_CLIENTE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415299155636515834)
,p_event_id=>wwv_flow_imp.id(415298610184515833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P785_CLIENTE,P785_COD_CLIENTE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415299635649515834)
,p_event_id=>wwv_flow_imp.id(415298610184515833)
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
'into :P785_CALIFIC_STAR, :P785_SCORING',
'from dual',
';'))
,p_attribute_03=>'P785_CALIFIC_STAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415300167920515834)
,p_event_id=>wwv_flow_imp.id(415298610184515833)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(912898624170963244)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415300641975515834)
,p_event_id=>wwv_flow_imp.id(415298610184515833)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(669050819714367461)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(423345607570455426)
,p_name=>'DA_setea_id_caso'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#reg_reporte table.a-IRR-table tr'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(423345746305455427)
,p_event_id=>wwv_flow_imp.id(423345607570455426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      var pk = $(this.triggeringElement).closest(''tr'').find(''[headers="ID_CASO"]'').text(); ',
'      $s(''P785_ID_CASO'',pk);',
'// alert(pk);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(423381958153682522)
,p_name=>'New'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P785_ID_CASO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(423382042315682523)
,p_event_id=>wwv_flow_imp.id(423381958153682522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(420055769780119636)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(423382964365682532)
,p_name=>'DA_SELECT_REF_FOCO'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(375412838781491649)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(423383058669682533)
,p_event_id=>wwv_flow_imp.id(423382964365682532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// Retrasar la ejecuci\00F3n por unos milisegundos para asegurar que el valor est\00E9 actualizado'),
'setTimeout(function() {',
unistr('    // Obtener el valor del elemento de p\00E1gina'),
unistr('    var nameValue = $v(''P785_ID_CASO'');  // Aseg\00FArate de que ''P704_ID_CASO'' sea el nombre correcto del elemento de p\00E1gina'),
'',
'    // Limpiar cualquier resaltado previo',
'    $(''tr.highlight'').removeClass(''highlight'');',
'',
unistr('    // Validar si el valor no est\00E1 vac\00EDo'),
'    if (nameValue !== '''') {',
'        // Recorrer cada fila y buscar coincidencias',
'        $(''tr'').each(function() {',
'            // Buscar la celda en esta fila con headers="ID_CASO"',
'            var cellValue = $(this).find(''[headers="ID_CASO"]'').text().trim();',
'',
'            // Comparar el valor de la celda con el valor de nameValue',
'            if (cellValue === nameValue) {',
'                $(this).addClass(''highlight'');  // Resaltar solo la fila coincidente',
'            }',
'        });',
'    }',
'}, 100);  // Retraso de 100 ms',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(428845916691297331)
,p_name=>'da_page_162'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(420054823531119627)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428846015773297332)
,p_event_id=>wwv_flow_imp.id(428845916691297331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' apex.navigation.openInNewWindow(apex.item("P785_URL").getValue()); ',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(433036923752904209)
,p_name=>'refresh'
,p_event_sequence=>120
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(433037068453904210)
,p_event_id=>wwv_flow_imp.id(433036923752904209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(432331827191966524)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(433037162294904211)
,p_name=>'refresh_1'
,p_event_sequence=>130
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(433037255036904212)
,p_event_id=>wwv_flow_imp.id(433037162294904211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(375412838781491649)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(433038700725904227)
,p_name=>'refresh_1_1'
,p_event_sequence=>140
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(433038891680904228)
,p_event_id=>wwv_flow_imp.id(433038700725904227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(420055769780119636)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(428845412739297326)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Inicializar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P785_COD_CLIENTE := null;',
':P785_CLIENTE := null;--:P785_PARAM_CLIENTE;',
':P785_TIPO_CLIENTE := NULL;',
':P785_SUC := NULL;',
':P785_ASESOR_CC := NULL;',
':P785_EJECOBRANZAS := NULL;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
