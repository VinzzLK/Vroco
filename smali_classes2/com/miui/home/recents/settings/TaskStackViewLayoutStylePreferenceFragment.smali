.class public Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "TaskStackViewLayoutStylePreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPrivacyThumbailBlurSetting:Landroidx/preference/Preference;

.field private mRecentsConfig:Lmiuix/preference/PreferenceCategory;

.field private mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mTaskStackViewLayoutStyle:Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;


# direct methods
.method public static synthetic $r8$lambda$M0MoziDkNkTEu62kH5GVo1BtiCQ(Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->lambda$initPrivacyThumbnailBlurPref$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ySW8NRVojNeqQ7KXmiwYGSG-7ng(Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->lambda$initPrivacyThumbnailBlurPref$0(Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;)Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;

    return-object p0
.end method

.method private initPrivacyThumbnailBlurPref()V
    .locals 2

    .line 91
    sget-object v0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment$$ExternalSyntheticLambda1;

    new-instance v1, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$initPrivacyThumbnailBlurPref$0(Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    .line 93
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 94
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getPrivacyThumbnailBlurAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private synthetic lambda$initPrivacyThumbnailBlurPref$1(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 98
    iget-object p0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mPrivacyThumbailBlurSetting:Landroidx/preference/Preference;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mRecentsConfig:Lmiuix/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mPrivacyThumbailBlurSetting:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f13002f

    .line 42
    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "task_stack_view_layout_style_container_preference"

    .line 43
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;

    const-string p1, "recents_config"

    .line 44
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mRecentsConfig:Lmiuix/preference/PreferenceCategory;

    const-string p1, "privacy_thumbnail_blur_pref"

    .line 45
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mPrivacyThumbailBlurSetting:Landroidx/preference/Preference;

    const-string p1, "show_mem_info_pref"

    .line 46
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

    .line 47
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 48
    invoke-direct {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->initPrivacyThumbnailBlurPref()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 81
    iget-object p0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, p0, :cond_0

    .line 82
    check-cast p2, Ljava/lang/Boolean;

    .line 83
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 84
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "miui_recents_show_mem_info"

    .line 83
    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 85
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeMoreSettingsShowMemInfo(Z)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 71
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 72
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;

    invoke-virtual {v0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->initCheckedBox()V

    .line 73
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;

    invoke-virtual {v0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->initAnimView()V

    .line 74
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "miui_recents_show_mem_info"

    invoke-static {p0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-super {p0, p1, p2}, Lmiuix/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    .line 56
    new-instance v0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment$1;-><init>(Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
