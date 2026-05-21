.class Lcom/miui/home/launcher/install/AutoInstallsLayout$PendingWidgetParser;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingWidgetParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Lcom/miui/home/launcher/install/AutoInstallsLayout$1;)V
    .locals 0

    .line 492
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/AutoInstallsLayout$PendingWidgetParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;)V

    return-void
.end method

.method private getPackageName(Landroid/content/res/XmlResourceParser;)Ljava/lang/String;
    .locals 0

    const-string p0, "packageName"

    .line 576
    invoke-static {p1, p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 577
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.miui.home"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "com.vroco.launcher"

    :cond_0
    return-object p0
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "spanY"

    const-string/jumbo v4, "spanX"

    .line 497
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/install/AutoInstallsLayout$PendingWidgetParser;->getPackageName(Landroid/content/res/XmlResourceParser;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "className"

    .line 498
    invoke-static {v1, v6}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 499
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "AutoInstalls"

    const/4 v9, 0x0

    if-nez v7, :cond_a

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v7, -0x1

    .line 508
    :try_start_0
    invoke-static {v1, v4}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 509
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v11

    .line 508
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :try_start_1
    invoke-static {v1, v3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 511
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v12

    .line 510
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move v10, v7

    :catch_1
    move v11, v7

    .line 514
    :goto_0
    iget-object v12, v0, Lcom/miui/home/launcher/install/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    iget-object v12, v12, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_2

    .line 515
    invoke-static {v1, v2, v6, v10, v11}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$700(Landroid/content/res/XmlResourceParser;Landroid/content/ContentValues;Ljava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 517
    iget-object v0, v0, Lcom/miui/home/launcher/install/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$400(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v13

    :cond_1
    return v9

    .line 524
    :cond_2
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 525
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    .line 527
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/4 v9, 0x3

    if-ne v15, v9, :cond_6

    .line 528
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v14, :cond_3

    goto/16 :goto_4

    .line 545
    :cond_3
    iget-object v1, v0, Lcom/miui/home/launcher/install/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    iget-object v1, v1, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 546
    iget-object v1, v0, Lcom/miui/home/launcher/install/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    iget-object v7, v1, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mContext:Landroid/content/Context;

    move-object/from16 v1, p2

    move-object v2, v5

    move-object v3, v6

    move v4, v10

    move v5, v11

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/install/DefaultLayoutHelper;->addAppWidget(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 549
    iget-object v0, v0, Lcom/miui/home/launcher/install/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$400(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v13

    :cond_4
    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    .line 554
    :cond_5
    :try_start_2
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 556
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 557
    invoke-virtual {v5, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v6, "appWidgetId"

    .line 558
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "intent"

    const/4 v7, 0x0

    .line 559
    invoke-virtual {v5, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "itemFlags"

    const/16 v6, 0x8

    .line 560
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "itemType"

    const/4 v6, 0x4

    .line 561
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 562
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 563
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "appWidgetProvider"

    .line 564
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_id"

    .line 565
    invoke-static {}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getFavoritesItemNewId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 566
    iget-object v0, v0, Lcom/miui/home/launcher/install/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$400(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    return v13

    :catch_2
    move-exception v0

    const-string v1, "Problem allocating appWidgetId"

    .line 569
    invoke-static {v8, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_3
    return v1

    :cond_6
    :goto_4
    const/4 v9, 0x2

    if-eq v15, v9, :cond_7

    :goto_5
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 533
    :cond_7
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v15, "extra"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "key"

    .line 534
    invoke-static {v1, v9}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v15, "value"

    .line 535
    invoke-static {v1, v15}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v9, :cond_8

    if-eqz v15, :cond_8

    .line 537
    invoke-virtual {v12, v9, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 539
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Widget extras must have a key and value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Widgets can contain only extras"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_6
    const-string v0, "Skipping invalid <appwidget> with no component"

    .line 500
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method
