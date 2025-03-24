prompt --application/pages/page_00748
begin
--   Manifest
--     PAGE: 00748
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
 p_id=>748
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Cobertura STA - AAOT'
,p_alias=>'COBERTURA-STA'
,p_step_title=>'Cobertura STA'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.addEventListener("DOMContentLoaded", function() {',
'    function addRowClickHandlers() {',
'        var reportRows = document.querySelectorAll(''.t-Report-report tr'');',
'        ',
'		 reportRows.forEach(function(row) {',
'        	row.setAttribute(''tabindex'', ''0''); // Hace la fila enfocable',
'    	});',
'',
'		reportRows.forEach(function(row) {			',
'            row.addEventListener(''click'', function() {',
'                // Remueve la clase de sombreado de todas las filas',
'                reportRows.forEach(function(r) {',
'                    r.classList.remove(''highlight-row'');',
'                });',
'                // Agrega la clase de sombreado a la fila clicada',
'                row.classList.add(''highlight-row'');',
'            });',
'        });',
'    }',
'',
unistr('    // Llama la funci\00F3n inicialmente'),
'    addRowClickHandlers();',
'',
unistr('    // Asume que la regi\00F3n tiene el Static ID ''myClassicReport'''),
'    var reportRegion = document.getElementById(''reg_reporte'');',
'',
unistr('    // Verifica si la regi\00F3n existe'),
'    if (reportRegion) {',
'        // Crea una instancia de MutationObserver',
'        var observer = new MutationObserver(function(mutationsList, observer) {',
'            for (var mutation of mutationsList) {',
'                if (mutation.type === ''childList'' && mutation.addedNodes.length > 0) {',
unistr('                    // Llama la funci\00F3n cuando se detectan cambios'),
'                    addRowClickHandlers();',
'                }',
'            }',
'        });',
'',
'        // Configura el observer para observar cambios en los hijos del elemento',
'        observer.observe(reportRegion, { childList: true, subtree: true });',
'    }',
'});',
'',
'$(document).ready(function() {',
'    // Seleccionar el elemento Popup LOV usando la clase personalizada',
'    var popupLov = document.querySelector(''#P748_STA'');',
'',
'    if (popupLov) {',
'        // Crear un nuevo MutationObserver',
'        var observer = new MutationObserver(function(mutations) {',
'            mutations.forEach(function(mutation) {',
'                if (mutation.type === ''attributes'' && mutation.attributeName === ''aria-expanded'') {',
'                    // Obtener el valor de aria-expanded',
'                    var expanded = popupLov.getAttribute(''aria-expanded'');',
'                    ',
'                   //var roberto = $(''.a-PopupLOV-searchBar input[type="text"]'').val();',
'				    if (expanded === ''true'') {',
'						',
'						//$(''.a-PopupLOV-searchBar input[type="text"]'').val('''');',
unistr('                        // Ejecutar la l\00F3gica cuando aria-expanded es true (Popup LOV est\00E1 abierto)'),
'                        setTimeout(function() {',
unistr('                            // Limpiar el campo de b\00FAsqueda dentro del Popup LOV'),
'                            //$(''.a-PopupLOV-search apex-item-text'').val(''98'');',
'							//$(''.a-PopupLOV-searchBar input[type="text"]'').val('''');',
'                        }, 100);',
'                    } else if (expanded === ''false'') {',
unistr('                        // Ejecutar la l\00F3gica cuando aria-expanded es false (Popup LOV est\00E1 cerrado)'),
unistr('                        //console.log(''Popup LOV est\00E1 cerrado.''+roberto);'),
'						 $(''.a-PopupLOV-searchBar input[type="text"]'').val('''');',
'                    }',
'                }',
'            });',
'        });',
'',
'        // Configurar el observer para observar cambios en los atributos',
'        var config = { attributes: true };',
'',
unistr('        // Iniciar la observaci\00F3n del elemento Popup LOV'),
'        observer.observe(popupLov, config);',
'    }',
'});',
'',
''))
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
'#PARAM, #FILTROS{    ',
'  background-color: #487ab8  !important;',
'}',
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
'#reg_reporte{',
'	max-height: 500px; ',
'  	overflow-y: scroll;',
'}',
'.c_reg_reporte{',
'	max-height: 250px; ',
'  	overflow-y: scroll;',
'}',
'',
'.highlight-row {',
'    background-color: #ffffbf;',
'}',
'',
'.highlight-row:hover,',
'.highlight-row:focus {',
'    background-color: #ffffbf;',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20241126155543'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(294141043051972126)
,p_plug_name=>'parametros'
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
 p_id=>wwv_flow_imp.id(297401110217586217)
,p_plug_name=>'ABM_ZONA'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(297401250919586218)
,p_plug_name=>'ABM_RUBRO'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(330638277896583423)
,p_plug_name=>'Agregar comentario'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>940
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(330640141477583442)
,p_plug_name=>'Izquierdo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(287659559846875435)
,p_plug_name=>'Contenedor'
,p_parent_plug_id=>wwv_flow_imp.id(330640141477583442)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(287659691474875436)
,p_plug_name=>'Contenedor 1'
,p_parent_plug_id=>wwv_flow_imp.id(287659559846875435)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(294141146428972127)
,p_name=>'LISTADO DE STA''s'
,p_region_name=>'reg_reporte'
,p_parent_plug_id=>wwv_flow_imp.id(330640141477583442)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    c.cod_proveedor,',
'    p.nombre AS nombre,',
'    p.cod_persona,',
'    i.numero,',
'    '' <i '' ||',
'    DECODE(NVL((',
'        SELECT DISTINCT',
'            ''S''',
'        FROM',
'            bs_sucursal_cliente ss',
'        WHERE',
'            ss.cod_sucursal = (',
'                SELECT MIN(ss_inner.cod_sucursal)',
'                FROM bs_sucursal_cliente ss_inner',
'                WHERE ss_inner.cod_persona = p.cod_persona',
'            ) AND',
'            ss.cod_persona = p.cod_persona AND',
'            ss.latitud IS NOT NULL AND',
'            ss.longitud IS NOT NULL',
'    ), ''N''),',
'        ''S'', '' class="fa fa-map-marker" style="color:green"'',',
'        '' class="fa fa-map-pin" style="color:red"'') ||',
'    '' onclick="$s(''''P748_VER_GEO'''','''''' || p.cod_persona || '''''')"></i>'' AS geo,',
'    p.direc_electronica AS email,',
'    (',
'        SELECT',
'            tel.codigo_area || tel.num_telefono',
'        FROM',
'            telef_personas tel',
'        WHERE',
'            tel.cod_persona = p.cod_persona AND',
'            por_defecto = ''S'' AND',
'            ROWNUM = 1',
'    ) AS telefono_1,',
'    (',
'        SELECT',
'            tel.codigo_area || tel.num_telefono',
'        FROM',
'            telef_personas tel',
'        WHERE',
'            tel.cod_persona = p.cod_persona AND',
'            por_defecto <> ''S'' AND',
'            ROWNUM = 1',
'    ) AS telefono_2,',
'    (',
'        SELECT',
'            dir.detalle',
'        FROM',
'            direc_personas dir',
'        WHERE',
'            dir.cod_persona = p.cod_persona AND',
'            ROWNUM = 1',
'    ) AS direccion,',
'    (',
'        SELECT',
'            pro.descripcion',
'        FROM',
'            direc_personas dir,',
'            provincias pro',
'        WHERE',
'            dir.cod_persona = p.cod_persona AND',
'            pro.cod_pais = dir.cod_pais AND',
'            pro.cod_provincia = dir.cod_provincia AND',
'            ROWNUM = 1',
'    ) AS departamento,',
'    (',
'        SELECT',
'            ciu.descripcion',
'        FROM',
'            direc_personas dir,',
'            ciudades ciu',
'        WHERE',
'            dir.cod_persona = p.cod_persona AND',
'            dir.cod_pais = ciu.cod_pais AND',
'            dir.cod_provincia = ciu.cod_provincia AND',
'            dir.cod_ciudad = ciu.cod_ciudad AND',
'            ROWNUM = 1',
'    ) AS ciudad,',
'    CASE',
'        WHEN c.asignable_ot = ''S'' THEN ''A''',
'        WHEN c.asignable_ot = ''N'' THEN ''IN''',
'    END AS asignable_ot,',
'    NULL AS detalle,',
'    NULL AS activar',
'FROM',
'    cm_proveedores c,',
'    personas p,',
'    cc_clientes a,',
'    ident_personas i',
'WHERE',
'    c.cod_empresa = NVL(:p_cod_empresa, ''1'') AND',
'    a.tip_cliente IN(''28'',''77'') AND',
'    a.cod_persona = p.cod_persona AND',
'    --NVL(a.estado, ''I'') = ''A'' AND',
'    a.cod_empresa = c.cod_empresa AND',
'    a.cod_persona = c.cod_persona AND',
'    c.ind_servicio_tecnico = ''STA'' AND',
'    (:p748_sta IS NULL OR c.cod_proveedor = :p748_sta) AND',
'    c.cod_persona = p.cod_persona AND',
'    NVL(c.estado, ''A'') NOT IN (''I'') AND',
'    p.cod_persona = i.cod_persona AND',
'    i.cod_ident = ''RUC'' AND',
'    (:p748_dto IS NULL OR EXISTS (',
'        SELECT DISTINCT',
'            ''1''',
'        FROM',
'            inv.ca_cobertura_localidad z',
'        WHERE',
'            z.cod_empresa = c.cod_empresa AND',
'            z.cod_proveedor = c.cod_proveedor AND',
'            z.cod_pais = ''PAR'' AND',
'            z.cod_departamento = :p748_dto AND',
'            z.ind_activo = ''S''',
'    )) AND',
'    (:p748_ciudad IS NULL OR EXISTS (',
'        SELECT DISTINCT',
'            ''1''',
'        FROM',
'            inv.ca_cobertura_localidad z',
'        WHERE',
'            z.cod_empresa = c.cod_empresa AND',
'            z.cod_proveedor = c.cod_proveedor AND',
'            z.cod_pais = ''PAR'' AND',
'            z.cod_ciudad = :p748_ciudad AND',
'            z.ind_activo = ''S''',
'    )) AND',
'    (:p748_rubro IS NULL OR EXISTS (',
'        SELECT DISTINCT',
'            ''1''',
'        FROM',
'            inv.cc_clientes cl,',
'            inv.cc_clientes_rubros cr',
'        WHERE',
'            cl.cod_empresa = c.cod_empresa AND',
'            cl.cod_persona = c.cod_persona AND',
'            cl.cod_empresa = cr.cod_empresa AND',
'            cl.cod_cliente = cr.cod_cliente AND',
'            cr.activo = ''S'' AND',
'            cr.cod_division = :p748_rubro',
'    ))',
'ORDER BY',
'    p.nombre,',
'    c.cod_proveedor;',
''))
,p_footer=>'<strong style="color:red"> <i class=''fa fa-map-pin''></i> Sin Geolocalizacion</strong> &nbsp &nbsp &nbsp  <strong style="color:green"><i class=''fa fa-map-marker''></i> Con Geolocalizacion</strong> '
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P748_STA,P748_DTO,P748_CIUDAD,P748_RUBRO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(294141443923972130)
,p_query_column_id=>1
,p_column_alias=>'COD_PROVEEDOR'
,p_column_display_sequence=>10
,p_column_heading=>'Codigo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(294141513580972131)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>30
,p_column_heading=>'Nombre del STA'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(297404181201586247)
,p_query_column_id=>3
,p_column_alias=>'COD_PERSONA'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(330640689341583447)
,p_query_column_id=>4
,p_column_alias=>'NUMERO'
,p_column_display_sequence=>20
,p_column_heading=>'RUC/CI'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(297404301866586249)
,p_query_column_id=>5
,p_column_alias=>'GEO'
,p_column_display_sequence=>110
,p_column_heading=>'Geo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287658365322875423)
,p_query_column_id=>6
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287660033403875440)
,p_query_column_id=>7
,p_column_alias=>'TELEFONO_1'
,p_column_display_sequence=>90
,p_column_heading=>'Telefono'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287660118989875441)
,p_query_column_id=>8
,p_column_alias=>'TELEFONO_2'
,p_column_display_sequence=>120
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287658558769875425)
,p_query_column_id=>9
,p_column_alias=>'DIRECCION'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287658697696875426)
,p_query_column_id=>10
,p_column_alias=>'DEPARTAMENTO'
,p_column_display_sequence=>70
,p_column_heading=>'Departamento'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287658768871875427)
,p_query_column_id=>11
,p_column_alias=>'CIUDAD'
,p_column_display_sequence=>80
,p_column_heading=>'Ciudad'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(330640536589583446)
,p_query_column_id=>12
,p_column_alias=>'ASIGNABLE_OT'
,p_column_display_sequence=>100
,p_column_heading=>'Asignable'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287660753340875447)
,p_query_column_id=>13
,p_column_alias=>'DETALLE'
,p_column_display_sequence=>130
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P748_DET_DATA'',''#COD_PROVEEDOR#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287660881143875448)
,p_query_column_id=>14
,p_column_alias=>'ACTIVAR'
,p_column_display_sequence=>140
,p_column_heading=>'Editar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P748_COD_STA_2'',''#COD_PROVEEDOR#'');'
,p_column_linktext=>'<span aria-label="Comentario"><span class="fa fa-edit" aria-hidden="true" title="Comentario"></span></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(330640255061583443)
,p_plug_name=>'Derecho'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(287658864166875428)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_imp.id(330640255061583443)
,p_region_template_options=>'#DEFAULT#:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(40097087111263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(330640954608583450)
,p_plug_name=>'A'
,p_parent_plug_id=>wwv_flow_imp.id(330640255061583443)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(294141267374972128)
,p_name=>'ZONA COBERTURA'
,p_parent_plug_id=>wwv_flow_imp.id(330640954608583450)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_css_classes=>'c_reg_reporte'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Z.COD_PAIS,',
'       Z.COD_DEPARTAMENTO,',
'       NVL(D.DESCRIPCION,'''')DEPARTAMENTO,',
'       Z.COD_CIUDAD, ',
'       NVL(C.DESCRIPCION,'''')CIUDAD,',
'      ---- APEX_ITEM.CHECKBOX(1,Z.IND_ACTIVO,decode(Z.IND_ACTIVO,''S'',''CHECKED'',''UNCHECKED'' )|| ''onclick="seleccionar(this)"'' )  ACTIVO',
'        APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                            p_value       => Z.IND_ACTIVO,',
'                            p_attributes  => (case Z.IND_ACTIVO',
'                                             when ''S'' ',
'                                             then ''checked''',
'                                             else null',
'                                             end ) ||'' onclick="$s(''''P748_IND_ZONA'''',''''''||z.cod_proveedor||''-''||z.cod_pais||''-''||z.cod_departamento||''-''||z.cod_ciudad||'''''')"'') as ACTIVO',
'                        ',
'  from INV.CA_COBERTURA_LOCALIDAD Z,',
'       PROVINCIAS D ,',
'       CIUDADES C',
'  WHERE Z.COD_EMPRESA = NVL(:P_COD_EMPRESA,''1'')',
'  AND   Z.COD_PROVEEDOR = :P748_COD_SELECT ',
'  AND   Z.COD_PAIS = D.COD_PAIS',
'  AND   Z.COD_DEPARTAMENTO = D.COD_PROVINCIA  ',
'  AND   Z.COD_PAIS = C.COD_PAIS(+)',
'  AND   Z.COD_DEPARTAMENTO = C.COD_PROVINCIA(+)',
'  AND   Z.COD_CIUDAD = C.COD_CIUDAD(+)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P748_COD_SELECT,P748_STA'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No existen Zonas de Cobertura para el STA  '
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(294142980425972145)
,p_query_column_id=>1
,p_column_alias=>'COD_PAIS'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(294143007322972146)
,p_query_column_id=>2
,p_column_alias=>'COD_DEPARTAMENTO'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(297399589824586201)
,p_query_column_id=>3
,p_column_alias=>'DEPARTAMENTO'
,p_column_display_sequence=>70
,p_column_heading=>'Departamento'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(294143181812972147)
,p_query_column_id=>4
,p_column_alias=>'COD_CIUDAD'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(297399698453586202)
,p_query_column_id=>5
,p_column_alias=>'CIUDAD'
,p_column_display_sequence=>80
,p_column_heading=>'Ciudad'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(297399787390586203)
,p_query_column_id=>6
,p_column_alias=>'ACTIVO'
,p_column_display_sequence=>90
,p_column_heading=>'Activo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(336973225890160001)
,p_plug_name=>'B'
,p_parent_plug_id=>wwv_flow_imp.id(330640255061583443)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(294141393432972129)
,p_name=>'LINEA DE REPARACION'
,p_parent_plug_id=>wwv_flow_imp.id(336973225890160001)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>50
,p_region_css_classes=>'c_reg_reporte'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  t.desc_division  ,',
'      ---- APEX_ITEM.CHECKBOX(1,cR.ACTIVO,decode(cR.ACTIVO,''S'',''CHECKED'',''UNCHECKED'' )|| ''onclick="seleccionar(this)"'' )  ACTIVO',
'       ',
'        APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                            p_value       => cR.ACTIVO,',
'                            p_attributes  => (case cR.ACTIVO',
'                                             when ''S'' ',
'                                             then ''checked''',
'                                             else null',
'                                             end ) ||'' onclick="$s(''''P748_IND_RUBRO'''',''''''||cr.COD_CLIENTE||''-''||cr.cod_division||'''''')"'') as ACTIVO',
'from inv.cm_proveedores         c,  ',
'     inv.cc_clientes            cl ,',
'     inv.CC_CLIENTES_RUBROS     cr,',
'     inv.ST_DIVISION_ARTICULOS  t ',
' where c.cod_empresa=nvl(:P_COD_EMPRESA,''1'')',
'  and c.cod_proveedor =  :P748_COD_SELECT    ',
'   and cl.cod_empresa = c.cod_empresa',
'   and cl.cod_persona = c.cod_persona',
'   and cl.cod_empresa = cr.cod_empresa',
'   and cl.cod_cliente = cr.cod_cliente',
'   and cr.cod_division = T.cod_division '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P748_COD_SELECT,P748_STA'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No existen registros para el STA'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298023766744211928)
,p_query_column_id=>1
,p_column_alias=>'DESC_DIVISION'
,p_column_display_sequence=>30
,p_column_heading=>'Division'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(297400254942586208)
,p_query_column_id=>2
,p_column_alias=>'ACTIVO'
,p_column_display_sequence=>40
,p_column_heading=>'Activo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(336973336745160002)
,p_plug_name=>'C'
,p_parent_plug_id=>wwv_flow_imp.id(330640255061583443)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<hr size="2px" color="#003A85" />'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(794506486220179948)
,p_plug_name=>'Mapa'
,p_region_name=>'mapa'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_region_attributes=>'style="border-color: #bce8f1; background-color:#d9edf7; color:#3a87ad; font-weight:bold; width: 1011px;min-height: 0px; max-height: none; height: 700px" '
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>80
,p_plug_source_type=>'PLUGIN_COM.JK64.SIMPLE_GOOGLE_MAP'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'-25,-57'
,p_attribute_02=>'8'
,p_attribute_03=>'600'
,p_attribute_04=>'P748_LATITUD_LONGITUD'
,p_attribute_05=>'16'
,p_attribute_07=>'N'
,p_attribute_08=>'P748_BUSQUEDA'
,p_attribute_11=>'P748_DIR_CLIENTE'
,p_attribute_12=>'N'
,p_attribute_17=>'auto'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(298021899322211909)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(794506486220179948)
,p_button_name=>'Actualizar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(297401324284586219)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(297401110217586217)
,p_button_name=>'GUARDAR_Z'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(297401435819586220)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(297401250919586218)
,p_button_name=>'GUARDAR_R'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(330638911226583430)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(330638277896583423)
,p_button_name=>'P748_BTN_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(297399869322586204)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(294141267374972128)
,p_button_name=>'ADD_ZONA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Zona'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-server-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(297399975478586205)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(294141393432972129)
,p_button_name=>'ADD_RUBRO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Rubro'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-server-plus'
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
 p_id=>wwv_flow_imp.id(287659735884875437)
,p_name=>'P748_DIRECCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(287659691474875436)
,p_prompt=>'Direccion'
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
 p_id=>wwv_flow_imp.id(287659830523875438)
,p_name=>'P748_EMAIL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(287659691474875436)
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
 p_id=>wwv_flow_imp.id(287659989435875439)
,p_name=>'P748_COMENTARIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(287659691474875436)
,p_prompt=>'Comentario'
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
 p_id=>wwv_flow_imp.id(287660213971875442)
,p_name=>'P748_TELEFONO_ALT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(287659691474875436)
,p_prompt=>'Telefono Alternativo'
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
 p_id=>wwv_flow_imp.id(287660390094875443)
,p_name=>'P748_DEPARTAMENTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(287659691474875436)
,p_prompt=>'Departamento'
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
 p_id=>wwv_flow_imp.id(287661036893875450)
,p_name=>'P748_DET_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(294141146428972127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(294141614006972132)
,p_name=>'P748_STA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(294141043051972126)
,p_prompt=>'Autorizado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre nombre,',
'       c.cod_proveedor ',
'  from cm_proveedores               c,',
'       personas                     p ',
' where c.cod_empresa = NVL(:P_COD_EMPRESA,''1'')',
'   AND c.cod_proveedor IN(SELECT b.cod_proveedor FROM SERVICIO_TECNICO_AUT b)',
'   AND C.IND_SERVICIO_TECNICO = ''STA''',
'   and c.cod_persona = p.cod_persona ',
'   AND NVL(C.ESTADO,''A'')NOT IN (''I'')',
' ORDER BY p.nombre, c.cod_proveedor',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
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
 p_id=>wwv_flow_imp.id(294141789103972133)
