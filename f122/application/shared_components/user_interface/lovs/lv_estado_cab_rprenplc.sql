prompt --application/shared_components/user_interface/lovs/lv_estado_cab_rprenplc
begin
--   Manifest
--     LV_ESTADO_CAB_RPRENPLC 
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
 p_id=>wwv_flow_imp.id(130001223166628536)
,p_lov_name=>'LV_ESTADO_CAB_RPRENPLC '
,p_lov_query=>'.'||wwv_flow_imp.id(130001223166628536)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(130001506076628536)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Pendiente'
,p_lov_return_value=>'P'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(130001909077628535)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Anulado'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(130002347332628535)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Facturado'
,p_lov_return_value=>'F'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(130002708477628535)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Impreso'
,p_lov_return_value=>'I'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(130003149403628535)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Confirmado'
,p_lov_return_value=>'C'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(130003561571628535)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Rendido'
,p_lov_return_value=>'R'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(130003990433628535)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Rubricado'
,p_lov_return_value=>'L'
);
wwv_flow_imp.component_end;
end;
/
