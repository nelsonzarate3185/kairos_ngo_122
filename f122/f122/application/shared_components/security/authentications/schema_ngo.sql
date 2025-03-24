prompt --application/shared_components/security/authentications/schema_ngo
begin
--   Manifest
--     AUTHENTICATION: schema_ngo
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(40361584001984536)
,p_name=>'schema_ngo'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'inv.seguridad.auth_adm'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_imp.component_end;
end;
/
