.class public Lcom/miui/home/settings/BaseSettingsSearchProvider;
.super Landroid/content/ContentProvider;
.source "BaseSettingsSearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/BaseSettingsSearchProvider$SearchContract;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$cBT1qnTI76c45raQS1_WW304KRM(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->lambda$sendBroadcastForUpdateSearchResult$0(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method protected static addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.miui.home.Setting"

    .line 180
    invoke-static {p0, p1, v0, p2}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.miui.home.action.navigation_bar_type_settings"

    .line 167
    invoke-static {p0, p1, v0, p2}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addRecentLayoutStyleSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.miui.home.recents.task_stack_view_layout_style"

    const-string v1, ""

    .line 163
    invoke-static {p0, p1, v0, v1}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 171
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string v0, "title"

    .line 172
    invoke-virtual {p0, v0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    .line 173
    invoke-static {p2, p1}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->getSettingsSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "summaryOn"

    invoke-virtual {p0, v0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string p1, "intentAction"

    .line 174
    invoke-virtual {p0, p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const p1, 0x7f0802a5

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "iconResId"

    invoke-virtual {p0, p2, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string p1, "keywords"

    .line 176
    invoke-virtual {p0, p1, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method private static getSettingsSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 184
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10026c

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "com.miui.home.action.ALL_APPS_SETTINGS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1
    const-string v2, "com.miui.home.action.navigation_bar_type_settings"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_2
    const-string v2, "com.miui.home.action.LAUNCHER_PERSONAL_ASSISTANT_SETTING"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_3
    const-string v2, "com.android.settings.action.PRIVACY_THUMBNAIL_BLUR_SETTING"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "com.miui.securitycenter.action.PRIVACY_THUMBNAIL_BLUR_SETTING"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_5
    const-string v2, "com.miui.home.action.ICON_CUSTOMIZE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_6
    const-string v2, "com.miui.home.recents.task_stack_view_layout_style"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    const p0, 0x7f10041d

    const-string v2, "/"

    packed-switch v3, :pswitch_data_0

    return-object v1

    .line 195
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1003a5

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 193
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 190
    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 197
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x474d35c7 -> :sswitch_6
        -0x44db3e29 -> :sswitch_5
        -0x1e06d36e -> :sswitch_4
        0x69a933b -> :sswitch_3
        0x382defb5 -> :sswitch_2
        0x6550a36b -> :sswitch_1
        0x675de0d8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static synthetic lambda$sendBroadcastForUpdateSearchResult$0(Landroid/content/Context;)V
    .locals 4

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.SEPARATE_APP_SEARCH_RESULT_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.search.provider.UpdateReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "BaseSettingsSearchProvider"

    const-string v0, "sendBroadcastForUpdateSearchResult"

    .line 209
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sendBroadcastForUpdateSearchResult(Landroid/content/Context;)V
    .locals 1

    .line 204
    new-instance v0, Lcom/miui/home/settings/BaseSettingsSearchProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/BaseSettingsSearchProvider$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .line 58
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object p2, Lcom/miui/home/settings/BaseSettingsSearchProvider$SearchContract;->SEARCH_RESULT_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 63
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    sget-object p5, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p4, p5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p4

    .line 66
    sget-boolean p5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v0, ""

    if-eqz p5, :cond_1

    .line 67
    sget-boolean p5, Lcom/miui/home/launcher/LauncherAssistantCompat;->ONLY_USE_GOOGLE_MINUS_SCREEN:Z

    if-eqz p5, :cond_7

    const p5, 0x7f1004cf

    .line 68
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 71
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p5

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-virtual {p5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p5

    if-eq p5, v2, :cond_3

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isAssistantInstalled()Z

    move-result p5

    if-nez p5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    if-nez v2, :cond_7

    .line 75
    invoke-static {}, Lcom/miui/home/settings/MiuiHomeSettings;->isPersonalAssistantSimplified()Z

    move-result p5

    const v1, 0x7f1003d2

    if-eqz p5, :cond_5

    const p5, 0x7f1003b2

    .line 76
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    if-eqz p4, :cond_4

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    invoke-static {p1, p5, v1}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const p5, 0x7f1003d1

    .line 78
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    if-eqz p4, :cond_6

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v0

    :goto_2
    invoke-static {p1, p5, v1}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    const p5, 0x7f1002d1

    .line 82
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p5, 0x7f1002ac

    .line 83
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p5

    if-nez p5, :cond_8

    const p5, 0x7f10045a

    .line 85
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_8
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->supportSetAnimationRate()Z

    move-result p5

    if-eqz p5, :cond_9

    const p5, 0x7f100064

    .line 88
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_9
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result p5

    const v1, 0x7f10047f

    if-eqz p5, :cond_a

    .line 91
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 93
    :cond_a
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v1, "com.miui.home.recents.task_stack_view_layout_style"

    invoke-static {p1, p5, v1, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_4
    invoke-static {}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;->isNoWordAvailable()Z

    move-result p5

    if-eqz p5, :cond_b

    const p5, 0x7f1002df

    .line 96
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const p5, 0x7f10005f

    .line 98
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v1, "com.miui.home.action.ALL_APPS_SETTINGS"

    invoke-static {p1, p5, v1, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {p2}, Lcom/miui/home/settings/MiuiHomeSettings;->getPrivacyThumbnailBlurAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    .line 100
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v2

    if-nez v2, :cond_c

    if-eqz p5, :cond_c

    const v2, 0x7f100402

    .line 101
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, p5, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_c
    invoke-static {p2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseGestureVersion3(Landroid/content/Context;)Z

    move-result p5

    .line 104
    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->isShowSystemNavTypePreferenceInMiuiSettings(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    const v2, 0x7f1003a5

    .line 105
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p4, :cond_d

    .line 107
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f1003a6

    .line 105
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f1003a7

    .line 106
    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f1003a8

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f1003a9

    .line 107
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_5

    :cond_d
    move-object p4, v0

    .line 105
    :goto_5
    invoke-static {p1, v2, p4}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p4, 0x7f1003a4

    .line 108
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p4, 0x7f1003aa

    .line 109
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {p2}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_f

    const p4, 0x7f10021d

    .line 111
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_e

    const p4, 0x7f100380

    goto :goto_6

    :cond_e
    const p4, 0x7f100369

    .line 112
    :goto_6
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-boolean p4, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-eqz p4, :cond_11

    invoke-static {}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->getInstance()Lcom/miui/home/recents/FsGestureAssistEnableHelper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->isSupportGoogleAssist()Z

    move-result p4

    if-eqz p4, :cond_11

    const p4, 0x7f100219

    .line 115
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    const p4, 0x7f1004d2

    .line 118
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object p4, Lcom/miui/home/recents/gesture/NavShortcutCompat;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutCompat;

    invoke-virtual {p4}, Lcom/miui/home/recents/gesture/NavShortcutCompat;->isShowNavShortcutFeature()Z

    move-result p4

    const-string v2, "com.miui.home.action.navigation_bar_type_settings"

    if-nez p4, :cond_10

    const p4, 0x7f10028e

    .line 120
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, v2, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const p4, 0x7f1000b5

    .line 122
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, v2, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-boolean p4, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz p4, :cond_11

    const p4, 0x7f100395

    .line 124
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_11
    :goto_7
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result p4

    if-nez p4, :cond_12

    if-eqz p5, :cond_12

    const p4, 0x7f10041d

    .line 129
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addRecentLayoutStyleSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    const p4, 0x7f10041f

    .line 130
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addRecentLayoutStyleSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    const p4, 0x7f10041e

    .line 131
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addRecentLayoutStyleSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 133
    :cond_12
    sget-boolean p4, Lcom/miui/home/launcher/LauncherAssistantCompat;->CAN_SWITCH_MINUS_SCREEN:Z

    if-eqz p4, :cond_13

    const p4, 0x7f100272

    .line 134
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    const-string p5, "com.miui.home.action.LAUNCHER_PERSONAL_ASSISTANT_SETTING"

    invoke-static {p1, p4, p5, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_13
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/overlay/feed/FeedUtils;->isSupportSetting(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_14

    const p0, 0x7f100261

    .line 139
    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_14
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p0

    if-nez p0, :cond_15

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result p0

    if-nez p0, :cond_15

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isRemoveLauncherSlideUpSetting()Z

    move-result p0

    if-nez p0, :cond_15

    const p0, 0x7f100299

    .line 142
    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_15
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->showSlideUpCheckboxSetting()Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-static {}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->showCheckSlidingSetting()Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result p0

    if-nez p0, :cond_16

    const p0, 0x7f10029a

    .line 146
    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_16
    invoke-static {}, Lcom/miui/home/launcher/GlobalSearchUtil;->isSupportPullDownSearch()Z

    move-result p0

    if-nez p0, :cond_17

    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->canPullDownToGlobalSearch()Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_17
    const p0, 0x7f100293

    .line 150
    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const p0, 0x7f100054

    .line 153
    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0x7f10005a

    .line 154
    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->isNeedRemoveEasyMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_19

    const p0, 0x7f10005b

    .line 156
    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const p0, 0x7f100235

    .line 158
    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
