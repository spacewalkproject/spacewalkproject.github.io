--missed index on LOG table for LOG_USER_ID_FK constraint 
create index fk_no_index_0 on LOG (USER_ID);

--missed index on QRTZ_TRIGGERS table for SYS_C009283 constraint 
create index fk_no_index_1 on QRTZ_TRIGGERS (JOB_NAME, JOB_GROUP);

--missed index on RHNACTION table for RHN_ACTION_AT_FK constraint 
create index fk_no_index_2 on RHNACTION (ACTION_TYPE);

--missed index on RHNACTIONCHAIN table for RHN_ACTIONCHAIN_UID_FK constraint 
create index fk_no_index_3 on RHNACTIONCHAIN (USER_ID);

--missed index on RHNACTIONCHAINENTRY table for RHN_ACTCHAINENT_ACID_FK constraint 
create index fk_no_index_4 on RHNACTIONCHAINENTRY (ACTIONCHAIN_ID);

--missed index on RHNACTIONCHAINENTRY table for RHN_ACTCHAINENT_SID_FK constraint 
create index fk_no_index_5 on RHNACTIONCHAINENTRY (SERVER_ID);

--missed index on RHNACTIONCONFIGCHANNEL table for RHN_ACTIONCC_SID_AID_FK constraint 
create index fk_no_index_6 on RHNACTIONCONFIGCHANNEL (SERVER_ID, ACTION_ID);

--missed index on RHNACTIONCONFIGFILENAME table for RHN_ACTIONCF_FAILURE_ID_FK constraint 
create index fk_no_index_7 on RHNACTIONCONFIGFILENAME (FAILURE_ID);

--missed index on RHNACTIONCONFIGFILENAME table for RHN_ACTIONCF_NAME_AID_SID_FK constraint 
create index fk_no_index_8 on RHNACTIONCONFIGFILENAME (SERVER_ID, ACTION_ID);

--missed index on RHNACTIONCONFIGFILENAME table for RHN_ACTIONCF_NAME_CFNID_FK constraint 
create index fk_no_index_9 on RHNACTIONCONFIGFILENAME (CONFIG_FILE_NAME_ID);

--missed index on RHNACTIONCONFIGREVISION table for RHN_ACTIONCR_FAILID_FK constraint 
create index fk_no_index_10 on RHNACTIONCONFIGREVISION (FAILURE_ID);

--missed index on RHNACTIONIMAGEDEPLOY table for RHN_ACT_IDP_ACT_FK constraint 
create index fk_no_index_11 on RHNACTIONIMAGEDEPLOY (ACTION_ID);

--missed index on RHNACTIONKICKSTARTGUEST table for RHN_ACTIONKS_XENGUEST_KSID_FK constraint 
create index fk_no_index_12 on RHNACTIONKICKSTARTGUEST (KS_SESSION_ID);

--missed index on RHNACTIONPACKAGE table for RHN_ACT_P_EVR_FK constraint 
create index fk_no_index_13 on RHNACTIONPACKAGE (EVR_ID);

--missed index on RHNACTIONPACKAGE table for RHN_ACT_P_NAME_FK constraint 
create index fk_no_index_14 on RHNACTIONPACKAGE (NAME_ID);

--missed index on RHNACTIONPACKAGE table for RHN_ACT_P_PAID_FK constraint 
create index fk_no_index_15 on RHNACTIONPACKAGE (PACKAGE_ARCH_ID);

--missed index on RHNACTIONPACKAGEDELTA table for RHN_ACT_PD_PDID_FK constraint 
create index fk_no_index_16 on RHNACTIONPACKAGEDELTA (PACKAGE_DELTA_ID);

--missed index on RHNACTIONPACKAGEREMOVALFAILURE table for RHN_APR_FAILURE_CAPID_FK constraint 
create index fk_no_index_17 on RHNACTIONPACKAGEREMOVALFAILURE (CAPABILITY_ID);

--missed index on RHNACTIONPACKAGEREMOVALFAILURE table for RHN_APR_FAILURE_EID_FK constraint 
create index fk_no_index_18 on RHNACTIONPACKAGEREMOVALFAILURE (EVR_ID);

--missed index on RHNACTIONPACKAGEREMOVALFAILURE table for RHN_APR_FAILURE_NID_FK constraint 
create index fk_no_index_19 on RHNACTIONPACKAGEREMOVALFAILURE (NAME_ID);

--missed index on RHNACTIONPACKAGEREMOVALFAILURE table for RHN_APR_FAILURE_SUGGESTED_FK constraint 
create index fk_no_index_20 on RHNACTIONPACKAGEREMOVALFAILURE (SUGGESTED);

--missed index on RHNARCHTYPEACTIONS table for RHN_ARCHTYPEACTS_ACTID_FK constraint 
create index fk_no_index_21 on RHNARCHTYPEACTIONS (ACTION_TYPE_ID);

--missed index on RHNCHANNEL table for RHN_CHANNEL_CAID_FK constraint 
create index fk_no_index_22 on RHNCHANNEL (CHANNEL_ARCH_ID);

--missed index on RHNCHANNEL table for RHN_CHANNEL_CHECKSUM_FK constraint 
create index fk_no_index_23 on RHNCHANNEL (CHECKSUM_TYPE_ID);

