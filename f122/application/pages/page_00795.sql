prompt --application/pages/page_00795
begin
--   Manifest
--     PAGE: 00795
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
 p_id=>795
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'STA_CONSULTAS'
,p_alias=>'STA-CONSULTAS'
,p_step_title=>'STA_CONSULTAS'
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
,p_last_upd_yyyymmddhh24miss=>'20241109102156'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(723617406047470601)
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
 p_id=>wwv_flow_imp.id(726877473213084692)
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
 p_id=>wwv_flow_imp.id(726877613915084693)
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
 p_id=>wwv_flow_imp.id(760114640892081898)
,p_plug_name=>'Agregar comentario'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>940
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(760116504473081917)
,p_plug_name=>'Izquierdo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(717135922842373910)
,p_plug_name=>'Contenedor'
,p_parent_plug_id=>wwv_flow_imp.id(760116504473081917)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(717136054470373911)
,p_plug_name=>'Contenedor 1'
,p_parent_plug_id=>wwv_flow_imp.id(717135922842373910)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(723617509424470602)
,p_name=>'LISTADO DE STA''s'
,p_region_name=>'reg_reporte'
,p_parent_plug_id=>wwv_flow_imp.id(760116504473081917)
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
'    '' onclick="$s(''''P795_VER_GEO'''','''''' || p.cod_persona || '''''')"></i>'' AS geo,',
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
'    (:p795_sta IS NULL OR c.cod_proveedor = :p795_sta) AND',
'    c.cod_persona = p.cod_persona AND',
'    NVL(c.estado, ''A'') NOT IN (''I'') AND',
'    p.cod_persona = i.cod_persona AND',
'    i.cod_ident = ''RUC'' AND',
'    (:p795_dto IS NULL OR EXISTS (',
'        SELECT DISTINCT',
'            ''1''',
'        FROM',
'            inv.ca_cobertura_localidad z',
'        WHERE',
'            z.cod_empresa = c.cod_empresa AND',
'            z.cod_proveedor = c.cod_proveedor AND',
'            z.cod_pais = ''PAR'' AND',
'            z.cod_departamento = :p795_dto AND',
'            z.ind_activo = ''S''',
'    )) AND',
'    (:p795_ciudad IS NULL OR EXISTS (',
'        SELECT DISTINCT',
'            ''1''',
'        FROM',
'            inv.ca_cobertura_localidad z',
'        WHERE',
'            z.cod_empresa = c.cod_empresa AND',
'            z.cod_proveedor = c.cod_proveedor AND',
'            z.cod_pais = ''PAR'' AND',
'            z.cod_ciudad = :p795_ciudad AND',
'            z.ind_activo = ''S''',
'    )) AND',
'    (:p795_rubro IS NULL OR EXISTS (',
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
'            cr.cod_division = :p795_rubro',
'    ))',
'ORDER BY',
'    p.nombre,',
'    c.cod_proveedor;',
''))
,p_footer=>'<strong style="color:red"> <i class=''fa fa-map-pin''></i> Sin Geolocalizacion</strong> &nbsp &nbsp &nbsp  <strong style="color:green"><i class=''fa fa-map-marker''></i> Con Geolocalizacion</strong> '
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P795_STA,P795_DTO,P795_CIUDAD,P795_RUBRO'
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
 p_id=>wwv_flow_imp.id(429489049337498490)
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
 p_id=>wwv_flow_imp.id(429489466744498490)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>30
,p_column_heading=>'Nombre del STA'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(429489818446498491)
,p_query_column_id=>3
,p_column_alias=>'COD_PERSONA'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(429490278126498491)
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
 p_id=>wwv_flow_imp.id(429490696887498491)
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
 p_id=>wwv_flow_imp.id(429491090876498491)
,p_query_column_id=>6
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(429491499050498491)
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
 p_id=>wwv_flow_imp.id(429491845436498492)
