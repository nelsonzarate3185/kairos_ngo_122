prompt --application/shared_components/user_interface/lovs/lv_clientes2
begin
--   Manifest
--     LV_CLIENTES2
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
 p_id=>wwv_flow_imp.id(12389581662156591)
,p_lov_name=>'LV_CLIENTES2'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre ||'' ''||PI.NUMERO||''''||C.COD_CLIENTE NOMBRE,cod_cliente ',
'from cc_clientes c, personas p, ',
'telef_personas pt, ident_personas pi ',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and nvl(c.estado,''X'') IN (''A'',''C'',''B'') ',
'order by nombre'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