--missed index on RHNCHANNEL table for RHN_CHANNEL_CPID_FK constraint 
create index fk_no_index_24 on RHNCHANNEL (CHANNEL_PRODUCT_ID);

--missed index on RHNCHANNEL table for RHN_CHANNEL_PRODUCT_NAME_CH_FK constraint 
create index fk_no_index_25 on RHNCHANNEL (PRODUCT_NAME_ID);

--missed index on RHNCHANNELARCH table for RHN_CARCH_ATID_FK constraint 
create index fk_no_index_26 on RHNCHANNELARCH (ARCH_TYPE_ID);

--missed index on RHNCHANNELCONTENTSOURCE table for RHN_CCS_CID_FK constraint 
create index fk_no_index_27 on RHNCHANNELCONTENTSOURCE (CHANNEL_ID);

--missed index on RHNCHANNELFAMILY table for RHN_CHANNEL_FAMILY_ORG_FK constraint 
create index fk_no_index_28 on RHNCHANNELFAMILY (ORG_ID);

--missed index on RHNCHANNELNEWESTPACKAGE table for RHN_CNP_EID_FK constraint 
create index fk_no_index_29 on RHNCHANNELNEWESTPACKAGE (EVR_ID);

--missed index on RHNCHANNELNEWESTPACKAGE table for RHN_CNP_NID_FK constraint 
create index fk_no_index_30 on RHNCHANNELNEWESTPACKAGE (NAME_ID);

--missed index on RHNCHANNELNEWESTPACKAGE table for RHN_CNP_PAID_FK constraint 
create index fk_no_index_31 on RHNCHANNELNEWESTPACKAGE (PACKAGE_ARCH_ID);

--missed index on RHNCHANNELPACKAGEARCHCOMPAT table for RHN_CP_AC_PAID_FK constraint 
create index fk_no_index_32 on RHNCHANNELPACKAGEARCHCOMPAT (PACKAGE_ARCH_ID);

--missed index on RHNCHANNELPERMISSION table for RHN_CPERM_RID_FK constraint 
create index fk_no_index_33 on RHNCHANNELPERMISSION (ROLE_ID);

--missed index on RHNCHANNELPERMISSION table for RHN_CPERM_UID_FK constraint 
create index fk_no_index_34 on RHNCHANNELPERMISSION (USER_ID);

--missed index on RHNCHECKSUM table for RHNCHECKSUM_TYPEID_FK constraint 
create index fk_no_index_35 on RHNCHECKSUM (CHECKSUM_TYPE_ID);

--missed index on RHNCHILDCHANNELARCHCOMPAT table for RHN_CCAC_CAID_FK constraint 
create index fk_no_index_36 on RHNCHILDCHANNELARCHCOMPAT (CHILD_ARCH_ID);

--missed index on RHNCLIENTCAPABILITY table for RHN_CLIENTCAP_CAP_NID_FK constraint 
create index fk_no_index_37 on RHNCLIENTCAPABILITY (CAPABILITY_NAME_ID);

--missed index on RHNCONFIGCHANNEL table for RHN_CONFCHAN_CTID_FK constraint 
create index fk_no_index_38 on RHNCONFIGCHANNEL (CONFCHAN_TYPE_ID);

--missed index on RHNCONFIGCONTENT table for RHN_CONFCONTENT_CHSUM_FK constraint 
create index fk_no_index_39 on RHNCONFIGCONTENT (CHECKSUM_ID);

--missed index on RHNCONFIGFILE table for RHN_CONFFILE_CFNID_FK constraint 
create index fk_no_index_40 on RHNCONFIGFILE (CONFIG_FILE_NAME_ID);

--missed index on RHNCONFIGFILE table for RHN_CONFFILE_SID_FK constraint 
create index fk_no_index_41 on RHNCONFIGFILE (STATE_ID);

--missed index on RHNCONFIGINFO table for RHN_CONFINFO_SYMLINK_FK constraint 
create index fk_no_index_42 on RHNCONFIGINFO (SYMLINK_TARGET_FILENAME_ID);

--missed index on RHNCONFIGREVISION table for RHN_CONFREVISION_CID_FK constraint 
create index fk_no_index_43 on RHNCONFIGREVISION (CHANGED_BY_ID);

--missed index on RHNCONFIGREVISION table for RHN_CONFREVISION_CIID_FK constraint 
create index fk_no_index_44 on RHNCONFIGREVISION (CONFIG_INFO_ID);

--missed index on RHNCONFIGREVISION table for RHN_CONF_REV_CFTI_FK constraint 
create index fk_no_index_45 on RHNCONFIGREVISION (CONFIG_FILE_TYPE_ID);

--missed index on RHNCONTENTSOURCE table for RHN_CS_TYPE_FK constraint 
create index fk_no_index_46 on RHNCONTENTSOURCE (TYPE_ID);

--missed index on RHNCONTENTSOURCESSL table for RHN_CSSSL_CACERTID_FK constraint 
create index fk_no_index_47 on RHNCONTENTSOURCESSL (SSL_CA_CERT_ID);

