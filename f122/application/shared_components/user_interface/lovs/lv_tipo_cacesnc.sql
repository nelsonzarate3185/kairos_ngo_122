prompt --application/shared_components/user_interface/lovs/lv_tipo_cacesnc
begin
--   Manifest
--     LV_TIPO_CACESNC 
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
 p_id=>wwv_flow_imp.id(156777946360121314)
,p_lov_name=>'LV_TIPO_CACESNC '
,p_lov_query=>'.'||wwv_flow_imp.id(156777946360121314)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(156778206949121312)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ORDEN DE TRABAJO'
,p_lov_return_value=>'OT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(156778607942121310)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'FACTURA COMPRA'
,p_lov_return_value=>'FC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(156779071851121310)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'FACTURA VENTA'
,p_lov_return_value=>'FV'
);
wwv_flow_imp.component_end;
end;
/
