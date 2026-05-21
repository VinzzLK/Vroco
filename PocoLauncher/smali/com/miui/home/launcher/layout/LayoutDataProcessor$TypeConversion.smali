.class final Lcom/miui/home/launcher/layout/LayoutDataProcessor$TypeConversion;
.super Ljava/lang/Object;
.source "LayoutDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/layout/LayoutDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeConversion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/layout/LayoutDataProcessor$1;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/miui/home/launcher/layout/LayoutDataProcessor$TypeConversion;-><init>()V

    return-void
.end method

.method private addInfoToDst([[Lcom/miui/home/launcher/layout/LayoutItemInfo;Lcom/miui/home/launcher/layout/LayoutItemInfo;II)V
    .locals 2

    .line 133
    iget p0, p2, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanX:I

    add-int/2addr p0, p3

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-lt p0, p3, :cond_1

    .line 134
    iget v0, p2, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanY:I

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lt v0, p4, :cond_0

    .line 135
    aget-object v1, p1, p0

    aput-object p2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 138
    :cond_1
    iput p3, p2, Lcom/miui/home/launcher/layout/LayoutItemInfo;->cellX:I

    .line 139
    iput p4, p2, Lcom/miui/home/launcher/layout/LayoutItemInfo;->cellY:I

    return-void
.end method

.method private initLayoutItemInfo(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Object;)Lcom/miui/home/launcher/layout/LayoutItemInfo;
    .locals 10

    .line 102
    new-instance p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;

    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v6, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iget-wide v7, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    move-object v0, p0

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/miui/home/launcher/layout/LayoutItemInfo;-><init>(JIIIIJLjava/lang/Object;)V

    .line 104
    instance-of p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz p2, :cond_0

    .line 105
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    iget-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v5, -0x1

    const-string v4, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/layout/LayoutItemInfo;->initWidgetInfo(Landroid/appwidget/AppWidgetProviderInfo;IILjava/lang/String;I)V

    return-object p0

    .line 109
    :cond_0
    instance-of p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz p2, :cond_1

    .line 110
    move-object p2, p1

    check-cast p2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLauncherProviderInfo()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 112
    iget-object v1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v5, -0x1

    const-string v4, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/layout/LayoutItemInfo;->initWidgetInfo(Landroid/appwidget/AppWidgetProviderInfo;IILjava/lang/String;I)V

    return-object p0

    .line 117
    :cond_1
    instance-of p2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz p2, :cond_2

    .line 118
    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    const/4 v1, 0x0

    .line 119
    iget v2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    iget v3, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    iget-object v4, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    const/4 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/layout/LayoutItemInfo;->initWidgetInfo(Landroid/appwidget/AppWidgetProviderInfo;IILjava/lang/String;I)V

    return-object p0

    .line 124
    :cond_2
    instance-of p2, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz p2, :cond_3

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    .line 125
    check-cast p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 126
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getCategoryId()I

    move-result v5

    const-string v4, ""

    move-object v0, p0

    .line 125
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/layout/LayoutItemInfo;->initWidgetInfo(Landroid/appwidget/AppWidgetProviderInfo;IILjava/lang/String;I)V

    :cond_3
    return-object p0
.end method

.method private printPerScreen(J[[Landroid/view/View;II)V
    .locals 0

    return-void
.end method


# virtual methods
.method public convertedToItemInfo([[Ljava/lang/Object;II)[[Lcom/miui/home/launcher/layout/LayoutItemInfo;
    .locals 11

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 77
    const-class v2, Lcom/miui/home/launcher/layout/LayoutItemInfo;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/miui/home/launcher/layout/LayoutItemInfo;

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_5

    move v3, v1

    :goto_1
    if-ge v3, p2, :cond_4

    .line 80
    aget-object v4, p1, v3

    aget-object v4, v4, v2

    if-nez v4, :cond_0

    .line 82
    aget-object v4, v0, v3

    const/4 v5, 0x0

    aput-object v5, v4, v2

    goto/16 :goto_2

    .line 83
    :cond_0
    instance-of v5, v4, Landroid/view/View;

    const-string v6, ",view="

    const-string v7, ",j = "

    const-string v8, "convertedToInfo i = "

    const-string v9, "LayoutDataProcessor"

    if-eqz v5, :cond_2

    .line 84
    move-object v5, v4

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v10, :cond_1

    .line 85
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/ItemInfo;

    .line 86
    iget v6, v5, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-ne v6, v3, :cond_3

    iget v6, v5, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-ne v6, v2, :cond_3

    .line 87
    invoke-direct {p0, v5, v4}, Lcom/miui/home/launcher/layout/LayoutDataProcessor$TypeConversion;->initLayoutItemInfo(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Object;)Lcom/miui/home/launcher/layout/LayoutItemInfo;

    move-result-object v4

    .line 88
    invoke-direct {p0, v0, v4, v3, v2}, Lcom/miui/home/launcher/layout/LayoutDataProcessor$TypeConversion;->addInfoToDst([[Lcom/miui/home/launcher/layout/LayoutItemInfo;Lcom/miui/home/launcher/layout/LayoutItemInfo;II)V

    goto :goto_2

    .line 91
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",tag="

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 94
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method public convertedToView(J[[Lcom/miui/home/launcher/layout/LayoutItemInfo;II)[[Landroid/view/View;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p5, v0, v1

    const/4 v1, 0x0

    aput p4, v0, v1

    .line 143
    const-class v2, Landroid/view/View;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/view/View;

    move v2, v1

    :goto_0
    if-ge v2, p5, :cond_3

    move v3, v1

    :goto_1
    if-ge v3, p4, :cond_2

    .line 146
    aget-object v4, p3, v3

    aget-object v4, v4, v2

    if-nez v4, :cond_0

    .line 148
    aget-object v4, v0, v3

    const/4 v5, 0x0

    aput-object v5, v4, v2

    goto :goto_2

    .line 150
    :cond_0
    iget-object v5, v4, Lcom/miui/home/launcher/layout/LayoutItemInfo;->tag:Ljava/lang/Object;

    .line 151
    instance-of v6, v5, Landroid/view/View;

    if-eqz v6, :cond_1

    .line 152
    aget-object v6, v0, v3

    check-cast v5, Landroid/view/View;

    aput-object v5, v6, v2

    .line 153
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 154
    iget v6, v4, Lcom/miui/home/launcher/layout/LayoutItemInfo;->cellX:I

    if-ne v3, v6, :cond_1

    iget v6, v4, Lcom/miui/home/launcher/layout/LayoutItemInfo;->cellY:I

    if-ne v2, v6, :cond_1

    instance-of v6, v5, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v6, :cond_1

    .line 155
    check-cast v5, Lcom/miui/home/launcher/ItemInfo;

    iput v3, v5, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 156
    iput v2, v5, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 157
    iget v6, v4, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanX:I

    iput v6, v5, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 158
    iget v6, v4, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanY:I

    iput v6, v5, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 159
    iget-wide v6, v4, Lcom/miui/home/launcher/layout/LayoutItemInfo;->screenId:J

    iput-wide v6, v5, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object v2, p0

    move-wide v3, p1

    move-object v5, v0

    move v6, p4

    move v7, p5

    .line 165
    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/layout/LayoutDataProcessor$TypeConversion;->printPerScreen(J[[Landroid/view/View;II)V

    return-object v0
.end method
