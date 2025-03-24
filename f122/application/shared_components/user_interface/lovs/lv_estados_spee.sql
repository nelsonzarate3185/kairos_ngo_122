prompt --application/shared_components/user_interface/lovs/lv_estados_spee
begin
--   Manifest
--     LV_ESTADOS_SPEE
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
 p_id=>wwv_flow_imp.id(661673983748287327)
,p_lov_name=>'LV_ESTADOS_SPEE'
,p_lov_query=>'.'||wwv_flow_imp.id(661673983748287327)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(661674252873287336)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Publicar'
,p_lov_return_value=>'PUBLICAR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(661674697544287337)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Borrador'
,p_lov_return_value=>'BORRADOR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(661675053083287337)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Cancelar publicacion'
,p_lov_return_value=>'CANCELAR_PUBLICACION'
);
wwv_flow_imp.component_end;
end;
/
