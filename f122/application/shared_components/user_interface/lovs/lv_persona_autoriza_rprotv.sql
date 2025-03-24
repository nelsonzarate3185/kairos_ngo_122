prompt --application/shared_components/user_interface/lovs/lv_persona_autoriza_rprotv
begin
--   Manifest
--     LV_PERSONA_AUTORIZA_RPROTV
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
 p_id=>wwv_flow_imp.id(136441782312983919)
,p_lov_name=>'LV_PERSONA_AUTORIZA_RPROTV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pe.nombre,',
'       pe.cod_persona',
'  from personas pe',
' where pe.cod_persona in (select u.cod_persona',
'                             from usuarios u,',
'                                  permisos_opciones p',
'                            where u.cod_usuario = p.cod_usuario',
'                              and p.nom_forma   = :P462_cod_forma)'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_PERSONA'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
