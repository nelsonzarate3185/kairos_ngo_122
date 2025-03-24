prompt --application/shared_components/user_interface/lovs/lv_estado_cpprpecm
begin
--   Manifest
--     LV_ESTADO_CPPRPECM 
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
 p_id=>wwv_flow_imp.id(165040863043531644)
,p_lov_name=>'LV_ESTADO_CPPRPECM '
,p_lov_query=>'.'||wwv_flow_imp.id(165040863043531644)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(165041165594531641)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'PENDIENTE'
,p_lov_return_value=>'P'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(165041525927531640)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'APROBADO'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(165041944068531640)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'RECHAZADO'
,p_lov_return_value=>'R'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(165042384382531639)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'PROCESADO '
,p_lov_return_value=>'C'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(165042782706531639)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'ANULADO'
,p_lov_return_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