--missed index on RHNCONTENTSOURCESSL table for RHN_CSSSL_CLCERTID_FK constraint 
create index fk_no_index_48 on RHNCONTENTSOURCESSL (SSL_CLIENT_CERT_ID);

--missed index on RHNCONTENTSOURCESSL table for RHN_CSSSL_CLKEYID_FK constraint 
create index fk_no_index_49 on RHNCONTENTSOURCESSL (SSL_CLIENT_KEY_ID);

--missed index on RHNCPU table for RHN_CPU_CAID_FK constraint 
create index fk_no_index_50 on RHNCPU (CPU_ARCH_ID);

--missed index on RHNCRYPTOKEY table for RHN_CRYPTOKEY_CKTID_FK constraint 
create index fk_no_index_51 on RHNCRYPTOKEY (CRYPTO_KEY_TYPE_ID);

--missed index on RHNCUSTOMDATAKEY table for RHN_CDATAKEY_CB_FK constraint 
create index fk_no_index_52 on RHNCUSTOMDATAKEY (CREATED_BY);

--missed index on RHNCUSTOMDATAKEY table for RHN_CDATAKEY_LMB_FK constraint 
create index fk_no_index_53 on RHNCUSTOMDATAKEY (LAST_MODIFIED_BY);

--missed index on RHNDISTCHANNELMAP table for RHN_DCM_CAID_FK constraint 
create index fk_no_index_54 on RHNDISTCHANNELMAP (CHANNEL_ARCH_ID);

--missed index on RHNDISTCHANNELMAP table for RHN_DCM_CID_FK constraint 
create index fk_no_index_55 on RHNDISTCHANNELMAP (CHANNEL_ID);

--missed index on RHNDISTCHANNELMAP table for RHN_DCM_OID_FK constraint 
create index fk_no_index_56 on RHNDISTCHANNELMAP (ORG_ID);

--missed index on RHNERRATA table for RHN_ERRATA_OID_FK constraint 
create index fk_no_index_57 on RHNERRATA (ORG_ID);

--missed index on RHNERRATA table for RHN_ERRATA_SEVID_FK constraint 
create index fk_no_index_58 on RHNERRATA (SEVERITY_ID);

--missed index on RHNERRATAFILE table for RHN_ERRATAFILE_CHSUM_FK constraint 
create index fk_no_index_59 on RHNERRATAFILE (CHECKSUM_ID);

--missed index on RHNERRATAFILE table for RHN_ERRATAFILE_TYPE_FK constraint 
create index fk_no_index_60 on RHNERRATAFILE (TYPE);

--missed index on RHNERRATAFILEPACKAGESOURCE table for RHN_EFILEPS_PID_FK constraint 
create index fk_no_index_61 on RHNERRATAFILEPACKAGESOURCE (PACKAGE_ID);

--missed index on RHNERRATAFILETMP table for RHN_ERRATAFILETMP_CHSUM_FK constraint 
create index fk_no_index_62 on RHNERRATAFILETMP (CHECKSUM_ID);

--missed index on RHNERRATAFILETMP table for RHN_ERRATAFILETMP_TYPE_FK constraint 
create index fk_no_index_63 on RHNERRATAFILETMP (TYPE);

--missed index on RHNERRATANOTIFICATIONQUEUE table for RHN_ENQUEUE_CID_FK constraint 
create index fk_no_index_64 on RHNERRATANOTIFICATIONQUEUE (CHANNEL_ID);

--missed index on RHNERRATANOTIFICATIONQUEUE table for RHN_ENQUEUE_OID_FK constraint 
create index fk_no_index_65 on RHNERRATANOTIFICATIONQUEUE (ORG_ID);

--missed index on RHNERRATAQUEUE table for RHN_EQUEUE_CID_FK constraint 
create index fk_no_index_66 on RHNERRATAQUEUE (CHANNEL_ID);

--missed index on RHNERRATATMP table for RHN_ERRATATMP_OID_FK constraint 
create index fk_no_index_67 on RHNERRATATMP (ORG_ID);

--missed index on RHNFILE table for RHN_FILE_CHSUM_FK constraint 
create index fk_no_index_68 on RHNFILE (CHECKSUM_ID);

--missed index on RHNFILE table for RHN_FILE_OID_FK constraint 
create index fk_no_index_69 on RHNFILE (ORG_ID);

--missed index on RHNFILEDOWNLOAD table for RHN_FILEDL_FID_FK constraint 
create index fk_no_index_70 on RHNFILEDOWNLOAD (FILE_ID);

--missed index on RHNFILELISTMEMBERS table for RHN_FLMEMBERS_CFNID_FK constraint 
create index fk_no_index_71 on RHNFILELISTMEMBERS (CONFIG_FILE_NAME_ID);

--missed index on RHNISSMASTERORGS table for RHN_ISSMASTERORGS_CID_FK constraint 
create index fk_no_index_72 on RHNISSMASTERORGS (MASTER_ID);

--missed index on RHNISSMASTERORGS table for RHN_ISSMASTERORGS_LID_FK constraint 
create index fk_no_index_73 on RHNISSMASTERORGS (LOCAL_ORG_ID);

--missed index on RHNISSSLAVEORGS table for RHN_ISSSORG_OID_FK constraint 
create index fk_no_index_74 on RHNISSSLAVEORGS (ORG_ID);

