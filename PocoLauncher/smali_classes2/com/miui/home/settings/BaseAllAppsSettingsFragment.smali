.class public Lcom/miui/home/settings/BaseAllAppsSettingsFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "BaseAllAppsSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;


# instance fields
.field private final FAST_SCROLLER_DEFAULT:Ljava/lang/String;

.field private final FAST_SCROLLER_LETTER:Ljava/lang/String;

.field private final GLOBAL_SEARCH:Ljava/lang/String;

.field private final KEY_CONTENT_CENTER:Ljava/lang/String;

.field private final KEY_GLOBAL_SEARCH:Ljava/lang/String;

.field private final KEY_NO_ACTION:Ljava/lang/String;

.field private final NO_ACTION:Ljava/lang/String;

.field private currSlidUpConfig:Ljava/lang/String;

.field entries:[Ljava/lang/String;

.field private mAppCategory:Lcom/miui/home/settings/preference/ValuePreference;

.field private mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mClassicSettings:Landroidx/preference/PreferenceCategory;

.field private mColorAnim:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mColorSearch:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

.field private mDrawerBackground:Lcom/miui/home/settings/preference/ValuePreference;

.field private mDrawerSettings:Landroidx/preference/PreferenceCategory;

.field private mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

.field private mInAppQueryMode:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mJeejenSettings:Landroidx/preference/PreferenceCategory;

.field private mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

.field private mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mRecommendApps:Lcom/miui/home/settings/preference/CheckBoxPreference;

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


# direct methods
.method public static synthetic $r8$lambda$ttQsTjgWHQLT0YXqBbTTkE3kXMM(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->lambda$initLauncherSlideUp$0(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zK9qU9IfDbec1P5Kj9XF--oMCQE(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->lambda$initLauncherSlideUp$1(Ljava/lang/Void;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 45
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const-string v0, "global_search"

    .line 85
    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->GLOBAL_SEARCH:Ljava/lang/String;

    const-string v0, "no_action"

    .line 87
    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->NO_ACTION:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f100262

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f100260

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_CONTENT_CENTER:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f100264

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_NO_ACTION:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f10005d

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->FAST_SCROLLER_DEFAULT:Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const v2, 0x7f10005c

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->FAST_SCROLLER_LETTER:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 96
    iput-object v2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->entries:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->currSlidUpConfig:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)Lcom/miui/home/settings/preference/ListPreference;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    return-object p0
.end method

.method private controlFinderSetting()V
    .locals 2

    .line 410
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/appfinder/launcher/FinderController;->isFinderSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mInAppQueryMode:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 412
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mInAppQueryMode:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->isSettingFinderQueryMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 413
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 414
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->isSettingQuickSearchEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mInAppQueryMode:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 417
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerSettings:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private createColorFilterPreferences()V
    .locals 3

    .line 422
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->hasWorkUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorSearch:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 424
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorAnim:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 426
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isColorSearchEnabled()Z

    move-result v0

    .line 427
    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorSearch:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 428
    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorSearch:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 429
    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorAnim:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isColorAnimEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 430
    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorAnim:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 431
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorAnim:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private getSlideUpEntriesForChinesePhone()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_CONTENT_CENTER:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_NO_ACTION:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0
.end method

.method private initLauncherSlideUp()V
    .locals 3

    .line 187
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFlip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 190
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 195
    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 196
    iget-object v2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_NO_ACTION:Ljava/lang/String;

    aput-object v2, v0, v1

    goto :goto_0

    .line 198
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getSlideUpEntriesForChinesePhone()[Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 202
    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 206
    new-instance v0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V

    new-instance v1, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private initSlideUpContentMap()V
    .locals 3

    .line 164
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    .line 166
    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    const-string v2, "global_search"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_CONTENT_CENTER:Ljava/lang/String;

    const-string v2, "content_center"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_NO_ACTION:Ljava/lang/String;

    const-string v1, "no_action"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->initSlideUpContentMapChinese()V

    :goto_0
    return-void
.end method

.method private initSlideUpContentMapChinese()V
    .locals 3

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    .line 177
    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_CONTENT_CENTER:Ljava/lang/String;

    const-string v2, "content_center"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_NO_ACTION:Ljava/lang/String;

    const-string v1, "no_action"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initSwipeUpHomeSettingGlobal()V
    .locals 2

    .line 216
    invoke-static {}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->showCheckSlidingSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 218
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private synthetic lambda$initLauncherSlideUp$0(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationConfig;->initFeed(Landroid/content/Context;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$initLauncherSlideUp$1(Ljava/lang/Void;)V
    .locals 1

    .line 210
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/settings/LauncherGestureController;->getSlideUpValue(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->currSlidUpConfig:Ljava/lang/String;

    .line 211
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private onFinderPreferenceChange(Ljava/lang/Boolean;)V
    .locals 0

    .line 311
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->isFinderSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 313
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->setSettingFinderQueryMode(Z)V

    .line 314
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 316
    invoke-static {p0}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->setSettingBranchPrivacyRecord(Z)V

    :cond_0
    return-void
.end method

.method private showInstallDialog()V
    .locals 3

    .line 324
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100050

    .line 325
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10004f

    .line 326
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$3;-><init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V

    const v2, 0x7f1000c4

    .line 327
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$2;-><init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V

    const v2, 0x7f100283

    .line 333
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$1;-><init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V

    .line 345
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 351
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 352
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private updateDesktopMode()V
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setDesktopMode()V

    return-void
.end method

.method private updateViewIfDesktopModeChange(I)V
    .locals 4

    .line 367
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 368
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerSettings:Landroidx/preference/PreferenceCategory;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 369
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-nez v0, :cond_2

    .line 370
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mJeejenSettings:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public OnDesktopModeTemporaryChange(I)V
    .locals 0

    .line 406
    invoke-direct {p0, p1}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->updateViewIfDesktopModeChange(I)V

    return-void
.end method

.method protected findPreferences()V
    .locals 1

    const-string v0, "desktop_mode"

    .line 246
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/DesktopModePreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    const-string v0, "classic_settings"

    .line 247
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    const-string v0, "jeejen_settings"

    .line 248
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mJeejenSettings:Landroidx/preference/PreferenceCategory;

    const-string v0, "drawer_settings"

    .line 249
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerSettings:Landroidx/preference/PreferenceCategory;

    const-string v0, "launcher_slide_up"

    .line 250
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ListPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    const-string v0, "launcher_slide_up_global_pref"

    .line 251
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v0, "key_recommend_apps"

    .line 252
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mRecommendApps:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v0, "key_app_category"

    .line 253
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mAppCategory:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v0, "key_drawer_background"

    .line 254
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerBackground:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v0, "fast_scroller_style"

    .line 255
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ListPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    const-string v0, "key_auto_add_new_app_shortcut"

    .line 256
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v0, "key_branch_open"

    .line 257
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mInAppQueryMode:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v0, "key_quick_search_in_drawer"

    .line 258
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v0, "key_color_pref"

    .line 259
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorSearch:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v0, "key_color_anim"

    .line 260
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorAnim:Lcom/miui/home/settings/preference/CheckBoxPreference;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    .line 357
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "launcher_slideup_gesture"

    invoke-static {p1, p3, p2}, Lcom/miui/home/settings/LauncherGestureController;->getSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "content_center"

    .line 358
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 359
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_CONTENT_CENTER:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->currSlidUpConfig:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const/high16 p1, 0x7f130000

    .line 105
    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreferences()V

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "is_drawer_setting"

    .line 108
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "is_slide_up_setting"

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 111
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 112
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 113
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p1

    if-nez p1, :cond_3

    .line 114
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mJeejenSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 118
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 119
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p1

    if-nez p1, :cond_3

    .line 120
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mJeejenSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 125
    invoke-direct {p0, p1}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->updateViewIfDesktopModeChange(I)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->updateViewIfDesktopModeChange(I)V

    .line 130
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setOnDesktopModeTemporaryChangeListener(Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;)V

    .line 131
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->queryJeejenReceiverInfo()Ljava/util/List;

    .line 133
    invoke-direct {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->initSlideUpContentMap()V

    .line 135
    invoke-static {}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->useListSlidingSetting()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 136
    invoke-direct {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->initLauncherSlideUp()V

    goto :goto_1

    .line 138
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->initSwipeUpHomeSettingGlobal()V

    .line 141
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->controlFinderSetting()V

    .line 142
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mRecommendApps:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mAppCategory:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.miui.home.action.CATEGORY_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 146
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerBackground:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getPreviewDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerBackground:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.miui.home.action.DRAWER_COLOR_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 148
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->entries:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 149
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->entries:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    invoke-direct {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->createColorFilterPreferences()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 233
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onDestroyView()V

    .line 234
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 239
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background_alpha"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerBackground:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getPreviewDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 266
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 271
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 391
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 392
    invoke-direct {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->updateDesktopMode()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mRecommendApps:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 277
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setRecommendAppsEnable(Z)V

    goto/16 :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 279
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->FAST_SCROLLER_LETTER:Ljava/lang/String;

    if-ne p2, p0, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setLetterFastScrollerEnable(Z)V

    goto/16 :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    .line 281
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setAutoAddNewAppShortcut(Z)V

    goto/16 :goto_0

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    if-ne p1, v0, :cond_5

    .line 283
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 284
    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "content_center"

    .line 285
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedInstalled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 286
    invoke-direct {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->showInstallDialog()V

    goto/16 :goto_0

    .line 288
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "launcher_slideup_gesture"

    invoke-static {v0, v3, p2}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p2, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 290
    invoke-static {v2}, Lcom/miui/home/settings/LauncherGestureController;->putSlideUpAppInstalling(Z)V

    .line 291
    iput-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->currSlidUpConfig:Ljava/lang/String;

    goto :goto_0

    .line 293
    :cond_5
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_6

    .line 294
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->setGlobalSearchEnable(Landroid/content/Context;Z)V

    goto :goto_0

    .line 295
    :cond_6
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mInAppQueryMode:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_7

    .line 296
    check-cast p2, Ljava/lang/Boolean;

    invoke-direct {p0, p2}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->onFinderPreferenceChange(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 297
    :cond_7
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_8

    .line 298
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->isFinderSupport()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 299
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->setSettingQuickSearchEnable(Z)V

    goto :goto_0

    .line 301
    :cond_8
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorSearch:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_9

    .line 302
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setColorSearchEnabled(Z)V

    .line 303
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorAnim:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 304
    :cond_9
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorAnim:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, p0, :cond_a

    .line 305
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setColorAnimEnabled(Z)V

    :cond_a
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 1

    .line 380
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 381
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setInitValue(I)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setInitValue(I)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 157
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    .line 158
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mRecommendApps:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isRecommendAppsEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 159
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isLetterFastScrollerEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->entries:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->entries:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 160
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAutoAddNewAppShortcut()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 397
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onStop()V

    .line 398
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isJeejenBroadcastSend()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 399
    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->setJeejenBroadcastSend(Z)V

    .line 400
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 227
    invoke-super {p0, p1, p2}, Lmiuix/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 228
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method
