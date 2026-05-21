.class public Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;
.super Landroid/app/job/JobService;
.source "AnalyticalDataCollectorJobService.java"


# direct methods
.method public static synthetic $r8$lambda$oMttEyTtC7m71Z2MLciv9scwUNM(Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->lambda$onStartJob$0(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private static createAppStatusJsonStr(Ljava/lang/String;II)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 587
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 588
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package_name"

    .line 589
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "*"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "icon_size"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAllShortcutInfoPackageNameInFolder(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;
    .locals 1

    .line 489
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 490
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 492
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultFolderName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 432
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "com.vroco.launcher:string/default_folder_title_microsoft"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string p0, "com.vroco.launcher:string/default_folder_title_security"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string p0, "com.vroco.launcher:string/default_folder_title_game"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string p0, "com.vroco.launcher:string/default_folder_title_telcel"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string p0, "com.vroco.launcher:string/default_folder_title_other_apps"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    const-string p0, "com.vroco.launcher:string/default_folder_title_meitu"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const-string p0, "com.vroco.launcher:string/default_folder_title_claro"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_7
    const-string p0, "com.vroco.launcher:string/russia_preinstall_folder_name"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_8
    const-string p0, "com.vroco.launcher:string/new_default_folder_title_tools"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_9
    const-string p0, "com.vroco.launcher:string/default_folder_title_hot"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_a
    const-string p0, "com.vroco.launcher:string/default_folder_title_recommend"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_b
    const-string p0, "com.vroco.launcher:string/all_app_category_work"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p0, "nothing"

    goto :goto_1

    :pswitch_0
    const-string p0, "microsoft"

    goto :goto_1

    :pswitch_1
    const-string p0, "security"

    goto :goto_1

    :pswitch_2
    const-string p0, "game"

    goto :goto_1

    :pswitch_3
    const-string/jumbo p0, "telcel"

    goto :goto_1

    :pswitch_4
    const-string p0, "otherApps"

    goto :goto_1

    :pswitch_5
    const-string p0, "meitu"

    goto :goto_1

    :pswitch_6
    const-string p0, "claro"

    goto :goto_1

    :pswitch_7
    const-string p0, "russia"

    goto :goto_1

    :pswitch_8
    const-string/jumbo p0, "tools"

    goto :goto_1

    :pswitch_9
    const-string p0, "hot"

    goto :goto_1

    :pswitch_a
    const-string p0, "recommend"

    goto :goto_1

    :pswitch_b
    const-string/jumbo p0, "worker"

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76768ff5 -> :sswitch_b
        -0x410af5f3 -> :sswitch_a
        -0x3839e1a2 -> :sswitch_9
        -0x371e5fd5 -> :sswitch_8
        -0x2cb501d2 -> :sswitch_7
        -0x11900cda -> :sswitch_6
        -0x1106321d -> :sswitch_5
        -0xf04e0f0 -> :sswitch_4
        -0x3cd0962 -> :sswitch_3
        0x30fd0401 -> :sswitch_2
        0x45168fcf -> :sswitch_1
        0x7e612a3f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFolderSwitchState(ZZ)Ljava/lang/String;
    .locals 0

    .line 268
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo p1, "user_switch"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "switch_default"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string p1, "_on"

    goto :goto_1

    :cond_1
    const-string p1, "_off"

    .line 269
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFolderSwitchStateParams(Lcom/miui/home/launcher/FolderInfo;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/FolderInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 253
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->hasUserChangedRecommendSwitchState()Z

    move-result v0

    .line 258
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOn()Z

    move-result p1

    .line 257
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->getFolderSwitchState(ZZ)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "hasn\'t_this_folder"

    .line 261
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "switch_state"

    .line 262
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private static getNavBarTypeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "gestureWithoutLine"

    goto :goto_0

    :cond_0
    const-string p0, "gestureWithLine"

    :goto_0
    return-object p0

    .line 177
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isRightHand(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "buttonsSwitchOrder"

    goto :goto_1

    :cond_2
    const-string p0, "buttonsNormalOrder"

    :goto_1
    return-object p0
.end method

.method private getScreenIndex(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;)J
    .locals 4

    .line 477
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    .line 478
    iget-wide p0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    goto :goto_1

    :cond_0
    const-wide/16 v2, -0x65

    cmp-long p0, v0, v2

    const-wide/16 v0, 0x1

    if-nez p0, :cond_1

    .line 480
    iget-wide p0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    goto :goto_0

    .line 482
    :cond_1
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    iget-wide p1, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p0

    int-to-long p0, p0

    :goto_0
    add-long/2addr p0, v0

    :goto_1
    return-wide p0
.end method

.method private static getWidgets(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 511
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const-string v4, "itemType = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 513
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    .line 511
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    .line 514
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 517
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 518
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 520
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 521
    sget-object v4, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    .line 522
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 521
    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 526
    :cond_1
    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 533
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 535
    :cond_5
    throw p0

    :catch_0
    move-object v1, v0

    :catch_1
    if-eqz v1, :cond_6

    .line 533
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v0
.end method

.method private isApplicationShortcut(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 327
    iget p0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDefaultFolder(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.vroco.launcher:string/default_folder_title_recommend"

    .line 498
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.vroco.launcher:string/new_default_folder_title_tools"

    .line 499
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isToggleShortcutInfo(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 331
    iget p0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWidgetNoWord()Ljava/lang/String;
    .locals 0

    .line 201
    invoke-static {}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;->isNoWordAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "nothing"

    return-object p0

    .line 204
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "inoperable"

    return-object p0

    .line 207
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isOnlyWidgetNoWordModel()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_2
    const-string p0, "false"

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$onStartJob$0(Landroid/app/job/JobParameters;)V
    .locals 3

    .line 104
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackFolderInfo(Lcom/miui/home/launcher/Launcher;Landroid/content/Context;)V

    .line 109
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackCellScreenInfo(Lcom/miui/home/launcher/Launcher;Landroid/content/Context;)V

    .line 111
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v2

    .line 112
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackAppCountEvent(Ljava/util/ArrayList;)V

    .line 113
    invoke-direct {p0, v2, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackToggleInfoEvent(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 115
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackGadgetInfoEvent(Lcom/miui/home/launcher/Launcher;Landroid/content/Context;)V

    .line 117
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackWidgetEvent(Landroid/content/Context;)V

    .line 119
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackMiuiWidgets(Landroid/content/Context;)V

    .line 121
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->recordLockWallpaperProvider(Landroid/content/Context;)V

    .line 122
    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackAppStatus(Ljava/util/ArrayList;)V

    .line 123
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackLauncherStatus(Lcom/miui/home/launcher/Launcher;Landroid/content/Context;)V

    .line 126
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackSettingStatusEvent(Landroid/content/Context;)V

    .line 127
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackPersonalAssitantEvent(Landroid/content/Context;)V

    .line 128
    invoke-direct {p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackScreenCellsSizeEvent()V

    .line 129
    invoke-direct {p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackScreenCellsLockedEvent()V

    .line 130
    invoke-direct {p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackNoWordStatusEvent()V

    .line 131
    invoke-direct {p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackScreenAutoFillEmptyEvent()V

    .line 132
    invoke-virtual {p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackDoubleClickScreenStatus()V

    .line 133
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    .line 134
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSlidingOperationSwitch()V

    .line 136
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackMiuiHomeInfo()V

    .line 137
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsMode()V

    .line 138
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarSupport()V

    .line 139
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackPullDownGesture()V

    .line 140
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSlideUpGesture()V

    .line 141
    invoke-direct {p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackUserHideApp()V

    .line 142
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackNavBarType(Landroid/content/Context;)V

    .line 143
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackRecentsLayoutStyle(Landroid/content/Context;)V

    .line 144
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAnimationRateStatus()V

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method private static recordLockWallpaperProvider(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_3

    .line 551
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 554
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 555
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isKeyguardShowLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "live"

    goto :goto_0

    .line 557
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isDefaultLockStyle()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo p0, "third_theme"

    .line 560
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 561
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "lock_wallpaper_provider"

    .line 562
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private trackAppCountEvent(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 316
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 317
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->isApplicationShortcut(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 322
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "app_num"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static trackAppStatus(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 567
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 568
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 569
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 572
    :cond_0
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 575
    :cond_1
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v2, v2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v3, v4, v2}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->createAppStatusJsonStr(Ljava/lang/String;II)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 578
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 581
    :cond_3
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app_list"

    .line 582
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_status"

    .line 583
    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackCellScreenCountEvent(I)V
    .locals 1

    .line 346
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "screen_num"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackCellScreenInfo(Lcom/miui/home/launcher/Launcher;Landroid/content/Context;)V
    .locals 1

    .line 337
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 339
    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackCellScreenCountEvent(I)V

    .line 341
    invoke-static {p2, p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackDefaultScreenChangedEvent(Landroid/content/Context;Lcom/miui/home/launcher/Workspace;)V

    :cond_0
    return-void
.end method

.method private static trackDefaultScreenChangedEvent(Landroid/content/Context;Lcom/miui/home/launcher/Workspace;)V
    .locals 4

    .line 540
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getDesignedDefaultScreenId(Landroid/content/Context;)J

    move-result-wide v0

    .line 541
    sget-wide v2, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    .line 542
    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 543
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 544
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "is_changed"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_change_default_screen"

    .line 545
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private trackFolderContentEvent(Ljava/lang/String;)V
    .locals 1

    .line 387
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "folder_content"

    .line 388
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackFolderInfo(Lcom/miui/home/launcher/Launcher;Landroid/content/Context;)V
    .locals 7

    .line 353
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllFolders()Ljava/util/ArrayList;

    move-result-object v0

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v5, :cond_0

    .line 360
    invoke-virtual {v5, v3}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {v5, v3}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 364
    invoke-direct {p0, v6}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->isDefaultFolder(Ljava/lang/String;)Z

    .line 370
    invoke-virtual {v5}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v4, v5

    .line 374
    :cond_2
    invoke-virtual {v5}, Lcom/miui/home/launcher/FolderInfo;->canRecommendAppsScreenShow()Z

    .line 378
    invoke-virtual {v5, p2}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->getAllShortcutInfoPackageNameInFolder(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 381
    :cond_3
    invoke-direct {p0, v0, p2, p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackFolderStatusEvent(Ljava/util/ArrayList;Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    .line 382
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackFolderContentEvent(Ljava/lang/String;)V

    .line 383
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->getFolderSwitchStateParams(Lcom/miui/home/launcher/FolderInfo;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "recommend_folder_switch_state"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackFolderStatusEvent(Ljava/util/ArrayList;Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/miui/home/launcher/Launcher;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 393
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 394
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 398
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 399
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v5, p1

    .line 401
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/FolderInfo;

    .line 402
    invoke-virtual {v6}, Lcom/miui/home/launcher/FolderInfo;->getFolderGridSize()Ljava/lang/String;

    move-result-object v7

    .line 404
    iget v8, v6, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v9, 0x15

    if-eq v8, v9, :cond_0

    const-string v8, "inoperable"

    goto :goto_1

    .line 407
    :cond_0
    invoke-virtual {v6}, Lcom/miui/home/launcher/FolderInfo;->isAppPredictOpen()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "on"

    goto :goto_1

    :cond_1
    const-string v8, "off"

    .line 410
    :goto_1
    invoke-virtual {v6}, Lcom/miui/home/launcher/ItemInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->getDefaultFolderName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 412
    invoke-virtual {v6}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object v10

    .line 413
    invoke-virtual {v10}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->hasUserChangedRecommendSwitchState()Z

    move-result v11

    invoke-virtual {v10}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOn()Z

    move-result v10

    invoke-direct {v0, v11, v10}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->getFolderSwitchState(ZZ)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p3

    .line 414
    invoke-direct {v0, v6, v11}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->getScreenIndex(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;)J

    move-result-wide v12

    move-object/from16 v14, p2

    .line 416
    invoke-virtual {v6, v14}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v0, "folder_title"

    invoke-interface {v4, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "folder_size"

    .line 417
    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "installed_app_recommend_switch"

    .line 418
    invoke-interface {v4, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-virtual {v6}, Lcom/miui/home/launcher/FolderInfo;->getPackageNameList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "app_num"

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "default_folder_name"

    .line 420
    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "recommend_switch_status"

    .line 421
    invoke-interface {v4, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v6, "screen_index"

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "simple_item"

    .line 426
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "folder_status"

    .line 427
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackGadgetInfoEvent(Lcom/miui/home/launcher/Launcher;Landroid/content/Context;)V
    .locals 4

    .line 274
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllGadgets()Ljava/util/ArrayList;

    move-result-object p1

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v2, :cond_0

    .line 281
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 282
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->isGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 284
    invoke-virtual {v2, p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 288
    :cond_1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 289
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "gadget_num"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "gadget_list"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "home_gadget_info"

    .line 291
    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackLauncherStatus(Lcom/miui/home/launcher/Launcher;Landroid/content/Context;)V
    .locals 0

    .line 597
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 598
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentScreenCells()Ljava/lang/String;

    move-result-object p1

    const-string p2, "screen_layout_size"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLauncherLayoutType()Lcom/miui/home/launcher/compat/LauncherLayoutType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->getCurrentTypeName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "screen_layout_type"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "tip"

    const-string p2, "84.1.4.1.38798"

    .line 600
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "daily_report"

    .line 601
    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackNavBarType(Landroid/content/Context;)V
    .locals 1

    .line 166
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 167
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->getNavBarTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "navigationType"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "full_screen_gesture"

    .line 168
    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackNoWordStatusEvent()V
    .locals 3

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 212
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_enable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-direct {p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->isWidgetNoWord()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "widget_no_word"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_no_word_status"

    .line 214
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackPersonalAssitantEvent(Landroid/content/Context;)V
    .locals 1

    .line 230
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 231
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "is_enable"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "home_personal_assistant_state"

    .line 232
    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackRecentsLayoutStyle(Landroid/content/Context;)V
    .locals 1

    .line 151
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 153
    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "horizontal"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "vertical"

    :goto_0
    const-string/jumbo v0, "style"

    .line 161
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "recents_layout_style"

    .line 162
    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackScreenAutoFillEmptyEvent()V
    .locals 2

    .line 224
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 225
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->enableAutoFillEmpty()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_enable"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "home_screen_auto_fill_empty_state"

    .line 226
    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackScreenCellsLockedEvent()V
    .locals 2

    .line 218
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 219
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_enable"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "home_screen_cells_locked"

    .line 220
    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackScreenCellsSizeEvent()V
    .locals 2

    .line 194
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 195
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "device_name"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentScreenCells()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "size"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cell_screen_size"

    .line 197
    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackSettingStatusEvent(Landroid/content/Context;)V
    .locals 4

    .line 605
    sget-object p0, Lcom/miui/home/recents/gesture/NavShortcutCompat;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutCompat;

    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/NavShortcutCompat;->isShowNavShortcutFeature()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 608
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 609
    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "gesture"

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "buttons"

    :goto_0
    const-string v2, "navigation_mode"

    .line 610
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "tip"

    const-string v3, "1257.0.0.0.28747"

    .line 611
    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "hide_gesture_line"

    invoke-static {p1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    .line 614
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "gestures_indicator_status"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_2

    .line 616
    sget-object p1, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->gatherReportParams()Lkotlin/Pair;

    move-result-object p1

    .line 617
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "long_press_indicator"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "double_click_indicator"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string/jumbo p1, "status"

    .line 621
    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackHomeSettingStatusEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackToggleInfoEvent(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 302
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->isToggleShortcutInfo(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 304
    invoke-virtual {v2, p2}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 308
    :cond_1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 309
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "toggle_num"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "toggle_lists"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "home_toggle_info"

    .line 311
    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackUserHideApp()V
    .locals 2

    .line 183
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 184
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/HideAppList;->getHideAppString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user_hide_app"

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 186
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 188
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v0, "miui_home_hide_app_info"

    .line 190
    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackWidgetEvent(Landroid/content/Context;)V
    .locals 2

    .line 236
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->getWidgets(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 238
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p1, :cond_1

    .line 240
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 244
    :cond_1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "widget_num"

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "widget_list"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "home_widget_info"

    .line 247
    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 96
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/job/JobService;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartJob   jobParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.AnalyticalDataCollectorJobService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public trackDoubleClickScreenStatus()V
    .locals 3

    .line 625
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDoubleTapLock()Z

    move-result p0

    .line 626
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "tip"

    const-string v2, "84.1.4.1.38798"

    .line 627
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "double_click_screen_status"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "daily_report"

    .line 629
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
