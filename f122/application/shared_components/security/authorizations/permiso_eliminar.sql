prompt --application/shared_components/security/authorizations/permiso_eliminar
begin
--   Manifest
--     SECURITY SCHEME: PERMISO_ELIMINAR
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(255764441592110386)
,p_name=>'PERMISO_ELIMINAR'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vcontrol NUMBER;',
'BEGIN',
'',
'    vcontrol := seguridad_granular.retorna_permiso_boton(ppage_id     => :app_page_id,',
'                                                         papli0100_id => :p_apli0100_id,',
'                                                         pcod_empresa => :p_cod_empresa,',
'                                                         pusua0100_id => :p_usua0100_id,',
'                                                         pdm_boto     => 3);',
'',
'    IF vcontrol = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;',
''))
,p_error_message=>'No tiene permiso para Eliminar.'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/