--missed index on RHNISSSLAVEORGS table for RHN_ISSSORG_SID_FK constraint 
create index fk_no_index_75 on RHNISSSLAVEORGS (SLAVE_ID);

--missed index on RHNKICKSTARTABLETREE table for RHN_KSTREE_CID_FK constraint 
create index fk_no_index_76 on RHNKICKSTARTABLETREE (CHANNEL_ID);

--missed index on RHNKICKSTARTABLETREE table for RHN_KSTREE_IT_FK constraint 
create index fk_no_index_77 on RHNKICKSTARTABLETREE (INSTALL_TYPE);

--missed index on RHNKICKSTARTABLETREE table for RHN_KSTREE_KSTREETYPE_FK constraint 
create index fk_no_index_78 on RHNKICKSTARTABLETREE (KSTREE_TYPE);

--missed index on RHNKICKSTARTCHILDCHANNEL table for RHN_KS_CC_KSD_FK constraint 
create index fk_no_index_79 on RHNKICKSTARTCHILDCHANNEL (KSDATA_ID);

--missed index on RHNKICKSTARTCOMMAND table for RHN_KSCOMMAND_KCNID_FK constraint 
create index fk_no_index_80 on RHNKICKSTARTCOMMAND (KS_COMMAND_NAME_ID);

--missed index on RHNKICKSTARTDEFAULTS table for RHN_KSD_KVT_FK constraint 
create index fk_no_index_81 on RHNKICKSTARTDEFAULTS (VIRTUALIZATION_TYPE);

--missed index on RHNKICKSTARTDEFAULTS table for RHN_KSD_SPID_FK constraint 
create index fk_no_index_82 on RHNKICKSTARTDEFAULTS (SERVER_PROFILE_ID);

--missed index on RHNKICKSTARTPACKAGE table for RHN_KSPACKAGE_PNID_FK constraint 
create index fk_no_index_83 on RHNKICKSTARTPACKAGE (PACKAGE_NAME_ID);

--missed index on RHNKICKSTARTSESSION table for RHN_KSS_KVT_FK constraint 
create index fk_no_index_84 on RHNKICKSTARTSESSION (VIRTUALIZATION_TYPE);

--missed index on RHNKICKSTARTSESSION table for RHN_KS_SESSION_AID_FK constraint 
create index fk_no_index_85 on RHNKICKSTARTSESSION (ACTION_ID);

--missed index on RHNKICKSTARTSESSION table for RHN_KS_SESSION_KSID_FK constraint 
create index fk_no_index_86 on RHNKICKSTARTSESSION (KICKSTART_ID);

--missed index on RHNKICKSTARTSESSION table for RHN_KS_SESSION_KSSSID_FK constraint 
create index fk_no_index_87 on RHNKICKSTARTSESSION (STATE_ID);

--missed index on RHNKICKSTARTSESSION table for RHN_KS_SESSION_KSTID_FK constraint 
create index fk_no_index_88 on RHNKICKSTARTSESSION (KSTREE_ID);

--missed index on RHNKICKSTARTSESSION table for RHN_KS_SESSION_SCHED_FK constraint 
create index fk_no_index_89 on RHNKICKSTARTSESSION (SCHEDULER);

--missed index on RHNKICKSTARTSESSION table for RHN_KS_SESSION_SPID_FK constraint 
create index fk_no_index_90 on RHNKICKSTARTSESSION (SERVER_PROFILE_ID);

--missed index on RHNKICKSTARTSESSIONHISTORY table for RHN_KS_SESSIONHIST_AID_FK constraint 
create index fk_no_index_91 on RHNKICKSTARTSESSIONHISTORY (ACTION_ID);

--missed index on RHNKICKSTARTSESSIONHISTORY table for RHN_KS_SESSIONHIST_STAT_FK constraint 
create index fk_no_index_92 on RHNKICKSTARTSESSIONHISTORY (STATE_ID);

--missed index on RHNKSTREEFILE table for RHN_KSTREEFILE_CHSUM_FK constraint 
create index fk_no_index_93 on RHNKSTREEFILE (CHECKSUM_ID);

--missed index on RHNORGCHANNELSETTINGS table for RHN_ORGCSETTINGS_CID_FK constraint 
create index fk_no_index_94 on RHNORGCHANNELSETTINGS (CHANNEL_ID);

--missed index on RHNORGCHANNELSETTINGS table for RHN_ORGCSETTINGS_SID_FK constraint 
create index fk_no_index_95 on RHNORGCHANNELSETTINGS (SETTING_ID);

--missed index on RHNORGEXTGROUPMAPPING table for RHN_ORGEXTGROUPMAP_SG_FK constraint 
create index fk_no_index_96 on RHNORGEXTGROUPMAPPING (SERVER_GROUP_ID);

--missed index on RHNPACKAGE table for RHN_PACKAGE_CHSUM_FK constraint 
create index fk_no_index_97 on RHNPACKAGE (CHECKSUM_ID);

--missed index on RHNPACKAGE table for RHN_PACKAGE_EID_FK constraint 
create index fk_no_index_98 on RHNPACKAGE (EVR_ID);

