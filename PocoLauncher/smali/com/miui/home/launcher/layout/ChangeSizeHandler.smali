.class public Lcom/miui/home/launcher/layout/ChangeSizeHandler;
.super Lcom/miui/home/launcher/layout/LayoutDataHandler;
.source "ChangeSizeHandler.java"


# direct methods
.method public static synthetic $r8$lambda$aW1d4FGMV-q0-LSy7n30iWXjevE(Lcom/miui/home/launcher/layout/ChangeSizeHandler;IIIILcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/miui/home/launcher/layout/ChangeSizeHandler;->lambda$processData$0(IIIILcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/layout/LayoutDataHandler;-><init>()V

    return-void
.end method

.method private calWidgetSpanXY(Lcom/miui/home/launcher/layout/LayoutItemInfo;I)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/layout/ChangeSizeHandler;->getSpanXYThatChangeSize(Lcom/miui/home/launcher/layout/LayoutItemInfo;I)Landroid/util/Pair;

    move-result-object p0

    .line 48
    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget v0, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanX:I

    if-eq p2, v0, :cond_0

    .line 49
    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanX:I

    .line 51
    :cond_0
    iget-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget v0, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanY:I

    if-eq p2, v0, :cond_1

    .line 52
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanY:I

    :cond_1
    return-void
.end method

.method private getSpanXYThatChangeSize(Lcom/miui/home/launcher/layout/LayoutItemInfo;I)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    .line 59
    new-instance p0, Landroid/util/Pair;

    iget p2, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanX:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget p1, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanY:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 61
    :cond_0
    iget-object v0, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_1

    .line 62
    invoke-static {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object p0

    .line 63
    new-instance p1, Landroid/util/Pair;

    iget p2, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 65
    :cond_1
    iget-object p0, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->productId:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 66
    iget p0, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->configSpanX:I

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    iget p0, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanX:I

    .line 67
    :goto_0
    iget v0, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->configSpanY:I

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    iget v0, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanY:I

    :goto_1
    const/4 v1, 0x0

    .line 68
    iget-object p1, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->productId:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/miui/home/launcher/MIUIWidgetUtil;->fullScreenWidth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move p2, p0

    .line 69
    :goto_2
    new-instance p0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 71
    :cond_5
    iget p0, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->categoryId:I

    if-lez p0, :cond_7

    .line 72
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->fullScreenWidth(I)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    iget p2, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanX:I

    .line 73
    :goto_3
    new-instance p0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget p1, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanY:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 75
    :cond_7
    new-instance p0, Landroid/util/Pair;

    iget p2, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanX:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget p1, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanY:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private synthetic lambda$processData$0(IIIILcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/layout/ChangeSizeHandler;->processPerScreen(IIII[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V

    return-void
.end method

.method private processPerScreen(IIII[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_5

    move v2, v0

    :goto_1
    if-ge v2, p3, :cond_4

    .line 28
    aget-object v3, p5, v2

    aget-object v3, v3, v1

    if-nez v3, :cond_0

    goto :goto_2

    .line 32
    :cond_0
    iget v4, v3, Lcom/miui/home/launcher/layout/LayoutItemInfo;->cellX:I

    if-ne v4, v2, :cond_3

    iget v4, v3, Lcom/miui/home/launcher/layout/LayoutItemInfo;->cellY:I

    if-eq v4, v1, :cond_1

    goto :goto_2

    .line 35
    :cond_1
    invoke-direct {p0, v3, p1}, Lcom/miui/home/launcher/layout/ChangeSizeHandler;->calWidgetSpanXY(Lcom/miui/home/launcher/layout/LayoutItemInfo;I)V

    .line 36
    iget v4, v3, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanX:I

    if-le v4, p1, :cond_2

    .line 37
    iput p1, v3, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanX:I

    .line 39
    :cond_2
    iget v4, v3, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanY:I

    if-le v4, p2, :cond_3

    .line 40
    iput p2, v3, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanY:I

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method processData(Ljava/util/Map;Ljava/util/Map;IIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;IIII)V"
        }
    .end annotation

    .line 20
    new-instance p1, Lcom/miui/home/launcher/layout/ChangeSizeHandler$$ExternalSyntheticLambda0;

    move-object v0, p1

    move-object v1, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/layout/ChangeSizeHandler$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/layout/ChangeSizeHandler;IIII)V

    invoke-interface {p2, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