,p_name=>'P748_DTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(294141043051972126)
,p_prompt=>'Departamento de cobertura'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select descripcion, cod_provincia',
'from provincias',
'WHERE COD_PAIS=''PAR''',
'ORDER BY 1 ASC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
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
 p_id=>wwv_flow_imp.id(294141844054972134)
,p_name=>'P748_CIUDAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(294141043051972126)
,p_prompt=>'Ciudad de cobertura'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       cod_ciudad ',
'from ciudades ',
'where cod_pais = ''PAR''',
'--and ( :P748_DTO IS NULL OR COD_PROVINCIA = :P748_DTO  )',
'AND COD_PROVINCIA = :P748_DTO',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_lov_cascade_parent_items=>'P748_DTO'
,p_ajax_items_to_submit=>'P748_DTO'
,p_ajax_optimize_refresh=>'N'
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
 p_id=>wwv_flow_imp.id(294141967250972135)
,p_name=>'P748_RUBRO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(294141043051972126)
,p_prompt=>'Linea de Reparacion'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  R.desc_DIVISION, R.cod_DIVISION',
'from   ST_DIVISION_ARTICULOS R',
'where r.estado =''A'' ; '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
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
 p_id=>wwv_flow_imp.id(294143417822972150)
,p_name=>'P748_COD_SELECT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(294141043051972126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297400916874586215)
,p_name=>'P748_COD_ZONA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(294141043051972126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297401069693586216)
,p_name=>'P748_COD_RUBRO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(294141043051972126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297401573181586221)
,p_name=>'P748_ABM_DPTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(297401110217586217)
,p_prompt=>'DEPARTAMENTO'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select descripcion, cod_provincia',
'from provincias',
'WHERE COD_PAIS=''PAR''',
'ORDER BY 1 ASC'))
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
 p_id=>wwv_flow_imp.id(297401690966586222)