,p_query_column_id=>8
,p_column_alias=>'TELEFONO_2'
,p_column_display_sequence=>120
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(429492225169498492)
,p_query_column_id=>9
,p_column_alias=>'DIRECCION'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(429492621979498492)
,p_query_column_id=>10
,p_column_alias=>'DEPARTAMENTO'
,p_column_display_sequence=>70
,p_column_heading=>'Departamento'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(429493050539498492)
,p_query_column_id=>11
,p_column_alias=>'CIUDAD'
,p_column_display_sequence=>80
,p_column_heading=>'Ciudad'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(429493452540498493)
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
 p_id=>wwv_flow_imp.id(429493800571498493)
,p_query_column_id=>13
,p_column_alias=>'DETALLE'
,p_column_display_sequence=>130
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P795_DET_DATA'',''#COD_PROVEEDOR#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(429494277301498493)
,p_query_column_id=>14
,p_column_alias=>'ACTIVAR'
,p_column_display_sequence=>140
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(760116618057081918)
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
 p_id=>wwv_flow_imp.id(717135227162373903)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_imp.id(760116618057081918)
,p_region_template_options=>'#DEFAULT#:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(40097087111263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(760117317604081925)
,p_plug_name=>'A'
,p_parent_plug_id=>wwv_flow_imp.id(760116618057081918)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(723617630370470603)
,p_name=>'ZONA COBERTURA'
,p_parent_plug_id=>wwv_flow_imp.id(760117317604081925)
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
'                                             end ) ||'' onclick="$s(''''P795_IND_ZONA'''',''''''||z.cod_proveedor||''-''||z.cod_pais||''-''||z.cod_departamento||''-''||z.cod_ciudad||'''''')"'') as ACTIVO',
'                        ',
'  from INV.CA_COBERTURA_LOCALIDAD Z,',
'       PROVINCIAS D ,',
'       CIUDADES C',
'  WHERE Z.COD_EMPRESA = NVL(:P_COD_EMPRESA,''1'')',
'  AND   Z.COD_PROVEEDOR = :P795_COD_SELECT ',
'  AND   Z.COD_PAIS = D.COD_PAIS',
'  AND   Z.COD_DEPARTAMENTO = D.COD_PROVINCIA  ',
'  AND   Z.COD_PAIS = C.COD_PAIS(+)',
'  AND   Z.COD_DEPARTAMENTO = C.COD_PROVINCIA(+)',
'  AND   Z.COD_CIUDAD = C.COD_CIUDAD(+)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P795_COD_SELECT,P795_STA'
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
 p_id=>wwv_flow_imp.id(429498556670498497)
,p_query_column_id=>1
,p_column_alias=>'COD_PAIS'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(429498987219498497)
,p_query_column_id=>2
,p_column_alias=>'COD_DEPARTAMENTO'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(429499353479498497)
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
 p_id=>wwv_flow_imp.id(429499792697498497)
,p_query_column_id=>4
,p_column_alias=>'COD_CIUDAD'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(429500181954498497)
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
 p_id=>wwv_flow_imp.id(429500542977498497)
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
 p_id=>wwv_flow_imp.id(766449588885658476)
,p_plug_name=>'B'
,p_parent_plug_id=>wwv_flow_imp.id(760116618057081918)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(723617756428470604)
,p_name=>'LINEA DE REPARACION'
,p_parent_plug_id=>wwv_flow_imp.id(766449588885658476)
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
'                                             end ) ||'' onclick="$s(''''P795_IND_RUBRO'''',''''''||cr.COD_CLIENTE||''-''||cr.cod_division||'''''')"'') as ACTIVO',
'from inv.cm_proveedores         c,  ',
'     inv.cc_clientes            cl ,',
'     inv.CC_CLIENTES_RUBROS     cr,',
'     inv.ST_DIVISION_ARTICULOS  t ',
' where c.cod_empresa=nvl(:P_COD_EMPRESA,''1'')',
'  and c.cod_proveedor =  :P795_COD_SELECT    ',
'   and cl.cod_empresa = c.cod_empresa',
'   and cl.cod_persona = c.cod_persona',
'   and cl.cod_empresa = cr.cod_empresa',
'   and cl.cod_cliente = cr.cod_cliente',
'   and cr.cod_division = T.cod_division '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P795_COD_SELECT,P795_STA'
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
 p_id=>wwv_flow_imp.id(429501953837498498)
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
 p_id=>wwv_flow_imp.id(429502385444498498)
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
 p_id=>wwv_flow_imp.id(766449699740658477)
,p_plug_name=>'C'
,p_parent_plug_id=>wwv_flow_imp.id(760116618057081918)
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
 p_id=>wwv_flow_imp.id(1223982849215678423)
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
,p_attribute_04=>'P795_LATITUD_LONGITUD'
,p_attribute_05=>'16'
,p_attribute_07=>'N'
,p_attribute_08=>'P795_BUSQUEDA'
,p_attribute_09=>'PY'
,p_attribute_11=>'P795_DIR_CLIENTE'
,p_attribute_12=>'N'
,p_attribute_17=>'auto'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(429495318619498494)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1223982849215678423)
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
 p_id=>wwv_flow_imp.id(429481230849498484)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(726877473213084692)
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
 p_id=>wwv_flow_imp.id(429482792818498484)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(726877613915084693)
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
 p_id=>wwv_flow_imp.id(429483861846498486)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(760114640892081898)
,p_button_name=>'P795_BTN_GUARDAR'
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
 p_id=>wwv_flow_imp.id(429500978409498497)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(723617630370470603)
,p_button_name=>'ADD_ZONA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Zona'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-server-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(429502776476498499)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(723617756428470604)
,p_button_name=>'ADD_RUBRO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Rubro'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-server-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429476962250498480)
,p_name=>'P795_STA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(723617406047470601)
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
 p_id=>wwv_flow_imp.id(429477396423498481)
,p_name=>'P795_DTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(723617406047470601)
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
 p_id=>wwv_flow_imp.id(429477795965498481)
,p_name=>'P795_CIUDAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(723617406047470601)
,p_prompt=>'Ciudad de cobertura'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       cod_ciudad ',
'from ciudades ',
'where cod_pais = ''PAR''',
'--and ( :P795_DTO IS NULL OR COD_PROVINCIA = :P795_DTO  )',
'AND COD_PROVINCIA = :P795_DTO',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_lov_cascade_parent_items=>'P795_DTO'
,p_ajax_items_to_submit=>'P795_DTO'
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
 p_id=>wwv_flow_imp.id(429478113716498481)
