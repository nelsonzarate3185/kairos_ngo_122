prompt --application/shared_components/user_interface/lovs/lvbancos
begin
--   Manifest
--     LVBANCOS
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
 p_id=>wwv_flow_imp.id(113440174009956087)
,p_lov_name=>'LVBANCOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_per_juridica ||'' - ''||nvl(rtrim(p.nombre ), ltrim(p.nomb_fantasia) ) nombre, c.cod_per_juridica R',
'from cc_valores c, personas p ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and tip_documento = :P375_A_TIP_COMPROBANTE ',
'and ser_documento = :P375_A_SER_COMPROBANTE ',
'and nro_valor = :P375_A_NRO_VALOR ',
'and nvl(estado_valor,''P'') in (''P'',''R'') ',
'and c.cod_per_juridica = p.cod_persona ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
