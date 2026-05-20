.class public Lcom/miui/home/launcher/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DeviceConfig$onScreenSizeChangedListener;
    }
.end annotation


# static fields
.field public static final BUILD_REGION:Ljava/lang/String;

.field public static final CURRENT_REGION:Ljava/lang/String;

.field public static final DEVICE:Lcom/miui/home/launcher/DeviceType;

.field private static HIGH_CONTEXT_PRIORITY_DEVICE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/util/MainThreadInitializedObject<",
            "Lcom/miui/home/launcher/DeviceConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static INVALIDATE_DEFAULT_SCREEN_ID:J

.field public static final IS_AMX_BUILD:Z

.field public static final IS_BUILD_CANNONG:Z

.field public static final IS_BUILD_CETUS:Z

.field public static final IS_BUILD_DADA:Z

.field public static final IS_BUILD_HAOTIAN:Z

.field public static final IS_BUILD_HOUJI:Z

.field public static final IS_BUILD_SHENNONG:Z

.field public static final IS_CAMERA_IN_CORNER:Z

.field public static final IS_FK_BUILD:Z

.field public static final IS_FOLD_DEVICE:Z

.field public static final IS_FOLD_DEVICE2:Z

.field public static final IS_FOLD_DEVICE_WITH_SHELL:Z

.field private static final IS_FRAMEWORK_BAR_FOLLOW_ANIM:Z

.field public static final IS_FRAMEWORK_SUPPORT_QUICK_START:Z

.field public static IS_K8_PHONE:Z

.field public static final IS_KDDI_BUILD:Z

.field public static final IS_M19_DEVICE:Z

.field public static IS_MEITU:Z

.field public static final IS_MIUI_LITE_DEVICE:Z

.field public static final IS_MTK:Z

.field public static final IS_ORANGE_BUILD:Z

.field public static final IS_QCOM:Z

.field public static final IS_SB_BUILD:Z

.field public static final IS_SPECIAL_DEVICE_USING_LOW_LEVEL_ANIM:Z

.field public static final IS_SUPPORT_MAGIC_WINDOW:Z

.field public static final IS_SURRPORT_FORCE_TOUCH:Z

.field private static LOW_MEMORY_MACHINE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_MINUS_SCREEN_CLIENT_ID_4_0:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static TEMP_SHARE_MODE_FOR_WORLD_READABLE:I

.field public static TEMP_SHARE_MODE_FOR_WORLD_WRITEABLE:I

.field public static final USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final USE_GOOGLE_MINUS_SCREEN_CLIENT_ID_4_0:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VENDOR_NAME:Ljava/lang/String;

.field private static cacheIsGlobalSearchSupportSearchBar:Z

.field public static final isBeteOs:Z

.field public static isHasWallpaperSDK:Z

.field public static final isID:Z

.field public static final isIN:Z

.field public static final isL12AOrL12U:Z

.field public static final isL12AOrL12UOTA:Z

.field public static final isVDF:Z

.field private static isWestCoast:Z

.field private static mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

.field public static mEditModeConfig:Lcom/miui/home/launcher/EditModeConfig;

.field private static mIsControlPanelExpanded:Z

.field public static volatile needRefresh:Z

.field private static sAllAppsBackgroundAlpha:I

.field private static sAllAppsCellHeight:I

.field private static sAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

.field private static sAllAppsDividerBottom:I

.field private static sAllAppsDividerTop:I

.field private static sCellCountOnDatabaseChanged:Z

.field private static sCellCountXDrawerMode:I

.field private static sCheckTitleRunnable:Ljava/lang/Runnable;

.field private static sCurrentScreenCells:Ljava/lang/String;

.field private static sDesignedDefaultScreenId:J

.field public static sDragIconScaleRatio:F

.field private static sFolderRecommendGridPaddingBottom:I

.field private static sHasNavigationBar:Z

.field private static sHideNotch:Z

.field private static sHotseatMaxCount:I

.field private static sIs720Mode:Z

.field private static sIsAccessibilityEnabled:Z

.field private static sIsAppStoreEnabled:Z

.field private static sIsDarkMode:Z

.field private static sIsDefaultIcon:Z

.field private static sIsFoldDevice2:Z

.field private static sIsGestureEnable:Z

.field private static sIsHotseatsAppTitleHided:Z

.field private static sIsImmersiveNavigationBar:Z

.field private static sIsInMultiWindowMode:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sIsInSnapShotMode:Z

.field private static sIsLayoutRtl:Z

.field private static sIsNetWorkConnected:Z

.field private static sIsPocoDefaultIcon:Z

.field private static sIsSearchBarChanged:Z

.field private static sIsShowGestureLine:Z

.field private static sIsShowNotification:Z

.field private static sIsSupportBarFollow:Z

.field private static sIsSupportConfigurationFoldScreenType:Z

.field private static sIsSupportHandleGesture:Z

.field private static sIsSupportHorizontalInterrupt:Z

.field public static sIsSupportLaunchPairApp:Z

.field private static sIsSupportMultiWindow:Z

.field private static sIsSupportSearchBar:Z

.field private static sIsTetheringSupported:Z

.field private static sIsUseDefaultIconFolder1X1:Z

.field private static sIsUseDefaultIconFolderLarge:Z

.field private static sLastConfiguration:Landroid/content/res/Configuration;

.field private static sLastRotation:I

.field private static sLauncherDatabaseName:Ljava/lang/String;

.field private static sLauncherLayoutType:Lcom/miui/home/launcher/compat/LauncherLayoutType;

.field private static sMultiWindowModeLauncherHeight:I

.field private static sQuickCallCellVerticalSpacing:I

.field private static sRecommendAppsCount:I

.field public static sRecommendBannerHeight:I

.field public static sRecommendBannerWidth:I

.field public static sRecommendLoadingTitle:Ljava/lang/String;

.field public static sRotatable:Z

.field private static sRotation:I

.field private static sScreenCellsChangedTemporary:Z

.field private static sScreenDensity:F

.field private static sScreenDensityDpi:I

.field private static sScreenOrientationChanged:Z

.field private static sScreenSizeChanged:Z

.field private static final sScreenSizeChangedListener:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/miui/home/launcher/DeviceConfig$onScreenSizeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchBarLightThreshold:F

.field private static sSearchBarWidth:I

.field private static sSearchBarWidthDelta:I

.field private static sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sShortcutMenuDisappearThreshold:I

.field private static sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sSupportDarkenWallpaper:Z

.field private static sSysUiStatusBarHiddenFlagChanged:Z

.field private static sSystemuiFsgVersion:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sThemeChanged:Z

.field private static sThemeValues:Lmiui/content/res/ThemeValues;

.field private static sUnstableDialogShowed:Z

.field private static sUpdateIconPositionForMiui11Upgrade:Z

.field private static sUseHighContextPriority:Z

.field private static sUseOldVersionIcons:Z

.field private static sWidgetCellMeasureHeight:I

.field private static sWidgetCellMeasureWidth:I

.field private static sWorkspaceInvalidateEdgeWidth:I

.field private static securityCenterIsSupportShareAPK:Z


# instance fields
.field public landscapeGridConfig:Lcom/miui/home/launcher/GridConfig;

.field public portraitGridConfig:Lcom/miui/home/launcher/GridConfig;