--missed index on RHNPACKAGE table for RHN_PACKAGE_GROUP_FK constraint 
create index fk_no_index_99 on RHNPACKAGE (PACKAGE_GROUP);

--missed index on RHNPACKAGE table for RHN_PACKAGE_PAID_FK constraint 
create index fk_no_index_100 on RHNPACKAGE (PACKAGE_ARCH_ID);

--missed index on RHNPACKAGE table for RHN_PACKAGE_SRCRPMID_FK constraint 
create index fk_no_index_101 on RHNPACKAGE (SOURCE_RPM_ID);

--missed index on RHNPACKAGEARCH table for RHN_PARCH_ATID_FK constraint 
create index fk_no_index_102 on RHNPACKAGEARCH (ARCH_TYPE_ID);

--missed index on RHNPACKAGEDELTAELEMENT table for RHN_PDELEMENT_TPID_FK constraint 
create index fk_no_index_103 on RHNPACKAGEDELTAELEMENT (TRANSACTION_PACKAGE_ID);

--missed index on RHNPACKAGEFILE table for RHN_PACKAGE_FILE_CHSUM_FK constraint 
create index fk_no_index_104 on RHNPACKAGEFILE (CHECKSUM_ID);

--missed index on RHNPACKAGEKEY table for RHN_PKEY_PRID_FK constraint 
create index fk_no_index_105 on RHNPACKAGEKEY (PROVIDER_ID);

--missed index on RHNPACKAGEKEY table for RHN_PKEY_TYPE_ID_PRID_FK constraint 
create index fk_no_index_106 on RHNPACKAGEKEY (KEY_TYPE_ID);

--missed index on RHNPACKAGEKEYASSOCIATION table for RHN_PKEYA_KID_FK constraint 
create index fk_no_index_107 on RHNPACKAGEKEYASSOCIATION (KEY_ID);

--missed index on RHNPACKAGENEVRA table for RHN_PKGNEVRA_EID_FK constraint 
create index fk_no_index_108 on RHNPACKAGENEVRA (EVR_ID);

--missed index on RHNPACKAGENEVRA table for RHN_PKGNEVRA_PAID_FK constraint 
create index fk_no_index_109 on RHNPACKAGENEVRA (PACKAGE_ARCH_ID);

--missed index on RHNPACKAGESOURCE table for RHN_PKGSRC_CHSUM_FK constraint 
create index fk_no_index_110 on RHNPACKAGESOURCE (CHECKSUM_ID);

--missed index on RHNPACKAGESOURCE table for RHN_PKGSRC_GROUP_FK constraint 
create index fk_no_index_111 on RHNPACKAGESOURCE (PACKAGE_GROUP);

--missed index on RHNPACKAGESOURCE table for RHN_PKGSRC_OID_FK constraint 
create index fk_no_index_112 on RHNPACKAGESOURCE (ORG_ID);

--missed index on RHNPACKAGESOURCE table for RHN_PKGSRC_SIGCHSUM_FK constraint 
create index fk_no_index_113 on RHNPACKAGESOURCE (SIGCHECKSUM_ID);

--missed index on RHNPACKAGEUPGRADEARCHCOMPAT table for RHN_PUAC_PAUID_FK constraint 
create index fk_no_index_114 on RHNPACKAGEUPGRADEARCHCOMPAT (PACKAGE_UPGRADE_ARCH_ID);

--missed index on RHNPROXYINFO table for RHN_PROXY_INFO_PEID_FK constraint 
create index fk_no_index_115 on RHNPROXYINFO (PROXY_EVR_ID);

--missed index on RHNPUSHCLIENT table for SYS_C008483 constraint 
create index fk_no_index_116 on RHNPUSHCLIENT (STATE_ID);

--missed index on RHNREGTOKENCHANNELS table for RHN_REG_TOK_CHN_SGS_FK constraint 
create index fk_no_index_117 on RHNREGTOKENCHANNELS (CHANNEL_ID);

--missed index on RHNREGTOKENENTITLEMENT table for RHN_REG_TOK_ENT_SGTID_FK constraint 
create index fk_no_index_118 on RHNREGTOKENENTITLEMENT (SERVER_GROUP_TYPE_ID);

--missed index on RHNREGTOKENGROUPS table for RHN_REG_TOK_GRP_SGS_FK constraint 
create index fk_no_index_119 on RHNREGTOKENGROUPS (SERVER_GROUP_ID);

--missed index on RHNREGTOKENPACKAGES table for RHN_REG_TOK_PKG_AID_FK constraint 
create index fk_no_index_120 on RHNREGTOKENPACKAGES (ARCH_ID);

--missed index on RHNREGTOKENPACKAGES table for RHN_REG_TOK_PKG_ID_FK constraint 
create index fk_no_index_121 on RHNREGTOKENPACKAGES (TOKEN_ID);

--missed index on RHNRELEASECHANNELMAP table for RHN_RCM_CAID_FK constraint 
create index fk_no_index_122 on RHNRELEASECHANNELMAP (CHANNEL_ARCH_ID);

--missed index on RHNRELEASECHANNELMAP table for RHN_RCM_CID_FK constraint 
create index fk_no_index_123 on RHNRELEASECHANNELMAP (CHANNEL_ID);