,p_name=>'P795_RUBRO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(723617406047470601)
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
 p_id=>wwv_flow_imp.id(429478509439498481)
,p_name=>'P795_COD_SELECT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(723617406047470601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429478905099498482)
,p_name=>'P795_COD_ZONA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(723617406047470601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429479321817498482)
,p_name=>'P795_COD_RUBRO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(723617406047470601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429479775192498482)
,p_name=>'P795_IND_ZONA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(723617406047470601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429480190221498482)
,p_name=>'P795_IND_RUBRO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(723617406047470601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429480544602498483)
,p_name=>'P795_VER_GEO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(723617406047470601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429481669602498484)
,p_name=>'P795_ABM_DPTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(726877473213084692)
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
 p_id=>wwv_flow_imp.id(429482047897498484)
,p_name=>'P795_ABM_CIUDAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(726877473213084692)
,p_prompt=>'CIUDAD'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       cod_ciudad ',
'  from ciudades ',
' where cod_pais = ''PAR''',
'   and COD_PROVINCIA = :P795_ABM_DPTO',
'order by descripcion'))
,p_lov_cascade_parent_items=>'P795_ABM_DPTO'
,p_ajax_items_to_submit=>'P795_ABM_DPTO'
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
 p_id=>wwv_flow_imp.id(429483196511498486)
,p_name=>'P795_ABM_RUBRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(726877613915084693)
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
 p_id=>wwv_flow_imp.id(429484225546498486)
