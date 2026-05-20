.class public final Lcom/miui/miuiwidget/servicedelivery/bean/BeanUtil;
.super Ljava/lang/Object;
.source "BeanUtil.java"


# direct methods
.method public static synthetic $r8$lambda$7mNt2ax5PevF4UO7mHYy2zh_R3E(Lcom/miui/miuiwidget/servicedelivery/bean/WidgetImplInfo;Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/bean/BeanUtil;->lambda$toAppWidgetItem$0(Lcom/miui/miuiwidget/servicedelivery/bean/WidgetImplInfo;Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$toAppWidgetItem$0(Lcom/miui/miuiwidget/servicedelivery/bean/WidgetImplInfo;Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 0

    .line 21
    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/bean/WidgetImplInfo;->widgetProviderName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static toAppWidgetItem(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/bean/WidgetImplInfo;Ljava/util/List;)Lcom/miui/miuiwidget/servicedelivery/model/AppWidgetItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/miuiwidget/servicedelivery/bean/WidgetImplInfo;",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)",
            "Lcom/miui/miuiwidget/servicedelivery/model/AppWidgetItem;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 20
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/bean/BeanUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/miui/miuiwidget/servicedelivery/bean/BeanUtil$$ExternalSyntheticLambda0;-><init>(Lcom/miui/miuiwidget/servicedelivery/bean/WidgetImplInfo;)V

    .line 21
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez p1, :cond_1

    return-object v0

    .line 25
    :cond_1
    new-instance p2, Lcom/miui/miuiwidget/servicedelivery/model/AppWidgetItem;

    invoke-direct {p2}, Lcom/miui/miuiwidget/servicedelivery/model/AppWidgetItem;-><init>()V

    if-eqz p0, :cond_2

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->title:Ljava/lang/String;

    .line 29
    :cond_2
    iput-object p1, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppWidgetItem;->appWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object p2
.end method

.method public static toMamlWidgetItem(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/bean/MamlImplInfo;)Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 35
    :cond_0
    iget-object v1, p1, Lcom/miui/miuiwidget/servicedelivery/bean/MamlImplInfo;->mamlSize:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 37
    iget-object v2, p1, Lcom/miui/miuiwidget/servicedelivery/bean/MamlImplInfo;->mamlSize:Ljava/lang/String;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    .line 39
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 41
    :cond_2
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;

    invoke-direct {v0}, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;-><init>()V

    .line 48
    iget-object v2, p1, Lcom/miui/miuiwidget/servicedelivery/bean/MamlImplInfo;->mamlTitle:Ljava/lang/String;

    iput-object v2, v0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->title:Ljava/lang/String;

    .line 49
    iget-object v5, p1, Lcom/miui/miuiwidget/servicedelivery/bean/MamlImplInfo;->productId:Ljava/lang/String;

    iput-object v5, v0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->productId:Ljava/lang/String;

    .line 50
    iget-object v2, p1, Lcom/miui/miuiwidget/servicedelivery/bean/MamlImplInfo;->mamlDownloadUrl:Ljava/lang/String;

    iput-object v2, v0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->downloadUrl:Ljava/lang/String;

    .line 52
    iget v8, p1, Lcom/miui/miuiwidget/servicedelivery/bean/MamlImplInfo;->mamlVersion:I

    iput v8, v0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->versionCode:I

    .line 53
    iget p1, p1, Lcom/miui/miuiwidget/servicedelivery/bean/MamlImplInfo;->mtzSizeInKb:I

    iput p1, v0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->fileSizeKb:I

    aget p1, v1, v3

    .line 54
    iput p1, v0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->spanX:I

    const/4 p1, 0x1

    aget v2, v1, p1

    .line 55
    iput v2, v0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->spanY:I

    aget v6, v1, v3

    aget v7, v1, p1

    const/4 v10, 0x1

    const-string v9, ""

    move-object v4, p0

    .line 57
    invoke-static/range {v4 .. v10}, Lcom/miui/miuiwidget/servicedelivery/utils/MamlUtil;->findLocalMamlInfo(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    .line 67
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 68
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/widget/edit/MamlWidget;

    .line 69
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/MamlWidget;->getResPath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->resPath:Ljava/lang/String;

    :cond_3
    return-object v0
.end method
