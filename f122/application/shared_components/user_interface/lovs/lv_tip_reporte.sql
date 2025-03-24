prompt --application/shared_components/user_interface/lovs/lv_tip_reporte
begin
--   Manifest
--     LV_TIP_REPORTE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6241954471116720)
,p_lov_name=>'LV_TIP_REPORTE'
,p_lov_query=>'.'||wwv_flow_imp.id(6241954471116720)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6242255722116721)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Valorizado en moneda nac.'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6242608605116722)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Discriminando monedas'
,p_lov_return_value=>'2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6243077847116722)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Incluye Gasto de Finan.'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6243498754116722)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Gasto de Finan.(Corporac.)'
,p_lov_return_value=>'4'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6243833401116722)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Productos Descuentos 99 y 100%'
,p_lov_return_value=>'5'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6244282777116722)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Datos de Entregas-Tiempo-EX'
,p_lov_return_value=>'6'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6244668799116722)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Valorizado - Not.Cred. con OT'
,p_lov_return_value=>'7'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6245067532116723)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Resumido - SNC'
,p_lov_return_value=>'8'
);
wwv_flow_imp.component_end;
end;
/
