.class public Lcom/miui/home/settings/IconCustomizeFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "IconCustomizeFragment.java"

# interfaces
.implements Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCellCountX:I

.field private mIconScale:F

.field private mIconScalePreference:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

.field private mIconStyleDisposable:Lio/reactivex2/disposables/Disposable;

.field private mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

.field private mIsIconSizeChange:Z

.field private mMonoPreference:Lcom/miui/home/settings/preference/ListPreference;

.field private mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;


# direct methods
.method public static synthetic $r8$lambda$IaasZ-e0dK9vkfulILruKGLcPF4(Lcom/miui/home/settings/IconCustomizeFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getCurIconStyle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tZ-RVjzKmPq44ph2MjNXOODYF2o(Lcom/miui/home/settings/IconCustomizeFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/settings/IconCustomizeFragment;->lambda$onCreatePreferences$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private getCurIconStyle()Ljava/lang/String;
    .locals 5

    .line 206
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v1, ""

    if-nez v0, :cond_1

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.android.thememanager.theme_provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    const-string v0, "getUsingIconInfo"

    const/4 v2, 0x0

    .line 210
    invoke-virtual {p0, v0, v2, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    return-object v1

    :cond_0
    :try_start_1
    const-string v2, "iconTitle"

    .line 214
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "IconCustomizeFragment"

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    .line 219
    throw v0

    :cond_1
    :goto_1
    return-object v1
.end method

.method private getMonoChromeColorValues()[Ljava/lang/String;
    .locals 6

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060625

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060623

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060626

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060627

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f060624

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    .line 140
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 141
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 142
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v4, v1

    .line 143
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v4, v1

    .line 144
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    aput-object p0, v4, v0

    return-object v4
.end method

.method private hideIconScale()Z
    .locals 0

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p0

    if-nez p0, :cond_1

    .line 103
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAccessibilityDisplaySizeLarge()Z

    move-result p0

    if-nez p0, :cond_1

    .line 104
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAccessibilityDisplaySizeSmall()Z

    move-result p0

    if-nez p0, :cond_1

    .line 105
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMiuiLiteDeviceV2()Z

    move-result p0

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

.method private synthetic lambda$onCreatePreferences$0(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 93
    iget-object p0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setUpMonoPreference()V
    .locals 4

    .line 110
    invoke-static {}, Lcom/miui/home/launcher/graphics/MonochromeUtils;->isSupportMonochrome()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 111
    iget-object p0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mMonoPreference:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mMonoPreference:Lcom/miui/home/settings/preference/ListPreference;

    const v2, 0x7f03001d

    invoke-virtual {v0, v2}, Lmiuix/preference/DropDownPreference;->setEntries(I)V

    .line 116
    invoke-direct {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getMonoChromeColorValues()[Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v2, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mMonoPreference:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v2, v0}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_monochrome_color"

    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 121
    aget-object v2, v0, v1

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mMonoPreference:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, v2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mMonoPreference:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 126
    fill-array-data v0, :array_0

    .line 131
    iget-object p0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mMonoPreference:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p0, v0}, Lmiuix/preference/DropDownPreference;->setEntryIcons([I)V

    return-void

    :array_0
    .array-data 4
        0x7f08064a
        0x7f0802a7
        0x7f0802a9
        0x7f0802aa
        0x7f0802a8
    .end array-data
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    const p1, 0x7f130016

    .line 64
    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "key_icon_customize_preview"

    .line 65
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    .line 66
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMiuiLiteDeviceV2()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    if-eqz p1, :cond_1

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->setInNoWordMode(Z)V

    :cond_1
    const-string p1, "key_icon_style"

    .line 72
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 74
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    const-string p1, "key_icon_scale"

    .line 76
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconScalePreference:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    .line 77
    invoke-direct {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->hideIconScale()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 78
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconScalePreference:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 80
    :cond_3
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconScalePreference:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 81
    :goto_0
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconScalePreference:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    new-instance v0, Lcom/miui/home/settings/IconCustomizeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/IconCustomizeFragment$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/settings/IconCustomizeFragment;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->setIconSizeChangeListener(Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;)V

    .line 82
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconScalePreference:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 83
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance p2, Landroid/content/Intent;

    sget-object v0, Lcom/miui/home/settings/MiuiHomeSettings;->ICON_URI:Landroid/net/Uri;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 84
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-virtual {p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->initPreviewApp()V

    .line 86
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p1

    iput p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mCellCountX:I

    .line 87
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 88
    new-instance p1, Lcom/miui/home/settings/IconCustomizeFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/miui/home/settings/IconCustomizeFragment$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/settings/IconCustomizeFragment;)V

    invoke-static {p1}, Lio/reactivex2/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;

    move-result-object p1

    .line 89
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object p1

    .line 90
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object p1

    new-instance p2, Lcom/miui/home/settings/IconCustomizeFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/IconCustomizeFragment$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/settings/IconCustomizeFragment;)V

    const-string v0, "IconCustomizeFragment onCreatePreferences"

    .line 88
    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/common/Utilities;->subscribeToObservable(Lio/reactivex2/Observable;Lio/reactivex2/functions/Consumer;Ljava/lang/String;)Lio/reactivex2/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStyleDisposable:Lio/reactivex2/disposables/Disposable;

    const-string p1, "key_monochrome"

    .line 97
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ListPreference;

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mMonoPreference:Lcom/miui/home/settings/preference/ListPreference;

    .line 98
    invoke-direct {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->setUpMonoPreference()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 178
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onDestroyView()V

    .line 179
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStyleDisposable:Lio/reactivex2/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStyleDisposable:Lio/reactivex2/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->onDestroyView()V

    .line 183
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconScalePreference:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->setIconSizeChangeListener(Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;)V

    .line 185
    iput-object v1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconScalePreference:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    return-void
.end method

.method public onIconSizeChange(Ljava/lang/Float;)V
    .locals 1

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIsIconSizeChange:Z

    .line 202
    iget-object p0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->onIconScaleChange(F)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 196
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 162
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 163
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconScalePreference:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->getCurrentSetIconSizeValue()Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "IconCustomizeFragment"

    const-string v0, "getCurrentSetIconSizeValue null"

    .line 164
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconScalePreference:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->getCurrentSetIconSizeValue()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 169
    iget-boolean v1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIsIconSizeChange:Z

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconScale:F

    sub-float p0, v0, p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float p0, p0, v1

    if-lez p0, :cond_1

    .line 170
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setIconScale(F)V

    .line 171
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIconSizeScale(F)V

    .line 172
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v1, Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;-><init>(F)V

    invoke-virtual {p0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mMonoPreference:Lcom/miui/home/settings/preference/ListPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 235
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v1, "key_monochrome"

    .line 237
    invoke-static {v0, v1, p2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    const-string v1, "key_monochrome_color"

    .line 238
    invoke-static {v0, v1, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putIntToSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    invoke-static {p2}, Lcom/miui/home/launcher/graphics/MonochromeUtils;->setMonoEnable(Z)V

    .line 240
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/MonochromeUtils;->setCurrentColor(I)V

    .line 241
    new-instance p2, Landroid/content/Intent;

    const-string v0, "action_monochrome_color_changed"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    iget-object p0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    if-eqz p0, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->initPreviewApp()V

    :cond_1
    return v2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 227
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickIconStyleItem()V

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 150
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIsIconSizeChange:Z

    .line 152
    iget v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mCellCountX:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->refreshViewLayout()V

    .line 154
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->initPreviewApp()V

    .line 155
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    iput v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mCellCountX:I

    .line 157
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconScale()F

    move-result v0

    iput v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconScale:F

    return-void
.end method
