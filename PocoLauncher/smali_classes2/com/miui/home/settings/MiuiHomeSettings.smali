.class public Lcom/miui/home/settings/MiuiHomeSettings;
.super Lmiuix/preference/PreferenceFragment;
.source "MiuiHomeSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/MiuiHomeSettings$CustomFactory;
    }
.end annotation


# static fields
.field public static final ICON_URI:Landroid/net/Uri;


# instance fields
.field private final GLOBAL_SEARCH:Ljava/lang/String;

.field private final KEY_CONTENT_CENTER:Ljava/lang/String;

.field private final KEY_GLOBAL_SEARCH:Ljava/lang/String;

.field private final KEY_GLOBAL_SHELF:Ljava/lang/String;

.field private final KEY_NOTIFICATION_BAR:Ljava/lang/String;

.field private final KEY_NO_ACTION:Ljava/lang/String;

.field private final NO_ACTION:Ljava/lang/String;

.field private currSlidDownConfig:Ljava/lang/String;

.field private currSlidUpConfig:Ljava/lang/String;

.field private mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field protected mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

.field protected mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

.field private final mCheckToModifyCellCount:Ljava/lang/Runnable;

.field private mContentCenterSettings:Lcom/miui/home/settings/preference/ValuePreference;

.field private mContentCenterSettingsExisted:Z

.field protected mDoubleTapLockPref:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mEnableAutoFillEmptyCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mHomeSettingIntent:Landroid/content/Intent;

.field private mIsWorkspaceToStartLoading:Z

.field protected mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

.field private mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

.field private mLockScreenCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field protected mMiuiHomeConfig:Landroidx/preference/PreferenceCategory;

.field private mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

.field private mNavigationType:Lcom/miui/home/settings/preference/ValuePreference;

.field private mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

.field protected mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field protected mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPersonalAssistantSimplified:Z

.field private mPullDownContentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsConfigPrefCategory:Landroidx/preference/PreferenceCategory;

.field private mRecentsLayoutStyle:Lcom/miui/home/settings/preference/ValuePreference;

.field private mScreenCellsConfig:Lcom/miui/home/settings/preference/ValuePreference;

.field protected mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mSettingClose:Ljava/lang/String;

.field private mSettingNoWord:Ljava/lang/String;

.field private mSettingOnlyWidgetNoWord:Ljava/lang/String;

.field private mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mSlideUpContentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field protected mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;