,p_name=>'P748_ABM_CIUDAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(297401110217586217)
,p_prompt=>'CIUDAD'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       cod_ciudad ',
'  from ciudades ',
' where cod_pais = ''PAR''',
'   and COD_PROVINCIA = :P748_ABM_DPTO',
'order by descripcion'))
,p_lov_cascade_parent_items=>'P748_ABM_DPTO'
,p_ajax_items_to_submit=>'P748_ABM_DPTO'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(297401746126586223)
,p_name=>'P748_ABM_RUBRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(297401250919586218)
,p_prompt=>'RUBRO'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  R.desc_DIVISION, R.cod_DIVISION',
'from   ST_DIVISION_ARTICULOS R',
'where r.estado =''A'' ',
'----AND   r.cod_rubro IN ( ''20'',''25'' ,''26'' ,''24'',''23'',''27'',''21'' )'))
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
 p_id=>wwv_flow_imp.id(297404494334586250)
,p_name=>'P748_VER_GEO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(294141043051972126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(298020687351190230)
,p_name=>'P748_BUSQUEDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(794506486220179948)
,p_prompt=>'Busqueda'
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
 p_id=>wwv_flow_imp.id(298021260959211903)
,p_name=>'P748_LATITUD_LONGITUD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(794506486220179948)
,p_prompt=>'Latitud, Longitud'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(298021320242211904)
,p_name=>'P748_DIR_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(794506486220179948)
,p_prompt=>unistr('Direcci\00F3n indicada:')
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
 p_id=>wwv_flow_imp.id(298022677108211917)