,p_name=>'P795_COD_STA_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(760114640892081898)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429484643136498486)
,p_name=>'P795_COMENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(760114640892081898)
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
 p_id=>wwv_flow_imp.id(429485068593498486)
,p_name=>'P795_ASIGNABLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(760114640892081898)
,p_source=>'P795_ASIGNABLE'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429486333498498488)
,p_name=>'P795_DIRECCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(717136054470373911)
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
 p_id=>wwv_flow_imp.id(429486734806498488)
,p_name=>'P795_EMAIL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(717136054470373911)
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
 p_id=>wwv_flow_imp.id(429487195203498488)
,p_name=>'P795_TELEFONO_ALT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(717136054470373911)
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
 p_id=>wwv_flow_imp.id(429487508564498488)
,p_name=>'P795_DEPARTAMENTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(717136054470373911)
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
 p_id=>wwv_flow_imp.id(429487948217498488)
,p_name=>'P795_CIUDA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(717136054470373911)
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
 p_id=>wwv_flow_imp.id(429488367929498488)
,p_name=>'P795_COMENTARIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(717136054470373911)
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
 p_id=>wwv_flow_imp.id(429494647221498493)
,p_name=>'P795_DET_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(723617509424470602)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429495742241498494)
,p_name=>'P795_BUSQUEDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1223982849215678423)
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
 p_id=>wwv_flow_imp.id(429496102757498495)
,p_name=>'P795_DIR_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1223982849215678423)
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
 p_id=>wwv_flow_imp.id(429496503323498495)
,p_name=>'P795_LATITUD_LONGITUD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1223982849215678423)
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
 p_id=>wwv_flow_imp.id(429497523872498495)