--missed index on RHNRESETPASSWORD table for RHN_RSTPWD_UID_FK constraint 
create index fk_no_index_124 on RHNRESETPASSWORD (USER_ID);

--missed index on RHNSATELLITEINFO table for RHN_SATELLITE_INFO_EID_FK constraint 
create index fk_no_index_125 on RHNSATELLITEINFO (EVR_ID);

--missed index on RHNSERVER table for RHN_SERVER_PSID_FK constraint 
create index fk_no_index_126 on RHNSERVER (PROVISION_STATE_ID);

--missed index on RHNSERVER table for RHN_SERVER_SAID_FK constraint 
create index fk_no_index_127 on RHNSERVER (SERVER_ARCH_ID);

--missed index on RHNSERVERACTION table for RHN_SERVER_ACTION_STATUS_FK constraint 
create index fk_no_index_128 on RHNSERVERACTION (STATUS);

--missed index on RHNSERVERACTIONPACKAGERESULT table for RHN_SAP_RESULT_APID_FK constraint 
create index fk_no_index_129 on RHNSERVERACTIONPACKAGERESULT (ACTION_PACKAGE_ID);

--missed index on RHNSERVERACTIONVERIFYMISSING table for RHN_SACTIONVM_AID_FK constraint 
create index fk_no_index_130 on RHNSERVERACTIONVERIFYMISSING (ACTION_ID);

--missed index on RHNSERVERACTIONVERIFYMISSING table for RHN_SACTIONVM_PAID_FK constraint 
create index fk_no_index_131 on RHNSERVERACTIONVERIFYMISSING (PACKAGE_ARCH_ID);

--missed index on RHNSERVERACTIONVERIFYMISSING table for RHN_SACTIONVM_PCID_FK constraint 
create index fk_no_index_132 on RHNSERVERACTIONVERIFYMISSING (PACKAGE_CAPABILITY_ID);

--missed index on RHNSERVERACTIONVERIFYMISSING table for RHN_SACTIONVM_PEID_FK constraint 
create index fk_no_index_133 on RHNSERVERACTIONVERIFYMISSING (PACKAGE_EVR_ID);

--missed index on RHNSERVERACTIONVERIFYMISSING table for RHN_SACTIONVM_PNID_FK constraint 
create index fk_no_index_134 on RHNSERVERACTIONVERIFYMISSING (PACKAGE_NAME_ID);

--missed index on RHNSERVERACTIONVERIFYRESULT table for RHN_SACTIONVR_AID_FK constraint 
create index fk_no_index_135 on RHNSERVERACTIONVERIFYRESULT (ACTION_ID);

--missed index on RHNSERVERACTIONVERIFYRESULT table for RHN_SACTIONVR_PAID_FK constraint 
create index fk_no_index_136 on RHNSERVERACTIONVERIFYRESULT (PACKAGE_ARCH_ID);

--missed index on RHNSERVERACTIONVERIFYRESULT table for RHN_SACTIONVR_PCID_FK constraint 
create index fk_no_index_137 on RHNSERVERACTIONVERIFYRESULT (PACKAGE_CAPABILITY_ID);

--missed index on RHNSERVERACTIONVERIFYRESULT table for RHN_SACTIONVR_PEID_FK constraint 
create index fk_no_index_138 on RHNSERVERACTIONVERIFYRESULT (PACKAGE_EVR_ID);

--missed index on RHNSERVERACTIONVERIFYRESULT table for RHN_SACTIONVR_PNID_FK constraint 
create index fk_no_index_139 on RHNSERVERACTIONVERIFYRESULT (PACKAGE_NAME_ID);

--missed index on RHNSERVERARCH table for RHN_SARCH_ATID_FK constraint 
create index fk_no_index_140 on RHNSERVERARCH (ARCH_TYPE_ID);

--missed index on RHNSERVERCRASH table for RHN_SERVER_CRASH_ARCH_ID_FK constraint 
create index fk_no_index_141 on RHNSERVERCRASH (PACKAGE_ARCH_ID);

--missed index on RHNSERVERCRASH table for RHN_SERVER_CRASH_EVR_ID_FK constraint 
create index fk_no_index_142 on RHNSERVERCRASH (PACKAGE_EVR_ID);

--missed index on RHNSERVERCRASH table for RHN_SERVER_CRASH_PNAME_ID_FK constraint 
create index fk_no_index_143 on RHNSERVERCRASH (PACKAGE_NAME_ID);

--missed index on RHNSERVERCUSTOMDATAVALUE table for RHN_SCDV_CB_FK constraint 
create index fk_no_index_144 on RHNSERVERCUSTOMDATAVALUE (CREATED_BY);

--missed index on RHNSERVERCUSTOMDATAVALUE table for RHN_SCDV_LMB_FK constraint 
create index fk_no_index_145 on RHNSERVERCUSTOMDATAVALUE (LAST_MODIFIED_BY);

--missed index on RHNSERVERGROUPTYPEFEATURE table for RHN_SGT_FID_FK constraint 
create index fk_no_index_146 on RHNSERVERGROUPTYPEFEATURE (FEATURE_ID);

