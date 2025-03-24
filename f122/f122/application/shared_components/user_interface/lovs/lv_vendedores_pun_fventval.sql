prompt --application/shared_components/user_interface/lovs/lv_vendedores_pun_fventval
begin
--   Manifest
--     LV_VENDEDORES_PUN_ FVENTVAL
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
 p_id=>wwv_flow_imp.id(69402833638611966)
,p_lov_name=>'LV_VENDEDORES_PUN_ FVENTVAL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_VENDEDOR||'' - ''||p.nombre D, ',
'       COD_VENDEDOR R,',
'       P.COD_PERSONA, ',
'       I.NUMERO, (select cc.cod_cliente||''-''||p2.nombre',
'       from cc_clientes cc, personas p2 where cc.cod_empresa=v.cod_empresa and cc.cod_cliente=v.cod_distribuidor and cc.cod_persona=p2.cod_persona)distribuidor',
'  from st_vendedor_promo v, personas p, IDENT_PERSONAS I',
' where v.cod_empresa =  :p_cod_empresa',
'   and v.cod_persona = p.cod_persona',
'   and  NVL(ACTIVO,''A'') <> ''I''',
'   and I.COD_PERSONA = P.COD_PERSONA',
'   and I.COD_IDENT IN (''CI'')'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(69405539634618217)
,p_query_column_name=>'R'
,p_heading=>unistr('C\00F3d.')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(69405920003618217)
,p_query_column_name=>'D'
,p_heading=>'Vendedor'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(69406381395618218)
,p_query_column_name=>'COD_PERSONA'
,p_heading=>'Persona'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(69406757606618218)
,p_query_column_name=>'NUMERO'
,p_heading=>unistr('N\00FAmero')
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(185083020808068038)
,p_query_column_name=>'DISTRIBUIDOR'
,p_heading=>'Distribuidor'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