,p_name=>'P795_DESC_STA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(717135227162373903)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(429503855054498502)
,p_name=>'da_click_reg'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#reg_reporte table.t-Report-report tr'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429504369454498503)
,p_event_id=>wwv_flow_imp.id(429503855054498502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   var codsta = $(this.triggeringElement).closest(''tr'').find(''[headers="COD_PROVEEDOR"]'').text(); ',
'   $s(''P795_COD_SELECT'',codsta);',
'   //  alert(codsta);',
'',
'',
'',
'   var nomsta = $(this.triggeringElement).closest(''tr'').find(''[headers="NOMBRE"]'').text(); ',
'   $s(''P795_DESC_STA'',codsta+'' - ''+nomsta);',
'   '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(429504719849498504)
,p_name=>'da_ref_reg'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P795_COD_SELECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429505239674498504)
,p_event_id=>wwv_flow_imp.id(429504719849498504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P795_COD_SELECT,P795_DESC_STA'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429505771842498504)
,p_event_id=>wwv_flow_imp.id(429504719849498504)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(723617630370470603)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429506270419498504)
,p_event_id=>wwv_flow_imp.id(429504719849498504)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(723617756428470604)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(429506644063498504)
,p_name=>'DA_OPN_MDL'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(429500978409498497)
,p_condition_element=>'P795_COD_SELECT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429507100250498504)
,p_event_id=>wwv_flow_imp.id(429506644063498504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P795_ABM_DPTO,P795_ABM_CIUDAD'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429507610225498505)
,p_event_id=>wwv_flow_imp.id(429506644063498504)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar un STA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429508150873498505)
,p_event_id=>wwv_flow_imp.id(429506644063498504)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(726877473213084692)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(429508518145498505)
,p_name=>'DA_OPN_MDAL'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(429502776476498499)
,p_condition_element=>'P795_COD_SELECT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429509031007498505)
,p_event_id=>wwv_flow_imp.id(429508518145498505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P795_ABM_RUBRO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429509574558498505)
,p_event_id=>wwv_flow_imp.id(429508518145498505)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar un STA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429510031396498506)
,p_event_id=>wwv_flow_imp.id(429508518145498505)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(726877613915084693)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(429510449782498506)
,p_name=>'da_guarda_zona'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(429481230849498484)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429510957241498506)
,p_event_id=>wwv_flow_imp.id(429510449782498506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P795_ABM_CIUDAD IS NULL AND :P795_ABM_DPTO IS NULL THEN',
'     raise_application_error(-20000, ''Debe seleccionar el Departamento y/o Ciudad'' );',
'ELSE',
'    declare',
'        dummy varchar2(1);',
'    begin',
'        select  distinct ''1''',
'        into dummy',
'        from CA_COBERTURA_localidad',
'        where cod_empresa=NVL(:P_COD_EMPRESA,''1'')',
'        and   cod_proveedor=:P795_COD_SELECT',
'        and   cod_pais=''PAR''',
'        AND   cod_departamento= :P795_ABM_DPTO',
'        and   NVL(cod_ciudad,''NN'')= NVL(:P795_ABM_CIUDAD ,''NN'')',
'        ;',
'        ',
'             raise_application_error(-20000, ''Ya existe registro para el Departamento/Ciudad indicado.'' );',
'    exception',
'        when no_data_found then',
'            begin',
'                insert into CA_COBERTURA_localidad',
'                (COD_EMPRESA,COD_PAIS,COD_DEPARTAMENTO,COD_CIUDAD,COD_PROVEEDOR,IND_ACTIVO)',
'                values',
'                (nvl(:P_COD_EMPRESA,''1''),''PAR'',:P795_ABM_DPTO,:P795_ABM_CIUDAD,:P795_COD_SELECT ,''S'')',
'                ;',
'            exception',
'                when others then',
'                     raise_application_error(-20000, sqlerrm );',
'            end;',
'        when others then',
'             raise_application_error(-20000, sqlerrm );',
'    end;',
'END IF;'))
,p_attribute_02=>'P795_ABM_DPTO,P795_ABM_CIUDAD,P795_COD_SELECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429511488923498506)
,p_event_id=>wwv_flow_imp.id(429510449782498506)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(723617630370470603)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429511995313498506)
,p_event_id=>wwv_flow_imp.id(429510449782498506)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(726877473213084692)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(429512313345498506)
,p_name=>'DA_GUARDA_RUBRO'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(429482792818498484)
,p_condition_element=>'P795_ABM_RUBRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429512849001498507)
,p_event_id=>wwv_flow_imp.id(429512313345498506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P795_ABM_RUBRO is NULL THEN ',
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
'              and c.cod_proveedor =  :P795_COD_SELECT  ',
'               and cl.cod_empresa = c.cod_empresa',
'               and cl.cod_persona = c.cod_persona',
'               and cl.cod_empresa = cr.cod_empresa',
'               and cl.cod_cliente = cr.cod_cliente',
'			   and cl.tip_cliente IN(28,77)',
'               and cr.cod_DIVISION =  :P795_ABM_RUBRO',
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
'                          and c.cod_proveedor =  :P795_COD_SELECT        ',
'                           and cl.cod_empresa = c.cod_empresa',
'                           and cl.cod_persona = c.cod_persona  ',
'						   and cl.tip_cliente IN(28,77)',
'                           ;',
'',
'                        INSERT INTO CC_CLIENTES_RUBROS',
'                        (COD_EMPRESA,COD_CLIENTE,COD_DIVISION,ACTIVO,cod_rubro)',
'                        VALUES',
'                        (nvl(:P_COD_EMPRESA,''1''),CODCLI,:P795_ABM_RUBRO,''S'',''0'');',
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
,p_attribute_02=>'P795_COD_SELECT,P795_ABM_RUBRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429513309743498507)
,p_event_id=>wwv_flow_imp.id(429512313345498506)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar una Division.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429513842763498507)
,p_event_id=>wwv_flow_imp.id(429512313345498506)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(723617756428470604)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429514379673498507)
,p_event_id=>wwv_flow_imp.id(429512313345498506)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(726877613915084693)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(429514740812498507)
,p_name=>'da_opn_geo'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P795_VER_GEO'
,p_condition_element=>'P795_VER_GEO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429515252586498508)
,p_event_id=>wwv_flow_imp.id(429514740812498507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P795_DIR_CLIENTE := NULL;',
'    :P795_LATITUD_LONGITUD := NULL;',
'	:P795_BUSQUEDA := NULL;--P795_DIRECCION',
'',
'    SELECT direccion,REPLACE(latitud,'','',''.'')||'',''||REPLACE(longitud,'','',''.'')',
'    INTO    :P795_DIR_CLIENTE,:P795_LATITUD_LONGITUD',
'    FROM BS_SUCURSAL_CLIENTE',
'    WHERE COD_SUCURSAL = (',
'        SELECT MIN(COD_SUCURSAL)',
'        FROM BS_SUCURSAL_CLIENTE',
'        WHERE COD_PERSONA = :P795_VER_GEO',
'    )',
'    AND COD_PERSONA= :P795_VER_GEO ;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       :P795_LATITUD_LONGITUD:= NULL;',
'END;'))
,p_attribute_02=>'P795_VER_GEO'
,p_attribute_03=>'P795_DIR_CLIENTE,P795_LATITUD_LONGITUD,P795_BUSQUEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429515795889498508)
,p_event_id=>wwv_flow_imp.id(429514740812498507)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P795_DIR_CLIENTE,P795_LATITUD_LONGITUD,P795_BUSQUEDA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429516266134498508)
,p_event_id=>wwv_flow_imp.id(429514740812498507)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1223982849215678423)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(429516644189498508)
,p_name=>'da_updt_geo'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(429495318619498494)
,p_condition_element=>'P795_LATITUD_LONGITUD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429517132838498508)
,p_event_id=>wwv_flow_imp.id(429516644189498508)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Para actualizar la Geolocalizaci\00F3n es necesario la Latitud y Longitud.')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429517689674498509)
,p_event_id=>wwv_flow_imp.id(429516644189498508)
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
'        cod_persona = :p795_ver_geo;',
'',
'    -- Si no se encuentra ninguna sucursal, lanzar un error',
'    IF min_cod_sucursal IS NULL THEN',
'        raise_application_error(-20000, ''El STA no tiene definido una Sucursal en su Ficha.'');',
'    END IF;',
'',
unistr('    -- Realizar la actualizaci\00F3n utilizando la menor cod_sucursal'),
'    UPDATE bs_sucursal_cliente',
'    SET',
'        direccion = nvl(:p795_dir_cliente, direccion),',
'        latitud = substr(:p795_latitud_longitud,',
'                         1,',
'                         instr(:p795_latitud_longitud, '','') - 1),',
'        longitud = substr(:p795_latitud_longitud,',
'                          instr(:p795_latitud_longitud, '','') + 1)',
'    WHERE',
'            cod_persona = :p795_ver_geo',
'        AND cod_sucursal = min_cod_sucursal;',
'',
'EXCEPTION',
'    WHEN no_data_found THEN',
'        raise_application_error(-20000, ''El STA no tiene definido una Sucursal en su Ficha.'');',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, sqlerrm);',
'END;'))
,p_attribute_02=>'P795_LATITUD_LONGITUD,P795_DIR_CLIENTE,P795_VER_GEO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429518198861498509)
,p_event_id=>wwv_flow_imp.id(429516644189498508)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1223982849215678423)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429518682726498509)
,p_event_id=>wwv_flow_imp.id(429516644189498508)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(723617509424470602)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429519125423498509)
,p_event_id=>wwv_flow_imp.id(429516644189498508)
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
 p_id=>wwv_flow_imp.id(429519543355498509)