--missed index on RHNSERVERGROUP_LOG table for SYS_C009259 constraint 
create index fk_no_index_147 on RHNSERVERGROUP_LOG (LOG_ID);

--missed index on RHNSERVERPACKAGE table for SYS_C008774 constraint 
create index fk_no_index_148 on RHNSERVERPACKAGE (NAME_ID);

--missed index on RHNSERVERPACKAGE table for SYS_C008775 constraint 
create index fk_no_index_149 on RHNSERVERPACKAGE (EVR_ID);

--missed index on RHNSERVERPACKAGE table for SYS_C008776 constraint 
create index fk_no_index_150 on RHNSERVERPACKAGE (PACKAGE_ARCH_ID);

--missed index on RHNSERVERPROFILE table for RHN_SERVER_PROFILE_PTYPE_FK constraint 
create index fk_no_index_151 on RHNSERVERPROFILE (PROFILE_TYPE_ID);

--missed index on RHNSERVERPROFILEPACKAGE table for RHN_SPROFILE_EVRID_FK constraint 
create index fk_no_index_152 on RHNSERVERPROFILEPACKAGE (EVR_ID);

--missed index on RHNSERVERPROFILEPACKAGE table for RHN_SPROFILE_NID_FK constraint 
create index fk_no_index_153 on RHNSERVERPROFILEPACKAGE (NAME_ID);

--missed index on RHNSERVERPROFILEPACKAGE table for RHN_SPROFILE_PACKAGE_FK constraint 
create index fk_no_index_154 on RHNSERVERPROFILEPACKAGE (PACKAGE_ARCH_ID);

--missed index on RHNSERVER_LOG table for SYS_C009251 constraint 
create index fk_no_index_155 on RHNSERVER_LOG (LOG_ID);

--missed index on RHNSGTYPEBASEADDONCOMPAT table for RHN_SGT_BAC_AID_FK constraint 
create index fk_no_index_156 on RHNSGTYPEBASEADDONCOMPAT (ADDON_ID);

--missed index on RHNSGTYPEBASEADDONCOMPAT table for RHN_SGT_BAC_BID_FK constraint 
create index fk_no_index_157 on RHNSGTYPEBASEADDONCOMPAT (BASE_ID);

--missed index on RHNSNAPSHOT table for RHN_SNAPSHOT_INVALID_FK constraint 
create index fk_no_index_158 on RHNSNAPSHOT (INVALID);

--missed index on RHNSNAPSHOTPACKAGE table for RHN_SNAPSHOTPKG_NID_FK constraint 
create index fk_no_index_159 on RHNSNAPSHOTPACKAGE (NEVRA_ID);

--missed index on RHNSSMOPERATION table for RHN_SSMOP_USER_FK constraint 
create index fk_no_index_160 on RHNSSMOPERATION (USER_ID);

--missed index on RHNSSMOPERATIONSERVER table for RHN_SSMOPS_SER_FK constraint 
create index fk_no_index_161 on RHNSSMOPERATIONSERVER (SERVER_ID);

--missed index on RHNSSMOPERATIONSERVER table for RHN_SSMOPS_SSMOP_FK constraint 
create index fk_no_index_162 on RHNSSMOPERATIONSERVER (OPERATION_ID);

--missed index on RHNSYSTEMMIGRATIONS table for RHN_SYS_MIG_SID_FK constraint 
create index fk_no_index_163 on RHNSYSTEMMIGRATIONS (SERVER_ID);

--missed index on RHNTAG table for RHN_TAG_NID_FK constraint 
create index fk_no_index_164 on RHNTAG (NAME_ID);

--missed index on RHNTASKORUN table for RHN_TASKO_RUN_SCHEDULE_FK constraint 
create index fk_no_index_165 on RHNTASKORUN (SCHEDULE_ID);

--missed index on RHNTASKORUN table for RHN_TASKO_RUN_TEMPLATE_FK constraint 
create index fk_no_index_166 on RHNTASKORUN (TEMPLATE_ID);

--missed index on RHNTASKOSCHEDULE table for RHN_TASKO_SCHEDULE_BUNCH_FK constraint 
create index fk_no_index_167 on RHNTASKOSCHEDULE (BUNCH_ID);

--missed index on RHNTASKOTEMPLATE table for RHN_TASKO_TEMPLATE_TASK_FK constraint 
create index fk_no_index_168 on RHNTASKOTEMPLATE (TASK_ID);

--missed index on RHNTRANSACTIONPACKAGE table for RHN_TRANSPACK_EID_FK constraint 
create index fk_no_index_169 on RHNTRANSACTIONPACKAGE (EVR_ID);

--missed index on RHNTRANSACTIONPACKAGE table for RHN_TRANSPACK_NID_FK constraint 
create index fk_no_index_170 on RHNTRANSACTIONPACKAGE (NAME_ID);

--missed index on RHNTRANSACTIONPACKAGE table for RHN_TRANSPACK_PAID_FK constraint 
create index fk_no_index_171 on RHNTRANSACTIONPACKAGE (PACKAGE_ARCH_ID);

--missed index on RHNTRUSTEDORGS table for RHN_TRUSTED_ORGS_OTID_FK constraint 
create index fk_no_index_172 on RHNTRUSTEDORGS (ORG_TRUST_ID);