,p_name=>'P748_IND_ZONA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(294141043051972126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(298022748333211918)
,p_name=>'P748_IND_RUBRO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(294141043051972126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(298024125996211932)
,p_name=>'P748_DESC_STA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(287658864166875428)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(330636338409583404)
,p_name=>'P748_CIUDA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(287659691474875436)
,p_prompt=>'Ciudad'
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
 p_id=>wwv_flow_imp.id(330638376947583424)
,p_name=>'P748_COD_STA_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(330638277896583423)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(330638427402583425)
,p_name=>'P748_COMENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(330638277896583423)
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
 p_id=>wwv_flow_imp.id(330638570077583426)
,p_name=>'P748_ASIGNABLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(330638277896583423)
,p_source=>'P748_ASIGNABLE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Activo;S,Inactivo;N'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(294142679882972142)
,p_name=>'da_click_reg'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#reg_reporte table.t-Report-report tr'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294142773459972143)
,p_event_id=>wwv_flow_imp.id(294142679882972142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   var codsta = $(this.triggeringElement).closest(''tr'').find(''[headers="COD_PROVEEDOR"]'').text(); ',
'   $s(''P748_COD_SELECT'',codsta);',
'   //  alert(codsta);',
'',
'',
'',
'   var nomsta = $(this.triggeringElement).closest(''tr'').find(''[headers="NOMBRE"]'').text(); ',
'   $s(''P748_DESC_STA'',codsta+'' - ''+nomsta);',
'   '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(297400344050586209)
,p_name=>'da_ref_reg'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P748_COD_SELECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297400876109586214)
,p_event_id=>wwv_flow_imp.id(297400344050586209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P748_COD_SELECT,P748_DESC_STA'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297400577467586211)
,p_event_id=>wwv_flow_imp.id(297400344050586209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(294141267374972128)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297400482527586210)
,p_event_id=>wwv_flow_imp.id(297400344050586209)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(294141393432972129)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(297401884463586224)
,p_name=>'DA_OPN_MDL'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(297399869322586204)
,p_condition_element=>'P748_COD_SELECT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297402007126586226)
,p_event_id=>wwv_flow_imp.id(297401884463586224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P748_ABM_DPTO,P748_ABM_CIUDAD'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297403692881586242)
,p_event_id=>wwv_flow_imp.id(297401884463586224)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar un STA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297401937480586225)
,p_event_id=>wwv_flow_imp.id(297401884463586224)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(297401110217586217)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(297402275997586228)
,p_name=>'DA_OPN_MDAL'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(297399975478586205)
,p_condition_element=>'P748_COD_SELECT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297402344479586229)
,p_event_id=>wwv_flow_imp.id(297402275997586228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P748_ABM_RUBRO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297403743861586243)
,p_event_id=>wwv_flow_imp.id(297402275997586228)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar un STA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297402410447586230)
,p_event_id=>wwv_flow_imp.id(297402275997586228)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(297401250919586218)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(297402589720586231)
,p_name=>'da_guarda_zona'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(297401324284586219)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297402678366586232)
,p_event_id=>wwv_flow_imp.id(297402589720586231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P748_ABM_CIUDAD IS NULL AND :P748_ABM_DPTO IS NULL THEN',
'     raise_application_error(-20000, ''Debe seleccionar el Departamento y/o Ciudad'' );',
'ELSE',
'    declare',
'        dummy varchar2(1);',
'    begin',
'        select  distinct ''1''',
'        into dummy',
'        from CA_COBERTURA_localidad',
'        where cod_empresa=NVL(:P_COD_EMPRESA,''1'')',
'        and   cod_proveedor=:P748_COD_SELECT',
'        and   cod_pais=''PAR''',
'        AND   cod_departamento= :P748_ABM_DPTO',
'        and   NVL(cod_ciudad,''NN'')= NVL(:P748_ABM_CIUDAD ,''NN'')',
'        ;',
'        ',
'             raise_application_error(-20000, ''Ya existe registro para el Departamento/Ciudad indicado.'' );',
'    exception',
'        when no_data_found then',
'            begin',
'                insert into CA_COBERTURA_localidad',
'                (COD_EMPRESA,COD_PAIS,COD_DEPARTAMENTO,COD_CIUDAD,COD_PROVEEDOR,IND_ACTIVO)',
'                values',
'                (nvl(:P_COD_EMPRESA,''1''),''PAR'',:P748_ABM_DPTO,:P748_ABM_CIUDAD,:P748_COD_SELECT ,''S'')',
'                ;',
'            exception',
'                when others then',
'                     raise_application_error(-20000, sqlerrm );',
'            end;',
'        when others then',
'             raise_application_error(-20000, sqlerrm );',
'    end;',
'END IF;'))
,p_attribute_02=>'P748_ABM_DPTO,P748_ABM_CIUDAD,P748_COD_SELECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297402747147586233)
,p_event_id=>wwv_flow_imp.id(297402589720586231)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(294141267374972128)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297402877571586234)
,p_event_id=>wwv_flow_imp.id(297402589720586231)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(297401110217586217)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(297402981650586235)
,p_name=>'DA_GUARDA_RUBRO'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(297401435819586220)
,p_condition_element=>'P748_ABM_RUBRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297403261483586238)
,p_event_id=>wwv_flow_imp.id(297402981650586235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P748_ABM_RUBRO is NULL THEN ',
'     raise_application_error(-20000, ''Debe seleccionar el Rubro.'' );',
'ELSE',
'    DECLARE',
'        DUMMY VARCHAR2(1);',
'    BEGIN',
'        select distinct  ''1''',
'        INTO DUMMY',
'            from cm_proveedores c, ',
'                 inv.cc_clientes              cl ,',
'                 inv.CC_CLIENTES_RUBROS       cr ',
'             where c.cod_empresa=nvl(:P_COD_EMPRESA,''1'')',
'              and c.cod_proveedor =  :P748_COD_SELECT  ',
'               and cl.cod_empresa = c.cod_empresa',
'               and cl.cod_persona = c.cod_persona',
'               and cl.cod_empresa = cr.cod_empresa',
'               and cl.cod_cliente = cr.cod_cliente',
'               and cl.tip_cliente IN(28,77)',
'               and cr.cod_DIVISION =  :P748_ABM_RUBRO',
'               ;',
'',
'            raise_application_error(-20000, ''El proveedor ya cuenta el Rubro asignado.'' );',
'',
'    EXCEPTION ',
'        when no_data_found then',
'            DECLARE',
'                CODCLI VARCHAR2(30);',
'            BEGIN                ',
'                        select cl.cod_cliente   ',
'                        INTO CODCLI',
'                        from cm_proveedores c, ',
'                             inv.cc_clientes cl  ',
'                         where c.cod_empresa=nvl(:P_COD_EMPRESA,''1'')',
'                          and c.cod_proveedor =  :P748_COD_SELECT        ',
'                           and cl.cod_empresa = c.cod_empresa',
'                           and cl.cod_persona = c.cod_persona  ',
'                           and cl.tip_cliente in(28,77)',
'                           ;',
'',
'                        INSERT INTO CC_CLIENTES_RUBROS',
'                        (COD_EMPRESA,COD_CLIENTE,COD_DIVISION,ACTIVO,cod_rubro)',
'                        VALUES',
'                        (nvl(:P_COD_EMPRESA,''1''),CODCLI,:P748_ABM_RUBRO,''S'',''0'');',
'',
'            EXCEPTION    ',
'                    WHEN no_data_found THEN   ',
'                        raise_application_error(-20000, ''No existe Cliente vinculado al Proveedor.'' );',
'                    WHEN OTHERS THEN',
'                         raise_application_error(-20000, sqlerrm||''----'' );',
'            END;',
'        WHEN OTHERS THEN',
'             raise_application_error(-20000, sqlerrm ||''-**-'' );',
'    END;',
'END IF;'))
,p_attribute_02=>'P748_COD_SELECT,P748_ABM_RUBRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298023843846211929)
,p_event_id=>wwv_flow_imp.id(297402981650586235)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar una Division.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297403004221586236)
,p_event_id=>wwv_flow_imp.id(297402981650586235)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(294141393432972129)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297403192984586237)
,p_event_id=>wwv_flow_imp.id(297402981650586235)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(297401250919586218)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(298021015891211901)
,p_name=>'da_opn_geo'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P748_VER_GEO'
,p_condition_element=>'P748_VER_GEO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298021449821211905)
,p_event_id=>wwv_flow_imp.id(298021015891211901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P748_DIR_CLIENTE := NULL;',
'    :P748_LATITUD_LONGITUD := NULL;',
'	:P748_BUSQUEDA := NULL;--P748_DIRECCION',
'',
'    SELECT direccion,REPLACE(latitud,'','',''.'')||'',''||REPLACE(longitud,'','',''.'')',
'    INTO    :P748_DIR_CLIENTE,:P748_LATITUD_LONGITUD',
'    FROM BS_SUCURSAL_CLIENTE',
'    WHERE COD_SUCURSAL = (',
'        SELECT MIN(COD_SUCURSAL)',
'        FROM BS_SUCURSAL_CLIENTE',
'        WHERE COD_PERSONA = :P748_VER_GEO',
'    )',
'    AND COD_PERSONA= :P748_VER_GEO ;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       :P748_LATITUD_LONGITUD:= NULL;',
'END;'))
,p_attribute_02=>'P748_VER_GEO'
,p_attribute_03=>'P748_DIR_CLIENTE,P748_LATITUD_LONGITUD,P748_BUSQUEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298021523779211906)
,p_event_id=>wwv_flow_imp.id(298021015891211901)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P748_DIR_CLIENTE,P748_LATITUD_LONGITUD,P748_BUSQUEDA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298021187346211902)
,p_event_id=>wwv_flow_imp.id(298021015891211901)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(794506486220179948)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(298021995616211910)
,p_name=>'da_updt_geo'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(298021899322211909)
,p_condition_element=>'P748_LATITUD_LONGITUD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298022084255211911)
,p_event_id=>wwv_flow_imp.id(298021995616211910)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Para actualizar la Geolocalizaci\00F3n es necesario la Latitud y Longitud.')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298022133700211912)
,p_event_id=>wwv_flow_imp.id(298021995616211910)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    dummy            VARCHAR2(1);',
'    min_cod_sucursal NUMBER;',
'BEGIN ',
'    -- Verificar la existencia de cualquier sucursal y obtener la menor cod_sucursal',
'    SELECT',
'        MIN(cod_sucursal)',
'    INTO min_cod_sucursal',
'    FROM',
'        bs_sucursal_cliente',
'    WHERE',
'        cod_persona = :p748_ver_geo;',
'',
'    -- Si no se encuentra ninguna sucursal, lanzar un error',
'    IF min_cod_sucursal IS NULL THEN',
'        raise_application_error(-20000, ''El STA no tiene definido una Sucursal en su Ficha.'');',
'    END IF;',
'',
unistr('    -- Realizar la actualizaci\00F3n utilizando la menor cod_sucursal'),
'    UPDATE bs_sucursal_cliente',
'    SET',
'        direccion = nvl(:p748_dir_cliente, direccion),',
'        latitud = substr(:p748_latitud_longitud,',
'                         1,',
'                         instr(:p748_latitud_longitud, '','') - 1),',
'        longitud = substr(:p748_latitud_longitud,',
'                          instr(:p748_latitud_longitud, '','') + 1),',
'        modificado_por = nvl(:APP_USER,user),',
'		fec_modificacion = sysdate                ',
'    WHERE',
'            cod_persona = :p748_ver_geo',
'        AND cod_sucursal = min_cod_sucursal;',
'',
'EXCEPTION',
'    WHEN no_data_found THEN',
'        raise_application_error(-20000, ''El STA no tiene definido una Sucursal en su Ficha.'');',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, sqlerrm);',
'END;'))
,p_attribute_02=>'P748_LATITUD_LONGITUD,P748_DIR_CLIENTE,P748_VER_GEO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298022254927211913)
,p_event_id=>wwv_flow_imp.id(298021995616211910)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(794506486220179948)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298022307594211914)
,p_event_id=>wwv_flow_imp.id(298021995616211910)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(294141146428972127)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298022578356211916)
,p_event_id=>wwv_flow_imp.id(298021995616211910)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Actualizaci\00F3n Exitosa.')
,p_attribute_02=>'GEOLOCALIZACION'
,p_attribute_03=>'success'
,p_attribute_04=>'fa-map-marker-check'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(298022829787211919)
,p_name=>'da_zona_estado'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P748_IND_ZONA'
,p_condition_element=>'P748_IND_ZONA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298022916079211920)
,p_event_id=>wwv_flow_imp.id(298022829787211919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de actualizar el estado?'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298023582554211926)
,p_event_id=>wwv_flow_imp.id(298022829787211919)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin	',
'    /*update CA_COBERTURA_LOCALIDAD',
'    set ind_activo = decode(nvl(ind_activo,''N''),''S'',''N'',''S'')',
'    where cod_empresa= nvl(:P_COD_EMPRESA,''1'')',
'    and cod_proveedor||''-''||cod_pais||''-''||cod_departamento||''-''||cod_ciudad = :P748_IND_ZONA;*/',
'	DELETE FROM CA_COBERTURA_LOCALIDAD ',
'	where cod_empresa = nvl(:P_COD_EMPRESA,''1'')',
'    and cod_proveedor||''-''||cod_pais||''-''||cod_departamento||''-''||cod_ciudad = :P748_IND_ZONA;',
'exception',
'    when others then',
'         raise_application_error(-20000, sqlerrm );',
'end;'))
,p_attribute_02=>'P748_IND_ZONA'
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
 p_id=>wwv_flow_imp.id(298023369659211924)