,p_name=>'da_zona_estado'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P795_IND_ZONA'
,p_condition_element=>'P795_IND_ZONA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429520015292498510)
,p_event_id=>wwv_flow_imp.id(429519543355498509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de actualizar el estado?'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429520527375498510)
,p_event_id=>wwv_flow_imp.id(429519543355498509)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin	',
'    /*update CA_COBERTURA_LOCALIDAD',
'    set ind_activo = decode(nvl(ind_activo,''N''),''S'',''N'',''S'')',
'    where cod_empresa= nvl(:P_COD_EMPRESA,''1'')',
'    and cod_proveedor||''-''||cod_pais||''-''||cod_departamento||''-''||cod_ciudad = :P795_IND_ZONA;*/',
'	DELETE FROM CA_COBERTURA_LOCALIDAD ',
'	where cod_empresa = nvl(:P_COD_EMPRESA,''1'')',
'    and cod_proveedor||''-''||cod_pais||''-''||cod_departamento||''-''||cod_ciudad = :P795_IND_ZONA;',
'exception',
'    when others then',
'         raise_application_error(-20000, sqlerrm );',
'end;'))
,p_attribute_02=>'P795_IND_ZONA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429521038426498510)
,p_event_id=>wwv_flow_imp.id(429519543355498509)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(726877473213084692)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429521547194498510)
,p_event_id=>wwv_flow_imp.id(429519543355498509)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(723617630370470603)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(429521914613498510)
,p_name=>'da_estado_rubro'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P795_IND_RUBRO'
,p_condition_element=>'P795_IND_RUBRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
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
 p_id=>wwv_flow_imp.id(429522447077498510)
