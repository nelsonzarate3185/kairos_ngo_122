prompt --application/pages/page_00380
begin
--   Manifest
--     PAGE: 00380
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
 p_id=>380
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'RECATRE - CATALOGACION DE REPUESTO'
,p_alias=>'RECATRE-CATALOGACION-DE-REPUESTO'
,p_step_title=>'RECATRE - CATALOGACION DE REPUESTO'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      /** {',
'        margin: 0;',
'        padding: 0;',
'        box-sizing: border-box;',
'      }',
'      html {',
'        font-size: 62.5%;',
'        font-family: "Lato", sans-serif;',
'      }',
'      body {',
'        background-color: #eee;',
'        color: #000;',
'        padding-top: 100px;',
'      }',
'',
'      h1 {',
'        font-size: 3rem;',
'        font-weight: 700;',
'        letter-spacing: 2px;',
'        text-transform: uppercase;',
'        margin-bottom: 3rem;',
'        color: rgba(9, 146, 105, 0.8);',
'      }',
'',
'      .articles {',
'        display: flex;',
'        flex-direction: column;',
'        align-items: center;',
'      }',
'',
'      .features {',
'        display: grid;',
'        grid-template-columns: 1fr 1fr 1fr;',
'',
'        max-width: 90rem;',
'        column-gap: 2rem;',
'        row-gap: 2rem;',
'      }',
'',
'      .item {',
'        display: flex;',
'        flex-direction: column;',
'',
'        background-image: linear-gradient(to right bottom, #dee2e6, #dbdbdb);',
'        box-shadow: 0 2.4rem 4.8rem rgba(0, 0, 0, 0.507);',
'        overflow: hidden;',
'        border-radius: 30px;',
'        transition: all 0.3s;',
'',
'        position: relative;',
'      }',
'',
'      .item:hover {',
'        transform: translateY(-1.1rem);',
'      }',
'',
'      .item-photo {',
'        width: 100%;',
'        align-self: center;',
'      }',
'',
'      .item-header {',
'        display: flex;',
'        flex-direction: row;',
'        align-items: center;',
'        margin: 2rem 2rem;',
'        gap: 1rem;',
'      }',
'',
'      .item-icon {',
'        width: 2.4rem;',
'        height: 2.4rem;',
'      }',
'',
'      .item-title {',
'        font-size: 2.4rem;',
'        font-weight: 400;',
'      }',
'',
'      .item-text {',
'        font-size: 1.6rem;',
'        font-weight: 300;',
'        line-height: 1.3;',
'        padding: 0 2rem;',
'        margin-bottom: 3rem;',
'      }',
'',
'      .item-link:link,',
'      .item-link:visited {',
'        display: inline-block;',
'        font-size: 1.6rem;',
'',
'        padding: 1.6rem 2.4rem;',
'        text-decoration: underline #099268;',
'        color: #099268;',
'',
'        /* stick link to the bottom of item /',
'        margin-top: auto;',
'      }',
'',
'      .item-link:hover,',
'      .item-link:active {',
'        color: #3aa886;',
'        text-decoration: underline #3aa886;',
'      }',
'',
'      /* TABLETS /',
'      @media (max-width: 950px) {',
'        h1 {',
'          font-size: 2.8rem;',
'        }',
'',
'        .features {',
'          grid-template-columns: 1fr 1fr;',
'          max-width: 60rem;',
'        }',
'',
'        .item1 {',
'          grid-column: span 2;',
'        }',
'',
'        .item-title {',
'          font-size: 3rem;',
'        }',
'',
'        .item-text {',
'          font-size: 2rem;',
'        }',
'',
'        .item-link:link,',
'        .item-link:visited {',
'          font-size: 2rem;',
'        }',
'      }',
'',
'      /* MOBILES /',
'      @media (max-width: 650px) {',
'        .features {',
'          grid-template-columns: 1fr;',
'          max-width: 30rem;',
'        }',
'',
'        .item1 {',
'          grid-column: span 1;',
'        }',
'',
'        h1 {',
'          font-size: 2.4rem;',
'        }',
'      }*/'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20230519152607'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108872494282382804)
,p_plug_name=>unistr('Catalogaci\00F3n de Repuestos')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108872544445382805)
,p_plug_name=>'Catalogos'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108872751419382807)
,p_plug_name=>'Catalogo_Rep'
,p_parent_plug_id=>wwv_flow_imp.id(108872544445382805)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       ID_CATALOGO,',
'       COD_EMPRESA,',
'       COD_ARTICULO,',
'       COD_ORIGEN,',
'       TENSION,',
'       POTENCIA,',
'       FRECUENCIA,',
'       TEMPERATURA_TRABAJO,',
'       PESO,',
'       CARACTERISTICAS,',
'       CATEGORIA,',
'       TIPO_REFRIGERANTE,',
'       MEDIDAS,',
'       LARGO,',
'       ANCHO,',
'       DIAMETRO,',
'       COLOR,',
'       POSICIONES,',
'       AMPERAJE,',
'       DESCRIPCION',
'  from RE_CATALOGO_REPUESTO'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Catalogo_Rep'
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
 p_id=>wwv_flow_imp.id(108872859757382808)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:384:&SESSION.::&DEBUG.::P384_ROWID:#ROWID#'