,p_event_id=>wwv_flow_imp.id(298022829787211919)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(297401110217586217)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330640764715583448)
,p_event_id=>wwv_flow_imp.id(298022829787211919)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(294141267374972128)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(298023001776211921)
,p_name=>'da_estado_rubro'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P748_IND_RUBRO'
,p_condition_element=>'P748_IND_RUBRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298023259903211923)
,p_event_id=>wwv_flow_imp.id(298023001776211921)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de actualizar el estado?'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298023672641211927)
,p_event_id=>wwv_flow_imp.id(298023001776211921)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    /*update CC_CLIENTES_RUBROS',
'    set  activo = decode(nvl( activo,''N''),''S'',''N'',''S'')',
'    where cod_empresa= nvl(:P_COD_EMPRESA,''1'')',
'    and COD_CLIENTE||''-''||cod_division  = :P748_IND_RUBRO*/',
'	DELETE FROM CC_CLIENTES_RUBROS',
'	where cod_empresa= nvl(:P_COD_EMPRESA,''1'')',
'    and COD_CLIENTE||''-''||cod_division  = :P748_IND_RUBRO',
';',
'exception',
'    when others then',
'         raise_application_error(-20000, sqlerrm );',
'end;',
' ',
''))
,p_attribute_02=>'P748_IND_RUBRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298023485212211925)
,p_event_id=>wwv_flow_imp.id(298023001776211921)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(297401250919586218)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330640825541583449)
,p_event_id=>wwv_flow_imp.id(298023001776211921)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(294141393432972129)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(298024281068211933)
,p_name=>'DA_YN'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P748_DESC_STA'
,p_condition_element=>'P748_DESC_STA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298024369433211934)
,p_event_id=>wwv_flow_imp.id(298024281068211933)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P748_DESC_STA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298024407271211935)
,p_event_id=>wwv_flow_imp.id(298024281068211933)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P748_DESC_STA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(336974747149160016)
,p_event_id=>wwv_flow_imp.id(298024281068211933)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P748_DIRECCION := NULL;',
':P748_EMAIL := NULL;',
':P748_TELEFONO_ALT := NULL;',
':P748_DEPARTAMENTO := NULL;',
':P748_CIUDA := NULL;',
':P748_COMENTARIO := NULL;'))
,p_attribute_02=>'P748_COD_STA_2'
,p_attribute_03=>'P748_DIRECCION,P748_EMAIL,P748_TELEFONO_ALT,P748_DEPARTAMENTO,P748_CIUDA,P748_COMENTARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(298024594780211936)
,p_name=>'da_afr'
,p_event_sequence=>130
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(294141146428972127)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298024656539211937)
,p_event_id=>wwv_flow_imp.id(298024594780211936)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P748_DESC_STA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(330636081176583401)
,p_name=>'DA_DET_DATA'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P748_DET_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330636157767583402)
,p_event_id=>wwv_flow_imp.id(330636081176583401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P748_DET_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330636283346583403)
,p_event_id=>wwv_flow_imp.id(330636081176583401)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    cobersta.sp_gestionar_ot(',
'		p_cod_proveedor => :p748_det_data, ',
'		direccion => :p748_direccion, ',
'		email => :p748_email, ',
'		telefono => :p748_telefono_alt,',
'    	departamento => :p748_departamento,',
'		ciudad => :p748_ciuda,',
'        comentarios => :p748_comentario);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        apex_debug.error(''DA_DET_DATA '' || sqlerrm);',
'END;'))
,p_attribute_02=>'P748_DET_DATA'
,p_attribute_03=>'P748_DIRECCION,P748_EMAIL,P748_TELEFONO_ALT,P748_DEPARTAMENTO,P748_CIUDA,P748_COMENTARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P748_DET_DATA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(330637668398583417)
,p_name=>'DA_REFRESH'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P748_STA,P748_DTO,P748_CIUDAD,P748_RUBRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330637711045583418)
,p_event_id=>wwv_flow_imp.id(330637668398583417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P748_COD_SELECT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P748_STA'
,p_attribute_07=>'P748_STA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330637936068583420)
,p_event_id=>wwv_flow_imp.id(330637668398583417)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(294141146428972127)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330638072855583421)
,p_event_id=>wwv_flow_imp.id(330637668398583417)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(294141393432972129)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330638107076583422)
,p_event_id=>wwv_flow_imp.id(330637668398583417)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(294141267374972128)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(336973883407160007)
,p_event_id=>wwv_flow_imp.id(330637668398583417)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P748_CIUDAD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(336973928058160008)
,p_event_id=>wwv_flow_imp.id(330637668398583417)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P748_DIRECCION,P748_EMAIL,P748_TELEFONO_ALT,P748_DEPARTAMENTO,P748_CIUDA,P748_COMENTARIO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(330638607581583427)
,p_name=>'DA_CHNG_COM'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P748_COD_STA_2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330638737857583428)
,p_event_id=>wwv_flow_imp.id(330638607581583427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P748_COMENT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330639424592583435)
,p_event_id=>wwv_flow_imp.id(330638607581583427)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P748_ASIGNABLE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT a.asignable_ot from cm_proveedores a where a.cod_empresa = :P_COD_EMPRESA and a.cod_proveedor = :P748_COD_SELECT;'
,p_attribute_07=>'P748_ASIGNABLE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330638870553583429)
,p_event_id=>wwv_flow_imp.id(330638607581583427)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(330638277896583423)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(330639673402583437)
,p_name=>'DA_OK'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(330638911226583430)
,p_condition_element=>'P748_ASIGNABLE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330639704546583438)
,p_event_id=>wwv_flow_imp.id(330639673402583437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P748_ASIGNABLE IS NOT NULL THEN ',
'        BEGIN               ',
'			UPDATE CM_PROVEEDORES SET ASIGNABLE_OT = :P748_ASIGNABLE WHERE COD_EMPRESA = :P_COD_EMPRESA AND COD_PROVEEDOR = :P748_COD_SELECT;              ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                raise_application_error(-20000, sqlerrm );',
'        END;',
'END IF;',
'',
'IF :P748_COMENT IS NOT NULL THEN ',
'        BEGIN               ',
'			UPDATE CM_PROVEEDORES SET OBSERVACION = :P748_COMENT WHERE COD_EMPRESA = :P_COD_EMPRESA AND COD_PROVEEDOR = :P748_COD_SELECT;              ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                raise_application_error(-20000, sqlerrm );',
'        END;',
'END IF;',
''))
,p_attribute_02=>'P748_COMENT,P748_ASIGNABLE,P748_COD_SELECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330639802397583439)
,p_event_id=>wwv_flow_imp.id(330639673402583437)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(294141146428972127)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330640010098583441)
,p_event_id=>wwv_flow_imp.id(330639673402583437)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P748_COMENTARIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330639950214583440)
,p_event_id=>wwv_flow_imp.id(330639673402583437)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(330638277896583423)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(294142549344972141)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear_Pag'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp.component_end;
end;
/