# direct methods
.method public static synthetic $r8$lambda$-WJWzSW53Nz9N899t4SCUn9WRU0(ILandroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->lambda$checkIsAccessibilityEnabledAsync$3(ILandroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$0qVtCCNP5jYR3_CtAM6KBoP6C3Q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->lambda$checkIsAccessibilityEnabledAsync$5(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ACVKEkg2hkB4CCUtCRk8ojedch4()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->lambda$checkIsTetheringSupported$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$BAZY32wW-OifELUU3mAjJSfrT00(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->lambda$checkIsAccessibilityEnabledAsync$4(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CpQbdy78k4h9lcgRTrUiEykz_UQ(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceConfig;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->lambda$static$0(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IA5KFyJeQWcmqQYZ8USUHO5-_5s()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->lambda$checkIsNetworkConnectedAsync$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$UQumvxENJ_rS9495P9_n7qc1LsA(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->lambda$resolveMiuiVersionAndCheckUpgrade$11(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X5cdVSffamRfsw__rQaTIhu6ZPk(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->lambda$checkIsAccessibilityEnabledAsync$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZSJCTX6vSdl03TrhYjYVDie92tA()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->lambda$static$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$bAH2SxmCRZA5lpftn5gcbbM1oUE(Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/DeviceConfig;->lambda$checkIsAccessibilityEnabledAsync$6(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hD7C6r4e5WhHzlIOvi-CfS_GcsQ()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->lambda$checkSystemUIFsgVersion$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$vOoglXJnvf_jfeLDuk_iN_kMCy8()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->lambda$checkIsAccessibilityEnabledAsync$7()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 113
    new-instance v0, Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;-><init>(Lcom/miui/home/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    const/4 v0, 0x0

    .line 124
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIs720Mode:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 125
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensity:F

    const/4 v1, -0x1

    .line 126
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensityDpi:I

    .line 127
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    .line 128
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    .line 129
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChanged:Z

    .line 130
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSearchBarChanged:Z

    .line 131
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    .line 132
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountOnDatabaseChanged:Z

    .line 133
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    .line 148
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidth:I

    .line 149
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidthDelta:I

    .line 150
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sFolderRecommendGridPaddingBottom:I

    .line 152
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDrawerMode:I

    .line 153
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sRecommendAppsCount:I

    .line 154
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsCellHeight:I

    .line 155
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerTop:I

    .line 156
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerBottom:I

    .line 157
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sQuickCallCellVerticalSpacing:I

    .line 174
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInSnapShotMode:Z

    .line 178
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sHotseatMaxCount:I

    const/4 v1, 0x0

    .line 180
    sput-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    const-string/jumbo v1, "support_force_touch"

    .line 183
    invoke-static {v1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromFeatureParse(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_SURRPORT_FORCE_TOUCH:Z

    const-string v1, "persist.sys.hyper_transition"

    .line 184
    invoke-static {v1, v0}, Lcom/miui/launcher/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_FRAMEWORK_SUPPORT_QUICK_START:Z

    const-string v1, "persist.hyper.barfollow_anim"

    .line 185
    invoke-static {v1, v0}, Lcom/miui/launcher/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_FRAMEWORK_BAR_FOLLOW_ANIM:Z

    const/4 v1, 0x1

    .line 190
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsShowNotification:Z

    .line 191
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsAppStoreEnabled:Z

    .line 192
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    .line 193
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    .line 194
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    .line 195
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsImmersiveNavigationBar:Z

    .line 196
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsHotseatsAppTitleHided:Z

    .line 197
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsNetWorkConnected:Z

    .line 199
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsAccessibilityEnabled:Z

    .line 201
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsTetheringSupported:Z

    .line 203
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    .line 204
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sLastRotation:I

    .line 206
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sRotation:I

    const v2, 0x3dcccccd    # 0.1f

    .line 208
    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarLightThreshold:F

    const-string v2, "ro.hardware"

    const-string/jumbo v3, "unknown"

    .line 210
    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->VENDOR_NAME:Ljava/lang/String;

    const-string v3, "mt"

    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->IS_MTK:Z

    const-string v3, "qcom"

    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "qualcomm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_QCOM:Z

    const-string v2, "ro.miui.customized.region"

    const-string v3, ""

    .line 215
    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    .line 218
    const-class v4, Lmiui/os/Build;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v6, "IS_DEV_VERSION"

    invoke-static {v4, v6, v5}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->isBeteOs:Z

    .line 220
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isHasWallpaperSDK()Z

    move-result v4

    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->isHasWallpaperSDK:Z

    const-string v4, "ro.miui.build.region"

    .line 226
    invoke-static {v4, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/miui/home/launcher/DeviceConfig;->BUILD_REGION:Ljava/lang/String;

    .line 228
    new-instance v5, Lcom/miui/home/launcher/DeviceConfig$1;

    invoke-direct {v5}, Lcom/miui/home/launcher/DeviceConfig$1;-><init>()V

    sput-object v5, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;

    .line 233
    new-instance v5, Lcom/miui/home/launcher/DeviceConfig$2;

    invoke-direct {v5}, Lcom/miui/home/launcher/DeviceConfig$2;-><init>()V

    sput-object v5, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    .line 237
    new-instance v5, Lcom/miui/home/launcher/DeviceConfig$3;

    invoke-direct {v5}, Lcom/miui/home/launcher/DeviceConfig$3;-><init>()V

    sput-object v5, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID_4_0:Ljava/util/HashSet;

    .line 241
    new-instance v5, Lcom/miui/home/launcher/DeviceConfig$4;

    invoke-direct {v5}, Lcom/miui/home/launcher/DeviceConfig$4;-><init>()V

    sput-object v5, Lcom/miui/home/launcher/DeviceConfig;->SELECT_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    .line 246
    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "diting"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "plato"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v6, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v1

    :goto_3
    sput-boolean v6, Lcom/miui/home/launcher/DeviceConfig;->isL12AOrL12U:Z

    .line 249
    new-instance v7, Lcom/miui/home/launcher/DeviceConfig$5;

    invoke-direct {v7}, Lcom/miui/home/launcher/DeviceConfig$5;-><init>()V

    sput-object v7, Lcom/miui/home/launcher/DeviceConfig;->SELECT_MINUS_SCREEN_CLIENT_ID_4_0:Ljava/util/HashSet;

    const-string v7, "id"

    .line 254
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/miui/home/launcher/DeviceConfig;->isID:Z

    const-string v7, "in"

    .line 255
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->isIN:Z

    if-eqz v6, :cond_4

    .line 256
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getCurrentPersonalAssistant()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v1

    goto :goto_4

    :cond_4
    move v4, v0

    :goto_4
    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->isL12AOrL12UOTA:Z

    const-string v4, "es_vodafone"

    .line 257
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->isVDF:Z

    const-string v4, "fr_orange"

    .line 267
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->IS_ORANGE_BUILD:Z

    const-string v4, "jp_kd"

    .line 269
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    const-string v4, "jp_sb"

    .line 271
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    const-string v4, "in_fk"

    .line 274
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->IS_FK_BUILD:Z

    const-string v4, "lm_cr"

    .line 278
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "mx_telcel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    move v2, v0

    goto :goto_6

    :cond_6
    :goto_5
    move v2, v1

    :goto_6
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_AMX_BUILD:Z

    .line 284
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMiuiLiteVersion()Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    .line 286
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->DEVICE:Lcom/miui/home/launcher/DeviceType;

    .line 287
    sget-object v4, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    if-ne v2, v4, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    move v2, v0

    :goto_7
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    const-string v2, "cetus"

    .line 289
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_BUILD_CETUS:Z

    const-string/jumbo v2, "shennong"

    .line 291
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_BUILD_SHENNONG:Z

    const-string v2, "houji"

    .line 293
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_BUILD_HOUJI:Z

    const-string v2, "cannong"

    .line 295
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_BUILD_CANNONG:Z

    const-string v2, "haotian"

    .line 297
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_BUILD_HAOTIAN:Z

    const-string v2, "dada"

    .line 299
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_BUILD_DADA:Z

    .line 301
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v2

    const-string v4, "970a3145a0df5dc97e909223299d49b9"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "bef27466a245ce3ec692bd25409c2549"

    if-nez v2, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_8

    :cond_8
    move v2, v0

    goto :goto_9

    :cond_9
    :goto_8
    move v2, v1

    :goto_9
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_CAMERA_IN_CORNER:Z

    const-string/jumbo v2, "zizhan"

    .line 303
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 304
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 305
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 306
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFlip()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_a

    :cond_a
    move v2, v0

    goto :goto_b

    :cond_b
    :goto_a
    move v2, v1

    :goto_b
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE_WITH_SHELL:Z

    .line 308
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE2:Z

    const-string v2, "river"

    .line 309
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "sky"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_c

    :cond_c
    move v2, v0

    goto :goto_d

    :cond_d
    :goto_c
    move v2, v1

    :goto_d
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_M19_DEVICE:Z

    const-string v2, "ro.config.miui_magic_window_enable"

    .line 311
    invoke-static {v2, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystemProperties(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_SUPPORT_MAGIC_WINDOW:Z

    .line 313
    sget-object v2, Lmiui/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "Meitu"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    const-string v2, "ro.boot.product.theme_customize"

    .line 314
    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WestCoast-II"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->isWestCoast:Z

    .line 322
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/media/theme/icons_version_1"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    xor-int/2addr v2, v1

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sUseOldVersionIcons:Z

    .line 323
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "e44985980c9d3c5d70b6a548b14d773a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_K8_PHONE:Z

    .line 324
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->mIsControlPanelExpanded:Z

    .line 326
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportLaunchPairApp()Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportLaunchPairApp:Z

    .line 327
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportConfigurationFoldScreenType:Z

    .line 330
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->LOW_MEMORY_MACHINE:Ljava/util/List;

    const-string v2, "persist.sys.interruption_anim"

    .line 332
    invoke-static {v2, v0}, Lcom/miui/launcher/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportHorizontalInterrupt:Z

    .line 334
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChangedListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 337
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->LOW_MEMORY_MACHINE:Ljava/util/List;

    const-string v3, "dandelion"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->LOW_MEMORY_MACHINE:Ljava/util/List;

    const-string v3, "angelica"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->LOW_MEMORY_MACHINE:Ljava/util/List;

    const-string v3, "angelicain"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->LOW_MEMORY_MACHINE:Ljava/util/List;

    const-string v3, "angelican"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->LOW_MEMORY_MACHINE:Ljava/util/List;

    const-string v3, "cattail"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;

    .line 623
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda4;->INSTANCE:Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda4;

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sCheckTitleRunnable:Ljava/lang/Runnable;

    .line 692
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->needRefresh:Z

    .line 693
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->cacheIsGlobalSearchSupportSearchBar:Z

    .line 814
    new-instance v1, Lmiui/content/res/ThemeValues;

    invoke-direct {v1}, Lmiui/content/res/ThemeValues;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    .line 1122
    new-instance v1, Lcom/miui/home/launcher/common/ChangeableValue;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    const-wide/16 v1, -0x1

    .line 1919
    sput-wide v1, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    .line 1920
    sput-wide v1, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J

    .line 2009
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_READABLE:I

    .line 2012
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_WRITEABLE:I

    .line 2147
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/DeviceConfig;->sSystemuiFsgVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2265
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHideNotch:Z

    .line 2300
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    .line 2576
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bd9059497b4af2bb913a8522747af2de"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_SPECIAL_DEVICE_USING_LOW_LEVEL_ANIM:Z

    .line 2663
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsFoldDevice2:Z

    .line 2723
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUnstableDialogShowed:Z

    .line 2767
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->HIGH_CONTEXT_PRIORITY_DEVICE_LIST:Ljava/util/List;

    const-string v1, "d2cd6fefd08f4b7220218cc694982d1b"

    .line 2769
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2770
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->HIGH_CONTEXT_PRIORITY_DEVICE_LIST:Ljava/util/List;

    const-string v1, "94149db1c5119712284864d32439cba4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2771
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->HIGH_CONTEXT_PRIORITY_DEVICE_LIST:Ljava/util/List;

    const-string v1, "a184a9cb7bc303842df1af906c224c34"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2773
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->HIGH_CONTEXT_PRIORITY_DEVICE_LIST:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUseHighContextPriority:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 107
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportMultiWindow:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 107
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportHandleGesture:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 107
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportHandleGesture:Z

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 107
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSysUiStatusBarHiddenFlagChanged:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 107
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sSysUiStatusBarHiddenFlagChanged:Z

    return p0
.end method

.method public static addScreenSizeChangedListener(Lcom/miui/home/launcher/DeviceConfig$onScreenSizeChangedListener;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 369
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChangedListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static backupDB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10

    .line 1689
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    .line 1690
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 1691
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1692
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const-string v2, "pref_key_auto_backup_time"

    const-wide/16 v4, -0x1

    .line 1695
    invoke-static {p0, v2, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 1697
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 1698
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    .line 1702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x6ddd00

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    return v8

    .line 1705
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1709
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-static {v0, p1}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1710
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v2, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1711
    invoke-static {p0}, Lcom/miui/home/launcher/IconReorganizeMonitor;->onDBBackupFinishedForReorgnize(Landroid/content/Context;)V

    return v8

    :cond_3
    return v3
.end method

.method private buildConfig(Landroid/content/Context;)V
    .locals 4

    .line 545
    new-instance v0, Lcom/miui/home/launcher/GridConfig$Builder;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/GridConfig$Builder;-><init>(Landroid/content/Context;)V

    .line 546
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v2, "window"

    .line 547
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 548
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 549
    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 551
    iget p1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 552
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 554
    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/GridConfig$Builder;->setScreenSize(II)Lcom/miui/home/launcher/GridConfig$Builder;

    move-result-object v2

    .line 555
    invoke-virtual {v2, v1, p1}, Lcom/miui/home/launcher/GridConfig$Builder;->setDeviceSize(II)Lcom/miui/home/launcher/GridConfig$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 556
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/GridConfig$Builder;->setPortrait(Z)Lcom/miui/home/launcher/GridConfig$Builder;

    move-result-object v2

    .line 557
    invoke-virtual {v2}, Lcom/miui/home/launcher/GridConfig$Builder;->build()Lcom/miui/home/launcher/GridConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/DeviceConfig;->landscapeGridConfig:Lcom/miui/home/launcher/GridConfig;

    .line 559
    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/GridConfig$Builder;->setScreenSize(II)Lcom/miui/home/launcher/GridConfig$Builder;

    move-result-object v0

    .line 560
    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/GridConfig$Builder;->setDeviceSize(II)Lcom/miui/home/launcher/GridConfig$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 561
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/GridConfig$Builder;->setPortrait(Z)Lcom/miui/home/launcher/GridConfig$Builder;

    move-result-object p1

    .line 562
    invoke-virtual {p1}, Lcom/miui/home/launcher/GridConfig$Builder;->build()Lcom/miui/home/launcher/GridConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/DeviceConfig;->portraitGridConfig:Lcom/miui/home/launcher/GridConfig;

    return-void
.end method

.method public static calHotseatMaxCount()I
    .locals 1

    .line 2937
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    return v0
.end method

.method public static calcAllAppsCellSize(Landroid/content/Context;)V
    .locals 4

    .line 1320
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1321
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 1322
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 1325
    :cond_0
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v2}, Lcom/miui/home/launcher/GridConfig;->getScreenLongSize()I

    move-result v2

    sub-int/2addr v2, v1

    .line 1327
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070079

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v2, v1

    .line 1328
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070078

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v2, v1

    .line 1329
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07066d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v2, v1

    .line 1330
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarHolderVerticalPadding(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    .line 1331
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070063

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    int-to-float v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    .line 1333
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsCellHeight:I

    .line 1334
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07027f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 1335
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 1336
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconTitleTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1337
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result v2

    sub-int/2addr v2, p0

    .line 1339
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    .line 1340
    invoke-virtual {v3}, Lcom/miui/home/launcher/GridConfig;->getTitleMarginTop()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    .line 1341
    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    sub-int/2addr v2, v1

    add-int v1, v0, p0

    sub-int/2addr v1, v2

    .line 1342
    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerTop:I

    add-int/2addr v0, v2

    sub-int/2addr v0, p0

    .line 1343
    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerBottom:I

    return-void
.end method

.method private static calcDefaultWorkspaceName(Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/lang/String;
    .locals 1

    .line 1363
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getDefaultWorkspaceNamePrefix()Ljava/lang/String;

    move-result-object p0

    .line 1364
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "default_fold_workspace"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1366
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLowLevelDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "default_low_workspace"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1369
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "default_workspace"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1371
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSecondSpace()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_private_model"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private static calcDefaultXmlID(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I
    .locals 2

    .line 1540
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 1543
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->calcDefaultWorkspaceName(Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/lang/String;

    move-result-object p1

    .line 1544
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getXmlId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const p0, 0x7f13000e

    return p0
.end method

.method private static calcElderlyModeXmlID()I
    .locals 1

    .line 1548
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    .line 1549
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    if-eqz v0, :cond_0

    const v0, 0x7f130012

    return v0

    :cond_0
    const v0, 0x7f130013

    return v0

    :cond_1
    const v0, 0x7f130024

    return v0
.end method

.method private static final calcLauncherHeightWhenMultiWindow(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 2

    .line 594
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7f0706e5

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v0, p1

    const-string/jumbo p1, "window"

    .line 595
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 596
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 597
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 598
    iget p0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p0, v0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sMultiWindowModeLauncherHeight:I

    return-void
.end method

.method private calcSearchBar(Landroid/content/Context;)V
    .locals 1

    .line 1057
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBarWidth(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidth:I

    .line 1058
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p0

    .line 1059
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700c5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p0, p1

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidthDelta:I

    return-void
.end method

.method private static calcSearchBarWidth(Landroid/content/Context;)I
    .locals 2

    .line 1129
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr p0, v0

    return p0
.end method

.method private calcWidgetMeasureWidth(Landroid/content/Context;)V
    .locals 1

    .line 1046
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef()I

    move-result v0

    if-le p0, v0, :cond_0

    .line 1047
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070765

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    goto :goto_0

    .line 1049
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070764

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    .line 1051
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070763

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    .line 1052
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "widgetCellMeasureWidth = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",widgetCellMeasureHeight = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.DeviceConfig"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static changeCellCountOnDatabase()Z
    .locals 1

    .line 1744
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountOnDatabaseChanged:Z

    return v0
.end method

.method public static checkDarkenWallpaperSupport(Landroid/content/Context;)Z
    .locals 7

    .line 2549
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2551
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2553
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.systemui"

    .line 2554
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2555
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v5, 0xc08ef42

    cmp-long p0, v3, v5

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :catch_0
    move-exception p0

    .line 2557
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    return v2
.end method

.method public static checkIsAccessibilityEnabledAsync()V
    .locals 1

    .line 2074
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda6;->INSTANCE:Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda6;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkIsInSnapShotMode()V
    .locals 2

    .line 2030
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/themeScreenshotMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInSnapShotMode:Z

    return-void
.end method

.method static checkIsNetworkConnectedAsync()V
    .locals 1

    .line 2115
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda3;->INSTANCE:Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda3;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkIsSupportSplitWindow()Z
    .locals 1

    .line 968
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    .line 969
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->reflectSystemSupportSplitWindow()Z

    move-result v0

    return v0

    .line 971
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 972
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isLowMemoryDevices()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 974
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->reflectSystemSupportSplitWindow()Z

    move-result v0

    return v0
.end method

.method public static checkIsTetheringSupported()V
    .locals 1

    .line 2140
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda2;->INSTANCE:Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda2;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkQuickSearchVersion(Landroid/content/Context;)V
    .locals 1

    .line 494
    new-instance v0, Lcom/miui/home/launcher/DeviceConfig$7;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/DeviceConfig$7;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkSearchBarSupport(Landroid/content/Context;)V
    .locals 1

    .line 1117
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportSearchBar:Z

    return-void
.end method

.method public static checkSettingTitle()V
    .locals 2

    .line 617
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sCheckTitleRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 619
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sCheckTitleRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static checkSysUiStatusBarHiddenFlagChanged(Landroid/content/Context;)V
    .locals 1

    .line 943
    new-instance v0, Lcom/miui/home/launcher/DeviceConfig$8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/DeviceConfig$8;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkSystemUIFsgVersion()V
    .locals 1

    .line 2150
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda5;->INSTANCE:Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda5;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static clearBackupDB(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1719
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1720
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1723
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static doLauncherHavePaddingTopForStatusBarAndNotch()Z
    .locals 1

    .line 2276
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->keepStatusBarShowingForBetterPerformance()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNotch()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static enableMultiWindow()Z
    .locals 1

    .line 915
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_BUILD_CETUS:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private forceExitNoWordMode(Landroid/content/Context;)V
    .locals 1

    .line 519
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isExperienceDefaultLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Launcher.DeviceConfig"

    const-string v0, "exit NoWordMode by experience default layout"

    .line 520
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "miui_home_no_word_model"

    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public static getAllAppCellCountX(Landroid/content/Context;)I
    .locals 1

    .line 2395
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2396
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2397
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    .line 2399
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    .line 2402
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p0

    return p0
.end method

.method public static getAllAppRecommendDividerPaddingBottom()I
    .locals 1

    .line 2415
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerBottom:I

    return v0
.end method

.method public static getAllAppRecommendDividerPaddingTop()I
    .locals 1

    .line 2411
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerTop:I

    return v0
.end method

.method public static getAllAppsBackgroundAlpha()I
    .locals 1

    .line 2378
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsBackgroundAlpha:I

    return v0
.end method

.method public static getAllAppsCellHeight()I
    .locals 1

    .line 2322
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsCellHeight:I

    return v0
.end method

.method public static getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;
    .locals 1

    .line 2349
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object v0
.end method

.method public static getAllAppsColorModeGlobal()I
    .locals 3

    .line 2366
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig$10;->$SwitchMap$com$miui$home$launcher$allapps$AllAppsColorMode:[I

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public static getAllAppsRecommendCount()I
    .locals 1

    .line 1412
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sRecommendAppsCount:I

    return v0
.end method

.method public static getApplicationIconContainerHeight()I
    .locals 1

    .line 1262
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getApplicationIconContainerHeight()I

    move-result v0

    return v0
.end method

.method public static getApplicationIconContainerWidth()I
    .locals 1

    .line 1266
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getIconSize()I

    move-result v0

    return v0
.end method

.method public static getAssistPointRes(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x7f080713

    goto :goto_0

    :cond_0
    const p0, 0x7f080711

    :goto_0
    return p0
.end method

.method private static final getBetterDBForMigrate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1840
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1841
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    new-array v2, v2, [I

    .line 1844
    invoke-static {v0, v3}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    move-result v0

    .line 1845
    invoke-static {v1, v2}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    return-object p0

    .line 1853
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    .line 1854
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    const/4 v4, 0x0

    aget v5, v3, v4

    aget v6, v2, v4

    if-ne v5, v6, :cond_6

    const/4 v0, 0x1

    aget v4, v3, v0

    sub-int/2addr v4, v1

    .line 1858
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    aget v5, v2, v0

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_3

    return-object p0

    :cond_3
    aget v4, v3, v0

    sub-int/2addr v4, v1

    .line 1860
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    aget v2, v2, v0

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v4, v2, :cond_4

    return-object p1

    :cond_4
    aget v0, v3, v0

    if-ge v0, v1, :cond_5

    goto :goto_0

    :cond_5
    move-object p0, p1

    :goto_0
    return-object p0

    :cond_6
    aget v1, v3, v4

    sub-int/2addr v1, v0

    .line 1868
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget v5, v2, v4

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v1, v5, :cond_7

    return-object p0

    :cond_7
    aget v1, v3, v4

    sub-int/2addr v1, v0

    .line 1870
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget v2, v2, v4

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v1, v2, :cond_8

    return-object p1

    :cond_8
    aget v1, v3, v4

    if-ge v1, v0, :cond_9

    goto :goto_1

    :cond_9
    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public static getBottomEntryHeight()I
    .locals 1

    .line 1133
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mEditModeConfig:Lcom/miui/home/launcher/EditModeConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditModeConfig;->getBottomEntryHeight()I

    move-result v0

    return v0
.end method

.method public static getBottomEntryMarginBottom()I
    .locals 1

    .line 1136
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mEditModeConfig:Lcom/miui/home/launcher/EditModeConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditModeConfig;->getBottomEntryMarginBottom()I

    move-result v0

    return v0
.end method

.method public static final getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1880
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1883
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNamePrefix()Ljava/lang/String;

    move-result-object v0

    .line 1884
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1885
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v1
.end method

.method public static final getCellCountX()I
    .locals 1

    .line 1392
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getCountCellX()I

    move-result v0

    return v0
.end method

.method public static final getCellCountXDef()I
    .locals 1

    .line 1428
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getCellCountXDef()I

    move-result v0

    return v0
.end method

.method public static getCellCountXDrawerMode()I
    .locals 1

    .line 1408
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDrawerMode:I

    return v0
.end method

.method public static getCellCountXMin()I
    .locals 1

    .line 1420
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getCellCountXMin()I

    move-result v0

    return v0
.end method

.method public static final getCellCountY()I
    .locals 1

    .line 1416
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getCountCellY()I

    move-result v0

    return v0
.end method

.method public static final getCellCountYDef()I
    .locals 1

    .line 1432
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getCellCountYDef()I

    move-result v0

    return v0
.end method

.method public static getCellHeight()I
    .locals 1

    .line 1444
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getCellHeight()I

    move-result v0

    return v0
.end method

.method public static getCellHorizontalSpacing()I
    .locals 1

    .line 2226
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getCellHorizontalSpacing()I

    move-result v0

    return v0
.end method

.method public static final getCellSizeVal(II)Ljava/lang/String;
    .locals 1

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCellVerticalSpacing()I
    .locals 1

    .line 2242
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getCellVerticalSpacing()I

    move-result v0

    return v0
.end method

.method public static getCellWidth()I
    .locals 1

    .line 1440
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getCellWidth()I

    move-result v0

    return v0
.end method

.method public static getCenterLocation(Landroid/view/View;)[I
    .locals 1

    .line 811
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/GridConfig;->getCenterLocation(Landroid/view/View;)[I

    move-result-object p0

    return-object p0
.end method

.method public static getClosingAppDefaultDisappearRect()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x2

    .line 2600
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getClosingAppDefaultDisappearRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getClosingAppDefaultDisappearRect(I)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    .line 2604
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->getClosingAppDefaultDisappearRect(II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getClosingAppDefaultDisappearRect(II)Landroid/graphics/Rect;
    .locals 5

    .line 2608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getClosingAppDefaultDisappearRect, Rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.DeviceConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultRect(II)Landroid/graphics/Rect;

    move-result-object p0

    .line 2610
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2611
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41700000    # 15.0f

    div-float/2addr v0, v1

    .line 2612
    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 2613
    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr p0, v4

    add-float/2addr v2, p0

    div-float/2addr v0, v3

    sub-float p0, v1, v0

    float-to-int p0, p0

    .line 2614
    iput p0, p1, Landroid/graphics/Rect;->left:I

    sub-float p0, v2, v0

    float-to-int p0, p0

    .line 2615
    iput p0, p1, Landroid/graphics/Rect;->top:I

    add-float/2addr v1, v0

    float-to-int p0, v1

    .line 2616
    iput p0, p1, Landroid/graphics/Rect;->right:I

    add-float/2addr v2, v0

    float-to-int p0, v2

    .line 2617
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2618
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 2619
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    .line 2620
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result v0

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentDefaultScreenId()J
    .locals 2

    .line 2184
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getCurrentDefaultScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentDefaultScreenIdFromPreference()J
    .locals 4

    .line 2189
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultScreenIdByNewKey()J

    move-result-wide v0

    .line 2190
    sget-wide v2, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 2194
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultScreenByOldKey()J

    move-result-wide v0

    .line 2195
    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->saveCurrentDefaultScreenId(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2198
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    const-string v3, "pref_default_screen"

    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-wide v0
.end method

.method private static getCurrentLauncherModeDefaultScreenKey()Ljava/lang/String;
    .locals 3

    .line 2230
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2234
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v0

    .line 2235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 2238
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "pref_default_screen"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentScreenCells()Ljava/lang/String;
    .locals 1

    .line 1436
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sCurrentScreenCells:Ljava/lang/String;

    return-object v0
.end method

.method public static getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 1525
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method public static final getDatabaseNameBySuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNamePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".db"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDatabaseNamePrefix()Ljava/lang/String;
    .locals 3

    .line 1514
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_rotatable"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1517
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultIconRadius(Landroid/content/Context;I)I
    .locals 2

    .line 2845
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07027a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    .line 2846
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0700d7

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    mul-float/2addr v0, p1

    float-to-int p0, v0

    return p0
.end method

.method public static getDefaultIconRadiusForRect(Landroid/content/Context;Landroid/graphics/Rect;)I
    .locals 2

    .line 2850
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07027a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 2851
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0700d7

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    mul-float/2addr v0, p1

    float-to-int p0, v0

    return p0
.end method

.method private static getDefaultRect(II)Landroid/graphics/Rect;
    .locals 3

    .line 2624
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p0, :cond_5

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_3

    :cond_0
    if-eq p0, v2, :cond_4

    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    goto :goto_2

    .line 2630
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2631
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceMaxSize()I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceMinSize()I

    move-result p1

    :goto_0
    if-eqz p0, :cond_3

    .line 2632
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceMinSize()I

    move-result p0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceMaxSize()I

    move-result p0

    .line 2633
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4

    .line 2628
    :cond_4
    :goto_2
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->getRightOrBottomBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 2626
    :cond_5
    :goto_3
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->getLeftOrTopBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_4
    return-object v0
.end method

.method public static getDefaultScale()F
    .locals 1

    .line 1464
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getDefaultScale()F

    move-result v0

    return v0
.end method

.method private static getDefaultScreenByOldKey()J
    .locals 4

    .line 2212
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    sget-wide v1, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    const-string v3, "pref_default_screen"

    invoke-static {v0, v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getDefaultScreenIdByNewKey()J
    .locals 4

    .line 2204
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentLauncherModeDefaultScreenKey()Ljava/lang/String;

    move-result-object v0

    .line 2205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2206
    sget-wide v0, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    return-wide v0

    .line 2208
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    sget-wide v2, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    invoke-static {v1, v0, v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultWorkspaceXmlId(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I
    .locals 1

    .line 1529
    invoke-static {p1}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1530
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->calcElderlyModeXmlID()I

    move-result p0

    return p0

    .line 1532
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->calcDefaultXmlID(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result p0

    if-eqz p0, :cond_1

    return p0

    .line 1536
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->obtainDefaultXmlID()I

    move-result p0

    return p0
.end method

.method public static declared-synchronized getDesignedDefaultScreenId(Landroid/content/Context;)J
    .locals 7

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    .line 1923
    :try_start_0
    sget-wide v1, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J

    sget-wide v3, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 1924
    monitor-exit v0

    return-wide v1

    .line 1927
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultWorkspaceXmlId(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 1928
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1929
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1931
    :cond_1
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 1932
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_4

    :cond_2
    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto :goto_0

    .line 1936
    :cond_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "default"

    .line 1937
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1938
    sget-object v4, Lcom/miui/home/R$styleable;->Favorite:[I

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v5, 0x11

    .line 1939
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sput-wide v5, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J

    .line 1940
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 1943
    :cond_4
    sget-wide v1, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-wide v1

    .line 1947
    :catch_0
    :try_start_2
    sget-wide v1, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final getDeviceHeight()I
    .locals 1

    .line 1174
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getDeviceHeight()I

    move-result v0

    return v0
.end method

.method public static final getDeviceHeight(Landroid/content/Context;)I
    .locals 1

    .line 1178
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/GridConfig;->getDeviceHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final getDeviceMaxSize()I
    .locals 1

    .line 1182
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getDeviceMaxSize()I

    move-result v0

    return v0
.end method

.method public static final getDeviceMinSize()I
    .locals 1

    .line 1186
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getDeviceMinSize()I

    move-result v0

    return v0
.end method

.method public static final getDeviceRect()Landroid/graphics/Rect;
    .locals 4

    .line 1162
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static getDeviceType()Lcom/miui/home/launcher/DeviceType;
    .locals 2

    .line 2639
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 2640
    sget-object v0, Lcom/miui/home/launcher/DeviceType;->PAD:Lcom/miui/home/launcher/DeviceType;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "persist.sys.muiltdisplay_type"

    .line 2641
    invoke-static {v1, v0}, Lcom/miui/launcher/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2642
    sget-object v0, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    return-object v0

    .line 2644
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/DeviceType;->PHONE:Lcom/miui/home/launcher/DeviceType;

    return-object v0
.end method

.method public static getDeviceTypeGlobal()I
    .locals 1

    .line 2649
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 2651
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static final getDeviceWidth()I
    .locals 1

    .line 1166
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getDeviceWidth()I

    move-result v0

    return v0
.end method

.method public static final getDeviceWidth(Landroid/content/Context;)I
    .locals 1

    .line 1170
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/GridConfig;->getDeviceWidth(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static getDimenFromPkgResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 2499
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "dimen"

    .line 2500
    invoke-virtual {p0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 2502
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2505
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public static getDragIconScaleRatio()F
    .locals 1

    .line 1095
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sDragIconScaleRatio:F

    return v0
.end method

.method public static getEditModeTopMenuMarginTop()I
    .locals 2

    .line 1291
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenMarginTop()I

    move-result v0

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->mEditModeConfig:Lcom/miui/home/launcher/EditModeConfig;

    invoke-virtual {v1}, Lcom/miui/home/launcher/EditModeConfig;->getTopMenuVerPadding()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getEditPreviewTopMenuHeight()I
    .locals 1

    .line 1154
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mEditModeConfig:Lcom/miui/home/launcher/EditModeConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditModeConfig;->getPreviewTopMenuHeight()I

    move-result v0

    return v0
.end method

.method public static getEditPreviewTopMenuWidth()I
    .locals 1

    .line 1150
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mEditModeConfig:Lcom/miui/home/launcher/EditModeConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditModeConfig;->getPreviewTopMenuWidth()I

    move-result v0

    return v0
.end method

.method public static getEditingAnimPivotyRatio()F
    .locals 1

    .line 1107
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mEditModeConfig:Lcom/miui/home/launcher/EditModeConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditModeConfig;->getEditingAnimPivotyRatio()F

    move-result v0

    return v0
.end method

.method public static getFolderCellHeight()I
    .locals 1

    .line 2326
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getFolderCellHeight()I

    move-result v0

    return v0
.end method

.method public static getFolderCellWidth()I
    .locals 1

    .line 2330
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getFolderCellWidth()I

    move-result v0

    return v0
.end method

.method public static getFolderPreviewHeight()I
    .locals 1

    .line 1490
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getFolderPreviewHeight()I

    move-result v0

    return v0
.end method

.method public static getFolderPreviewItemPadding()I
    .locals 1

    .line 1493
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getFolderPreviewItemPadding()I

    move-result v0

    return v0
.end method

.method public static getFolderPreviewWidth()I
    .locals 1

    .line 1487
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getFolderPreviewWidth()I

    move-result v0

    return v0
.end method

.method public static getGlobalSwipeUpPackage(Landroid/content/Context;)I
    .locals 2

    .line 2941
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "launchMiBrowserWhileSwipe"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getHotSeatsCellContentHeight()I
    .locals 1

    .line 1316
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getHotSeatsCellContentHeight()I

    move-result v0

    return v0
.end method

.method public static getHotSeatsCellHeight()I
    .locals 1

    .line 1355
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getHotSeatsCellHeight()I

    move-result v0

    return v0
.end method

.method public static getHotSeatsCellWidth()I
    .locals 1

    .line 1347
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getHotSeatsCellWidth()I

    move-result v0

    return v0
.end method

.method public static getHotSeatsHeight()I
    .locals 1

    .line 799
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getHotSeatsCellContentHeight()I

    move-result v0

    return v0
.end method

.method public static getHotSeatsListCellWidth()I
    .locals 1

    .line 1351
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getHotSeatsCellListWidth()I

    move-result v0

    return v0
.end method

.method public static getHotSeatsMarginBottom()I
    .locals 1

    .line 795
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getHotseatMarginBottom()I

    move-result v0

    return v0
.end method

.method public static getHotseatMaxCount()I
    .locals 1

    .line 1521
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sHotseatMaxCount:I

    return v0
.end method

.method public static final getIconHeight()I
    .locals 1

    .line 1254
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getIconSize()I

    move-result v0

    return v0
.end method

.method public static getIconScale()F
    .locals 1

    .line 1460
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getIconScale()F

    move-result v0

    return v0
.end method

.method public static getIconTitleTextSize()F
    .locals 1

    .line 1396
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getTitleTextSize()F

    move-result v0

    return v0
.end method

.method public static getIconTopPadding()I
    .locals 1

    .line 1258
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getIconTopPadding()I

    move-result v0

    return v0
.end method

.method public static final getIconWidth()I
    .locals 1

    .line 1250
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getIconSize()I

    move-result v0

    return v0
.end method

.method public static getIndicatorDrawableMargin()I
    .locals 1

    .line 1483
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getIndicatorDrawableMargin()I

    move-result v0

    return v0
.end method

.method public static getIterateDirection(Z)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 852
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 854
    :cond_1
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public static getLastRotation()I
    .locals 1

    .line 348
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sLastRotation:I

    return v0
.end method

.method public static getLauncherLayoutType()Lcom/miui/home/launcher/compat/LauncherLayoutType;
    .locals 1

    .line 2981
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sLauncherLayoutType:Lcom/miui/home/launcher/compat/LauncherLayoutType;

    return-object v0
.end method

.method public static getLayoutPreviewBottomButtonGap()I
    .locals 1

    .line 1140
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mEditModeConfig:Lcom/miui/home/launcher/EditModeConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditModeConfig;->getLayoutPreviewBottomButtonGap()I

    move-result v0

    return v0
.end method

.method public static getLayoutPreviewButtonNameTextSize()F
    .locals 1

    .line 1404
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getLayoutPreviewButtonNameTextSize()F

    move-result v0

    return v0
.end method

.method public static getLayoutPreviewTopMenuHorPadding()I
    .locals 1

    .line 1299
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mEditModeConfig:Lcom/miui/home/launcher/EditModeConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditModeConfig;->getLayoutPreviewTopMenuHorPadding()I

    move-result v0

    return v0
.end method

.method public static getLayoutPreviewTopMenuMarginTop()I
    .locals 2

    .line 1295
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenMarginTop()I

    move-result v0

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->mEditModeConfig:Lcom/miui/home/launcher/EditModeConfig;

    invoke-virtual {v1}, Lcom/miui/home/launcher/EditModeConfig;->getLayoutPreviewTopMenuVerPadding()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getLayoutPreviewTopMenuVerPadding()I
    .locals 1

    .line 1303
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mEditModeConfig:Lcom/miui/home/launcher/EditModeConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditModeConfig;->getLayoutPreviewTopMenuVerPadding()I

    move-result v0

    return v0
.end method

.method public static getMaxIconScale()F
    .locals 1

    .line 1467
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getMaxIconScale()F

    move-result v0

    return v0
.end method

.method public static getMinIconScale()F
    .locals 1

    .line 1471
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getMinIconScale()F

    move-result v0

    return v0
.end method

.method public static final getMiuiTitleHeight()I
    .locals 2

    .line 1587
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v0

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v1}, Lcom/miui/home/launcher/GridConfig;->getApplicationIconContainerHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static getMiuiWidgetPaddingTop()I
    .locals 1

    .line 1583
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getIconTopPadding()I

    move-result v0

    return v0
.end method

.method public static final getMiuiWidgetSizeSpec(IIZ)J
    .locals 1

    .line 1591
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetSizeSpec(Lcom/miui/home/launcher/GridConfig;IIZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getMiuiWidgetSizeSpec(Lcom/miui/home/launcher/GridConfig;IIZ)J
    .locals 6

    .line 1618
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getCellWidth()I

    move-result v0

    .line 1619
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getCellHeight()I

    move-result v1

    add-int/lit8 v2, p2, -0x1

    mul-int/2addr v2, v1

    .line 1622
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getIconSize()I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    if-eq p1, v4, :cond_0

    .line 1626
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getIconSize()I

    move-result v2

    int-to-long v2, v2

    .line 1630
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 1632
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getIconSize()I

    move-result p0

    sub-int p0, v0, p0

    mul-int/2addr v0, p1

    sub-int/2addr v0, p0

    int-to-long v4, v0

    if-nez p3, :cond_1

    mul-int/2addr v1, p2

    .line 1636
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTextHeight()I

    move-result p0

    sub-int/2addr v1, p0

    int-to-long v2, v1

    .line 1638
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMiuiWidgetSizeSpec("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ") = ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.DeviceConfig"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x20

    shl-long p0, v4, p0

    or-long/2addr p0, v2

    return-wide p0
.end method

.method public static getNetWorkConnectedString()Ljava/lang/String;
    .locals 1

    .line 2136
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNetWorkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "connected"

    goto :goto_0

    :cond_0
    const-string v0, "no_connected"

    :goto_0
    return-object v0
.end method

.method public static getNightModeStatusGlobal()I
    .locals 4

    .line 2354
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig$10;->$SwitchMap$com$miui$home$launcher$allapps$AllAppsColorMode:[I

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2358
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsBackgroundAlpha:I

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static getNotchHeight(Landroid/content/Context;)I
    .locals 2

    .line 2512
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNotch()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2515
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_1

    .line 2516
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result p0

    return p0

    :cond_1
    const-string v0, "com.android.systemui"

    const-string v1, "notch_height"

    .line 2518
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->getDimenFromPkgResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getOptimalDB(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/io/File;
    .locals 5

    const-string v0, "Launcher.DeviceConfig"

    const/4 v1, 0x0

    .line 1803
    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getOptimalDbName(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/lang/String;

    move-result-object v2

    .line 1804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find optimal db "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    .line 1808
    :cond_0
    invoke-virtual {p1, p0, v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "find db fail"

    .line 1810
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static final getOptimalDbName(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1819
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 1820
    new-instance p1, Lcom/miui/home/launcher/DeviceConfig$9;

    invoke-direct {p1}, Lcom/miui/home/launcher/DeviceConfig$9;-><init>()V

    invoke-virtual {p0, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1827
    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 1828
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_2

    .line 1829
    aget-object v1, p0, p1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->getBetterDBForMigrate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 1832
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOptimalDbName error "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.DeviceConfig"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method public static getQuickCallCellVerticalSpacing()I
    .locals 1

    .line 2246
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sQuickCallCellVerticalSpacing:I

    return v0
.end method

.method public static getQuickEditScreenRatio()F
    .locals 1

    .line 1103
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mEditModeConfig:Lcom/miui/home/launcher/EditModeConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditModeConfig;->getQuickEditScreenRatio()F

    move-result v0

    return v0
.end method

.method public static getRealScreenHeight()I
    .locals 1

    .line 1198
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getRealScreenHeight()I

    move-result v0

    return v0
.end method

.method public static final getRecommendGridPaddingBottom()I
    .locals 1

    .line 1307
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderRecommendGridPaddingBottom:I

    :goto_0
    return v0
.end method

.method public static getRotation()I
    .locals 1

    .line 352
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sRotation:I

    return v0
.end method

.method public static final getScreenDensity()F
    .locals 1

    .line 1210
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensity:F

    return v0
.end method

.method public static getScreenDensityDpi()I
    .locals 1

    .line 1214
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensityDpi:I

    return v0
.end method

.method public static final getScreenHeight()I
    .locals 1

    .line 1194
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getScreenHeight()I

    move-result v0

    return v0
.end method

.method public static getScreenLongSize()I
    .locals 1

    .line 1202
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getScreenLongSize()I

    move-result v0

    return v0
.end method

.method public static getScreenMarginTop()I
    .locals 1

    .line 1913
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getScreenMarginTop()I

    move-result v0

    return v0
.end method

.method public static getScreenScaleRatio()F
    .locals 1

    .line 1099
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mEditModeConfig:Lcom/miui/home/launcher/EditModeConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditModeConfig;->getScreenScaleRatio()F

    move-result v0

    return v0
.end method

.method public static getScreenShortSize()I
    .locals 1

    .line 1206
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getScreenShortSize()I

    move-result v0

    return v0
.end method

.method private static getScreenTypeFromConfiguration(Landroid/content/res/Configuration;)Ljava/lang/Integer;
    .locals 6

    .line 2912
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/Integer;

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const-string v2, "getScreenType"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static final getScreenWidth()I
    .locals 1

    .line 1190
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getScreenWidth()I

    move-result v0

    return v0
.end method

.method public static getSearchBarHolderVerticalPadding(Landroid/content/Context;)I
    .locals 1

    .line 2338
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getSearchBarLightThreshold()F
    .locals 1

    .line 2334
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarLightThreshold:F

    return v0
.end method

.method public static getSearchBarMarginBottom()I
    .locals 1

    .line 791
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getSearchBarMarginBottom()I

    move-result v0

    return v0
.end method

.method public static getSearchBarSource(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 745
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_source"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchBarStyle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 783
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_style"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchBarUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 779
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_url"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchBarWidth()I
    .locals 1

    .line 803
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidth:I

    return v0
.end method

.method public static getSearchBarWidthDelta()I
    .locals 1

    .line 807
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidthDelta:I

    return v0
.end method

.method public static getSecurityCenterIsSupportShareAPK()Z
    .locals 1

    .line 907
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->securityCenterIsSupportShareAPK:Z

    return v0
.end method

.method public static getSeekPointRes(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x7f080719

    goto :goto_0

    :cond_0
    const p0, 0x7f080717

    :goto_0
    return p0
.end method

.method public static getSettingTitle()Ljava/lang/String;
    .locals 2

    .line 613
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getSettingTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "com.android.settings"

    .line 632
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "home_title"

    const-string/jumbo v2, "string"

    .line 633
    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 635
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.DeviceConfig"

    const-string v1, "getSettingTitle failed"

    .line 638
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShortcutMenuDisappearThreshold()I
    .locals 1

    .line 1280
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sShortcutMenuDisappearThreshold:I

    return v0
.end method

.method public static final getStatusBarHeight()I
    .locals 1

    .line 1274
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getStatusBarHeight()I

    move-result v0

    return v0
.end method

.method public static getSystemUIFsgVersion()I
    .locals 1

    .line 2157
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sSystemuiFsgVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static getSystemUiStatusBarHiddenFlag()I
    .locals 1

    .line 964
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSysUiStatusBarHiddenFlagChanged:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x100000

    :goto_0
    return v0
.end method

.method public static getTextHeight()I
    .locals 1

    .line 1400
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getTextHeight()I

    move-result v0

    return v0
.end method

.method public static getTitleLines()I
    .locals 1

    .line 1479
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getTitleLines()I

    move-result v0

    return v0
.end method

.method public static getTitleMarginTop()I
    .locals 1

    .line 1497
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getTitleMarginTop()I

    move-result v0

    return v0
.end method

.method public static getTitlePaddingSide()I
    .locals 1

    .line 1501
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getTitlePaddingSide()I

    move-result v0

    return v0
.end method

.method public static getTopMenuHorPadding()I
    .locals 1

    .line 1284
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mEditModeConfig:Lcom/miui/home/launcher/EditModeConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditModeConfig;->getTopMenuHorPadding()I

    move-result v0

    return v0
.end method

.method public static getTopMenuVerPadding()I
    .locals 1

    .line 1287
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mEditModeConfig:Lcom/miui/home/launcher/EditModeConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditModeConfig;->getTopMenuVerPadding()I

    move-result v0

    return v0
.end method

.method public static getWidgetSpanX(IZ)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1573
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    add-int/2addr p0, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    div-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    if-eqz p1, :cond_0

    .line 1574
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin()I

    move-result p1

    .line 1573
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getWidgetSpanY(I)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1579
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    add-int/2addr p0, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    div-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static final getWorkspaceCellPaddingBottom()I
    .locals 1

    .line 1246
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getWorkspaceCellPaddingBottom()I

    move-result v0

    return v0
.end method

.method public static final getWorkspaceCellPaddingSide()I
    .locals 1

    .line 1238
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getWorkspaceCellSide()I

    move-result v0

    return v0
.end method

.method public static final getWorkspaceCellPaddingTop()I
    .locals 1

    .line 1242
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getWorkspaceCellPaddingTop()I

    move-result v0

    return v0
.end method

.method public static getWorkspaceIndicatorHeight()I
    .locals 1

    .line 1901
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getIndicatorHeight()I

    move-result v0

    return v0
.end method

.method public static getWorkspaceIndicatorMarginBottom()I
    .locals 1

    .line 1893
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->getWorkspaceIndicatorMarginBottom()I

    move-result v0

    return v0
.end method

.method public static getWorkspaceIndicatorMarginBottomInEditMode()I
    .locals 1

    .line 1897
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mEditModeConfig:Lcom/miui/home/launcher/EditModeConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditModeConfig;->getWorkspaceIndicatorMarginBottomInEditMode()I

    move-result v0

    return v0
.end method

.method public static final getWorkspaceInvalidateEdgeWidth()I
    .locals 1

    .line 1270
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceInvalidateEdgeWidth:I

    return v0
.end method

.method public static getWorkspacePaddingTop(Landroid/content/Context;)I
    .locals 0

    .line 1916
    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getWorkspacePaddingTop()I

    move-result p0

    return p0
.end method

.method private static getXmlId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 1383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":xml/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1384
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static hasNavigationBar()Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.view.WindowManagerGlobal"

    .line 646
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getWindowManagerService"

    new-array v3, v0, [Ljava/lang/Class;

    .line 647
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    .line 648
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 649
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "hasNavigationBar"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 650
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 651
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    .line 652
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getDisplayId"

    new-array v7, v0, [Ljava/lang/Class;

    .line 653
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    new-array v6, v0, [Ljava/lang/Object;

    .line 654
    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "Launcher.DeviceConfig"

    const-string v3, "hasNavigationBar Q"

    .line 656
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static hasThemeChanged(I)Z
    .locals 1

    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    .line 364
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x400000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private initGridConfig(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Launcher.DeviceConfig"

    const-string v1, "initGridConfig: buildConfig"

    .line 526
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->buildConfig(Landroid/content/Context;)V

    .line 528
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getGridConfig(Landroid/content/Context;)Lcom/miui/home/launcher/GridConfig;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    return-void
.end method

.method public static is720Mode()Z
    .locals 1

    .line 2175
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIs720Mode:Z

    return v0
.end method

.method public static declared-synchronized isAccessibilityEnabled()Z
    .locals 2

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    .line 2066
    :try_start_0
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsAccessibilityEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isAppStoreEnabled()Z
    .locals 1

    .line 2042
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsAppStoreEnabled:Z

    return v0
.end method

.method public static isAssistantCTAAgree(Landroid/content/Context;)Z
    .locals 1

    .line 1975
    sget-object v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sAssistantWidget:Lcom/miui/home/launcher/AssistantWidget;

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/AssistantWidget;->isAssistantCTAAgree(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isControlPanelExpanded()Z
    .locals 1

    .line 2965
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->mIsControlPanelExpanded:Z

    return v0
.end method

.method public static isCotaOrangeDevice()Z
    .locals 2

    const-string v0, "persist.sys.cota.carrier"

    const-string v1, ""

    .line 2588
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OR"

    .line 2587
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z
    .locals 2

    .line 737
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isDarkMode()Z
    .locals 1

    .line 2250
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    return v0
.end method

.method public static isDarkModeChanged()Z
    .locals 4

    .line 2254
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 2255
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2256
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2257
    :goto_0
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 2258
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDarkModeChanged , nowIsDarkMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", sIsDarkMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Launcher.DeviceConfig"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    return v2
.end method

.method public static isDefaultIcon()Z
    .locals 1

    .line 2447
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isPocoDefaultIcon()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultMiuiIcon()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static isDefaultMiuiIcon()Z
    .locals 1

    .line 2419
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDefaultIcon:Z

    return v0
.end method

.method public static isDefaultScreenType(Landroid/content/res/Configuration;)Z
    .locals 2

    .line 2877
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportConfigurationFoldScreenType:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2878
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getScreenTypeFromConfiguration(Landroid/content/res/Configuration;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2880
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isDenseLayout()Z
    .locals 2

    .line 2945
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDisableOldQuickSwitch()Z
    .locals 1

    .line 2491
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    return v0
.end method

.method public static isFirstBoot()Z
    .locals 5

    const-string v0, "isFirstBoot"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.ActivityThread"

    .line 2310
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getPackageManager"

    new-array v4, v1, [Ljava/lang/Class;

    .line 2311
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    .line 2312
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2313
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 2314
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v2

    const-string v3, "Launcher.DeviceConfig"

    .line 2316
    invoke-static {v3, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static isFlip()Z
    .locals 1

    .line 2891
    sget-boolean v0, Lmiuix/os/Build;->IS_FLIP:Z

    return v0
.end method

.method public static isFoldDevice()Z
    .locals 1

    .line 2659
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFlip()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFoldDevice2()Z
    .locals 1

    .line 2665
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsFoldDevice2:Z

    return v0
.end method

.method public static isGlobalSearchBottomEffectEnable(Landroid/content/Context;)Z
    .locals 2

    .line 2025
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "QSB_SCROLL_OPTION_STATUS"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isGlobalSearchEnable(Landroid/content/Context;)Z
    .locals 2

    .line 2015
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "QSB_SCROLL_ENTRANCE_STATUS"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isGlobalSearchSupportSearchBar(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "com.android.quicksearchbox"

    .line 696
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->needRefresh:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 698
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string/jumbo v2, "support_home_screen_search_bar"

    const-string v3, "bool"

    .line 699
    invoke-virtual {p0, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 701
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->cacheIsGlobalSearchSupportSearchBar:Z

    .line 702
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->needRefresh:Z

    const-string p0, "Launcher.DeviceConfig"

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needRefresh = false \uff0ccurrentThread ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->cacheIsGlobalSearchSupportSearchBar:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 707
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    return v1

    .line 710
    :cond_1
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->cacheIsGlobalSearchSupportSearchBar:Z

    return p0
.end method

.method public static isGlobalSearchSupportSearchBarIcon(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "com.android.quicksearchbox"

    .line 717
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string/jumbo v1, "support_search_bar_baidu_icon"

    const-string v2, "bool"

    .line 718
    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 720
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 723
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHasNavigationBar()Z
    .locals 1

    .line 674
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    return v0
.end method

.method public static isHideNotch()Z
    .locals 1

    .line 2268
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHideNotch:Z

    return v0
.end method

.method public static isHideWallpaperEffectBtn()Z
    .locals 1

    .line 2950
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAboveLevel2()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->isBeteOs:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->isHasWallpaperSDK:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isHomeSupportIconSearchBar(Landroid/content/Context;)Z
    .locals 1

    .line 686
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->isHomeSupportIconSearchBar(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isHomeSupportSearchBar(Landroid/content/Context;)Z
    .locals 1

    .line 678
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isHotseatsAppTitleHided()Z
    .locals 1

    .line 2058
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsHotseatsAppTitleHided:Z

    return v0
.end method

.method public static isInFoldDeviceLargeScreen(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 2859
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2862
    :cond_0
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportConfigurationFoldScreenType:Z

    if-eqz v1, :cond_2

    .line 2863
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->obtainConfigurationFoldScreenType(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2865
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 2868
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 2895
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2898
    :cond_0
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportConfigurationFoldScreenType:Z

    if-eqz v1, :cond_2

    .line 2899
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->obtainConfigurationFoldScreenType(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2901
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 2904
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static isInFoldLargeScreenWithoutSplit(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2705
    :cond_0
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportConfigurationFoldScreenType:Z

    if-eqz v1, :cond_1

    .line 2706
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 2709
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2710
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static final isInHalfSoscSplitMode()Z
    .locals 1

    .line 1063
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result v0

    return v0
.end method

.method public static isInMultiWindowMode()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 871
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    return v0
.end method

.method public static isInMultiWindowModeCompatAndroidT()Z
    .locals 1

    .line 875
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSplitSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isInSecondSpace()Z
    .locals 2

    .line 1378
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1379
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getSecondSpaceId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInSnapshotMode()Z
    .locals 1

    .line 2034
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInSnapShotMode:Z

    return v0
.end method

.method public static isInSplitSelectState()Z
    .locals 2

    .line 879
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const-string v1, "Launcher.DeviceConfig"

    if-eqz v0, :cond_0

    .line 883
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "isInSplitSelectState: launcher is null"

    .line 885
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 888
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->isInSplitSelectState()Z

    move-result v0

    goto :goto_1

    :cond_1
    const-string v0, "isInSplitSelectState: recentsView is null"

    .line 890
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static final isInvalidateCellPosition(IIII)Z
    .locals 0

    add-int/2addr p0, p2

    .line 1648
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p2

    if-gt p0, p2, :cond_1

    add-int/2addr p1, p3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p0

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isKeepRecentsViewPortrait()Z
    .locals 1

    .line 607
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLargeRtlLayout()Z
    .locals 1

    .line 847
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLayoutRtl()Z
    .locals 1

    .line 843
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    return v0
.end method

.method public static isLightBgForStatusBar(Lcom/miui/home/launcher/Launcher;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 2834
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2835
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2836
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2838
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasLightBgForStatusBar()Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public static isLockScreen()Z
    .locals 3

    .line 2954
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 2955
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isScreenOn(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2956
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2957
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayState(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public static isLowLevelDevice()Z
    .locals 3

    .line 2735
    sget-boolean v0, Lcom/mi/mibridge/DeviceLevel;->IS_MIUI_LITE_VERSION:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiMiddle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2736
    invoke-static {v1}, Lcom/mi/mibridge/DeviceLevel;->getDeviceLevel(I)I

    move-result v0

    sget v2, Lcom/mi/mibridge/DeviceLevel;->LOW:I

    if-eq v0, v2, :cond_1

    sget v0, Lcom/mi/mibridge/DeviceLevel;->TOTAL_RAM:I

    const/4 v2, 0x4

    if-gt v0, v2, :cond_0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isLowMemoryMachine()Z
    .locals 3

    .line 2764
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->LOW_MEMORY_MACHINE:Ljava/util/List;

    const-string v1, "ro.build.product"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMinusScreen2x1Enabled(Landroid/content/Context;)Z
    .locals 1

    .line 1986
    sget-object v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sAssistantWidget:Lcom/miui/home/launcher/AssistantWidget;

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/AssistantWidget;->isMinusScreen2x1Enabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isMiuiLiteDeviceV2()Z
    .locals 1

    .line 2969
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    return v0
.end method

.method public static isMiuiLiteOrMiddleVersion()Z
    .locals 1

    .line 2573
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    if-nez v0, :cond_1

    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiMiddle()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isMiuiLiteVersion()Z
    .locals 3

    .line 2565
    :try_start_0
    const-class v0, Lmiui/os/Build;

    const-string v1, "IS_MIUI_LITE_VERSION"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "Launcher.DeviceConfig"

    const-string v1, "reflect failed when get is miui lite device"

    .line 2567
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static isNaturalWidth720p(Landroid/content/Context;)Z
    .locals 1

    .line 1359
    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->getNaturalWidth(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0x2d0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNeedRemoveEasyMode(Landroid/content/Context;)Z
    .locals 3

    .line 2744
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isUsePocoHomeAsDefaultHome(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2747
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2750
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLowMemoryMachine()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    return v1

    .line 2754
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.xiaomi.action.ENTER_ELDERLY_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2755
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v2, 0x20000

    .line 2756
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 2757
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSecondSpace()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method private static isNeedShowSystemNavTypePreferenceInMiuiSettings(Landroid/content/Context;)Z
    .locals 3

    .line 583
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 587
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 590
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "infinity_display_remove_from_other_personal_settings"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public static declared-synchronized isNetWorkConnected()Z
    .locals 2

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    .line 2132
    :try_start_0
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsNetWorkConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isNewIcons()Z
    .locals 1

    .line 2438
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultMiuiIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPhone()Z
    .locals 2

    .line 2686
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->DEVICE:Lcom/miui/home/launcher/DeviceType;

    sget-object v1, Lcom/miui/home/launcher/DeviceType;->PHONE:Lcom/miui/home/launcher/DeviceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPocoDefaultIcon()Z
    .locals 1

    .line 2422
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsPocoDefaultIcon:Z

    return v0
.end method

.method public static final isRecommendServerEnable()Z
    .locals 1

    .line 1158
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isRotatable()Z
    .locals 1

    .line 839
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    return v0
.end method

.method public static final isScreenOrientationLandscape()Z
    .locals 2

    .line 1230
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isScreenPinningEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 2932
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_to_app_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isScreenSizeChanged()Z
    .locals 1

    .line 1222
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChanged:Z

    return v0
.end method

.method public static isSearchBarVisibleChanged()Z
    .locals 1

    .line 1226
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSearchBarChanged:Z

    return v0
.end method

.method public static isShowGestureLine()Z
    .locals 1

    .line 2050
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    return v0
.end method

.method public static isShowNavigationBar()Z
    .locals 1

    .line 2046
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsImmersiveNavigationBar:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isShowNotch()Z
    .locals 1

    .line 2272
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNotch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHideNotch()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isShowSearchBar()Z
    .locals 1

    .line 1125
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isShowSystemNavTypePreferenceInMiuiSettings(Landroid/content/Context;)Z
    .locals 2

    .line 576
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION:F

    const/high16 v1, 0x41300000    # 11.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 578
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isNeedShowSystemNavTypePreferenceInMiuiSettings(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSpecialDeviceUsingLowLevelAnim()Z
    .locals 1

    .line 2579
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_SPECIAL_DEVICE_USING_LOW_LEVEL_ANIM:Z

    return v0
.end method

.method public static isSupportBarFollow()Z
    .locals 1

    .line 2977
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FRAMEWORK_BAR_FOLLOW_ANIM:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportBarFollow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isSupportCompleteAnimation()Z
    .locals 2

    const-string v0, "feature_complete_animation"

    const/4 v1, 0x1

    .line 1388
    invoke-static {v0, v1}, Lcom/miui/home/library/utils/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isSupportConfigurationFoldScreenType(Landroid/content/Context;)Z
    .locals 0

    .line 2916
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->obtainConfigurationFoldScreenType(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportHorizontalInterrupt()Z
    .locals 1

    .line 682
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportHorizontalInterrupt:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportLandscapeBreakable()Z
    .locals 1

    .line 2986
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportLaunchPairApp()Z
    .locals 1

    .line 2692
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSupportMIUIWidget(Landroid/content/Context;)Z
    .locals 1

    .line 1982
    sget-object v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sAssistantWidget:Lcom/miui/home/launcher/AssistantWidget;

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/AssistantWidget;->isSupportMIUIWidget(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isSupportMultiWindow()Z
    .locals 1

    .line 911
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportMultiWindow:Z

    return v0
.end method

.method public static isSupportQuickSearchHandleGesture()Z
    .locals 1

    .line 515
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportHandleGesture:Z

    return v0
.end method

.method public static isSupportRecentsAndFsGesture()Z
    .locals 1

    .line 2466
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isSupportRecentsAndFsGesture()Z

    move-result v0

    return v0
.end method

.method public static isSupportSearchBar()Z
    .locals 1

    .line 1113
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportSearchBar:Z

    return v0
.end method

.method public static isSupportSearchBarLongPress(Landroid/content/Context;)Z
    .locals 2

    .line 753
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_long_press_action"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSupportSearchBarTransfer(Landroid/content/Context;)Z
    .locals 2

    .line 761
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_transfer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isSupportSearchBarXiaoAi(Landroid/content/Context;)Z
    .locals 2

    .line 757
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_show_xiaoai_icon"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSupportWideColorGamutDevice(Landroid/content/Context;)Z
    .locals 2

    .line 2788
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result p0

    .line 2789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWCGEnabled() isSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.DeviceConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_1

    const-string p0, "c66ef8e10868698335d019edbc82de9b"

    .line 2791
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "970a3145a0df5dc97e909223299d49b9"

    .line 2792
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "99c8ef576f385bc322564d5694df6fc2"

    .line 2793
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "c557153d20fefbdfd37b0ac0ae1c555e"

    .line 2794
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "1f5511294829e2350561dc93e1deac6d"

    .line 2795
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "1cacf8ccb61cb3325bf40e6ecbe919e3"

    .line 2796
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "da7b4db15be94a4c597a34f9cf902b01"

    .line 2797
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "061cc573d87ce90d5c3cf3b2291cb3bd"

    .line 2798
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "91d33b4943a4de7884534a1dfbcd88d7"

    .line 2799
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "0dea01b7432c5b4be76665766053393b"

    .line 2800
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "bef27466a245ce3ec692bd25409c2549"

    .line 2801
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "f95133906d1eba86b61fc05be6aecd9c"

    .line 2802
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTetheringSupported()Z
    .locals 1

    .line 2144
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsTetheringSupported:Z

    return v0
.end method

.method public static isUseDefaultFolderIcon(Z)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 2434
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseDefaultIconFolder1x1()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseDefaultIconFolderLarge()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static isUseDefaultIconFolder1x1()Z
    .locals 1

    .line 2426
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDefaultIcon:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsUseDefaultIconFolder1X1:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isUseDefaultIconFolderLarge()Z
    .locals 1

    .line 2430
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDefaultIcon:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsUseDefaultIconFolderLarge:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isUseFixedRotationTransform()Z
    .locals 1

    .line 602
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUseGoogleMinusScreen()Z
    .locals 2

    .line 260
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID_4_0:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE_4_0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->isL12AOrL12UOTA:Z

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    .line 261
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    .line 262
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->CAN_SWITCH_MINUS_SCREEN:Z

    if-eqz v0, :cond_1

    .line 263
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantGoogle()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isWCGEnabled(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "Launcher.DeviceConfig"

    const/4 v1, 0x0

    .line 2809
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_optimize_mode"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIntFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2810
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWCGEnabled() colorMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v4, :cond_0

    const-string v2, "default_display_color_mode"

    .line 2813
    invoke-static {v2, v4}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v2

    .line 2814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWCGEnabled() default_display_color_mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 2819
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "color_space_mode"

    invoke-static {p0, v3, v4}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIntFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 2820
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWCGEnabled() colorSpace="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    const/4 v0, 0x3

    const/4 v3, 0x1

    if-eq v2, v0, :cond_2

    if-ne p0, v3, :cond_3

    :cond_2
    return v3

    :catch_0
    move-exception p0

    const-string v2, "isWCGEnabled() "

    .line 2827
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return v1
.end method

.method public static isWestCoast()Z
    .locals 1

    .line 2920
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->isWestCoast:Z

    return v0
.end method

.method public static final isXLargeMode()Z
    .locals 2

    .line 1644
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static keepStatusBarShowingForBetterPerformance()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$checkIsAccessibilityEnabledAsync$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 2092
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$checkIsAccessibilityEnabledAsync$3(ILandroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 2094
    iget p1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$checkIsAccessibilityEnabledAsync$4(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 0

    .line 2099
    :try_start_0
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private static synthetic lambda$checkIsAccessibilityEnabledAsync$5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2105
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 2106
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->setIsAccessibilityEnabled(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$checkIsAccessibilityEnabledAsync$6(Ljava/util/List;ILjava/lang/String;)V
    .locals 1

    .line 2093
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda11;-><init>(I)V

    .line 2094
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda9;->INSTANCE:Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda9;

    .line 2097
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda7;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    .line 2104
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$checkIsAccessibilityEnabledAsync$7()V
    .locals 4

    const/4 v0, 0x0

    .line 2075
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setIsAccessibilityEnabled(Z)V

    .line 2077
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    .line 2076
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2081
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const-string v2, "accessibility"

    .line 2082
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 2086
    :cond_1
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v1

    const-string v2, ":"

    .line 2087
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    .line 2091
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda10;->INSTANCE:Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda10;

    .line 2092
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1, v2}, Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda8;-><init>(Ljava/util/List;I)V

    .line 2093
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$checkIsNetworkConnectedAsync$8()V
    .locals 2

    .line 2116
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "connectivity"

    .line 2117
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2118
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2121
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2123
    :goto_0
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setIsNetWorkConnected(Z)V

    return-void
.end method

.method private static synthetic lambda$checkIsTetheringSupported$9()V
    .locals 1

    .line 2140
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/ConnectivityHelper;->isTetheringSupported(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsTetheringSupported:Z

    return-void
.end method

.method private static synthetic lambda$checkSystemUIFsgVersion$10()V
    .locals 4

    .line 2151
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 2152
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sSystemuiFsgVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "systemui_fsg_version"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private static synthetic lambda$resolveMiuiVersionAndCheckUpgrade$11(Landroid/content/Context;)V
    .locals 1

    .line 2291
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2292
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->setCurrentThemeSupportSearchBar(Landroid/content/Context;Z)Z

    const-string v0, "ota"

    .line 2293
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->setSearchBarSource(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$static$0(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceConfig;
    .locals 0

    .line 114
    new-instance p0, Lcom/miui/home/launcher/DeviceConfig;

    invoke-direct {p0}, Lcom/miui/home/launcher/DeviceConfig;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$static$1()V
    .locals 3

    .line 624
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getSettingTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 626
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static loadAllAppsCellCountX(Landroid/content/Context;)V
    .locals 1

    .line 2386
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppCellCountX(Landroid/content/Context;)I

    move-result p0

    .line 2387
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDrawerMode:I

    if-eq p0, v0, :cond_0

    .line 2388
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDrawerMode:I

    .line 2389
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sRecommendAppsCount:I

    .line 2390
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/common/messages/DrawerCellsColumnsChanged;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/messages/DrawerCellsColumnsChanged;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private loadDensity(Landroid/content/Context;)V
    .locals 0

    const-string/jumbo p0, "window"

    .line 831
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 832
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 833
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 834
    iget p0, p1, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensity:F

    .line 835
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensityDpi:I

    return-void
.end method

.method private static loadThemeResource(Landroid/content/Context;)V
    .locals 2

    .line 818
    :try_start_0
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    .line 819
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/MiuiResources;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/content/res/ThemeResourcesPackage;->getThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v0

    .line 820
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    invoke-virtual {v0, p0, v1}, Lmiui/content/res/ThemeResourcesPackage;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.DeviceConfig"

    const-string v1, "loadThemeResource error"

    .line 822
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static final needHideLockProvider(Landroid/content/Context;)Z
    .locals 1

    .line 1748
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1750
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->needHideThemeManager(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static needHideMinusScreen()Z
    .locals 2

    .line 1993
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1997
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12_5_PLUS:Z

    if-eqz v0, :cond_1

    return v1

    .line 2001
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2002
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isAssistantInstalled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2003
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isAssistantSupportOverlay()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public static final needHideThemeManager(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "Launcher.DeviceConfig"

    .line 1653
    :try_start_0
    invoke-static {p0}, Lmiui/theme/ThemeManagerHelper;->needDisableTheme(Landroid/content/Context;)Z

    move-result p0

    .line 1654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needDisableTheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "needHideThemeManager"

    .line 1657
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static needShowUnstableDialog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static notifyScreenSizeChanged()V
    .locals 4

    .line 379
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChangedListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DeviceConfig$onScreenSizeChangedListener;

    if-eqz v1, :cond_0

    .line 382
    :try_start_0
    invoke-interface {v1}, Lcom/miui/home/launcher/DeviceConfig$onScreenSizeChangedListener;->onScreenSizeChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Launcher.DeviceConfig"

    const-string v3, "notifyScreenSizeChanged: Error in screen size changed listener"

    .line 384
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static obtainConfigurationFoldScreenType(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 0

    .line 2908
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getScreenTypeFromConfiguration(Landroid/content/res/Configuration;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static obtainDefaultXmlID()I
    .locals 1

    .line 1560
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f130006

    goto :goto_0

    .line 1562
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLowLevelDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f130009

    goto :goto_0

    :cond_1
    const v0, 0x7f13000b

    :goto_0
    return v0
.end method

.method private static reflectSystemSupportSplitWindow()Z
    .locals 7

    const-string v0, "Launcher.DeviceConfig"

    const/4 v1, 0x0

    .line 983
    :try_start_0
    sget-boolean v2, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "android.util.MiuiMultiWindowUtils"

    if-eqz v2, :cond_0

    .line 984
    :try_start_1
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v5, "isSupportSplitScreenFeature"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v5, v3, v6}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 986
    :cond_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string/jumbo v5, "supportSplitScreen"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v5, v3, v6}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 988
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reflectSystemSupportSplitWindow: isReflectSystemSupportSplitWindow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "reflectSystemSupportSplitWindow: reflect error"

    .line 990
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v1
.end method

.method public static removeDownloadInstallInfo(Landroid/content/Context;)V
    .locals 1

    .line 1795
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherSettings;->getDownloadInstallInfoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1796
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1797
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static final removeInvalidateDatabase(Landroid/content/Context;Z)V
    .locals 8

    .line 1759
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    .line 1760
    invoke-static {p0}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 1761
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    .line 1766
    :try_start_0
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_0

    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    .line 1767
    invoke-virtual {v0, p0, v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 1770
    :cond_0
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 1771
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    if-eqz p1, :cond_1

    .line 1772
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".db"

    .line 1773
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1774
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "app_category_new.db"

    .line 1775
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "app_status.db"

    .line 1776
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "assistant"

    .line 1777
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "apps_data.db"

    .line 1778
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    const-string v5, "miui_widget.db"

    .line 1779
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1781
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isStaging()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "mistat.db"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1784
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1785
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const-string v4, "Launcher.DeviceConfig"

    .line 1786
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeInvalidateDatabase db = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception p0

    .line 1790
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public static removeScreenSizeChangedListener(Lcom/miui/home/launcher/DeviceConfig$onScreenSizeChangedListener;)V
    .locals 1

    .line 375
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChangedListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static requestIsAppStoreEnabled()V
    .locals 1

    .line 2038
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market/sdk/MarketManager;->isAppStoreEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsAppStoreEnabled:Z

    return-void
.end method

.method public static resolveMiuiVersionAndCheckUpgrade(Landroid/content/Context;)V
    .locals 5

    const-string v0, "miui_version"

    const-string v1, ""

    .line 2284
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2285
    sget-object v2, Lcom/miui/home/launcher/common/Utilities;->MIUI_BIG_VERSION:Ljava/lang/String;

    const-string v3, "V11"

    .line 2286
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2287
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2288
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFirstBoot()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2289
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    .line 2290
    new-instance v1, Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/DeviceConfig$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 2297
    :cond_0
    invoke-static {p0, v0, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static restoreBackupDB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 1727
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    .line 1728
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 1730
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1733
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1736
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-static {p1, v1}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1737
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static saveCurrentDefaultScreenId(J)Z
    .locals 2

    .line 2216
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentLauncherModeDefaultScreenKey()Ljava/lang/String;

    move-result-object v0

    .line 2217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2221
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    .line 2220
    invoke-static {v1, v0, p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setAllAppsBackgroundAlpha(I)V
    .locals 0

    .line 2407
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsBackgroundAlpha:I

    return-void
.end method

.method public static setAllAppsColorMode(Lcom/miui/home/launcher/allapps/AllAppsColorMode;)V
    .locals 0

    .line 2382
    sput-object p0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-void
.end method

.method public static setContextPriorityHigh()V
    .locals 7

    .line 2776
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUseHighContextPriority:Z

    if-eqz v0, :cond_0

    const-string v0, "android.view.ThreadedRenderer"

    .line 2777
    invoke-static {v0}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "EGL_CONTEXT_PRIORITY_HIGH_IMG"

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setContextPriorityHigh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.DeviceConfig"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    const-class v2, Landroid/graphics/HardwareRenderer;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v6

    const-string/jumbo v0, "setContextPriority"

    invoke-static {v2, v3, v0, v5, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static setControlPanelExpanded(Z)V
    .locals 0

    .line 2961
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->mIsControlPanelExpanded:Z

    return-void
.end method

.method public static setCurrentThemeSupportSearchBar(Landroid/content/Context;Z)Z
    .locals 1

    .line 741
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static setDeviceSupportBarFollow()V
    .locals 1

    const/4 v0, 0x1

    .line 2973
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportBarFollow:Z

    return-void
.end method

.method public static setGlobalSearchEnable(Landroid/content/Context;Z)V
    .locals 1

    .line 2020
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "QSB_SCROLL_ENTRANCE_STATUS"

    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static setIconScale(F)V
    .locals 1

    .line 1452
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1453
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/GridConfig;->resetFoldGridConfigIconScale(F)V

    goto :goto_0

    .line 1455
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/GridConfig;->setIconScale(F)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized setIsAccessibilityEnabled(Z)V
    .locals 1

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    .line 2070
    :try_start_0
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsAccessibilityEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2071
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setIsInMultiWindowModes(Landroid/content/Context;Landroid/content/res/Resources;Z)V
    .locals 2

    .line 860
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eq v0, p2, :cond_0

    .line 861
    sput-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    .line 862
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeviceConfig;

    const/16 v1, 0x8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static declared-synchronized setIsNetWorkConnected(Z)V
    .locals 1

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    .line 2128
    :try_start_0
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsNetWorkConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2129
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setLastRotation(I)V
    .locals 0

    .line 356
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sLastRotation:I

    return-void
.end method

.method public static setRotation(I)V
    .locals 0

    .line 360
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sRotation:I

    return-void
.end method

.method public static setScreenCellsChangedTemporary(Z)V
    .locals 0

    .line 1663
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    return-void
.end method

.method public static setSearchBarSource(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 749
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_source"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setSecurityCenterIsSupportShareAPK(Z)V
    .locals 0

    .line 903
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->securityCenterIsSupportShareAPK:Z

    return-void
.end method

.method public static setSupportElement(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 2478
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "support_element"

    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToGlobal(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public static setSupportStatusBarFollow(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 2485
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "support_status_bar_follow"

    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToGlobal(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public static setUnstableDialogShowed(Z)V
    .locals 0

    .line 2731
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sUnstableDialogShowed:Z

    return-void
.end method

.method public static setUseLauncherRecentsAndFsGesture(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 2471
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "use_gesture_version_three"

    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToGlobal(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public static showBackGestureInEditingMode()Z
    .locals 2

    .line 2167
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSystemUIFsgVersion()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static showFsTransAnimation()Z
    .locals 2

    .line 2163
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSystemUIFsgVersion()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static supportAssistant()Z
    .locals 2

    .line 1964
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1965
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    xor-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public static supportAssistant(Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    .line 1971
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lmiui/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v0, "cetus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static supportCheckRegionalWallpaper()Z
    .locals 1

    .line 2542
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static supportDarkMode()Z
    .locals 1

    .line 2342
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    return v0
.end method

.method public static supportIconTextShadow()Z
    .locals 1

    .line 2535
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static supportsMultiWindowAndNotInSecuritySpace()Z
    .locals 2

    .line 896
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 897
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->enableMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static tryToMigrateDefaultDatabase(Landroid/content/Context;Z)V
    .locals 5

    .line 1667
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    const-string v0, "Launcher.DeviceConfig"

    if-eqz p1, :cond_0

    const-string p0, "change screen cells temporary"

    .line 1668
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1671
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/DbCellCountHelper;->recordCellCountForDBUpgrade(Landroid/content/Context;)V

    .line 1672
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p1

    .line 1673
    invoke-static {p0}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 1674
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1675
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 1676
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getOptimalDB(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Migrate db "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1680
    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountOnDatabaseChanged:Z

    .line 1683
    :cond_1
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    if-nez p1, :cond_2

    .line 1684
    invoke-static {p0, v3}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    :cond_2
    return-void
.end method

.method private updateDeviceSizMultiWindow(Landroid/content/Context;Landroid/content/res/Resources;)Z
    .locals 1

    .line 1067
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1068
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1069
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1070
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 1071
    sget-object p2, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {p2, p1, v0, p0}, Lcom/miui/home/launcher/GridConfig;->updateScreenSize(Landroid/content/Context;II)Z

    move-result p0

    return p0
.end method

.method private updateDeviceSize(Landroid/content/Context;)Z
    .locals 5

    const-string/jumbo p0, "window"

    .line 1075
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 1076
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    .line 1077
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 1079
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result v0

    .line 1080
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1081
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1082
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    .line 1083
    :cond_2
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1084
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDeviceProfileSize bounds ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v4

    iget-object v4, v4, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " winbounds ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " isSoscSplit = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    const-string v3, "Launcher.DeviceConfig"

    invoke-static {v3, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1086
    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {p0, p1, v1, v2}, Lcom/miui/home/launcher/GridConfig;->updateScreenSize(Landroid/content/Context;II)Z

    move-result p0

    return p0
.end method

.method public static updateIconPositionForMiui11Upgrade()Z
    .locals 2

    .line 2303
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    const/4 v1, 0x0

    .line 2304
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    return v0
.end method

.method public static updateIconScaleForDBUpgrade()V
    .locals 1

    .line 1448
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/GridConfig;->updateIconScaleForDBUpgrade()V

    return-void
.end method

.method public static updateIsDefaultIcon(Landroid/content/Context;)V
    .locals 2

    .line 2451
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "is_default_icon"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsDefaultIcon:Z

    return-void
.end method

.method public static updateIsPocoDefaultIcon(Landroid/content/Context;)V
    .locals 2

    .line 2454
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "is_poco_icon"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v0

    :cond_0
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsPocoDefaultIcon:Z

    return-void
.end method

.method public static updateIsUseDefaultIconFolder1X1()V
    .locals 1

    .line 2458
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconCache;->isUseDefaultIconFolder1X1()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsUseDefaultIconFolder1X1:Z

    return-void
.end method

.method public static updateIsUseDefaultIconFolderLarge()V
    .locals 1

    .line 2462
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconCache;->isUseDefaultIconFolderLarge()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsUseDefaultIconFolderLarge:Z

    return-void
.end method

.method public static updateRotate(Landroid/content/Context;)V
    .locals 1

    .line 2720
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v0, "cetus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    return-void
.end method

.method public static updateSearchBarTransferEnable(Landroid/content/Context;)V
    .locals 4

    .line 770
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_home_screen_search_bar_transfer"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_1

    .line 773
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method public static useOldVersionIcons()Z
    .locals 1

    .line 2171
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUseOldVersionIcons:Z

    return v0
.end method

.method public static usingFsGesture()Z
    .locals 1

    .line 2054
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    return v0
.end method


# virtual methods
.method public Init(Landroid/content/Context;Z)Z
    .locals 6

    .line 394
    invoke-static {p1}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->setWindowRadius(Landroid/content/Context;)V

    .line 395
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->updateRotate(Landroid/content/Context;)V

    .line 396
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->loadThemeResource(Landroid/content/Context;)V

    .line 397
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/MonochromeUtils;->init(Landroid/content/Context;)V

    .line 398
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->enableAndResetCache()Z

    move-result v0

    .line 399
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isSupportConfigurationFoldScreenType(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportConfigurationFoldScreenType:Z

    .line 401
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->forceExitNoWordMode(Landroid/content/Context;)V

    .line 402
    invoke-static {p1}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;->checkNoWordSettings(Landroid/content/Context;)V

    .line 403
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsAccessibilityEnabledAsync()V

    .line 404
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->checkSearchBarSupport(Landroid/content/Context;)V

    .line 405
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->loadDensity(Landroid/content/Context;)V

    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 407
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 408
    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    goto :goto_0

    .line 410
    :cond_0
    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    .line 412
    :goto_0
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    if-nez v2, :cond_1

    .line 413
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    sput-object p2, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    goto :goto_3

    .line 415
    :cond_1
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    .line 416
    invoke-static {v2}, Lcom/miui/home/launcher/DeviceConfig;->hasThemeChanged(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 417
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->clearWallpaperSrc()V

    .line 419
    :cond_2
    invoke-static {v2}, Lcom/miui/home/launcher/DeviceConfig;->hasThemeChanged(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 420
    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    goto :goto_1

    .line 422
    :cond_3
    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    :goto_1
    const v5, -0x3fbfe07c

    and-int/2addr v2, v5

    if-nez v2, :cond_5

    if-nez p2, :cond_5

    .line 424
    sget-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    if-nez p2, :cond_5

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    return v3

    .line 429
    :cond_5
    :goto_2
    sget-object p2, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 434
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 435
    invoke-static {}, Lcom/miui/launcher/utils/MiuiWindowManagerUtils;->getInitialDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 436
    iget v0, v0, Landroid/graphics/Point;->x:I

    const/16 v2, 0x2d0

    if-le v0, v2, :cond_6

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isNaturalWidth720p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_4

    :cond_6
    move v0, v3

    :goto_4
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIs720Mode:Z

    .line 437
    sget-object v0, Lcom/miui/home/LauncherDecoupleHelper;->INSTANCE:Lcom/miui/home/LauncherDecoupleHelper;

    invoke-virtual {v0}, Lcom/miui/home/LauncherDecoupleHelper;->migrateData()V

    const v0, 0x7f07075c

    .line 438
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceInvalidateEdgeWidth:I

    const v0, 0x7f070639

    .line 440
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderRecommendGridPaddingBottom:I

    .line 442
    invoke-static {p1, p2}, Lcom/miui/home/launcher/DeviceConfig;->calcLauncherHeightWhenMultiWindow(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 443
    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountOnDatabaseChanged:Z

    .line 444
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->hasNavigationBar()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    .line 445
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsHotseatsAppTitleHided:Z

    .line 446
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->updateIsDefaultIcon(Landroid/content/Context;)V

    .line 447
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->updateIsPocoDefaultIcon(Landroid/content/Context;)V

    .line 449
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->initGridConfig(Landroid/content/Context;)V

    .line 450
    new-instance v0, Lcom/miui/home/launcher/EditModeConfig;

    invoke-direct {v0}, Lcom/miui/home/launcher/EditModeConfig;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->mEditModeConfig:Lcom/miui/home/launcher/EditModeConfig;

    .line 451
    new-instance v0, Lcom/miui/home/launcher/compat/LauncherLayoutType;

    invoke-direct {v0}, Lcom/miui/home/launcher/compat/LauncherLayoutType;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->sLauncherLayoutType:Lcom/miui/home/launcher/compat/LauncherLayoutType;

    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, p1, p2, v4, v0}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/Object;)Z

    .line 454
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f100433

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sRecommendLoadingTitle:Ljava/lang/String;

    .line 455
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0701c2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sRecommendBannerWidth:I

    .line 456
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sRecommendBannerHeight:I

    .line 457
    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    .line 459
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsTetheringSupported()V

    .line 460
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkSettingTitle()V

    .line 461
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    move v3, v4

    :cond_7
    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    .line 462
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07069f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sShortcutMenuDisappearThreshold:I

    .line 463
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090008

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarLightThreshold:F

    const/high16 v1, 0x7f090000

    .line 465
    invoke-virtual {p2, v1, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sDragIconScaleRatio:F

    .line 467
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getSavedColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->setAllAppsColorMode(Lcom/miui/home/launcher/allapps/AllAppsColorMode;)V

    .line 468
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getBackgroundAlpha()I

    move-result p2

    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->setAllAppsBackgroundAlpha(I)V

    .line 469
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 470
    invoke-static {}, Lcom/github/promeg/pinyinhelper/Pinyin;->newConfig()Lcom/github/promeg/pinyinhelper/Pinyin$Config;

    move-result-object p2

    invoke-static {}, Lcom/miui/home/library/utils/CustomPinyinDict;->getInstance()Lcom/miui/home/library/utils/CustomPinyinDict;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->with(Lcom/github/promeg/pinyinhelper/PinyinDict;)Lcom/github/promeg/pinyinhelper/Pinyin$Config;

    move-result-object p2

    invoke-static {p2}, Lcom/github/promeg/pinyinhelper/Pinyin;->init(Lcom/github/promeg/pinyinhelper/Pinyin$Config;)V

    goto :goto_5

    .line 472
    :cond_8
    invoke-static {v0}, Lcom/github/promeg/pinyinhelper/Pinyin;->init(Lcom/github/promeg/pinyinhelper/Pinyin$Config;)V

    .line 475
    :goto_5
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->checkDarkenWallpaperSupport(Landroid/content/Context;)Z

    move-result p2

    sput-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    .line 476
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->initDataPathFroClipIcon()V

    .line 477
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsSupportSplitWindow()Z

    move-result p2

    sput-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportMultiWindow:Z

    .line 478
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->checkSysUiStatusBarHiddenFlagChanged(Landroid/content/Context;)V

    .line 479
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->checkQuickSearchVersion(Landroid/content/Context;)V

    .line 480
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->init()V

    .line 481
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/android/systemui/shared/recents/utilities/Utilities;->sIsLargeScreenMode:Z

    .line 482
    new-instance p1, Lcom/miui/home/launcher/DeviceConfig$6;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/DeviceConfig$6;-><init>(Lcom/miui/home/launcher/DeviceConfig;)V

    invoke-static {p1}, Lmiui/app/MultiWindowCallBackUtils;->addIsSupportSplitScreenChangedImpl(Lmiui/app/MultiWindowCallBackUtils$IsSupportSplitScreenChanged;)V

    return v4
.end method

.method public checkIfIsOrientationChanged(Landroid/content/Context;)Z
    .locals 0

    .line 1090
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getGridConfig(Landroid/content/Context;)Lcom/miui/home/launcher/GridConfig;

    move-result-object p0

    .line 1091
    sget-object p1, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getGridConfig(Landroid/content/Context;)Lcom/miui/home/launcher/GridConfig;
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/miui/home/launcher/DeviceConfig;->portraitGridConfig:Lcom/miui/home/launcher/GridConfig;

    .line 567
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->updateRotate(Landroid/content/Context;)V

    .line 568
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 570
    iget-object p0, p0, Lcom/miui/home/launcher/DeviceConfig;->landscapeGridConfig:Lcom/miui/home/launcher/GridConfig;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/DeviceConfig;->portraitGridConfig:Lcom/miui/home/launcher/GridConfig;

    :goto_0
    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/Object;)Z
    .locals 8

    .line 1008
    invoke-static {}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->isRestoring()Z

    move-result v0

    const-string v1, "Launcher.DeviceConfig"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Backup is restoring return"

    .line 1009
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1012
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    .line 1013
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v3

    .line 1014
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->checkIfIsOrientationChanged(Landroid/content/Context;)Z

    move-result v4

    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    .line 1015
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getGridConfig(Landroid/content/Context;)Lcom/miui/home/launcher/GridConfig;

    move-result-object v4

    sput-object v4, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    .line 1016
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->updateGestureEnable(Landroid/content/Context;)V

    .line 1017
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->checkSearchBarSupport(Landroid/content/Context;)V

    .line 1018
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "force_black"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 1019
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "force_black_v2"

    invoke-static {v4, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v5

    :goto_1
    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sHideNotch:Z

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 1021
    sget-boolean v6, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportSearchBar:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v6, 0x2

    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v6

    const-string v6, "loadScreenSize showSearchBar isSupportSearchBar:%s , isInMultiWindowMode:%s , isHalfSoscSplit:%s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportSearchBar:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1023
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v5

    goto :goto_2

    :cond_3
    move v1, v2

    .line 1024
    :goto_2
    sget-object v4, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sIsSearchBarChanged:Z

    .line 1025
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1026
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/DeviceConfig;->updateDeviceSizMultiWindow(Landroid/content/Context;Landroid/content/res/Resources;)Z

    move-result p2

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->updateDeviceSize(Landroid/content/Context;)Z

    move-result p2

    .line 1027
    :goto_3
    sget-object v6, Lcom/miui/home/launcher/DeviceConfig;->mActiveGridConfig:Lcom/miui/home/launcher/GridConfig;

    const/16 v7, 0xa

    if-ne p3, v7, :cond_5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    :cond_5
    invoke-virtual {v6, p1, p3, p4}, Lcom/miui/home/launcher/GridConfig;->calGridSize(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result p4

    or-int/2addr p4, v4

    if-nez p4, :cond_7

    if-eqz p2, :cond_6

    .line 1028
    sget-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    move p2, v2

    goto :goto_5

    :cond_7
    :goto_4
    move p2, v5

    :goto_5
    sput-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChanged:Z

    .line 1029
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f070600

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sQuickCallCellVerticalSpacing:I

    .line 1030
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p4, "x"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/miui/home/launcher/DeviceConfig;->sCurrentScreenCells:Ljava/lang/String;

    .line 1031
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p4

    invoke-static {p2, p4}, Lcom/miui/home/launcher/DeviceConfig;->getCellSizeVal(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNameBySuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    .line 1032
    sget-object p2, Lcom/miui/home/launcher/DeviceConfig;->mEditModeConfig:Lcom/miui/home/launcher/EditModeConfig;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/EditModeConfig;->updateConfig(Landroid/content/Context;)V

    .line 1033
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBar(Landroid/content/Context;)V

    .line 1034
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->calcAllAppsCellSize(Landroid/content/Context;)V

    .line 1035
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->loadAllAppsCellCountX(Landroid/content/Context;)V

    .line 1036
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->calcWidgetMeasureWidth(Landroid/content/Context;)V

    .line 1037
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p0

    if-ne v0, p0, :cond_9

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p0

    if-eq v3, p0, :cond_8

    goto :goto_6

    :cond_8
    move p0, v2

    goto :goto_7

    :cond_9
    :goto_6
    move p0, v5

    .line 1038
    :goto_7
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->calHotseatMaxCount()I

    move-result p2

    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sHotseatMaxCount:I

    if-ne v7, p3, :cond_a

    goto :goto_8

    :cond_a
    move v2, v5

    .line 1039
    :goto_8
    invoke-static {p1, v2}, Lcom/miui/home/launcher/DeviceConfig;->tryToMigrateDefaultDatabase(Landroid/content/Context;Z)V

    .line 1040
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChanged:Z

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->notifyScreenSizeChanged()V

    :cond_b
    return p0
.end method

.method public loadScreenSizeSosc(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 2

    .line 996
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/Object;)Z

    return-void
.end method

.method public updateGestureEnable(Landroid/content/Context;)V
    .locals 3

    .line 1000
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    .line 1001
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "force_immersive_nav_bar"

    invoke-static {p0, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    if-eqz p0, :cond_2

    .line 1002
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1003
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "hide_gesture_line"

    invoke-static {p0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    move p0, v1

    goto :goto_2

    :cond_2
    move p0, v0

    :goto_2
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    .line 1004
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    if-eqz p1, :cond_3

    if-nez p0, :cond_3

    move v0, v1

    :cond_3
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsImmersiveNavigationBar:Z

    return-void
.end method

.method public updateProfileOnSpecialFDevice(Landroid/content/Context;)V
    .locals 3

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateProfileOnSpecialFDevice: isSpecialDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFlip()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isInSFDeviceExpandedMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-static {}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->getInstance()Lcom/miui/home/recents/SpecialFDeviceGestureHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->isInSFDeviceFoldedMode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const-string v2, "Launcher.DeviceConfig"

    .line 532
    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFlip()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->getInstance()Lcom/miui/home/recents/SpecialFDeviceGestureHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->isInSFDeviceFoldedMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v1, "window"

    .line 536
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 537
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 538
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 539
    iget-object p1, p0, Lcom/miui/home/launcher/DeviceConfig;->portraitGridConfig:Lcom/miui/home/launcher/GridConfig;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/launcher/GridConfig;->updateDeviceSize(II)V

    .line 540
    iget-object p0, p0, Lcom/miui/home/launcher/DeviceConfig;->landscapeGridConfig:Lcom/miui/home/launcher/GridConfig;

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/GridConfig;->updateDeviceSize(II)V

    :cond_0
    return-void
.end method
