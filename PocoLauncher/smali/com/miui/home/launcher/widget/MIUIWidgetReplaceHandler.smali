.class public Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;
.super Ljava/lang/Object;
.source "MIUIWidgetReplaceHandler.java"


# direct methods
.method public static synthetic $r8$lambda$AC_5wqxqcHUbwWBdSgkGHw5SxcQ(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;->lambda$replaceWidget$0(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method private static canReplace(Landroid/os/Bundle;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)Z
    .locals 3

    const-string/jumbo v0, "widget_span_x"

    const/4 v1, -0x1

    .line 116
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "widget_span_y"

    .line 117
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canReplace spanX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , spanY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MIUIWidgetReplaceHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-lt v1, v0, :cond_0

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static findMaMlByWidgetId(Lcom/miui/home/launcher/Launcher;I)Lcom/miui/home/launcher/maml/MaMlWidgetInfo;
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getMaMlItems()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 133
    iget v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findServiceDeliveryByWidgetId(Lcom/miui/home/launcher/Launcher;I)Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getServiceDeliveryItems()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    .line 142
    iget v1, v0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->widgetId:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findWidgetByWidgetId(Lcom/miui/home/launcher/Launcher;I)Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 124
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isSameImplUniqueCode(Landroid/os/Bundle;)Z
    .locals 4

    const-string v0, "replace_same_impluniquecode"

    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSameImplUniqueCode isSameImplUniqueCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hasThisValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MIUIWidgetReplaceHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static synthetic lambda$replaceWidget$0(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 87
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "MIUIWidgetReplaceHandler"

    const-string p1, "replaceWidget error, CellScreen not found"

    .line 89
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 93
    :cond_0
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 94
    move-object p0, p2

    check-cast p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    const/4 p1, 0x0

    invoke-virtual {p3, p0, v2, p1}, Lcom/miui/home/launcher/Launcher;->addMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 96
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 97
    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iput-wide v1, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 98
    new-instance p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result v1

    invoke-direct {p1, v1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 99
    invoke-virtual {p3, p1, p0}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/CellScreen;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->setAppWidgetId(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x17

    if-ne v0, p1, :cond_3

    .line 101
    invoke-virtual {p3, p2, v2}, Lcom/miui/home/launcher/Launcher;->addServiceDelivery(Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;

    goto :goto_0

    .line 103
    :cond_3
    move-object p1, p2

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p3, p1, p0}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/CellScreen;)I

    .line 105
    :goto_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    return-void
.end method

.method public static replaceWidget(Lcom/miui/home/launcher/Launcher;Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "replace_widget_id"

    const/4 v1, -0x1

    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "MIUIWidgetReplaceHandler"

    if-gez v0, :cond_0

    const-string p0, "replaceWidget error, invalid widget id"

    .line 29
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v3, "replace_widget_type"

    .line 33
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replaceWidget itemType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    const/16 v4, 0x17

    const/16 v5, 0x13

    if-ne v1, v5, :cond_1

    .line 38
    invoke-static {p0, v0}, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;->findMaMlByWidgetId(Lcom/miui/home/launcher/Launcher;I)Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v6

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_2

    .line 40
    invoke-static {p0, v0}, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;->findServiceDeliveryByWidgetId(Lcom/miui/home/launcher/Launcher;I)Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    move-result-object v6

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_a

    .line 42
    invoke-static {p0, v0}, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;->findWidgetByWidgetId(Lcom/miui/home/launcher/Launcher;I)Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object v6

    :goto_0
    if-nez v6, :cond_3

    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "replaceWidget error, widget not found. widgetId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 52
    :cond_3
    invoke-static {p1, v6}, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;->canReplace(Landroid/os/Bundle;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p0, "replaceWidget abort"

    .line 53
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 57
    :cond_4
    invoke-static {p0, p1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createItemInfo(Lcom/miui/home/launcher/Launcher;Landroid/os/Bundle;)Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    move-result-object v0

    if-nez v0, :cond_5

    const-string p0, "replaceWidget error, itemInfo is null"

    .line 59
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v7

    .line 64
    iget-wide v8, v6, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v7, v8, v9}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v8

    .line 65
    invoke-virtual {v0, v8}, Lcom/miui/home/launcher/ItemInfo;->startPending(Lcom/miui/home/launcher/PendingSource;)V

    .line 66
    iget v8, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    const/16 v9, 0x3fd

    if-ne v8, v9, :cond_6

    const/4 v8, 0x7

    .line 67
    iput v8, v6, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->deleteWidgetWay:I

    goto :goto_1

    :cond_6
    const/4 v8, 0x3

    .line 69
    iput v8, v6, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->deleteWidgetWay:I

    :goto_1
    const-string v8, "do remove replaced item info."

    .line 71
    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v5, :cond_7

    .line 73
    invoke-static {p1}, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;->isSameImplUniqueCode(Landroid/os/Bundle;)Z

    move-result p1

    .line 74
    move-object v1, v6

    check-cast v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/Launcher;->removeMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Z)V

    goto :goto_2

    :cond_7
    if-ne v1, v4, :cond_8

    .line 76
    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/Launcher;->removeServiceDelivery(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_2

    :cond_8
    if-ne v1, v3, :cond_9

    .line 78
    move-object p1, v6

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    :cond_9
    :goto_2
    const/4 p1, 0x0

    .line 80
    iput-object p1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    const-wide/16 v1, -0x64

    .line 81
    iput-wide v1, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 82
    iget-wide v1, v6, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iput-wide v1, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 83
    iget p1, v6, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput p1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 84
    iget p1, v6, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput p1, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 86
    new-instance p1, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler$$ExternalSyntheticLambda0;

    invoke-direct {p1, v7, v6, v0, p0}, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v7, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 44
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "itemType = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not support type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
