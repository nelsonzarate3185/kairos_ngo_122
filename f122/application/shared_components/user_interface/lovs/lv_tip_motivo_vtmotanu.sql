prompt --application/shared_components/user_interface/lovs/lv_tip_motivo_vtmotanu
begin
--   Manifest
--     LV_TIP_MOTIVO_VTMOTANU
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
 p_id=>wwv_flow_imp.id(34022957480475610)
,p_lov_name=>'LV_TIP_MOTIVO_VTMOTANU'
,p_lov_query=>'.'||wwv_flow_imp.id(34022957480475610)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(34023229599475615)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Factura'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(34023622610475616)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Orden de Trabajo'
,p_lov_return_value=>'2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(34024010519475616)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Pedido'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(34024495986475617)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Recibo'
,p_lov_return_value=>'4'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(34024821194475617)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>unistr('Remisi\00F3n')
,p_lov_return_value=>'5'
);
wwv_flow_imp.component_end;
end;
/