# direct methods
.method public static synthetic $r8$lambda$DwpydY8gTGlXRFNOrWGD3pz9z3E(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->lambda$initLauncherPullDown$3(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E5O3dwDcedop6SrmQyJrsK9PS1w(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->lambda$initLauncherSlideUp$5(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EAPXXnwL0PkegX506CVaVWv387c(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->lambda$setUpAnimationRateValue$7(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UMu07OREykhZQCkHe317u7xdeq4(Lcom/miui/home/settings/MiuiHomeSettings;Landroid/content/Intent;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->lambda$setContentCenterSettingsVisible$0(Landroid/content/Intent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cLKsGr4nQmFh0I1GwSMt9LuBFik(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->lambda$initLauncherSlideUp$4(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$e_MO9rcS0RsTGxLqp7kQxnns4TM(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->lambda$initLauncherPullDown$2(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$giaak77FgMiIE2DasQslUnsqXgI(Lcom/miui/home/settings/MiuiHomeSettings;ZLjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/settings/MiuiHomeSettings;->lambda$setContentCenterSettingsVisible$1(ZLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r_kgwlQYDQRR3mq8HoPy2diEWPA(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->lambda$setUpAnimationRateValue$6(Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "theme://zhuti.xiaomi.com/transfer?path=componentLocal&category=Icon&custom=true&showButton=true&miref=home&miback=true"

    .line 119
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/settings/MiuiHomeSettings;->ICON_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 106
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSettingIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 187
    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

    const-string v0, "global_search"

    .line 192
    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->GLOBAL_SEARCH:Ljava/lang/String;

    const-string v0, "no_action"

    .line 194
    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->NO_ACTION:Ljava/lang/String;

    .line 195
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f100262

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    .line 196
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f100263

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_GLOBAL_SHELF:Ljava/lang/String;

    .line 197
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f100265

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_NOTIFICATION_BAR:Ljava/lang/String;

    .line 198
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f100260

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_CONTENT_CENTER:Ljava/lang/String;

    .line 199
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f100264

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_NO_ACTION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1268
    iput-boolean v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mIsWorkspaceToStartLoading:Z

    .line 1296
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHandler:Landroid/os/Handler;

    .line 1298
    new-instance v0, Lcom/miui/home/settings/MiuiHomeSettings$16;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/MiuiHomeSettings$16;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mCheckToModifyCellCount:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/settings/MiuiHomeSettings;)Z
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->affectCellCountEnable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/home/settings/MiuiHomeSettings;)Z
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->isSupportPA()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/home/settings/MiuiHomeSettings;)Lcom/miui/home/settings/preference/ValuePreference;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ValuePreference;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/home/settings/MiuiHomeSettings;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->checkToModifyCellCountEnable()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/settings/MiuiHomeSettings;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/settings/MiuiHomeSettings;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidUpConfig:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/settings/MiuiHomeSettings;)Lcom/miui/home/settings/preference/ListPreference;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/settings/MiuiHomeSettings;Landroid/content/Context;Z)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/miui/home/settings/MiuiHomeSettings;->setHomeScreenSearchBar(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/settings/MiuiHomeSettings;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/settings/MiuiHomeSettings;Landroid/content/ContentResolver;Z)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/miui/home/settings/MiuiHomeSettings;->setPersonalAssistantState(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/settings/MiuiHomeSettings;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/settings/MiuiHomeSettings;)Z
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->personalAssistantSettingsCanBeResolved()Z

    move-result p0

    return p0
.end method

.method private affectCellCountEnable()Z
    .locals 3

    .line 1271
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1274
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1277
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    const-string v2, "MiuiHomeSettings"

    if-eqz v0, :cond_2

    const-string p0, "no change cell count by loading"

    .line 1278
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1281
    :cond_2
    iget-boolean p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mIsWorkspaceToStartLoading:Z

    if-eqz p0, :cond_3

    const-string p0, "no change cell count by launcher start loading"

    .line 1282
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1285
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInHalfSoscSplitMode()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "no change cell count in half sosc"

    .line 1286
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1289
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScreenReady()Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "no change cell count by workspace changed screen"

    .line 1290
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private checkToModifyCellCountEnable()V
    .locals 3

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",lock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", affect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->affectCellCountEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHomeSettings"

    .line 1318
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mCheckToModifyCellCount:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 1324
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1325
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mCheckToModifyCellCount:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 1328
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->affectCellCountEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1329
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mCheckToModifyCellCount:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 1332
    :cond_2
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mCheckToModifyCellCount:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1333
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mCheckToModifyCellCount:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private dismissSpinnerPopupWindow(Lmiuix/preference/DropDownPreference;)V
    .locals 4

    .line 1223
    :try_start_0
    const-class p0, Lmiuix/preference/DropDownPreference;

    const-string v0, "mSpinner"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 1224
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1225
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1227
    const-class p1, Lmiuix/appcompat/widget/Spinner;

    const-string v1, "dismissPopup"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1228
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v2, [Ljava/lang/Object;

    .line 1229
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1232
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private getKeyByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TV;)TK;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 586
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    .line 590
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 591
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method private getLauncherSlideUp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 563
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 564
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 571
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    .line 575
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    .line 580
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getDefaultSlideUpGesture()Ljava/lang/String;

    move-result-object p1

    .line 581
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "launcher_slideup_gesture"

    invoke-static {v0, v1, p1}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSlideUpContentMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->getKeyByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_4
    :goto_0
    return-object v1
.end method

.method private getNavigationTypeName()Ljava/lang/String;
    .locals 2

    .line 558
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {p0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1003a4

    goto :goto_0

    :cond_0
    const p0, 0x7f1003aa

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrivacyThumbnailBlurAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.miui.securitycenter.action.PRIVACY_THUMBNAIL_BLUR_SETTING"

    .line 532
    invoke-static {p0, v0}, Lcom/miui/home/launcher/ScreenUtils;->isActivityExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "com.android.settings.action.PRIVACY_THUMBNAIL_BLUR_SETTING"

    .line 534
    invoke-static {p0, v0}, Lcom/miui/home/launcher/ScreenUtils;->isActivityExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSlideUpEntriesForChinesePhone()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 464
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_CONTENT_CENTER:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_NO_ACTION:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0
.end method

.method private initLauncherPullDown()V
    .locals 4

    .line 402
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "launcher_pull_down"

    .line 405
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ListPreference;

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

    .line 407
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    .line 408
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->canPullDownToGlobalSearch()Z

    move-result v0

    if-nez v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 412
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/GlobalSearchUtil;->isSupportPullDownSearch()Z

    move-result v0

    if-nez v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 417
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initPullDownContentMap()V

    .line 419
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    new-array v0, v3, [Ljava/lang/String;

    .line 420
    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_GLOBAL_SHELF:Ljava/lang/String;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_NOTIFICATION_BAR:Ljava/lang/String;

    aput-object v2, v0, v1

    goto :goto_0

    :cond_3
    new-array v0, v3, [Ljava/lang/String;

    .line 422
    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_NOTIFICATION_BAR:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 424
    :goto_0
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 425
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 426
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 428
    new-instance v0, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private initLauncherSlideUp()V
    .locals 5

    .line 468
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 471
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isRemoveLauncherSlideUpSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 474
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 479
    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_3

    .line 480
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isShowSlideUpInSettings()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 481
    iget-object v4, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_CONTENT_CENTER:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_NO_ACTION:Ljava/lang/String;

    aput-object v1, v0, v3

    goto :goto_0

    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    .line 483
    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_NO_ACTION:Ljava/lang/String;

    aput-object v2, v0, v1

    goto :goto_0

    .line 486
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getSlideUpEntriesForChinesePhone()[Ljava/lang/String;

    move-result-object v0

    .line 488
    :goto_0
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 489
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 490
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 492
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 494
    new-instance v0, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private initPersonalAssistant()V
    .locals 0

    .line 1112
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initPersonalAssistantButton()V

    .line 1113
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initPersonalAssistantSettings()V

    return-void
.end method

.method private initPersonalAssistantButton()V
    .locals 3

    .line 1117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/settings/MiuiHomeSettings;->needHideMinusScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1121
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "open_personal_assistant"

    invoke-static {p0, v2, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private initPersonalAssistantSettings()V
    .locals 2

    .line 1127
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->shouldHidePersonalAssistantSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 1131
    :cond_0
    new-instance v0, Lcom/miui/home/settings/MiuiHomeSettings$14;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/MiuiHomeSettings$14;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$15;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$15;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private initPullDownContentMap()V
    .locals 3

    .line 437
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPullDownContentMap:Ljava/util/Map;

    .line 438
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_GLOBAL_SHELF:Ljava/lang/String;

    const-string v2, "pull_down_global_search"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPullDownContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPullDownContentMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_NOTIFICATION_BAR:Ljava/lang/String;

    const-string v1, "notification_bar"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initRecentsPreferences()V
    .locals 3

    const-string v0, "show_mem_info_pref"

    .line 364
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

    .line 365
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "recents_layout_style"

    .line 366
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsLayoutStyle:Lcom/miui/home/settings/preference/ValuePreference;

    .line 367
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.recents.task_stack_view_layout_style"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 368
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsLayoutStyle:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f10041e

    goto :goto_0

    :cond_0
    const v1, 0x7f10041f

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    .line 370
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsConfigPrefCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsLayoutStyle:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsConfigPrefCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 375
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->updateRecentPreferences()V

    return-void
.end method

.method private initSlideUpContentMap()V
    .locals 3

    .line 445
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSlideUpContentMap:Ljava/util/Map;

    .line 447
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    const-string v2, "global_search"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSlideUpContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_CONTENT_CENTER:Ljava/lang/String;

    const-string v2, "content_center"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSlideUpContentMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_NO_ACTION:Ljava/lang/String;

    const-string v1, "no_action"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 451
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initSlideUpContentMapChinese()V

    :goto_0
    return-void
.end method

.method private initSlideUpContentMapChinese()V
    .locals 3

    .line 456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSlideUpContentMap:Ljava/util/Map;

    .line 458
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_CONTENT_CENTER:Ljava/lang/String;

    const-string v2, "content_center"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSlideUpContentMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_NO_ACTION:Ljava/lang/String;

    const-string v1, "no_action"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initSwipeUpHomeSettingGlobal()V
    .locals 2

    .line 504
    invoke-static {}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->showCheckSlidingSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 506
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 510
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private injectKeyEvent(I)V
    .locals 17

    .line 1247
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 1248
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/16 v13, 0x101

    move-object v1, v0

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1251
    new-instance v16, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    :try_start_0
    const-string v1, "android.hardware.input.InputManager"

    .line 1255
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 1256
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 1257
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1260
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "injectInputEvent"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/view/InputEvent;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v3

    .line 1261
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v16, v0, v3

    .line 1262
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1264
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static isPersonalAssistantSimplified()Z
    .locals 4

    .line 1171
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.personalassistant"

    const-string v3, "com.miui.personalassistant.settings.PASettingActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1175
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "personalassistantSupportSimplify"

    .line 1179
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSupportPA()Z
    .locals 0

    .line 1165
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p0

    if-nez p0, :cond_1

    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$initLauncherPullDown$2(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 429
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/settings/LauncherGestureController;->getPullDownValue(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidDownConfig:Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$initLauncherPullDown$3(Ljava/lang/Void;)V
    .locals 0

    .line 432
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidDownConfig:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initLauncherSlideUp$4(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 495
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/ApplicationConfig;->initFeed(Landroid/content/Context;)V

    .line 496
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/settings/LauncherGestureController;->getSlideUpValue(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidUpConfig:Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$initLauncherSlideUp$5(Ljava/lang/Void;)V
    .locals 1

    .line 499
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidUpConfig:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/home/settings/MiuiHomeSettings;->getLauncherSlideUp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setContentCenterSettingsVisible$0(Landroid/content/Intent;)Ljava/lang/Boolean;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setContentCenterSettingsVisible$1(ZLjava/lang/Boolean;)V
    .locals 1

    .line 355
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mContentCenterSettingsExisted:Z

    .line 356
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mContentCenterSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private synthetic lambda$setUpAnimationRateValue$6(Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 660
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->updateAnimationRate(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setUpAnimationRateValue$7(Ljava/lang/String;)V
    .locals 0

    .line 661
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private modifyCellCountEnable(Ljava/lang/String;)V
    .locals 4

    .line 1337
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ValuePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1338
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v2

    const v3, 0x7f10045c

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/miui/home/settings/preference/ValuePreference;->setDisableTips(I)V

    .line 1339
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1340
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setDisableTips(I)V

    .line 1341
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->checkToModifyCellCountEnable()V

    .line 1342
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no change cell count, reason "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiHomeSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static needHideMinusScreen(Landroid/content/Context;)Z
    .locals 2

    .line 1044
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 1045
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 1046
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    if-eq p0, v1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isAssistantInstalled()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static noWordModelChange(Landroid/content/ContentResolver;)V
    .locals 3

    const-string v0, "miui_home_no_word_model"

    const/4 v1, 0x0

    .line 860
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 861
    invoke-static {p0, v0, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 862
    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeSettingNoWord(Z)V

    :cond_0
    const-string v0, "miui_home_only_widget_no_word_model"

    .line 864
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 865
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method

.method private noWordModelPreferenceChange(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSettingNoWord:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    invoke-static {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->noWordModelChange(Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSettingOnlyWidgetNoWord:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    invoke-static {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->onlyWidgetNoWordChange(Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 854
    :cond_1
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSettingClose:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 855
    invoke-static {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->noWordOrOnlyWidgetNoWordClose(Landroid/content/ContentResolver;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static noWordOrOnlyWidgetNoWordClose(Landroid/content/ContentResolver;)V
    .locals 3

    const-string v0, "miui_home_no_word_model"

    const/4 v1, 0x0

    .line 880
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 881
    invoke-static {v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeSettingNoWord(Z)V

    .line 882
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_0
    const-string v0, "miui_home_only_widget_no_word_model"

    .line 883
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 884
    invoke-static {v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeSettingOnlyWidgetNoWord(Z)V

    .line 885
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static onlyWidgetNoWordChange(Landroid/content/ContentResolver;)V
    .locals 3

    const-string v0, "miui_home_only_widget_no_word_model"

    const/4 v1, 0x0

    .line 870
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 871
    invoke-static {p0, v0, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 872
    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeSettingOnlyWidgetNoWord(Z)V

    :cond_0
    const-string v0, "miui_home_no_word_model"

    .line 874
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 875
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method

.method private personalAssistantSettingsCanBeResolved()Z
    .locals 1

    .line 1155
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1156
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->isSupportPA()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "pa://common_settings"

    .line 1157
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p0, "pa://settings"

    .line 1159
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1161
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private setContentCenterSettingsVisible()V
    .locals 3

    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/feed/FeedUtils;->isSupportSetting(Landroid/content/Context;)Z

    move-result v0

    .line 350
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mContentCenterSettings:Lcom/miui/home/settings/preference/ValuePreference;

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 352
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.newhome.action.THIRD_APP_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    iget-object v2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mContentCenterSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 354
    new-instance v2, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda7;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;Landroid/content/Intent;)V

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;Z)V

    invoke-static {v2, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private setHomeScreenSearchBar(Landroid/content/Context;Z)V
    .locals 1

    .line 976
    new-instance v0, Lcom/miui/home/settings/MiuiHomeSettings$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/settings/MiuiHomeSettings$9;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;Landroid/content/Context;Z)V

    const/4 p0, 0x0

    invoke-static {v0, p0, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private setNoWordModelValue()V
    .locals 1

    .line 1237
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSettingNoWord:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 1239
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isOnlyWidgetNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1240
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSettingOnlyWidgetNoWord:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 1242
    :cond_1
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSettingClose:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setPersonalAssistantSettingsVisible()V
    .locals 2

    .line 1186
    iget-boolean v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPersonalAssistantSimplified:Z

    if-eqz v0, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1188
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1003cf

    goto :goto_0

    :cond_0
    const p0, 0x7f1003ce

    :goto_0
    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    goto :goto_1

    .line 1191
    :cond_1
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void
.end method

.method private setPersonalAssistantState(Landroid/content/ContentResolver;Z)V
    .locals 0

    const-string p0, "open_personal_assistant"

    .line 1039
    invoke-static {p1, p0, p2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method private setUpAnimationRateValue()V
    .locals 2

    .line 655
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->supportSetAnimationRate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setEntryValues(I)V

    .line 657
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setEntries(I)V

    .line 658
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 659
    new-instance v0, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setUpAnimationRateVisible()V
    .locals 1

    .line 666
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->supportSetAnimationRate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method private setUpNoWordModelPreference()V
    .locals 2

    .line 1205
    invoke-static {}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;->isNoWordAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 1207
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 1210
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isOnlyWidgetNoWordModelSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f030022

    goto :goto_0

    :cond_1
    const v0, 0x7f030023

    .line 1211
    :goto_0
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1212
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setEntries(I)V

    .line 1213
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setEntryValues(I)V

    .line 1214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10046e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSettingNoWord:Ljava/lang/String;

    .line 1215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10046f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSettingOnlyWidgetNoWord:Ljava/lang/String;

    .line 1216
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10046d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSettingClose:Ljava/lang/String;

    .line 1217
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setNoWordModelValue()V

    :cond_2
    :goto_1
    return-void
.end method

.method private setUpScreenCellsConfig(ZI)V
    .locals 3

    .line 672
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeConfig:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 674
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeConfig:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 675
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 676
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LayoutPreviewView;->getScreenCellConfigString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInLayoutPreview()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 678
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLayoutPreviewView()Lcom/miui/home/launcher/LayoutPreviewView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LayoutPreviewView;->getScreenCellsInUse()Ljava/lang/String;

    move-result-object v1

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 682
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->affectCellCountEnable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p1, :cond_2

    .line 684
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p0, p2}, Lcom/miui/home/settings/preference/ValuePreference;->setDisableTips(I)V

    goto :goto_1

    .line 686
    :cond_2
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p0, v2}, Lcom/miui/home/settings/preference/ValuePreference;->setDisableTips(I)V

    :goto_1
    return-void
.end method

.method private shouldHidePersonalAssistantSettings()Z
    .locals 0

    .line 1151
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private showDialog()V
    .locals 3

    .line 988
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_1

    .line 989
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 990
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 991
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1003cc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 992
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_0

    const v2, 0x7f1003cb

    goto :goto_0

    :cond_0
    const v2, 0x7f1003ca

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1003c8

    new-instance v2, Lcom/miui/home/settings/MiuiHomeSettings$13;

    invoke-direct {v2, p0}, Lcom/miui/home/settings/MiuiHomeSettings$13;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 994
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1003c9

    new-instance v2, Lcom/miui/home/settings/MiuiHomeSettings$12;

    invoke-direct {v2, p0}, Lcom/miui/home/settings/MiuiHomeSettings$12;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 1002
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$11;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$11;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 1012
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$10;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$10;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 1018
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1024
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 1026
    :cond_1
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private showHomeSearchBarDialog()V
    .locals 3

    .line 936
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 937
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 938
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10012a

    .line 939
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10012d

    .line 940
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10012b

    new-instance v2, Lcom/miui/home/settings/MiuiHomeSettings$8;

    invoke-direct {v2, p0}, Lcom/miui/home/settings/MiuiHomeSettings$8;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 941
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10012c

    new-instance v2, Lcom/miui/home/settings/MiuiHomeSettings$7;

    invoke-direct {v2, p0}, Lcom/miui/home/settings/MiuiHomeSettings$7;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 949
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$6;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$6;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 957
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 963
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    .line 966
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 968
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 969
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 970
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0, v2}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private showInstallDialog()V
    .locals 3

    .line 904
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100050

    .line 905
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10004f

    .line 906
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$5;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$5;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    const v2, 0x7f1000c4

    .line 907
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$4;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$4;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    const v2, 0x7f100283

    .line 913
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$3;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$3;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 925
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 931
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 932
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private updateRecentPreferences()V
    .locals 2

    .line 642
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 645
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_recents_show_mem_info"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsLayoutStyle:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const p0, 0x7f10041e

    goto :goto_0

    :cond_1
    const p0, 0x7f10041f

    :goto_0
    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected checkDefaultLauncher(Ljava/lang/String;)V
    .locals 3

    const-string v0, "com.vroco.launcher"

    .line 691
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 692
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 693
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPersonalAssistantSimplified:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->shouldHidePersonalAssistantSettings()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 694
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-nez p1, :cond_2

    .line 696
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 698
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setPersonalAssistantSettingsVisible()V

    .line 700
    :goto_1
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 701
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeConfig:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 702
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mDoubleTapLockPref:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    .line 892
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "launcher_slideup_gesture"

    invoke-static {p1, p3, p2}, Lcom/miui/home/settings/LauncherGestureController;->getSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 893
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "content_center"

    .line 894
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 895
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_CONTENT_CENTER:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 897
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidUpConfig:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 219
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/miui/home/settings/MiuiHomeSettings$CustomFactory;

    invoke-direct {v0, v1}, Lcom/miui/home/settings/MiuiHomeSettings$CustomFactory;-><init>(Lcom/miui/home/settings/MiuiHomeSettings$1;)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 222
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const p1, 0x7f130018

    .line 223
    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "launcher_slide_up"

    .line 225
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ListPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    :cond_1
    const-string p1, "miui_home_config_pref"

    .line 227
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    const-string p1, "content_center_settings"

    .line 228
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mContentCenterSettings:Lcom/miui/home/settings/preference/ValuePreference;

    .line 229
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setContentCenterSettingsVisible()V

    const-string p1, "launcher_slide_up_global_pref"

    .line 230
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string p1, "all_apps_setting_pref"

    .line 231
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

    .line 232
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initLauncherPullDown()V

    const-string p1, "launcher_search_bar"

    .line 234
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string p1, "navigation_type"

    .line 235
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNavigationType:Lcom/miui/home/settings/preference/ValuePreference;

    const-string p1, "miui_screen_config_pref"

    .line 236
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeConfig:Landroidx/preference/PreferenceCategory;

    const-string p1, "recents_config_pref"

    .line 237
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsConfigPrefCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "no_word_model"

    .line 238
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ListPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    const-string p1, "auto_fill_empty_pref"

    .line 239
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mEnableAutoFillEmptyCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string p1, "lock_screen_cells_pref"

    .line 240
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLockScreenCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string p1, "open_personal_assistant_pref"

    .line 241
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string p1, "switch_personal_assistant_pref"

    .line 242
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    const-string p1, "open_personal_assistant_settings_pref"

    .line 243
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    .line 244
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "screen_cell_config"

    .line 245
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ValuePreference;

    .line 246
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 247
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 248
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    const-string p1, "animation_rate"

    .line 250
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ListPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    .line 251
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setUpAnimationRateVisible()V

    .line 252
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setUpNoWordModelPreference()V

    .line 253
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mEnableAutoFillEmptyCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 254
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLockScreenCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 256
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initSlideUpContentMap()V

    .line 257
    invoke-static {}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->useListSlidingSetting()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 258
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initLauncherSlideUp()V

    goto :goto_0

    .line 259
    :cond_3
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_5

    .line 260
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->showSlideUpCheckboxSetting()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 261
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initSwipeUpHomeSettingGlobal()V

    goto :goto_0

    .line 263
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initLauncherSlideUp()V

    goto :goto_0

    .line 266
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initSwipeUpHomeSettingGlobal()V

    .line 268
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initPersonalAssistant()V

    .line 269
    invoke-static {}, Lcom/miui/home/settings/MiuiHomeSettings;->isPersonalAssistantSimplified()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPersonalAssistantSimplified:Z

    .line 270
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const/4 v2, 0x1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->shouldHidePersonalAssistantSettings()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move p1, p2

    goto :goto_2

    :cond_7
    :goto_1
    move p1, v2

    :goto_2
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 271
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    iget-boolean v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPersonalAssistantSimplified:Z

    if-eqz v0, :cond_8

    const v0, 0x7f1003b2

    goto :goto_3

    :cond_8
    const v0, 0x7f1003cd

    :goto_3
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 273
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result p1

    .line 274
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-nez v0, :cond_9

    .line 275
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 277
    :cond_9
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 278
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_c

    .line 280
    sget-boolean v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->CAN_SWITCH_MINUS_SCREEN:Z

    if-eqz v0, :cond_a

    .line 281
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 282
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.miui.home.action.LAUNCHER_PERSONAL_ASSISTANT_SETTING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 283
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    .line 285
    :cond_a
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 287
    :goto_4
    sget-boolean v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->ONLY_USE_GOOGLE_MINUS_SCREEN:Z

    if-eqz v0, :cond_b

    .line 288
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const v3, 0x7f1004cf

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 289
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const v3, 0x7f1004d1

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 291
    :cond_b
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_5

    .line 293
    :cond_c
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 294
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 295
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setPersonalAssistantSettingsVisible()V

    .line 299
    :cond_d
    :goto_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isShowSystemNavTypePreferenceInMiuiSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 300
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNavigationType:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 301
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNavigationType:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.home.action.navigation_bar_type_settings"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 304
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.home.action.ALL_APPS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "is_drawer_setting"

    .line 305
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 307
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

    if-eqz p1, :cond_f

    const p1, 0x7f10005a

    goto :goto_6

    :cond_f
    const p1, 0x7f100054

    :goto_6
    invoke-virtual {p2, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    .line 309
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initRecentsPreferences()V

    .line 311
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportIconSearchBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 312
    new-instance p1, Lcom/miui/home/settings/MiuiHomeSettings$1;

    invoke-direct {p1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$1;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    new-instance p2, Lcom/miui/home/settings/MiuiHomeSettings$2;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/MiuiHomeSettings$2;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    invoke-static {p1, p2, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    goto :goto_7

    .line 340
    :cond_10
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 342
    :goto_7
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    const-string p1, "gesture_control_check"

    .line 344
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mDoubleTapLockPref:Lcom/miui/home/settings/preference/CheckBoxPreference;

    .line 345
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 1034
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 1035
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/CellCountChangeMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1347
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/LayoutPreviewView;->getScreenCellConfigString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/LauncherLoadingState;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1105
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/LauncherLoadingState;->isStartLoading()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mIsWorkspaceToStartLoading:Z

    .line 1106
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/LauncherLoadingState;->isStartLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/LauncherLoadingState;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->modifyCellCountEnable(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/LauncherModeChangedMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 517
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/LauncherModeChangedMessage;->getModeName()Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-static {p1}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 521
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode(Ljava/lang/String;)Z

    move-result p1

    .line 522
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

    if-eqz p1, :cond_1

    const v1, 0x7f10005a

    goto :goto_0

    :cond_1
    const v1, 0x7f100054

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    .line 523
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-nez v0, :cond_2

    .line 524
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 526
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setContentCenterSettingsVisible()V

    .line 528
    :cond_2
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageAddMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageAddMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.newhome"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setContentCenterSettingsVisible()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageChangedMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageChangedMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.newhome"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setContentCenterSettingsVisible()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 380
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.newhome"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setContentCenterSettingsVisible()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1069
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 1076
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 1071
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1072
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 745
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MiuiHomeSettings"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "contentResolver is null"

    .line 747
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 750
    :cond_0
    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mDoubleTapLockPref:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const/4 v4, 0x1

    if-ne p1, v3, :cond_1

    .line 751
    check-cast p2, Ljava/lang/Boolean;

    .line 752
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string p1, "lock_screen_mode"

    invoke-static {v0, p1, p0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 753
    :cond_1
    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    if-ne p1, v3, :cond_2

    .line 754
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/miui/home/settings/MiuiHomeSettings;->noWordModelPreferenceChange(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 755
    :cond_2
    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mEnableAutoFillEmptyCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_3

    .line 756
    check-cast p2, Ljava/lang/Boolean;

    .line 759
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string p1, "miui_home_enable_auto_fill_empty_cells"

    .line 757
    invoke-static {v0, p1, p0}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 760
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeMoreSettingsAutoFillEmptyCells(Z)V

    goto/16 :goto_1

    .line 761
    :cond_3
    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLockScreenCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_6

    .line 762
    check-cast p2, Ljava/lang/Boolean;

    .line 765
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "miui_home_lock_screen_cells"

    .line 763
    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 766
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 768
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShakeMonitor()Lcom/miui/home/launcher/ShakeMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShakeMonitor;->onLockScreenSwitchChanged()V

    .line 770
    :cond_4
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 771
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 772
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 773
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ValuePreference;

    const v0, 0x7f10045c

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setDisableTips(I)V

    .line 774
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setDisableTips(I)V

    goto :goto_0

    .line 776
    :cond_5
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1, v2}, Lcom/miui/home/settings/preference/ValuePreference;->setDisableTips(I)V

    .line 777
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0, v2}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setDisableTips(I)V

    .line 779
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeMoreSettingsLockScreenCells(Z)V

    goto/16 :goto_1

    .line 780
    :cond_6
    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ValuePreference;

    if-ne p1, v3, :cond_7

    const/4 p1, 0x3

    .line 781
    invoke-direct {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->injectKeyEvent(I)V

    .line 782
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackScreenCellsConfig()V

    .line 783
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/common/messages/LayoutPreviewDisplay;

    invoke-direct {p1}, Lcom/miui/home/launcher/common/messages/LayoutPreviewDisplay;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 784
    :cond_7
    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_a

    .line 785
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_9

    .line 786
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_8

    sget-boolean p1, Lcom/miui/home/launcher/LauncherAssistantCompat;->ONLY_USE_GOOGLE_MINUS_SCREEN:Z

    if-eqz p1, :cond_8

    .line 787
    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackPersonalAssistantSwitch(Z)V

    .line 788
    invoke-direct {p0, v0, v2}, Lcom/miui/home/settings/MiuiHomeSettings;->setPersonalAssistantState(Landroid/content/ContentResolver;Z)V

    goto/16 :goto_1

    .line 790
    :cond_8
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->showDialog()V

    goto/16 :goto_1

    .line 793
    :cond_9
    invoke-static {v4}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackPersonalAssistantSwitch(Z)V

    .line 794
    invoke-direct {p0, v0, v4}, Lcom/miui/home/settings/MiuiHomeSettings;->setPersonalAssistantState(Landroid/content/ContentResolver;Z)V

    .line 795
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_14

    .line 796
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_1

    .line 799
    :cond_a
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    if-ne p1, v0, :cond_e

    .line 800
    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-nez p1, :cond_b

    .line 801
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidUpConfig:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    const-string p1, "mLauncherSlideUp.isVisible()==false."

    .line 802
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mLauncherSlideUp.setValue    currSlidUpConfig="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidUpConfig:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 806
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 807
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSlideUpContentMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 808
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v1, "launcher_slideup_gesture"

    if-eqz v0, :cond_c

    .line 809
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p2}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidUpConfig:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    const-string v0, "content_center"

    .line 813
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedInstalled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 814
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->showInstallDialog()V

    goto/16 :goto_1

    .line 816
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p2}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p2, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 818
    invoke-static {v2}, Lcom/miui/home/settings/LauncherGestureController;->putSlideUpAppInstalling(Z)V

    .line 819
    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidUpConfig:Ljava/lang/String;

    .line 820
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setContentCenterSettingsVisible()V

    goto/16 :goto_1

    .line 823
    :cond_e
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_f

    .line 824
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->setGlobalSearchEnable(Landroid/content/Context;Z)V

    goto :goto_1

    .line 825
    :cond_f
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_11

    .line 826
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 827
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lcom/miui/home/settings/MiuiHomeSettings;->setHomeScreenSearchBar(Landroid/content/Context;Z)V

    goto :goto_1

    .line 829
    :cond_10
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->showHomeSearchBarDialog()V

    goto :goto_1

    .line 831
    :cond_11
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    if-ne p1, v0, :cond_12

    .line 832
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 833
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setAnimationRate(Landroid/content/Context;I)V

    .line 834
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 835
    :cond_12
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

    if-ne p1, v0, :cond_13

    .line 836
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 837
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPullDownContentMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 838
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "launcher_pulldown_gesture"

    invoke-static {v0, v1, p2}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 840
    :cond_13
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, p0, :cond_14

    .line 841
    check-cast p2, Ljava/lang/Boolean;

    .line 842
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 843
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "miui_recents_show_mem_info"

    .line 842
    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 844
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeMoreSettingsShowMemInfo(Z)V

    :cond_14
    :goto_1
    return v4
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 1081
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "open_personal_assistant_settings_pref"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1083
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    .line 1084
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "com.miui.personalassistant"

    .line 1085
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1086
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->isSupportPA()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pa://common_settings"

    .line 1087
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "param_setting_key"

    const-string v1, "fragment_privacy_setting"

    .line 1088
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "pa://settings"

    .line 1090
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    const-string v0, "is_simplified_key"

    const/4 v1, 0x1

    .line 1092
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1093
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1094
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 1098
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 6

    .line 599
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 600
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getCurrentDefaultHomePackageName()Ljava/lang/String;

    move-result-object v0

    .line 601
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 603
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v1

    if-nez v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/settings/LauncherGestureController;->getSlideUpValue(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/home/settings/MiuiHomeSettings;->getLauncherSlideUp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 605
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 606
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/settings/LauncherGestureController;->getPullDownValue(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 609
    :cond_1
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNavigationType:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 610
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNavigationType:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getNavigationTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 613
    :cond_2
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 614
    :cond_3
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/DeviceConfig;->isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 616
    :cond_4
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getCurrentPersonalAssistantName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/MiuiHomeSettings;->checkDefaultLauncher(Ljava/lang/String;)V

    .line 618
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->enableAutoFillEmpty()Z

    move-result v0

    .line 619
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mEnableAutoFillEmptyCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 620
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    .line 621
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLockScreenCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const v1, 0x7f10045c

    .line 622
    invoke-direct {p0, v0, v1}, Lcom/miui/home/settings/MiuiHomeSettings;->setUpScreenCellsConfig(ZI)V

    .line 623
    iget-object v2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->affectCellCountEnable()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    move v3, v5

    goto :goto_0

    :cond_5
    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_6

    .line 625
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setDisableTips(I)V

    goto :goto_1

    .line 627
    :cond_6
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setDisableTips(I)V

    .line 629
    :goto_1
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 630
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setUpAnimationRateValue()V

    .line 631
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setNoWordModelValue()V

    .line 632
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "open_personal_assistant"

    invoke-static {v1, v2, v5}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f1003cf

    goto :goto_2

    :cond_7
    const v1, 0x7f1003ce

    :goto_2
    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    .line 634
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->updateRecentPreferences()V

    .line 635
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/miui/home/settings/MiuiHomeSettings;->dismissSpinnerPopupWindow(Lmiuix/preference/DropDownPreference;)V

    .line 636
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->checkToModifyCellCountEnable()V

    .line 637
    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->isSettingSupportDoubleTapLock()Z

    move-result v0

    .line 638
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mDoubleTapLockPref:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1052
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "open_personal_assistant"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "PERSONAL_ASSISTANT"

    .line 1051
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1054
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    .line 1059
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v1, "PERSONAL_ASSISTANT"

    .line 1062
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 1061
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1063
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method
