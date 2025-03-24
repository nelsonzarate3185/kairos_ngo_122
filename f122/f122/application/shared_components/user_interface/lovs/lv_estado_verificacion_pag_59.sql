prompt --application/shared_components/user_interface/lovs/lv_estado_verificacion_pag_59
begin
--   Manifest
--     LV_ESTADO_VERIFICACION_PAG_59
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
 p_id=>wwv_flow_imp.id(667153103376837495)
,p_lov_name=>'LV_ESTADO_VERIFICACION_PAG_59'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''CREADO'' d ,''CREADO'' c',
'from dual',
'union all',
'select ''VERIFICADO NIVEL 1'' d, ''VERIFICADO'' C ',
'from dual',
'union all',
'select ''VERIFICADO NIVEL 2'' d, ''AUTORIZADOMKT'' C ',
'from dual',
'union all',
'select ''VERIFICADO NIVEL 3'' d, ''AUTORIZADOADM'' C ',
'from dual',
'union all',
'select ''VERIFICADO NIVEL 4(FIJA PRECIOS)'' d, ''AUTORIZADOCOM'' C ',
'from dual',
'union all',
'select ''VERIFICADO NIVEL 5(Confirmado para Venta)'' d, ''CONFIRMADO_COMERCIAL'' C ',
'from dual',
'union all',
'selecT ''CONFIRMADO DEPOSITO'' d, ''CONFIRMADODEP'' c FROM DUAL'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'C'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
