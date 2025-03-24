prompt --application/shared_components/files/del_png
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF40000000473424954080808087C0864880000000970485973000000EC000000EC01792871BD0000001974455874536F667477617265007777772E696E6B73636170652E';
wwv_flow_imp.g_varchar2_table(2) := '6F72679BEE3C1A00000472494441545885B5974B6C13571486BF330F3F626792A67102C45113095A0454BCDA0512A51029456AAA4AAD14011B96AC90682B15BA6916A59BB2EA1E58B06AA554AC6824848254C44BA80B84920A0402438C08761AE2D8607B';
wwv_flow_imp.g_varchar2_table(3) := 'C633B70B6C1388C71959E55F79EE9C7BFEEFCE9C39BE5708A8BB5D5D56381219513024229B8101A0B37A7B014829A56E0A5C8CDAF69F89B9B97C90BCB25240BAAFEF7D4FE4184AED07DA02F2BE40E437815FFAD3E9BB2D01CC249351A5D471E008600434';
wwv_flow_imp.g_varchar2_table(4) := '7E538E12F9D5338CB1C154AA14186026995CA7943A0B6C6AD1F84D5DF70CE3EB81870F9FAC08905AB366AB26721E48FC4FE635A54564A43F9DBEE50B505DF995B7605E87704DF3E3C1546AB636A0D57E3C18188828A5C6DFA2394052AF54CECD2493D165';
wwv_flow_imp.g_varchar2_table(5) := '00BAE3FC0C6C7E8BE62FA5D4760F7EA85D0A543F3598C6A7DA43DBB723A110E56BD7027998EBD763F4F5519C9CF40B29B8A6B96E30959AD5003C91637EE6467F3FBD67CFD2333E4EFBA1432B9A478686E89D98A0FBCC192A3B76F885C575C71903D0EE76';
wwv_flow_imp.g_varchar2_table(6) := '7559D526D3505E2E873B3F0F40E7D8585388C8D010DDA74E21A110CAB659B87F9F6785825FF8C16C7777BB168E444668D2E1BCC545B2A3A3B8D96C1DC23A7C78B9F9EEDD749F3C5937BF7DE0002FA6A6C8178B7E10B16228F4B9FE4D7BFB1111D9E6BB2C';
wwv_flow_imp.g_varchar2_table(7) := 'C09B9FA73439497464042D1623B27327D836E51B375E999F3E8D84C375F3F973E7EAF3ED4A054F29A2A1D06B7945645EFFCEB27E04FA9A01348390B6B6A6E62B4038F2A8AF2F0B74AF045093B9762D89F171F444B55D542A60184DCD97AA3D1AE59D781C';
wwv_flow_imp.g_varchar2_table(8) := '0005190DB0829A0338F7EE911D1DC5CBE55E0E1806CA75039903AFD5844087B6427C43E9C92412AD373344D769DBB021F0FCA510FAB7967584E0FFF3AF179CE3E0E6F36891089D434328DB66F1CA954079AA35616BC08396CC6D9BDBFBF7736BD72EECA7';
wwv_flow_imp.g_varchar2_table(9) := '4F0178EFF87192478F064D47D9712A9A52EA664BE6D5775EBC7387A9E1E196200C4D4B6902175B35AFA955085DD72F482691889742A15920D630A8B797D557AFBE32DFB78FF989898609DB366E64D3F9F398D54F746A7898DCA54B0D63354D53EF9A668F';
wwv_flow_imp.g_varchar2_table(10) := 'D693CD1610F9DD17D3F350B68D572A35350778313DCDD4DEBD38990CCA75F1CA65DFD88861FCF3413E3F2750DF094D0366A360B7A3837F8B454A8F1FFB265C2AA3B313DDB2283F7AD4F0BE8810B3AC4FB664B397EB5BB287C9E40951EA7BBFA476A54226';
wwv_flow_imp.g_varchar2_table(11) := '97C3F3BC4010CD140B872F6DCDE73F85253B22CF30C680EB7E934286418F65A1692DF5AEBA0C5D2FB886F165EDBA9E6D30952AB9A6F91530E30B619AF47474B40CA18BB8B1586CCF47CF9EE5960154216645E40B20ED0BD1E293D035CD8D47A3A31FCECD';
wwv_flow_imp.g_varchar2_table(12) := 'FDBD74BCE1C1E4C9AA550947D3FE4064975F42DB71C82C2E06AA0953D79F87E2F19D5BB3D9654DAFE13256CFCE66CB6D6D9F29919F80E78D6282BC0E11211A0E5F56D1E89A46E610E070FA606060557503799006CDAAD193D0354D850C635A0CE3F0B685';
wwv_flow_imp.g_varchar2_table(13) := '85BF9AE55F11A0A64C22112F99E608227B802D0A06A57A3C2F572ACF170A055D134919BA7E21E6BA27D6160A992079FF03860DF481F79EDD810000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(93856633165742765)
,p_file_name=>'DEL.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
