prompt --application/shared_components/files/editar_png
begin
--   Manifest
--     APP STATIC FILES: 122
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773DF80000000473424954080808087C0864880000000970485973000000AA000000AA01060A704F0000001974455874536F667477617265007777772E696E6B73636170652E';
wwv_flow_imp.g_varchar2_table(2) := '6F72679BEE3C1A00000297494441544889CDD54B4894511407F0FFF95EF3CDA814443306A346911A2E0A1D6DC44704090582D6AA162DD4C48C6C256DA37011B995089A98456419B4E8B59002A5988F5109A1B01249120C22823075BEF17BDCD3A21659CE';
wwv_flow_imp.g_varchar2_table(3) := '53171DB8DBDFFF9C7B2FF71233632B8A423DDBBC9ADB2D544F275CF719B13364C6220BB4150145CD9D3B1DF6C4C4F61D256E4D832ECDCDAC490B73361CAB9A981914EAF1E99A731A826AFFE94CC2CB8411194E8B936AC0167BAD337D24FCBB0000EA937B';
wwv_flow_imp.g_varchar2_table(4) := 'B6FC71E68E5410EEAEF128EE6762BA0882FEF762B092126FE8F53BA41AA23C50E636EF73D587119BBE7F0300B855D52A98DA1541DC2711DF4D18B72FE4B42D0DBD7E471131511E28B306DA55A832D4C15147BB7FD3B64E9D53E53793368007A487BB4C62';
wwv_flow_imp.g_varchar2_table(5) := '3A9288DF8AE78E17975A036D1A3CBF87140C7570D4915FCD4BCCBC4CB653AD00D025999239E1B230447971C93A1C0088009F462CF1323B565372323A2F650B034061B83BE0C8C210151BE00CA84363AEF4FCFD0A3B56D39A117D0B00290F7023DCD56443';
wwv_flow_imp.g_varchar2_table(6) := '540482A9F177EB7000C86A827CF1AC020AEB3A8AF3C5330650A8C7E7EA5A4C94FBF3C23306688A6881EDEED1975640493B673C6380228963C70F26ECDA82AF28EA1FB168C9CC090732DC228F8AD61375ABEAC9432B68BB0E6BAA7FC432F70765697C362B';
wwv_flow_imp.g_varchar2_table(7) := '3CED04DEFA8EDDA645C1C64A13C6AC8EAAA0A5598B3F3465FC4346DC17EE6AF486CF5EC930817C94087CE0528900C352641E63C26339693F4A4C46BF64683B04A6C3690324C26BC174D5B1F985E92D8DF3D865272D9AA25206AC1A916900D3F9A07F564E';
wwv_flow_imp.g_varchar2_table(8) := '6FD17F16F0EB2F96004C38C20D6F2D4D6110C7014001F10D025DD3EBBB5489A5A94DC9C43213B702D40E169500A0243DA5C3DEB5451BC079261EDC64F30E989E42508B3911FD04003F01F9B178B36F27B0D40000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(38538873168157057)
,p_file_name=>'editar.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
