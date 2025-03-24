prompt --application/shared_components/user_interface/lovs/lv_clientes_stremgua
begin
--   Manifest
--     LV_CLIENTES_STREMGUA
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
 p_id=>wwv_flow_imp.id(124181528351083647)
,p_lov_name=>'LV_CLIENTES_STREMGUA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente ||'' - ''|| p.nombre D,',
'       c.cod_cliente  R,',
'       decode(c.estado, ''A'', ''Activo'',',
'                        ''I'', ''Inactivo'',',
'                        ''B'', ''Bloqueado'',',
'                        ''C'', ''Cred. Bloqueado'',',
'                        ''D'', ''Demandado'',',
'                        ''R'', ''Bloq. Rend. STA'',',
'                             ''Ninguno'') estado',
'  from cc_clientes c,',
'       personas p',
' where c.cod_persona = p.cod_persona',
'   and c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_cliente in (select distinct cod_cliente from rp_productos_en_guarda)',
'',
'union',
'',
'select ''TODOS'', ''TODOS'', ''TODOS'' ',
'from dual',
' '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
