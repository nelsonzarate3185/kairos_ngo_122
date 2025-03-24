prompt --application/shared_components/user_interface/lovs/lv_personas_viatico
begin
--   Manifest
--     LV_PERSONAS_VIATICO
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
 p_id=>wwv_flow_imp.id(600272696188991264)
,p_lov_name=>'LV_PERSONAS_VIATICO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.NOMBRE , P.cod_persona ',
'				  FROM PERSONAS P ',
'				 WHERE  ( nvl((',
'BUSCA_PERMISO(:P_COD_EMPRESA,''CPSVALES'',:APP_USER,''VER_PERSONAS'')),''N'')=''S'' AND EXISTS (select DISTINCT ''1''',
'                                from cp_vales c',
'                                where c.cod_empresa=:P_COD_EMPRESA',
'                                and c.Cod_Persona=P.Cod_Persona ',
'                                 ',
'                                 )',
'                    )',
'                  ',
'union all',
'    SELECT P.NOMBRE , P.cod_persona ',
'    FROM PERSONAS P ',
'    WHERE exists ',
'         (',
'                             select   DISTINCT ''1''',
'                                  from ASP$USUA0100 u',
'                                  where U.USRN = :APP_USER',
'                                  and  u.cod_persona =  P.cod_persona ',
'                                   UNION ALL',
'                                  select  DISTINCT ''1''',
'                                  from usuarios u1',
'                                  where cod_usuario = :APP_USER',
'                                  and  u1.cod_persona= P.cod_persona ',
'                        )',
'',
'ORDER BY 1 ASC'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_PERSONA'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
