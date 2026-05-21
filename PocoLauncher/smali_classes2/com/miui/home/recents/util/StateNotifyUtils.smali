.class public Lcom/miui/home/recents/util/StateNotifyUtils;
.super Ljava/lang/Object;
.source "StateNotifyUtils.java"


# direct methods
.method public static sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 42
    new-instance v0, Lcom/miui/home/recents/util/StateNotifyUtils$1;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/miui/home/recents/util/StateNotifyUtils$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-static {p1}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToShell(Ljava/lang/String;)V

    const-string v0, ""

    .line 38
    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static sendStateToShell(Ljava/lang/String;)V
    .locals 13

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xb

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move p0, v12

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "finishRecentDirectly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "toStatusBar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v2

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "toCurrentApp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v3

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "closeWindow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/16 p0, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "crossSafeArea"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move p0, v4

    goto :goto_1

    :sswitch_5
    const-string v0, "noStartActivityAppOpen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move p0, v5

    goto :goto_1

    :sswitch_6
    const-string v0, "toRecents"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move p0, v6

    goto :goto_1

    :sswitch_7
    const-string v0, "toHome"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    move p0, v7

    goto :goto_1

    :sswitch_8
    const-string v0, "quickSwitchAnimEnd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    move p0, v8

    goto :goto_1

    :sswitch_9
    const-string v0, "taskSnapshot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    move p0, v9

    goto :goto_1

    :sswitch_a
    const-string v0, "startControlAppWindow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    move p0, v10

    goto :goto_1

    :sswitch_b
    const-string v0, "toAnotherApp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    move p0, v11

    :goto_1
    packed-switch p0, :pswitch_data_0

    move v1, v12

    goto :goto_2

    :pswitch_0
    move v1, v2

    goto :goto_2

    :pswitch_1
    move v1, v3

    goto :goto_2

    :pswitch_2
    move v1, v6

    goto :goto_2

    :pswitch_3
    move v1, v8

    goto :goto_2

    :pswitch_4
    move v1, v4

    goto :goto_2

    :pswitch_5
    move v1, v11

    goto :goto_2

    :pswitch_6
    move v1, v10

    goto :goto_2

    :pswitch_7
    move v1, v7

    goto :goto_2

    :pswitch_8
    move v1, v5

    goto :goto_2

    :pswitch_9
    const/16 v1, 0xc

    goto :goto_2

    :pswitch_a
    move v1, v9

    .line 100
    :goto_2
    :pswitch_b
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 101
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->updateGestureStateToRemote(I)V

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendStateToShell value:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StateNotifyUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e18bb07 -> :sswitch_b
        -0x5c2b22ea -> :sswitch_a
        -0x4e6be597 -> :sswitch_9
        -0x4c5e45b7 -> :sswitch_8
        -0x33cf3e06 -> :sswitch_7
        -0x22a02183 -> :sswitch_6
        -0x1ff1c365 -> :sswitch_5
        -0x258cde6 -> :sswitch_4
        0x10864c08 -> :sswitch_3
        0x419172c3 -> :sswitch_2
        0x5f860286 -> :sswitch_1
        0x6b21ce24 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_b
        :pswitch_0
    .end packed-switch
.end method
