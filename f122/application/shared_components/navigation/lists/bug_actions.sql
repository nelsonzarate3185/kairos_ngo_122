prompt --application/shared_components/navigation/lists/bug_actions
begin
--   Manifest
--     LIST: Bug Actions
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(13723842098101281)
,p_name=>'Bug Actions'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13724162973101282)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'Iniciar Visita'
,p_list_item_link_target=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.:81:P83_COD_CLIENTE,P83_COD_COBRADOR:&P82_COD_CLIENTE.,&P82_COBRADOR.:'
,p_list_item_icon=>'fa-check'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13724551167101286)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Facturas Cobradas'
,p_list_item_link_target=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:58:P58_NRO_MOVIMIENTO:&P56_NRO_MOVIMIENTO.:'
,p_list_item_icon=>'fa-clipboard-check'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13724929296101286)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Forma de Cobro'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:60:P60_NRO_MOVIMIENTO:&P56_NRO_MOVIMIENTO.:'
,p_list_item_icon=>'fa-money'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13725325616101286)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Doc. Entregados'
,p_list_item_link_target=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:61:P61_NRO_MOVIMIENTO:&P56_NRO_MOVIMIENTO.:'
,p_list_item_icon=>'fa-download-alt'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13725746686101286)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Doc.Retirados'
,p_list_item_link_target=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.::P62_NRO_MOVIMIENTO:&P56_NRO_MOVIMIENTO.:'
,p_list_item_icon=>'fa-upload'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13726128761101287)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Comentarios'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:48:P48_NRO_MOVIMIENTO:&P56_NRO_MOVIMIENTO.:'
,p_list_item_icon=>'fa-comments'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13726549837101287)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Reagendar Visita'
,p_list_item_link_target=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:52:P52_NRO_MOVIMIENTO,P52_COD_CLIENTE:&P56_NRO_MOVIMIENTO.,&P56_COD_CLIENTE.:'
,p_list_item_icon=>'fa-office-phone'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13726974307101287)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Finalizar'
,p_list_item_link_target=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:51:P84_NRO_MOVIMIENTO,P84_ID_VISITA:&P82_NRO_MOVIMIENTO.,&P82_ID_VISITA.:'
,p_list_item_icon=>'fa-save-as'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13727363824101287)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Ubicacion'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:54:P54_NRO_MOVIMIENTO:&P56_NRO_MOVIMIENTO.:'
,p_list_item_icon=>'fa-map-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13727712978101287)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Adjuntar Documento'
,p_list_item_link_target=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:55:P55_NRO_MOVIMIENTO:&P56_NRO_MOVIMIENTO.:'
,p_list_item_icon=>'fa-paperclip'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
