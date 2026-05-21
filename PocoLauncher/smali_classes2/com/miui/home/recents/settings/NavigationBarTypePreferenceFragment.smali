.class public Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "NavigationBarTypePreferenceFragment.java"

# interfaces
.implements Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;


# static fields
.field private static sExistInputApk:I


# instance fields
.field private foldListener:Lcom/miui/home/recents/SpecialDeviceFoldManager$FoldedStateListener;

.field private mAppQuickSwitchGuide:Landroidx/preference/Preference;

.field private mAppSwitchFeature:Lmiuix/preference/CheckBoxPreference;

.field private mAppSwitchGuide:Landroidx/preference/Preference;

.field private mAssistGesture:Lmiuix/preference/CheckBoxPreference;

.field private mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

.field private mBackGuide:Landroidx/preference/Preference;

.field private mConflictAlertDialog:Landroid/app/Dialog;

.field private mContext:Landroid/content/Context;

.field private mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

.field private mGuideCategory:Lmiuix/preference/PreferenceCategory;

.field private mHideGestureLine:Lmiuix/preference/CheckBoxPreference;

.field private mHomeGuide:Landroidx/preference/Preference;

.field private mIsFSGNavBarWhenCreateFragment:Z

.field private mIsShowKeyShortcutsEntry:Z

.field private mIsSupportQuickSwitchGesture:Z

.field private mIsUseGestureVersion3:Z

.field private mMistakeTouch:Lmiuix/preference/CheckBoxPreference;

.field private mNavBarTypePreference:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

.field private mNavShortcutCategory:Lmiuix/preference/PreferenceCategory;

.field private mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

.field private mRecentGuide:Landroidx/preference/Preference;

.field private mShortcutKeysMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

.field private mSwitchScreenButtonOrder:Lmiuix/preference/CheckBoxPreference;