,p_detail_link_text=>'<span aria-label="Editar"  width="25" height="25"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>108872859757382808
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108872988394382809)
,p_db_column_name=>'ID_CATALOGO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Catalogo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108873092826382810)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108873160627382811)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108873270010382812)
,p_db_column_name=>'COD_ORIGEN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod. Origen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108873302487382813)
,p_db_column_name=>'TENSION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Tension'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108873474523382814)
,p_db_column_name=>'POTENCIA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Potencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108873587667382815)
,p_db_column_name=>'FRECUENCIA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Frecuencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108873627363382816)
,p_db_column_name=>'TEMPERATURA_TRABAJO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Temperatura Trabajo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68482701484692733)
,p_db_column_name=>'PESO'
,p_display_order=>90
,p_column_identifier=>'W'
,p_column_label=>'Peso'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108873929671382819)
,p_db_column_name=>'CATEGORIA'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108874085868382820)
,p_db_column_name=>'TIPO_REFRIGERANTE'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Tipo Refrigerante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108874117572382821)
,p_db_column_name=>'MEDIDAS'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Medidas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108874206588382822)
,p_db_column_name=>'LARGO'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>'Largo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108874325635382823)
,p_db_column_name=>'ANCHO'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Ancho'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108874492260382824)
,p_db_column_name=>'DIAMETRO'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Diametro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108874526532382825)
,p_db_column_name=>'COLOR'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Color'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108874689638382826)
,p_db_column_name=>'POSICIONES'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Posiciones'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108874738819382827)
,p_db_column_name=>'AMPERAJE'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Amperaje'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108874884432382828)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108874983999382829)
,p_db_column_name=>'ROWID'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110780851837423549)
,p_db_column_name=>'CARACTERISTICAS'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Caracteristicas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(110542116680345991)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1105422'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ARTICULO:COD_ORIGEN:TENSION:POTENCIA:FRECUENCIA:TEMPERATURA_TRABAJO:PESO:CATEGORIA:TIPO_REFRIGERANTE:MEDIDAS:LARGO:ANCHO:DIAMETRO:COLOR:POSICIONES:AMPERAJE:DESCRIPCION:CARACTERISTICAS:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(108875048827382830)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(108872751419382807)
,p_button_name=>'CREAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:384:&SESSION.::&DEBUG.:384::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(115107529081235706)
,p_name=>'DA_Cerrar_Recuadro de Dialogo'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(108872751419382807)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(115107680489235707)
,p_event_id=>wwv_flow_imp.id(115107529081235706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108872751419382807)
);
wwv_flow_imp.component_end;
end;
/