,p_event_id=>wwv_flow_imp.id(429521914613498510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de actualizar el estado?'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429522906020498510)
,p_event_id=>wwv_flow_imp.id(429521914613498510)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    /*update CC_CLIENTES_RUBROS',
'    set  activo = decode(nvl( activo,''N''),''S'',''N'',''S'')',
'    where cod_empresa= nvl(:P_COD_EMPRESA,''1'')',
'    and COD_CLIENTE||''-''||cod_division  = :P795_IND_RUBRO*/',
'	DELETE FROM CC_CLIENTES_RUBROS',
'	where cod_empresa= nvl(:P_COD_EMPRESA,''1'')',
'    and COD_CLIENTE||''-''||cod_division  = :P795_IND_RUBRO',
';',
'exception',
'    when others then',
'         raise_application_error(-20000, sqlerrm );',
'end;',
' ',
''))
,p_attribute_02=>'P795_IND_RUBRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429523431599498511)
,p_event_id=>wwv_flow_imp.id(429521914613498510)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(726877613915084693)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429523951750498511)
,p_event_id=>wwv_flow_imp.id(429521914613498510)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(723617756428470604)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(429524392034498511)
,p_name=>'DA_YN'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P795_DESC_STA'
,p_condition_element=>'P795_DESC_STA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429524877133498511)
,p_event_id=>wwv_flow_imp.id(429524392034498511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P795_DESC_STA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429525353658498511)
,p_event_id=>wwv_flow_imp.id(429524392034498511)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P795_DESC_STA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429525825537498511)
,p_event_id=>wwv_flow_imp.id(429524392034498511)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P795_DIRECCION := NULL;',
':P795_EMAIL := NULL;',
':P795_TELEFONO_ALT := NULL;',
':P795_DEPARTAMENTO := NULL;',
':P795_CIUDA := NULL;',
':P795_COMENTARIO := NULL;'))
,p_attribute_02=>'P795_COD_STA_2'
,p_attribute_03=>'P795_DIRECCION,P795_EMAIL,P795_TELEFONO_ALT,P795_DEPARTAMENTO,P795_CIUDA,P795_COMENTARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(429526217187498512)
,p_name=>'da_afr'
,p_event_sequence=>130
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(723617509424470602)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429526702328498512)
,p_event_id=>wwv_flow_imp.id(429526217187498512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P795_DESC_STA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(429527133065498512)
,p_name=>'DA_DET_DATA'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P795_DET_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429527688053498512)
,p_event_id=>wwv_flow_imp.id(429527133065498512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P795_DET_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429528133167498512)
,p_event_id=>wwv_flow_imp.id(429527133065498512)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    cobersta.sp_gestionar_ot(',
'		p_cod_proveedor => :p795_det_data, ',
'		direccion => :p795_direccion, ',
'		email => :p795_email, ',
'		telefono => :p795_telefono_alt,',
'    	departamento => :p795_departamento,',
'		ciudad => :p795_ciuda,',
'        comentarios => :p795_comentario);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        apex_debug.error(''DA_DET_DATA '' || sqlerrm);',
'END;'))
,p_attribute_02=>'P795_DET_DATA'
,p_attribute_03=>'P795_DIRECCION,P795_EMAIL,P795_TELEFONO_ALT,P795_DEPARTAMENTO,P795_CIUDA,P795_COMENTARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P795_DET_DATA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(429528570538498512)
,p_name=>'DA_REFRESH'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P795_STA,P795_DTO,P795_CIUDAD,P795_RUBRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429529004046498513)
,p_event_id=>wwv_flow_imp.id(429528570538498512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P795_COD_SELECT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P795_STA'
,p_attribute_07=>'P795_STA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429529591767498513)
,p_event_id=>wwv_flow_imp.id(429528570538498512)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(723617509424470602)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429530078260498513)
,p_event_id=>wwv_flow_imp.id(429528570538498512)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(723617756428470604)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429530535172498513)
,p_event_id=>wwv_flow_imp.id(429528570538498512)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(723617630370470603)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429531076329498513)
,p_event_id=>wwv_flow_imp.id(429528570538498512)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P795_CIUDAD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429531585695498514)
,p_event_id=>wwv_flow_imp.id(429528570538498512)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P795_DIRECCION,P795_EMAIL,P795_TELEFONO_ALT,P795_DEPARTAMENTO,P795_CIUDA,P795_COMENTARIO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(429531900571498514)
,p_name=>'DA_CHNG_COM'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P795_COD_STA_2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429532477215498514)
,p_event_id=>wwv_flow_imp.id(429531900571498514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P795_COMENT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429532960691498514)
,p_event_id=>wwv_flow_imp.id(429531900571498514)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P795_ASIGNABLE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT a.asignable_ot from cm_proveedores a where a.cod_empresa = :P_COD_EMPRESA and a.cod_proveedor = :P795_COD_SELECT;'
,p_attribute_07=>'P795_ASIGNABLE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429533481582498514)
,p_event_id=>wwv_flow_imp.id(429531900571498514)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(760114640892081898)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(429533885129498514)
,p_name=>'DA_OK'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(429483861846498486)
,p_condition_element=>'P795_ASIGNABLE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429534366515498515)
,p_event_id=>wwv_flow_imp.id(429533885129498514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P795_ASIGNABLE IS NOT NULL THEN ',
'        BEGIN               ',
'			UPDATE CM_PROVEEDORES SET ASIGNABLE_OT = :P795_ASIGNABLE WHERE COD_EMPRESA = :P_COD_EMPRESA AND COD_PROVEEDOR = :P795_COD_SELECT;              ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                raise_application_error(-20000, sqlerrm );',
'        END;',
'END IF;',
'',
'IF :P795_COMENT IS NOT NULL THEN ',
'        BEGIN               ',
'			UPDATE CM_PROVEEDORES SET OBSERVACION = :P795_COMENT WHERE COD_EMPRESA = :P_COD_EMPRESA AND COD_PROVEEDOR = :P795_COD_SELECT;              ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                raise_application_error(-20000, sqlerrm );',
'        END;',
'END IF;',
''))
,p_attribute_02=>'P795_COMENT,P795_ASIGNABLE,P795_COD_SELECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429534860900498515)
,p_event_id=>wwv_flow_imp.id(429533885129498514)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(723617509424470602)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429535337320498515)
,p_event_id=>wwv_flow_imp.id(429533885129498514)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P795_COMENTARIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(429535801375498515)
,p_event_id=>wwv_flow_imp.id(429533885129498514)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(760114640892081898)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(429503436145498502)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear_Pag'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp.component_end;
end;
/
