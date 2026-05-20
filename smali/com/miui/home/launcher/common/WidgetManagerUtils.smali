.class public Lcom/miui/home/launcher/common/WidgetManagerUtils;
.super Ljava/lang/Object;
.source "WidgetManagerUtils.java"


# direct methods
.method private static appendWidgetEditParams(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/content/Intent;)V
    .locals 3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 323
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v1

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 324
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const-string/jumbo v2, "spanX"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    const-string/jumbo v2, "spanY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 326
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    const-string v2, "appPackageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    const-string v2, "appVersionCode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 328
    iget-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    const-string v2, "implUniqueCode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLauncherProviderInfo()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 332
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    const-string v1, "providerInfo"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    const-string p0, "editItemInfo"

    .line 335
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p0, 0x2

    const-string v0, "openSource"

    .line 336
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void

    :cond_2
    :goto_0
    const-string p0, "Launcher.widgetManager"

    const-string p1, "appendWidgetEditParams failed:c info or intent = null"

    .line 319
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 0

    .line 91
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    .line 93
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "Launcher.widgetManager"

    const-string p1, "Error when bind app widget"

    .line 95
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static getGlobalWidgetDetailsUrl(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)Ljava/lang/String;
    .locals 7

    const-string v0, "package name = "

    const-string v1, "Launcher.widgetManager"

    .line 185
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 186
    instance-of v2, p1, Lcom/miui/home/launcher/ShortcutInfo;

    const-string v3, ""

    if-nez v2, :cond_0

    return-object v3

    .line 189
    :cond_0
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 192
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "content://com.mi.globalminusscreen.widget.external"

    .line 193
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 192
    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    :try_start_1
    const-string v2, "no widget pick"

    .line 195
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    .line 209
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_1
    return-object v3

    :cond_2
    :try_start_2
    const-string v4, "getPickerDeeplinkUrl"

    .line 198
    invoke-virtual {p0, v4, p1, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v4, "pickerDeeplinkUrl"

    .line 201
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v3

    .line 203
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", widget pick = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    return-object v2

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    .line 206
    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", no widget pick error = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_4

    .line 209
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_4
    return-object v3

    :catchall_1
    move-exception p1

    move-object v2, p0

    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    .line 211
    :cond_5
    throw p1
.end method

.method public static goToGlobalWidgetDetails(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;)V
    .locals 2

    .line 216
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Launcher.widgetManager"

    if-eqz v0, :cond_0

    .line 217
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "package name = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " fail to go to global picker"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 221
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->isCloseAnimator()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 222
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 223
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "go to global widget error"

    .line 225
    invoke-static {v1, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static gotoPicker(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 9

    .line 111
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    return-void

    .line 115
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 116
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v2, 0x8000

    .line 117
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "openSource"

    const/4 v3, 0x2

    .line 118
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "picker_tip_source"

    if-eqz p1, :cond_1

    .line 121
    sget-object v5, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sAssistantWidget:Lcom/miui/home/launcher/AssistantWidget;

    invoke-interface {v5}, Lcom/miui/home/launcher/AssistantWidget;->getPickerDetailActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 122
    instance-of v5, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v5, :cond_2

    .line 123
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "widget://picker/detail"

    .line 126
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "?"

    .line 127
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "packageName"

    .line 128
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&"

    .line 131
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "appName"

    .line 132
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    .line 142
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    .line 147
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    sget-object p1, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sAssistantWidget:Lcom/miui/home/launcher/AssistantWidget;

    invoke-interface {p1}, Lcom/miui/home/launcher/AssistantWidget;->getPickerHomeActivity()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->isCloseAnimator()Z

    move-result p1

    if-nez p1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 153
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v2, Lcom/miui/home/launcher/overlay/assistant/AssistantConnectMessage;

    invoke-direct {v2}, Lcom/miui/home/launcher/overlay/assistant/AssistantConnectMessage;-><init>()V

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 154
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "Launcher.widgetManager"

    const-string v2, "no intent"

    .line 156
    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    :goto_2
    return-void
.end method

.method public static hasEditEntry(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 4

    .line 230
    instance-of v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 231
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget v0, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->status:I

    if-eq v0, v2, :cond_0

    return v1

    .line 236
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_5

    .line 237
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 238
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v0

    .line 240
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLauncherProviderInfo()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 242
    iget-boolean v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-nez v1, :cond_1

    .line 243
    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->isReconfigurable()Z

    move-result p0

    return p0

    .line 244
    :cond_1
    iget-object v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->editUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "miuiEditUri"

    .line 246
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, ""

    .line 247
    :goto_0
    iput-object p0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->editUri:Ljava/lang/String;

    .line 249
    :cond_3
    iget-object p0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->editUri:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_4
    return v1

    .line 252
    :cond_5
    instance-of p0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz p0, :cond_6

    .line 253
    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget-object p0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->editUri:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 255
    :cond_6
    instance-of p0, p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    return p0
.end method

.method public static hasWidgets(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 3

    .line 163
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 166
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_2

    .line 167
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppWidgetManager()Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 170
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    .line 169
    invoke-virtual {v2, v0, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 171
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 173
    invoke-static {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 175
    iget-boolean v0, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static installWidget(Landroid/content/Context;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z
    .locals 2

    .line 386
    iget-object v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->downloadUri:Ljava/lang/String;

    .line 387
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object p1

    .line 389
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimarket://details/detailfloat?finishWhenInstalled=true&overlayPosition=1&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&senderPackageName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    :cond_0
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/market/sdk/MarketManager;->getFloatCardManager()Lcom/market/sdk/FloatCardManager;

    move-result-object p0

    .line 393
    invoke-virtual {p0, v0}, Lcom/market/sdk/FloatCardManager;->resumeByFloat(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/market/sdk/FloatCardManager;->downloadByFloat(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 394
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "download failure for package:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.widgetManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isAppWidgetAvailable(Landroid/content/Context;ILandroid/content/ComponentName;)Z
    .locals 0

    .line 401
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    .line 402
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 403
    iget-object p1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isProviderAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 2

    .line 408
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 411
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v1, 0xc0040

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 414
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const/4 p1, 0x1

    :catch_0
    :cond_0
    return p1
.end method

.method public static openDislikePage(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 518
    :try_start_0
    instance-of v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    if-nez v0, :cond_0

    return-void

    .line 521
    :cond_0
    check-cast p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    .line 522
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->mLayoutHost:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;

    if-eqz p0, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->getFeedbackMenuClickListener()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$FeedbackMenuClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 525
    invoke-virtual {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->getFeedbackMenuClickListener()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$FeedbackMenuClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$FeedbackMenuClickListener;->onFeedbackClicked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.widgetManager"

    const-string v1, "openDislikePage error"

    .line 528
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static openEditPage(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 5

    .line 261
    :try_start_0
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "appWidgetId"

    const-string v2, "android.intent.action.VIEW"

    if-eqz v0, :cond_3

    .line 262
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 263
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->refreshEditUri(Landroid/content/Context;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 264
    iget-object v3, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->editUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 265
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-static {v0}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->parseWidgetEditUri(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Landroid/net/Uri;

    move-result-object v2

    .line 267
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 268
    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->appendWidgetEditParams(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/content/Intent;)V

    const-string v3, "miuiEditIntentFlags"

    .line 270
    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "[1-9][0-9]*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 275
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xc3

    .line 276
    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeFlags(I)V

    .line 280
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object v0

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 284
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result p1

    const/16 v1, 0xd

    .line 283
    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startConfigActivity(Lcom/miui/home/launcher/BaseActivity;II)V

    goto :goto_0

    .line 287
    :cond_3
    instance-of v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    const/high16 v3, 0x10000000

    if-eqz v0, :cond_5

    .line 288
    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 289
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 290
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantAssistantPermission(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    .line 291
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-static {p0, v0, v2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantPaResPermission(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 293
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-static {p1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->parseEditUri(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 295
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 296
    iget p1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "picker_tip_source"

    const/16 v1, 0xc

    .line 297
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 299
    :cond_5
    instance-of p1, p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    if-eqz p1, :cond_6

    .line 300
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "aireco://com.miui.personalassistant/service/aireco/setting/ui/RecommendationActivity?from=\u7f16\u8f91"

    .line 301
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 302
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 307
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method

.method public static openReplacePage(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V
    .locals 7

    const-string v0, "openReplacePage : "

    const-string v1, "Launcher.widgetManager"

    const/4 v2, 0x0

    .line 452
    :try_start_0
    instance-of v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    .line 453
    move-object v2, p1

    check-cast v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 454
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v4

    .line 455
    iget-object v2, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 456
    :cond_0
    instance-of v3, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v3, :cond_1

    .line 457
    move-object v2, p1

    check-cast v2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 458
    iget v4, v2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    .line 459
    iget-object v2, v2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    goto :goto_0

    .line 460
    :cond_1
    instance-of v3, p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    if-eqz v3, :cond_3

    .line 461
    move-object v2, p1

    check-cast v2, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    .line 462
    iget-object v3, v2, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->hostView:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->getWidgetId()I

    move-result v3

    move v4, v3

    .line 463
    :cond_2
    iget-object v2, v2, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->packageName:Ljava/lang/String;

    :cond_3
    :goto_0
    const-string/jumbo v3, "widget://filter/replace?openSource=2&pickerTipSource=21"

    .line 465
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "miuiWidgetId"

    .line 466
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "itemType"

    iget v6, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    .line 467
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "implUniqueCode"

    iget-object v6, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    .line 468
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "packageName"

    .line 469
    invoke-virtual {v4, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v4, "spanX"

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 470
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v4, "spanY"

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 471
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 472
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 474
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 475
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "openReplacePage error"

    .line 478
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private static parseEditUri(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Landroid/net/Uri;
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->editUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 377
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/DeviceType;->PHONE:Lcom/miui/home/launcher/DeviceType;

    if-eq v1, v2, :cond_0

    .line 378
    iget v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "miuiWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/maml/widget/edit/WidgetEditSave;->getLocalId(Lcom/miui/maml/component/MamlView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launcherLocalId"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    const-string v2, "implUniqueCode"

    .line 381
    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 382
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static parseWidgetEditUri(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Landroid/net/Uri;
    .locals 4

    .line 340
    iget-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->editUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->editUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "pa"

    .line 343
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 344
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v2

    sget-object v3, Lcom/miui/home/launcher/DeviceType;->PHONE:Lcom/miui/home/launcher/DeviceType;

    if-eq v2, v3, :cond_1

    if-eqz v1, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "miuiWidgetId"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 347
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static refreshEditUri(Landroid/content/Context;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 2

    const-string v0, "Launcher.widgetManager"

    if-nez p0, :cond_0

    const-string p0, "refreshEditUri failed: context = null"

    .line 358
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 362
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v1

    .line 363
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "miuiEditUri"

    .line 364
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 366
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->editUri:Ljava/lang/String;

    .line 367
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 368
    iput-object p0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->editUri:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "refreshEditUri err"

    .line 371
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static supportDislike(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 6

    const-string v0, "Launcher.widgetManager"

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "supportDislike?"

    .line 487
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    instance-of v2, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    if-nez v2, :cond_0

    return v1

    .line 491
    :cond_0
    check-cast p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    .line 492
    iget-object v2, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->hostView:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    if-eqz v2, :cond_3

    .line 493
    invoke-virtual {v2}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->getDeliveryLayout()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 496
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->mLayoutHost:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;

    .line 497
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->hostView:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->getDeliveryLayout()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    move-result-object p0

    if-nez v2, :cond_2

    return v1

    .line 501
    :cond_2
    invoke-virtual {v2}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->isFeedbackMenuEnabled()Z

    move-result v3

    .line 502
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->isFeedBackEnabledForCurrentCard()Z

    move-result p0

    .line 503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFeedbackMenuEnabled isFeedbackMenuEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isFeedBackEnabledForCurrentCard = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {v2}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->getFeedbackMenuShowTracker()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;->track(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1

    :catch_0
    move-exception p0

    const-string/jumbo v2, "supportDislike"

    .line 508
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static supportReplace(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 4

    const-string v0, "Launcher.widgetManager"

    const/4 v1, 0x0

    .line 422
    :try_start_0
    instance-of v2, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-nez v2, :cond_0

    return v1

    .line 425
    :cond_0
    check-cast p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 426
    iget-boolean v2, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-nez v2, :cond_1

    const-string/jumbo p0, "supportReplace : not a miui widget"

    .line 427
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 430
    :cond_1
    iget v2, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->status:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const-string/jumbo p0, "supportReplace : uninstalled"

    .line 431
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 434
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string/jumbo p0, "supportReplace : empty pickerID"

    .line 435
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 439
    :cond_3
    new-instance p0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "widget://filter/replace?openSource=2&pickerTipSource=21"

    .line 440
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 441
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    move v1, v3

    :cond_4
    return v1

    :catch_0
    move-exception p0

    const-string/jumbo v2, "supportReplace"

    .line 443
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static unbindAllWidgets(Landroid/content/Context;)V
    .locals 2

    .line 86
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 87
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    return-void
.end method

.method public static updateWidgetBlurOptions(Lcom/miui/home/launcher/Launcher;Landroid/os/UserHandle;Lcom/miui/home/launcher/LauncherWidgetView;IZ)V
    .locals 0

    .line 536
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 539
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherWidgetView;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 541
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppWidgetManager()Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    .line 542
    invoke-virtual {p0, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p0

    .line 543
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const-string p3, "background_blur_enable"

    invoke-virtual {p0, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 544
    invoke-virtual {p1, p0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method