# direct methods
.method public static synthetic $r8$lambda$10hyB5QnhYT51gnRD2lKpEmEAzQ(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$updateSettingPreferencesCheckedState$20()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1aP2iD3_4NHKErouwKDc2feAH3Q(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$initGuidePreferences$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$3BRM_aDKT-ZhvRkqajMfRDwnLBo(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$initSettingPreferences$4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3e5803UIDb45_SD73h3PS2BLU3Q(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$initGuidePreferences$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$7-TjcipB79ePpx16FPsh4TWT8KM(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$initListPreference$11(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8JJFUmxRWo-Djg_s-DtVwG_2tdE(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$updateSettingPreferencesCheckedState$23()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AHYzwtgbsSPJ3YmIv7ptqBEkCZE(Lmiuix/preference/CheckBoxPreference;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$asyncSetCheckboxPreferenceCheckedStatus$25(Lmiuix/preference/CheckBoxPreference;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B1c_fQHVngj3DGWrG4bAto1Qk7M(Ljava/util/function/Supplier;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$asyncSetCheckboxPreferenceCheckedStatus$24(Ljava/util/function/Supplier;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FtihdsoH5Z84Rbox-M26hhheczo(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$updateNavigationPosition$27(Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Il2ooGmz7CLqGrqSd-XEMVuS8H0(Ljava/util/function/Consumer;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$initCheckboxPreferenceItem$16(Ljava/util/function/Consumer;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LOIc3ruiqnTflOdOCUop4lrGKNo(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$updatePreferenceVisibility$17(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LlWVvE39NXwN1omrNdRtUvqiRQE(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$initSettingPreferences$1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OOKLX0GMXTsOZaJv6vJ2eAER8H0(Ljava/lang/Runnable;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$initClickPreference$15(Ljava/lang/Runnable;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RFCngd2HsSoHwOSE4XXIt09rxCI(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Lcom/miui/home/recents/gesture/SettingEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$initShortcutPreferences$10(Lcom/miui/home/recents/gesture/SettingEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RHOb3JRXzBFv7bbQVnWquGOrRhk(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$initSettingPreferences$3(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RTHsxwJWISQxrT55sxp-cz2nGDQ(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateNavigationPosition()V

    return-void
.end method

.method public static synthetic $r8$lambda$SFmjKWHg5N6wXpTWW6_NEfoX590(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$updatePreferenceVisibility$18(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SMDrhILE8wcAW_TYpZJF0-gzkbU(Lcom/miui/home/settings/preference/ListPreference;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$checkAndShowAlertDialog$13(Lcom/miui/home/settings/preference/ListPreference;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SmctixXB7P9skoZNPhkfnB71rIk(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$updateSettingPreferencesCheckedState$22()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Vp4U01CtaiVALvdzoc_hK6NgzWw(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$updateNavigationPosition$28(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XbTuTUwDVuCbdxgxZPmtNWS3gXY(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$initSettingPreferences$0(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZsC72doO2hlDlzhPdIEN8sh_yvs(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$initGuidePreferences$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$flQzoGjeGytu-Ok_pr7RVOaTcHM(Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$showNoGestureLineLearnDialog$26(Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rT_K9q2qp2_VcUJQMLeiRSXIshg(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$initGuidePreferences$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$tZpy8H52FtWH_s8uETZzYAOI8Mc(Lcom/miui/home/settings/preference/ListPreference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$checkAndShowAlertDialog$14(Lcom/miui/home/settings/preference/ListPreference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vRcaaM20Xe8nhvxPFnVbY9nbVBE(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$initGuidePreferences$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$xf7viazkZDGm1cBT_pZOhuqva14(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$updateSettingPreferencesCheckedState$19()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xpWyP8OHDjo2K-1cAkMbU5v1yf4(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$updateSettingPreferencesCheckedState$21()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yTTTFERrxMVwVVZ7N7SSU43DSGk(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$initSettingPreferences$2(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zYtudxheCrgHF9LfV48IYI0W6b8(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/miui/home/settings/preference/ListPreference;Lcom/miui/home/settings/preference/ListPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$checkAndShowAlertDialog$12(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/miui/home/settings/preference/ListPreference;Lcom/miui/home/settings/preference/ListPreference;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsFSGNavBarWhenCreateFragment:Z

    .line 127
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isSupportQuickSwitchGesture()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsSupportQuickSwitchGesture:Z

    .line 528
    new-instance v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$1;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->foldListener:Lcom/miui/home/recents/SpecialDeviceFoldManager$FoldedStateListener;

    return-void
.end method

.method private addIntentFlagsIfNeed(Landroid/content/Intent;)V
    .locals 0

    .line 383
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/high16 p0, 0x10800000

    .line 384
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private asyncSetCheckboxPreferenceCheckedStatus(Lmiuix/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/preference/CheckBoxPreference;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 494
    new-instance p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda24;

    invoke-direct {p0, p2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda24;-><init>(Ljava/util/function/Supplier;)V

    new-instance p2, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda20;

    invoke-direct {p2, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda20;-><init>(Lmiuix/preference/CheckBoxPreference;)V

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private checkAndShowAlertDialog(Lcom/miui/home/settings/preference/ListPreference;Lcom/miui/home/settings/preference/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 360
    invoke-virtual {p2}, Lmiuix/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2}, Lmiuix/preference/DropDownPreference;->getValueIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const v0, 0x7f1003a0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 362
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 363
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 364
    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1003a1

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda0;

    move-object v4, v2

    move-object v5, p0

    move-object v6, v1

    move-object v7, p4

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/miui/home/settings/preference/ListPreference;Lcom/miui/home/settings/preference/ListPreference;)V

    const p2, 0x7f10012f

    .line 365
    invoke-virtual {v0, p2, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p4, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {p4, p1, p3}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/settings/preference/ListPreference;Ljava/lang/String;)V

    const p3, 0x7f1000c4

    .line 371
    invoke-virtual {p2, p3, p4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {p3, p1, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/settings/preference/ListPreference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 372
    invoke-virtual {p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 376
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mConflictAlertDialog:Landroid/app/Dialog;

    .line 377
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v3
.end method

.method private dataAnalyticOnPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 1

    .line 346
    sget-object v0, Lcom/miui/home/recents/gesture/TriggerType;->INSTANCE:Lcom/miui/home/recents/gesture/TriggerType;

    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutKeysMap:Landroid/util/ArrayMap;

    .line 347
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/gesture/TriggerType;->transferTriggerName2EventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 348
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/gesture/TriggerType;->transferEntityName2EventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 346
    invoke-static {p2, p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendNavSetOrClickEvent(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dataAnalyticOnStop()V
    .locals 3

    .line 564
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result v0

    .line 565
    iget-boolean p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsFSGNavBarWhenCreateFragment:Z

    if-eq v0, p0, :cond_2

    const-string v1, "\u5168\u9762\u5c4f\u624b\u52bf"

    const-string v2, "\u7ecf\u5178\u5bfc\u822a\u952e"

    if-eqz p0, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const/4 v0, 0x1

    .line 570
    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendNavSetOrClickEvent(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private getOrder(Ljava/lang/String;)I
    .locals 6

    .line 330
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "long_press_home_key"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v0

    goto :goto_0

    :sswitch_1
    const-string p0, "long_press_menu_key"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_0

    :sswitch_2
    const-string p0, "long_press_gesture_bar"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v5, v2

    goto :goto_0

    :sswitch_3
    const-string p0, "long_press_back_key"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v3

    goto :goto_0

    :sswitch_4
    const-string p0, "double_click_gesture_bar"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    return v4

    :pswitch_0
    return v0

    :pswitch_1
    return v1

    :pswitch_2
    return v3

    :pswitch_3
    const/4 p0, 0x5

    return p0

    :pswitch_4
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x41a53908 -> :sswitch_4
        -0x9bcf05a -> :sswitch_3
        0x2797b1e -> :sswitch_2
        0x53db241e -> :sswitch_1
        0x5add439e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTitleByPreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "long_press_home_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "long_press_menu_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "long_press_gesture_bar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "long_press_back_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "double_click_gesture_bar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 321
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f10039c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 319
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1003a3

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 315
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f10039e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 323
    :pswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f10039a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 317
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f10039b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x41a53908 -> :sswitch_4
        -0x9bcf05a -> :sswitch_3
        0x2797b1e -> :sswitch_2
        0x53db241e -> :sswitch_1
        0x5add439e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Lmiuix/preference/CheckBoxPreference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lmiuix/preference/CheckBoxPreference;"
        }
    .end annotation

    .line 400
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lmiuix/preference/CheckBoxPreference;

    if-eqz p0, :cond_0

    .line 402
    new-instance p1, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {p1, p2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-object p0
.end method

.method private initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;
    .locals 0

    .line 389
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 391
    new-instance p1, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda5;

    invoke-direct {p1, p2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-object p0
.end method

.method private initGuidePreferences()V
    .locals 2

    .line 201
    new-instance v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda9;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "navigation_guide_home"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHomeGuide:Landroidx/preference/Preference;

    .line 209
    new-instance v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda11;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "navigation_guide_recent"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mRecentGuide:Landroidx/preference/Preference;

    .line 217
    new-instance v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda7;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "navigation_guide_back"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mBackGuide:Landroidx/preference/Preference;

    .line 227
    new-instance v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "navigation_guide_appswitch"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchGuide:Landroidx/preference/Preference;

    .line 233
    new-instance v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda10;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "navigation_guide_app_quick_switch"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    return-void
.end method

.method private initListPreference(Lcom/miui/home/recents/gesture/SettingEntry;)V
    .locals 4

    .line 255
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/SettingEntry;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "NavigationBarTypePreferenceFragment"

    if-eqz v0, :cond_0

    const-string p0, "entry itemList is empty."

    .line 256
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 259
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/SettingEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findShortcutKeyByValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "preferenceKey is empty."

    .line 261
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 264
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferenceKey :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , selectedIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/SettingEntry;->getSelectedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v1, Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/home/settings/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x0

    .line 266
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 267
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getTitleByPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 269
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getOrder(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 270
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/SettingEntry;->asNameList()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/SettingEntry;->asIdList()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/SettingEntry;->getSelectedIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 273
    new-instance p1, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 294
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavShortcutCategory:Lmiuix/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private initNavShortcutKeys()V
    .locals 3

    .line 299
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutKeysMap:Landroid/util/ArrayMap;

    .line 300
    sget-object v1, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->KEY_LONG_PRESS_GESTURE_BAR:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    .line 301
    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "long_press_gesture_bar"

    .line 300
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutKeysMap:Landroid/util/ArrayMap;

    sget-object v1, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->KEY_DOUBLE_CLICK_GESTURE_BAR:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    .line 303
    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "double_click_gesture_bar"

    .line 302
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutKeysMap:Landroid/util/ArrayMap;

    sget-object v1, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->KEY_LONG_PRESS_MENU_KEY:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    .line 305
    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "long_press_menu_key"

    .line 304
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutKeysMap:Landroid/util/ArrayMap;

    sget-object v1, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->KEY_LONG_PRESS_HOME_KEY:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    .line 307
    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "long_press_home_key"

    .line 306
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutKeysMap:Landroid/util/ArrayMap;

    sget-object v0, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->KEY_LONG_PRESS_BACK_KEY:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    .line 309
    invoke-virtual {v0}, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "long_press_back_key"

    .line 308
    invoke-virtual {p0, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initSettingPreferences()V
    .locals 3

    const-string v0, "nav_bar_type_container_preference"

    .line 169
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavBarTypePreference:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setOnNavBarTypeChangedListener(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;)V

    .line 173
    :cond_0
    new-instance v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda8;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "navigation_position"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initValuePreference(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/miui/home/settings/preference/ValuePreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    .line 174
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.recents.navigation_position"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 175
    new-instance v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda18;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "switch_screen_button_order"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Lmiuix/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mSwitchScreenButtonOrder:Lmiuix/preference/CheckBoxPreference;

    const-string v0, "button_shortcut"

    .line 177
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v0, "audo_disable_screen_buttons"

    .line 178
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    .line 179
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initInputSettingsPreference()V

    .line 180
    new-instance v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda16;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "fsg_mistake_touch"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Lmiuix/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMistakeTouch:Lmiuix/preference/CheckBoxPreference;

    .line 183
    new-instance v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda19;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "fsg_assist_enable"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Lmiuix/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAssistGesture:Lmiuix/preference/CheckBoxPreference;

    .line 187
    new-instance v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda17;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "navigation_hide_gesture_line"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Lmiuix/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Lmiuix/preference/CheckBoxPreference;

    .line 196
    new-instance v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda15;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "navigation_appswitch_anim"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Lmiuix/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchFeature:Lmiuix/preference/CheckBoxPreference;

    return-void
.end method

.method private initShortcutPreferences(Z)V
    .locals 1

    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_1

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavShortcutCategory:Lmiuix/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 248
    sget-object v0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->parseSettingEntries(Z)Ljava/util/List;

    move-result-object p1

    .line 249
    new-instance v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda12;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 250
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavShortcutCategory:Lmiuix/preference/PreferenceCategory;

    sget-object v0, Lcom/miui/home/recents/gesture/NavShortcutCompat;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutCompat;

    invoke-virtual {v0}, Lcom/miui/home/recents/gesture/NavShortcutCompat;->isShowNavShortcutFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavShortcutCategory:Lmiuix/preference/PreferenceCategory;

    .line 251
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 250
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 244
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getActivity is null, mContext : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavigationBarTypePreferenceFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initValuePreference(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/miui/home/settings/preference/ValuePreference;
    .locals 0

    .line 590
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/miui/home/settings/preference/ValuePreference;

    .line 591
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-object p0
.end method

.method private isAppSwitchFeatureEnable()Z
    .locals 2

    .line 470
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "show_gesture_appswitch_feature"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isAssistGestureEnable()Z
    .locals 2

    .line 462
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "google_assist_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isMistakeTouchEnable()Z
    .locals 2

    .line 454
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "show_mistake_touch_toast"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isTriggeredAppConflict(Landroidx/preference/Preference;Ljava/lang/Object;Lcom/miui/home/settings/preference/ListPreference;)Z
    .locals 2

    .line 353
    invoke-virtual {p3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutKeysMap:Landroid/util/ArrayMap;

    .line 355
    invoke-virtual {p3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutKeysMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-virtual {v0, p3, p0, p1}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->isKeyEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "none"

    .line 356
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$asyncSetCheckboxPreferenceCheckedStatus$24(Ljava/util/function/Supplier;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 494
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$asyncSetCheckboxPreferenceCheckedStatus$25(Lmiuix/preference/CheckBoxPreference;Ljava/lang/Boolean;)V
    .locals 0

    .line 495
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$checkAndShowAlertDialog$12(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/miui/home/settings/preference/ListPreference;Lcom/miui/home/settings/preference/ListPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 366
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const-string p1, "none"

    .line 367
    invoke-virtual {p3, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 368
    sget-object p5, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    iget-object p6, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutKeysMap:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p6, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p5, p3, p1}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->writeSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutKeysMap:Landroid/util/ArrayMap;

    invoke-virtual {p4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p5, p0, p2}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->writeSetting(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$checkAndShowAlertDialog$13(Lcom/miui/home/settings/preference/ListPreference;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 371
    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$checkAndShowAlertDialog$14(Lcom/miui/home/settings/preference/ListPreference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/DialogInterface;)V
    .locals 1

    const-string p2, "NavigationBarTypePreferenceFragment"

    const-string v0, "conflict dialog onDismiss run"

    .line 373
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$initCheckboxPreferenceItem$16(Ljava/util/function/Consumer;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 403
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$initClickPreference$15(Ljava/lang/Runnable;Landroidx/preference/Preference;)Z
    .locals 0

    .line 392
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$initGuidePreferences$5()V
    .locals 3

    const-string v0, "home"

    .line 202
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.home"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DEMO_TYPE"

    const-string v2, "DEMO_TO_HOME"

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 207
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$initGuidePreferences$6()V
    .locals 3

    const-string v0, "recents"

    .line 210
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.home"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DEMO_TYPE"

    const-string v2, "DEMO_TO_RECENTTASK"

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 215
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$initGuidePreferences$7()V
    .locals 3

    const-string v0, "back"

    .line 218
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.back"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DEMO_TYPE"

    const-string v2, "FSG_BACK_GESTURE"

    .line 221
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DEMO_STEP"

    const/4 v2, 0x1

    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 224
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$initGuidePreferences$8()V
    .locals 2

    .line 228
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isAppSwitchFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10036a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initGuidePreferences$9()V
    .locals 2

    const-string v0, "quick_switch"

    .line 234
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.quick_switch"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 238
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$initListPreference$11(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChangeListener newValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavigationBarTypePreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->dataAnalyticOnPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 277
    move-object v0, p1

    check-cast v0, Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 278
    :goto_0
    iget-object v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavShortcutCategory:Lmiuix/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 279
    iget-object v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavShortcutCategory:Lmiuix/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 280
    instance-of v5, v4, Lcom/miui/home/settings/preference/ListPreference;

    if-eqz v5, :cond_0

    .line 281
    check-cast v4, Lcom/miui/home/settings/preference/ListPreference;

    .line 282
    invoke-direct {p0, p1, p2, v4}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isTriggeredAppConflict(Landroidx/preference/Preference;Ljava/lang/Object;Lcom/miui/home/settings/preference/ListPreference;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v4, v1, v2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->checkAndShowAlertDialog(Lcom/miui/home/settings/preference/ListPreference;Lcom/miui/home/settings/preference/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 289
    sget-object v0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutKeysMap:Landroid/util/ArrayMap;

    .line 290
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-virtual {v0, p0, p1}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->writeSetting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$initSettingPreferences$0(Ljava/lang/Object;)V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->setRightHand(Landroid/content/Context;Z)V

    return-void
.end method

.method private synthetic lambda$initSettingPreferences$1(Ljava/lang/Object;)V
    .locals 0

    .line 181
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setMistakeTouchEnable(Z)V

    return-void
.end method

.method private synthetic lambda$initSettingPreferences$2(Ljava/lang/Object;)V
    .locals 0

    .line 184
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setAssistGestureEnable(Z)V

    return-void
.end method

.method private synthetic lambda$initSettingPreferences$3(Ljava/lang/Object;)V
    .locals 1

    .line 188
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 189
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setHideGestureLine(Z)V

    .line 190
    iget-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsSupportQuickSwitchGesture:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 191
    invoke-static {}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->getInstance()Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->isNeedShowGestureLineGuide()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->showNoGestureLineLearnDialog()V

    .line 193
    invoke-static {}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackShowLearnGesturesDialogEvent()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initSettingPreferences$4(Ljava/lang/Object;)V
    .locals 0

    .line 197
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setAppSwitchFeatureEnable(Z)V

    return-void
.end method

.method private synthetic lambda$initShortcutPreferences$10(Lcom/miui/home/recents/gesture/SettingEntry;)V
    .locals 0

    .line 249
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initListPreference(Lcom/miui/home/recents/gesture/SettingEntry;)V

    return-void
.end method

.method private static synthetic lambda$showNoGestureLineLearnDialog$26(Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;)V
    .locals 1

    .line 514
    iget-boolean v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;->isClickOnDialog:Z

    if-eqz v0, :cond_0

    .line 515
    invoke-static {}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->getInstance()Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    move-result-object v0

    iget-boolean p0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;->isCheckboxChecked:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->setNeedShowGestureLineGuide(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateNavigationPosition$27(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    .line 576
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/settings/NavigationUtils;->getNavigationPosition(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateNavigationPosition$28(Ljava/lang/Integer;)V
    .locals 2

    .line 577
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 579
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 580
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    const p1, 0x7f100392

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 581
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 582
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    const p1, 0x7f100393

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    goto :goto_0

    .line 584
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    const p1, 0x7f100391

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updatePreferenceVisibility$17(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updatePreferenceVisibility$18(Ljava/lang/Boolean;)V
    .locals 0

    .line 427
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateGestureLineVisible(Z)V

    return-void
.end method

.method private synthetic lambda$updateSettingPreferencesCheckedState$19()Ljava/lang/Boolean;
    .locals 0

    .line 483
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isRightHand(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateSettingPreferencesCheckedState$20()Ljava/lang/Boolean;
    .locals 0

    .line 484
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isMistakeTouchEnable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateSettingPreferencesCheckedState$21()Ljava/lang/Boolean;
    .locals 0

    .line 485
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isAssistGestureEnable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateSettingPreferencesCheckedState$22()Ljava/lang/Boolean;
    .locals 0

    .line 487
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateSettingPreferencesCheckedState$23()Ljava/lang/Boolean;
    .locals 0

    .line 489
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isAppSwitchFeatureEnable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private setAppSwitchFeatureEnable(Z)V
    .locals 1

    .line 474
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "show_gesture_appswitch_feature"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setAssistGestureEnable(Z)V
    .locals 1

    .line 466
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "google_assist_enable"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setHideGestureLine(Z)V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_gesture_line"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 479
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateGestureLineVisible(Z)V

    return-void
.end method

.method private setMistakeTouchEnable(Z)V
    .locals 1

    .line 458
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "show_mistake_touch_toast"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showNoGestureLineLearnDialog()V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    const-string v1, "NavigationBarTypePreferenceFragment"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "showNoGestureLineLearnDialog return: dialog is showing"

    .line 501
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string p0, "showNoGestureLineLearnDialog return: mContext == null"

    .line 505
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 508
    :cond_1
    new-instance v1, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    const v0, 0x7f10037e

    .line 509
    invoke-virtual {v1, v0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setTitle(I)V

    .line 510
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    const v1, 0x7f10037d

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setMessage(I)V

    .line 511
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    const-string v1, "com.miui.systemui.fsgesture.quick_switch"

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setPositiveButtonIntentAction(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setIsAddNewTaskFlag(Z)V

    .line 513
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    sget-object v1, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda21;->INSTANCE:Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda21;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setClickDialogButtonConsume(Ljava/util/function/Consumer;)V

    .line 518
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->show()V

    return-void
.end method

.method private updateGestureLineVisible(Z)V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    const v1, 0x7f10035f

    goto :goto_0

    :cond_0
    const v1, 0x7f100361

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 443
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_1

    const v1, 0x7f08064e

    goto :goto_1

    :cond_1
    const v1, 0x7f08064d

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 445
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHomeGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_2

    const v1, 0x7f080653

    goto :goto_2

    :cond_2
    const v1, 0x7f080652

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 447
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mBackGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_3

    const v1, 0x7f080651

    goto :goto_3

    :cond_3
    const v1, 0x7f080650

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 449
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mRecentGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_4

    const p1, 0x7f080655

    goto :goto_4

    :cond_4
    const p1, 0x7f080654

    :goto_4
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    return-void
.end method

.method private updateNavigationPosition()V
    .locals 2

    .line 575
    new-instance v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda22;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    new-instance v1, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda14;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private updateNavigationTrans()V
    .locals 1

    .line 433
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 434
    instance-of v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypeActivity;

    if-eqz v0, :cond_0

    .line 435
    check-cast p0, Lcom/miui/home/recents/settings/NavigationBarTypeActivity;

    .line 436
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;->setNavigationTrans(Lmiuix/appcompat/app/AppCompatActivity;)V

    :cond_0
    return-void
.end method

.method private updatePreferenceVisibility()V
    .locals 5

    .line 411
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result v0

    .line 412
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateNavigationTrans()V

    .line 413
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGuideCategory:Lmiuix/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 414
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMistakeTouch:Lmiuix/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 415
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAssistGesture:Lmiuix/preference/CheckBoxPreference;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    sget-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-eqz v4, :cond_0

    .line 416
    invoke-static {}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->getInstance()Lcom/miui/home/recents/FsGestureAssistEnableHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->isSupportGoogleAssist()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 415
    :goto_0
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 417
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    if-nez v0, :cond_1

    sget-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 418
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mSwitchScreenButtonOrder:Lmiuix/preference/CheckBoxPreference;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 419
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsShowKeyShortcutsEntry:Z

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    sget-object v4, Lcom/miui/home/recents/gesture/NavShortcutCompat;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutCompat;

    .line 420
    invoke-virtual {v4}, Lcom/miui/home/recents/gesture/NavShortcutCompat;->isShowNavShortcutFeature()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    .line 419
    :goto_2
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 421
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsShowKeyShortcutsEntry:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 422
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchFeature:Lmiuix/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-nez v4, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v2

    :goto_4
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 423
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Lmiuix/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_5

    :cond_5
    move v4, v2

    :goto_5
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 424
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsSupportQuickSwitchGesture:Z

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-eqz v4, :cond_6

    move v4, v3

    goto :goto_6

    :cond_6
    move v4, v2

    :goto_6
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 425
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchGuide:Landroidx/preference/Preference;

    if-eqz v0, :cond_7

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-nez v4, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 426
    new-instance v1, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda23;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    new-instance v2, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda13;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 429
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initShortcutPreferences(Z)V

    return-void
.end method

.method private updateSettingPreferencesCheckedState()V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mSwitchScreenButtonOrder:Lmiuix/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda28;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Lmiuix/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    .line 484
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMistakeTouch:Lmiuix/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda25;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Lmiuix/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    .line 485
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAssistGesture:Lmiuix/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda29;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Lmiuix/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    .line 486
    iget-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Lmiuix/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda27;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Lmiuix/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchFeature:Lmiuix/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda26;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Lmiuix/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismissGestureLearnAlertDialog()V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    invoke-virtual {v0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 524
    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    :cond_0
    return-void
.end method

.method public findShortcutKeyByValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 644
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutKeysMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 645
    iget-object v2, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutKeysMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public initInputApkStatus(Landroid/content/Context;)Z
    .locals 4

    const/4 p0, 0x0

    .line 630
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object v0, Lcom/miui/home/launcher/util/SettingsIntentUtil;->INPUT_SETTINGS_PACKAGE:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const/4 v0, 0x1

    .line 632
    sput v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->sExistInputApk:I

    const-string v1, "NavigationBarTypePreferenceFragment"

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initInputApkStatus packageInfo :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    move p0, v0

    :cond_0
    return p0

    :catch_0
    move-exception p1

    const/4 v0, 0x2

    .line 636
    sput v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->sExistInputApk:I

    .line 637
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return p0
.end method

.method public initInputSettingsPreference()V
    .locals 5

    .line 607
    sget v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->sExistInputApk:I

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initInputApkStatus(Landroid/content/Context;)Z

    .line 610
    :cond_0
    sget v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->sExistInputApk:I

    const/4 v1, 0x1

    const v2, 0x7f1000b5

    const v3, 0x7f10028e

    if-ne v0, v1, :cond_1

    .line 611
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    .line 613
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.miui.miinput.keyshortcut.KeyShortcutActivity"

    .line 611
    invoke-static {v4, v3, v1}, Lcom/miui/home/launcher/util/SettingsIntentUtil;->getMiuiInputSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 614
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    .line 616
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "com.miui.miinput.disablebutton.AutoDisableScreenButtonsAppListSettingsActivity"

    .line 614
    invoke-static {v1, v2, p0}, Lcom/miui/home/launcher/util/SettingsIntentUtil;->getMiuiInputSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    .line 620
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.android.settings.KeyShortcutSettingsFragment"

    .line 618
    invoke-static {v4, v3, v1}, Lcom/miui/home/launcher/util/SettingsIntentUtil;->getMiuiSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 621
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    .line 623
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "com.android.settings.AutoDisableScreenButtonsAppListSettings"

    .line 621
    invoke-static {v1, v2, p0}, Lcom/miui/home/launcher/util/SettingsIntentUtil;->getMiuiSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    const p1, 0x7f130022

    .line 136
    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseGestureVersion3(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    .line 139
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string p2, "navigation_guide_category"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGuideCategory:Lmiuix/preference/PreferenceCategory;

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "support_gesture_shortcut_settings"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v0, p2

    :cond_0
    iput-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsShowKeyShortcutsEntry:Z

    .line 141
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string p2, "shortcut_key_category"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavShortcutCategory:Lmiuix/preference/PreferenceCategory;

    .line 142
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initNavShortcutKeys()V

    .line 143
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initSettingPreferences()V

    .line 144
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initGuidePreferences()V

    .line 145
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateSettingPreferencesCheckedState()V

    .line 146
    invoke-static {}, Lcom/miui/home/recents/SpecialDeviceFoldManager;->getInstance()Lcom/miui/home/recents/SpecialDeviceFoldManager;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->foldListener:Lcom/miui/home/recents/SpecialDeviceFoldManager$FoldedStateListener;

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/SpecialDeviceFoldManager;->addFoldedStateListener(Lcom/miui/home/recents/SpecialDeviceFoldManager$FoldedStateListener;)V

    const-string p0, "NavigationBarTypePreferenceFragment"

    const-string p1, "onCreatePreferences "

    .line 147
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 152
    invoke-super {p0, p1, p2, p3}, Lmiuix/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 153
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updatePreferenceVisibility()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 558
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 559
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->dismissGestureLearnAlertDialog()V

    .line 560
    invoke-static {}, Lcom/miui/home/recents/SpecialDeviceFoldManager;->getInstance()Lcom/miui/home/recents/SpecialDeviceFoldManager;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->foldListener:Lcom/miui/home/recents/SpecialDeviceFoldManager$FoldedStateListener;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/SpecialDeviceFoldManager;->removeFoldedStateListener(Lcom/miui/home/recents/SpecialDeviceFoldManager$FoldedStateListener;)V

    return-void
.end method

.method public onNavBarTypeChanged()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updatePreferenceVisibility()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 543
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 544
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mConflictAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NavigationBarTypePreferenceFragment"

    const-string v1, "onPause and conflict dialog dismiss"

    .line 545
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mConflictAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 597
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 598
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateNavigationPosition()V

    .line 601
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavBarTypePreference:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    if-eqz p0, :cond_1

    .line 602
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->updateSelectedView()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 159
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    .line 160
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsFSGNavBarWhenCreateFragment:Z

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 552
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onStop()V

    .line 553
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->dataAnalyticOnStop()V

    return-void
.end method