--missed index on RHNUSEREXTGROUP table for RHN_USEREXTGROUP_OID_FK constraint 
create index fk_no_index_173 on RHNUSEREXTGROUP (ORG_ID);

--missed index on RHNUSEREXTGROUPMAPPING table for RHN_USEREXTGROUPMAP_I_FK constraint 
create index fk_no_index_174 on RHNUSEREXTGROUPMAPPING (INT_GROUP_TYPE_ID);

--missed index on RHNUSERINFO table for RHN_USER_INFO_TZID_FK constraint 
create index fk_no_index_175 on RHNUSERINFO (TIMEZONE_ID);

--missed index on RHNUSERINFOPANE table for RHN_USR_INFO_PANE_PID_FK constraint 
create index fk_no_index_176 on RHNUSERINFOPANE (PANE_ID);

--missed index on RHNVERSIONINFO table for RHN_VERSIONINFO_EID_FK constraint 
create index fk_no_index_177 on RHNVERSIONINFO (EVR_ID);

--missed index on RHNVERSIONINFO table for RHN_VERSIONINFO_NID_FK constraint 
create index fk_no_index_178 on RHNVERSIONINFO (NAME_ID);

--missed index on RHNVIRTUALINSTANCEEVENTLOG table for RHN_VIEL_ET_FK constraint 
create index fk_no_index_179 on RHNVIRTUALINSTANCEEVENTLOG (EVENT_TYPE);

--missed index on RHNVIRTUALINSTANCEEVENTLOG table for RHN_VIEL_NEW_STATE_FK constraint 
create index fk_no_index_180 on RHNVIRTUALINSTANCEEVENTLOG (NEW_STATE);

--missed index on RHNVIRTUALINSTANCEEVENTLOG table for RHN_VIEL_OLD_STATE_FK constraint 
create index fk_no_index_181 on RHNVIRTUALINSTANCEEVENTLOG (OLD_STATE);

--missed index on RHNVIRTUALINSTANCEINFO table for RHN_VII_IT_FK constraint 
create index fk_no_index_182 on RHNVIRTUALINSTANCEINFO (INSTANCE_TYPE);

--missed index on RHNVIRTUALINSTANCEINFO table for RHN_VII_STATE_FK constraint 
create index fk_no_index_183 on RHNVIRTUALINSTANCEINFO (STATE);

--missed index on RHNVIRTUALINSTANCEINSTALLLOG table for RHN_VIIL_KS_SID_FK constraint 
create index fk_no_index_184 on RHNVIRTUALINSTANCEINSTALLLOG (KS_SESSION_ID);

--missed index on RHNWEBCONTACTCHANGELOG table for RHN_WCON_CL_CSID_FK constraint 
create index fk_no_index_185 on RHNWEBCONTACTCHANGELOG (CHANGE_STATE_ID);

--missed index on RHNWEBCONTACTCHANGELOG table for RHN_WCON_CL_WCON_FROM_ID_FK constraint 
create index fk_no_index_186 on RHNWEBCONTACTCHANGELOG (WEB_CONTACT_FROM_ID);

--missed index on RHNXCCDFRULERESULT table for RHN_XCCDF_RRESULT_RESULT_FK constraint 
create index fk_no_index_187 on RHNXCCDFRULERESULT (RESULT_ID);

--missed index on RHNXCCDFTESTRESULT table for RHN_XCCDF_TRESULT_ACT_FK constraint 
create index fk_no_index_188 on RHNXCCDFTESTRESULT (ACTION_SCAP_ID);

--missed index on RHNXCCDFTESTRESULT table for RHN_XCCDF_TRESULT_BENCH_FK constraint 
create index fk_no_index_189 on RHNXCCDFTESTRESULT (BENCHMARK_ID);

--missed index on RHNXCCDFTESTRESULT table for RHN_XCCDF_TRESULT_PROFILE_FK constraint 
create index fk_no_index_190 on RHNXCCDFTESTRESULT (PROFILE_ID);

--missed index on SUSECREDENTIALS table for SUSE_CREDENTIALS_TYPE_FK constraint 
create index fk_no_index_191 on SUSECREDENTIALS (TYPE_ID);

--missed index on SUSECREDENTIALS table for SUSE_CREDENTIALS_USER_FK constraint 
create index fk_no_index_192 on SUSECREDENTIALS (USER_ID);

--missed index on WEB_CONTACT_LOG table for SYS_C009239 constraint 
create index fk_no_index_193 on WEB_CONTACT_LOG (LOG_ID);

--missed index on WEB_USER_CONTACT_PERMISSION table for CONTPERM_WBUSERID_FK constraint 
create index fk_no_index_194 on WEB_USER_CONTACT_PERMISSION (WEB_USER_ID);

--missed index on WEB_USER_PERSONAL_INFO table for WUPI_PREFIX_FK constraint 
create index fk_no_index_195 on WEB_USER_PERSONAL_INFO (PREFIX);

--missed index on WEB_USER_SITE_INFO table for WUSI_TYPE_FK constraint 
create index fk_no_index_196 on WEB_USER_SITE_INFO (TYPE);

