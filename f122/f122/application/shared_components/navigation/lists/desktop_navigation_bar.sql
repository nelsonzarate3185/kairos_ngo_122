prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
--   Manifest
--     LIST: Desktop Navigation Bar
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
 p_id=>wwv_flow_imp.id(40210194623263685)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(185333947627475806)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>unistr('Instalar Aplicaci\00F3n')
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1054141142626469015)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Procesos'
,p_list_item_link_target=>'f?p=&APP_ID.:826:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-pdf-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(846578158035250739)
,p_list_item_display_sequence=>3
,p_list_item_link_text=>'Reserva de Salas'
,p_list_item_link_target=>'f?p=&APP_ID.:775:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-calendar-clock'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT DISTINCT ''S''',
'                 FROM inv.Asp$usua0130 U130,',
'                      INV.ASP$USUA0100 U100,',
'                      inv.Asp$modu0330 M330,',
'                      inv.Asp$modu0300 M300',
'                WHERE U130.role0100$id = M330.role0100$id',
'                  AND M330.modu0300$id = m300.id',
'                  AND U130.USUA0100$ID = U100.ID',
'                  AND U100.USRN= :APP_USER',
'                  AND M300.Page_id = 775;',
'                '))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(846577885942247140)
,p_list_item_display_sequence=>4
,p_list_item_link_text=>'Agenda'
,p_list_item_link_target=>'f?p=&APP_ID.:774:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-address-book-o'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT DISTINCT ''S''',
'                 FROM inv.Asp$usua0130 U130,',
'                      INV.ASP$USUA0100 U100,',
'                      inv.Asp$modu0330 M330,',
'                      inv.Asp$modu0300 M300',
'                WHERE U130.role0100$id = M330.role0100$id',
'                  AND M330.modu0300$id = m300.id',
'                  AND U130.USUA0100$ID = U100.ID',
'                  AND U100.USRN= :APP_USER',
'                  AND M300.Page_id = 774;',
'                '))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70557822331269681)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Programas'
,p_list_item_link_target=>'f?p=&APP_ID.:268:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-laptop'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select * from dual where :app_user in (''ETRINIDAD'',''CHARBA'',''JUANSA'',''OSCARGO'',''INV'',''HSEGOVIA'')'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(103911710894774843)
,p_list_item_display_sequence=>6
,p_list_item_link_text=>'Favoritos'
,p_list_item_link_target=>'f?p=&APP_ID.:360:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-heart-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(46999310104259210)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'Administrativo'
,p_list_item_link_target=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.:206:::'
,p_list_item_icon=>'fa-exchange'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(47006932312368637)
,p_list_item_display_sequence=>7
,p_list_item_link_text=>'Sucursal: &P_DESCRIPCION_SUCURSAL.'
,p_list_item_link_target=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.:206:::'
,p_list_item_icon=>'fa-home'
,p_parent_list_item_id=>wwv_flow_imp.id(46999310104259210)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(73891225469631568)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Empresa: &P_DESCRIPCION_EMPRESA.'
,p_list_item_link_target=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.:300:::'
,p_list_item_icon=>'fa-building'
,p_list_item_disp_cond_type=>'NEVER'
,p_parent_list_item_id=>wwv_flow_imp.id(46999310104259210)
,p_list_item_current_type=>'ALWAYS'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(40221995351263692)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(51578876772435396)
,p_list_item_display_sequence=>28
,p_list_item_link_text=>'Marcador'
,p_list_item_link_target=>'f?p=&APP_ID.:225:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clock-o'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select * from dual /*where :APP_USER IN (''ETRINIDAD'',''CHARBA'', ''HSEGOVIA'')*/'
,p_parent_list_item_id=>wwv_flow_imp.id(40221995351263692)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(939479881887116931)
,p_list_item_display_sequence=>29
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(40221995351263692)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(117570952168442452)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Contacto QR'
,p_list_item_link_target=>'f?p=&APP_ID.:403:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-card'
,p_parent_list_item_id=>wwv_flow_imp.id(40221995351263692)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(40222467069263693)
,p_list_item_display_sequence=>31
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(40221995351263692)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(157794193191021545)
,p_list_item_display_sequence=>32
,p_list_item_link_text=>unistr('Cambiar Contrase\00F1a')
,p_list_item_link_target=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-key'
,p_parent_list_item_id=>wwv_flow_imp.id(40221995351263692)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(939481623219128167)
,p_list_item_display_sequence=>33
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(40221995351263692)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(40222811099263693)
,p_list_item_display_sequence=>34
,p_list_item_link_text=>'Salir'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_imp.id(40221995351263692)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
