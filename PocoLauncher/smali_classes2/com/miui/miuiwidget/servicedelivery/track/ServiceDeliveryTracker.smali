.class public Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;
.super Ljava/lang/Object;
.source "ServiceDeliveryTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceDeliveryTracker"


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final context:Landroid/content/Context;

.field private final host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

.field private style:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

.field private final tracker:Lcom/miui/miuiwidget/track/MiuiWidgetTracker;


# direct methods
.method public static synthetic $r8$lambda$F1wXrysRUFluKPHjymuYJGyx4zU(Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->lambda$trackWidgetExposure$3(Ljava/lang/String;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q5fjsL3RVBGCiVjzLLEhmgJExDQ(Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->lambda$trackExposure$0(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VAhjCk1phCPeX_Y3dir98zdCRk8(Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->lambda$trackAppItemClick$1(Lcom/miui/miuiwidget/servicedelivery/model/AppItem;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$cEcy8A3maBQhtARRgf84VE8Ty4k(Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->lambda$trackWidgetSwitch$4(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$p_MMSHeNaI6lRkLu6mxHRyPzlJw(Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->lambda$trackWidgetClick$2(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qaDlDI4muuBvoeNLuTk8CKykmys(Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->lambda$trackFeedbackMenuShow$5(Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/track/MiuiWidgetTracker;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    .line 40
    iput-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->tracker:Lcom/miui/miuiwidget/track/MiuiWidgetTracker;

    .line 41
    iput-object p4, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->style:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    .line 42
    iput-object p5, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static getComponentStatus(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)Ljava/lang/String;
    .locals 2

    .line 307
    invoke-interface {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->spanX()I

    move-result p0

    const-string v0, "\u7eaf\u5e94\u7528\u5efa\u8bae"

    const/4 v1, 0x4

    if-lt p0, v1, :cond_1

    .line 308
    sget-object p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DEFAULT:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\u670d\u52a1\u5361\u7247\u5e94\u7528\u5efa\u8bae"

    goto :goto_0

    .line 310
    :cond_1
    sget-object p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DEFAULT:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "\u7eaf\u670d\u52a1\u5361\u7247"

    :goto_0
    return-object v0
.end method

.method private static getRecomType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 270
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "selected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "recommend"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "defaultSystem"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "op"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object p0

    :pswitch_0
    const-string p0, "\u9ed8\u8ba4\u63a8\u8350"

    return-object p0

    :pswitch_1
    const-string p0, "\u7528\u6237\u7f16\u8f91"

    return-object p0

    :pswitch_2
    const-string p0, "\u7b97\u6cd5\u63a8\u8350"

    return-object p0

    :pswitch_3
    const-string p0, "\u515c\u5e95\u63a8\u8350"

    return-object p0

    :pswitch_4
    const-string p0, "\u8fd0\u8425\u914d\u7f6e"

    return-object p0

    :pswitch_5
    const-string p0, "\u5e7f\u544a"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc23 -> :sswitch_5
        0xde1 -> :sswitch_4
        0x3a51bfd0 -> :sswitch_3
        0x3af610bc -> :sswitch_2
        0x4705f29b -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getStringSafely(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    if-nez p0, :cond_0

    const-string p0, "ServiceDeliveryTracker"

    const-string p1, "getStringSafely:jsonObject == null"

    .line 290
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 293
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getTargetExposeType(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "\u4f4e\u4f18\u6001"

    return-object p0

    :cond_1
    const-string p0, "\u9ad8\u4f18\u6001"

    return-object p0

    :cond_2
    const-string p0, "\u7f6e\u9876\u6001"

    return-object p0
.end method

.method private static jsonObjectToString(Lcom/google/gson/JsonObject;)Ljava/lang/String;
    .locals 1

    .line 320
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$trackAppItemClick$1(Lcom/miui/miuiwidget/servicedelivery/model/AppItem;IZ)V
    .locals 3

    .line 139
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getExtraTrackParams()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 140
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->context:Landroid/content/Context;

    invoke-static {v1, v0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putAppItemParams(Landroid/content/Context;Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;I)V

    .line 141
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->style:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    invoke-static {v0, p2, v1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putStatus(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V

    .line 142
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-static {v0, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putWidgetProviderName(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;)V

    .line 143
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-static {v0, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putScreenLocation(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;)V

    .line 144
    invoke-static {v0}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putDefaultSource(Ljava/util/Map;)V

    const-string p2, "self_component_click_type"

    const-string v1, "\u5e94\u7528\u5efa\u8bae"

    .line 145
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getTrackTips()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;->appItemClickTip:Ljava/lang/String;

    const-string v1, "tip"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->tracker:Lcom/miui/miuiwidget/track/MiuiWidgetTracker;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->context:Landroid/content/Context;

    const-string v2, "click"

    invoke-interface {p2, v1, v2, v0}, Lcom/miui/miuiwidget/track/MiuiWidgetTracker;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 148
    iget-object p2, p1, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->category:Ljava/lang/String;

    const-string v0, "ad"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 149
    invoke-direct {p0, p1, p3}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->trackAppItemAdClick(Lcom/miui/miuiwidget/servicedelivery/model/AppItem;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$trackExposure$0(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 6

    .line 52
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getExtraTrackParams()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 53
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 54
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->style:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    invoke-static {v0, p1, v1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putStatus(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V

    .line 55
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-static {v0, p1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putWidgetProviderName(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;)V

    .line 56
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-static {v0, p1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putScreenLocation(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;)V

    .line 57
    invoke-static {v0}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putDefaultSource(Ljava/util/Map;)V

    .line 58
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 60
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 61
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 62
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;

    if-nez v4, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    iget-object v5, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->context:Landroid/content/Context;

    invoke-static {v5, v3, v4, v2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putAppItemParams(Landroid/content/Context;Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;I)V

    .line 65
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "ad"

    .line 66
    iget-object v5, v4, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->category:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    invoke-direct {p0, v4}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->trackAppItemAdExposure(Lcom/miui/miuiwidget/servicedelivery/model/AppItem;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p2, "self_component_item_array"

    .line 70
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move p2, v1

    .line 74
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_4

    .line 75
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 76
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    iget-object v3, v3, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->intentExtra:Ljava/lang/String;

    invoke-static {v2, v3, p2, v1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putAiParams(Ljava/util/Map;Ljava/lang/String;IZ)V

    .line 77
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    const-string p2, "self_component_service_array"

    .line 79
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string p1, "tip"

    .line 81
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getTrackTips()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;->exposureTip:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->tracker:Lcom/miui/miuiwidget/track/MiuiWidgetTracker;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->context:Landroid/content/Context;

    const-string p2, "expose"

    invoke-interface {p1, p0, p2, v0}, Lcom/miui/miuiwidget/track/MiuiWidgetTracker;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string p1, "ServiceDeliveryTracker"

    const-string p2, "trackExposure"

    .line 84
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method private synthetic lambda$trackFeedbackMenuShow$5(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 2

    .line 205
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getExtraTrackParams()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 206
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 207
    invoke-static {v0, p2, p3, p1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putAiParams(Ljava/util/Map;Ljava/lang/String;IZ)V

    .line 208
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->style:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    invoke-static {v0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putStatus(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V

    .line 209
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-static {v0, p1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putWidgetProviderName(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;)V

    .line 210
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-static {v0, p1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putScreenLocation(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;)V

    .line 211
    invoke-static {v0}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putDefaultSource(Ljava/util/Map;)V

    .line 212
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getTrackTips()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;->feedbackMenuShowTip:Ljava/lang/String;

    const-string p2, "tip"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->tracker:Lcom/miui/miuiwidget/track/MiuiWidgetTracker;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->context:Landroid/content/Context;

    const-string p2, "press"

    invoke-interface {p1, p0, p2, v0}, Lcom/miui/miuiwidget/track/MiuiWidgetTracker;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$trackWidgetClick$2(Ljava/lang/String;I)V
    .locals 3

    .line 156
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getExtraTrackParams()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v1, 0x1

    .line 157
    invoke-static {v0, p1, p2, v1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putAiParams(Ljava/util/Map;Ljava/lang/String;IZ)V

    .line 158
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->style:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    invoke-static {v0, p2, v1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putStatus(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V

    .line 159
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-static {v0, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putWidgetProviderName(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;)V

    .line 160
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-static {v0, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putScreenLocation(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;)V

    .line 161
    invoke-static {v0}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putDefaultSource(Ljava/util/Map;)V

    const-string p2, "self_component_click_type"

    const-string v1, "\u670d\u52a1\u5361\u7247"

    .line 162
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getTrackTips()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;->widgetClickTip:Ljava/lang/String;

    const-string v1, "tip"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->tracker:Lcom/miui/miuiwidget/track/MiuiWidgetTracker;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->context:Landroid/content/Context;

    const-string v2, "click"

    invoke-interface {p2, v1, v2, v0}, Lcom/miui/miuiwidget/track/MiuiWidgetTracker;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 166
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/utils/MiAIMessenger;->notifyClickEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$trackWidgetExposure$3(Ljava/lang/String;IJ)V
    .locals 3

    .line 172
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getExtraTrackParams()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v1, 0x1

    .line 173
    invoke-static {v0, p1, p2, v1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putAiParams(Ljava/util/Map;Ljava/lang/String;IZ)V

    .line 174
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->style:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    invoke-static {v0, p2, v1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putStatus(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V

    .line 175
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-static {v0, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putWidgetProviderName(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;)V

    .line 176
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-static {v0, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putScreenLocation(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;)V

    .line 177
    invoke-static {v0}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putDefaultSource(Ljava/util/Map;)V

    .line 178
    invoke-virtual {p0, v0, p3, p4}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putExposeDuration(Ljava/util/Map;J)V

    .line 179
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getTrackTips()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;->widgetExposureTip:Ljava/lang/String;

    const-string v1, "tip"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->tracker:Lcom/miui/miuiwidget/track/MiuiWidgetTracker;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->context:Landroid/content/Context;

    const-string v2, "expose"

    invoke-interface {p2, v1, v2, v0}, Lcom/miui/miuiwidget/track/MiuiWidgetTracker;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 182
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->context:Landroid/content/Context;

    invoke-static {p0, p1, p3, p4}, Lcom/miui/miuiwidget/servicedelivery/utils/MiAIMessenger;->notifyExposeEvent(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private synthetic lambda$trackWidgetSwitch$4(Ljava/lang/String;I)V
    .locals 2

    .line 192
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getExtraTrackParams()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v1, 0x1

    .line 193
    invoke-static {v0, p1, p2, v1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putAiParams(Ljava/util/Map;Ljava/lang/String;IZ)V

    .line 194
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->style:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    invoke-static {v0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putStatus(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V

    .line 195
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-static {v0, p1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putWidgetProviderName(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;)V

    .line 196
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-static {v0, p1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putScreenLocation(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;)V

    .line 197
    invoke-static {v0}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putDefaultSource(Ljava/util/Map;)V

    .line 198
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->host:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getTrackTips()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;->widgetSwitchTip:Ljava/lang/String;

    const-string p2, "tip"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->tracker:Lcom/miui/miuiwidget/track/MiuiWidgetTracker;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->context:Landroid/content/Context;

    const-string p2, "click"

    invoke-interface {p1, p0, p2, v0}, Lcom/miui/miuiwidget/track/MiuiWidgetTracker;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static putAiParams(Ljava/util/Map;Ljava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 218
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;

    .line 219
    invoke-static {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putBasicAiParams(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;I)V

    if-eqz p3, :cond_0

    .line 221
    invoke-static {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->putExtraAiParams(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;)V

    :cond_0
    return-void
.end method

.method private static putAppItemParams(Landroid/content/Context;Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/miui/miuiwidget/servicedelivery/model/AppItem;",
            "I)V"
        }
    .end annotation

    add-int/lit8 p3, p3, 0x1

    .line 251
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "self_component_item_location"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object p3, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    const-string v0, "app_package_name"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object p3, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/miui/miuiwidget/servicedelivery/utils/PackageUtils;->checkInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string v0, "\u5df2\u5b89\u88c5"

    goto :goto_0

    :cond_0
    const-string v0, "\u672a\u5b89\u88c5"

    :goto_0
    const-string v1, "app_package_install_status"

    .line 254
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 255
    iget-object p3, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/miui/miuiwidget/servicedelivery/utils/PackageUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->title:Ljava/lang/String;

    :goto_1
    const-string p3, "app_display_name"

    .line 256
    invoke-interface {p1, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object p0, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->category:Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->getRecomType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "recom_type"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static putBasicAiParams(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;",
            "I)V"
        }
    .end annotation

    .line 226
    iget-object v0, p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;->intentId:Ljava/lang/String;

    const-string v1, "self_component_intentId"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;->extraInfo:Lcom/google/gson/JsonObject;

    const-string v1, "topicName"

    .line 228
    invoke-static {v0, v1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->getStringSafely(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "\\."

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    const-string v1, "self_component_topic_subcategory"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_0
    iget-object v0, p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;->intentionProperty:Lcom/google/gson/JsonObject;

    add-int/2addr p2, v2

    .line 233
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "self_component_service_offset"

    invoke-interface {p0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "subCategory"

    .line 234
    invoke-static {v0, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->getStringSafely(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "self_component_service_subCategory"

    invoke-interface {p0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "name"

    .line 235
    invoke-static {v0, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->getStringSafely(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "self_component_service_name"

    invoke-interface {p0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "category"

    .line 236
    invoke-static {v0, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->getStringSafely(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "self_component_service_category"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object p2, p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;->ranking:Lcom/google/gson/JsonObject;

    invoke-static {p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->jsonObjectToString(Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "self_component_service_ranking"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object p1, p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;->intentCardList:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo$IntentCard;

    iget p1, p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo$IntentCard;->targetExposeType:I

    invoke-static {p1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->getTargetExposeType(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "self_component_targetExposeType"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "self_design_new"

    const-string p2, ""

    .line 239
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static putDefaultSource(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "component_default_source"

    const-string v1, "\u975e\u9ed8\u8ba4"

    .line 316
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static putExtraAiParams(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;",
            ")V"
        }
    .end annotation

    .line 243
    iget-object p1, p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;->extraInfo:Lcom/google/gson/JsonObject;

    const-string v0, "expId"

    .line 244
    invoke-static {p1, v0}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->getStringSafely(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "self_component_service_expId"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "traceId"

    .line 245
    invoke-static {p1, v0}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->getStringSafely(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "self_component_service_traceId"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "topicName"

    .line 246
    invoke-static {p1, v0}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->getStringSafely(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "self_component_service_topicName"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "domain"

    .line 247
    invoke-static {p1, v0}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->getStringSafely(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "self_component_service_domain"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static putScreenLocation(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;",
            ")V"
        }
    .end annotation

    .line 324
    invoke-interface {p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->screenIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "screen_location"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static putStatus(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;",
            "Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;",
            ")V"
        }
    .end annotation

    .line 302
    invoke-static {p1, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->getComponentStatus(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "self_component_staus"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static putWidgetProviderName(Ljava/util/Map;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;",
            ")V"
        }
    .end annotation

    .line 298
    invoke-interface {p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->spanX()I

    move-result p1

    invoke-static {p1}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUtil;->getWidgetProviderName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "widget_provider_name"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private trackAppItemAdClick(Lcom/miui/miuiwidget/servicedelivery/model/AppItem;Z)V
    .locals 6

    .line 102
    iget-object v0, p1, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->actionType:Ljava/lang/String;

    const-string v1, "deeplink"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 103
    new-instance v1, Lcom/miui/miuiwidget/track/AdvertParams;

    invoke-direct {v1}, Lcom/miui/miuiwidget/track/AdvertParams;-><init>()V

    .line 107
    iget-object p1, p1, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->adInfo:Lcom/miui/miuiwidget/servicedelivery/model/AppItem$AdInfo;

    const-string v2, ""

    if-eqz p1, :cond_1

    .line 108
    iget-object v3, p1, Lcom/miui/miuiwidget/servicedelivery/model/AppItem$AdInfo;->ex:Ljava/lang/String;

    .line 109
    iget-object v4, p1, Lcom/miui/miuiwidget/servicedelivery/model/AppItem$AdInfo;->clickMonitorUrls:Ljava/util/List;

    .line 110
    iget-object p1, p1, Lcom/miui/miuiwidget/servicedelivery/model/AppItem$AdInfo;->parameters:Ljava/util/Map;

    if-eqz p1, :cond_0

    const-string v5, "trackingStrategy"

    .line 111
    invoke-interface {p1, v5, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    :cond_0
    move-object p1, v2

    move-object v2, v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move-object p1, v2

    .line 114
    :goto_0
    iput-object v2, v1, Lcom/miui/miuiwidget/track/AdvertParams;->ex:Ljava/lang/String;

    .line 115
    iput-object v4, v1, Lcom/miui/miuiwidget/track/AdvertParams;->monitorUrls:Ljava/util/List;

    const-string v3, "CLICK"

    .line 116
    iput-object v3, v1, Lcom/miui/miuiwidget/track/AdvertParams;->analyticsEvent:Ljava/lang/String;

    const-string v3, "click"

    .line 117
    iput-object v3, v1, Lcom/miui/miuiwidget/track/AdvertParams;->oneTrackEvent:Ljava/lang/String;

    .line 118
    iput-object p1, v1, Lcom/miui/miuiwidget/track/AdvertParams;->trackingStrategy:Ljava/lang/String;

    .line 119
    iget-object v3, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->tracker:Lcom/miui/miuiwidget/track/MiuiWidgetTracker;

    iget-object v4, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->context:Landroid/content/Context;

    invoke-interface {v3, v4, v1}, Lcom/miui/miuiwidget/track/MiuiWidgetTracker;->trackAd(Landroid/content/Context;Lcom/miui/miuiwidget/track/AdvertParams;)V

    .line 121
    new-instance v1, Lcom/miui/miuiwidget/track/AdvertParams;

    invoke-direct {v1}, Lcom/miui/miuiwidget/track/AdvertParams;-><init>()V

    .line 122
    iput-object v2, v1, Lcom/miui/miuiwidget/track/AdvertParams;->ex:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v3, "APP_LAUNCH_START_DEEPLINK"

    goto :goto_1

    :cond_2
    const-string v3, "APP_LAUNCH_START_PACKAGENAME"

    .line 123
    :goto_1
    iput-object v3, v1, Lcom/miui/miuiwidget/track/AdvertParams;->analyticsEvent:Ljava/lang/String;

    .line 124
    iput-object v3, v1, Lcom/miui/miuiwidget/track/AdvertParams;->oneTrackEvent:Ljava/lang/String;

    .line 125
    iput-object p1, v1, Lcom/miui/miuiwidget/track/AdvertParams;->trackingStrategy:Ljava/lang/String;

    .line 126
    iget-object v3, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->tracker:Lcom/miui/miuiwidget/track/MiuiWidgetTracker;

    iget-object v4, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->context:Landroid/content/Context;

    invoke-interface {v3, v4, v1}, Lcom/miui/miuiwidget/track/MiuiWidgetTracker;->trackAd(Landroid/content/Context;Lcom/miui/miuiwidget/track/AdvertParams;)V

    if-eqz p2, :cond_4

    .line 128
    new-instance p2, Lcom/miui/miuiwidget/track/AdvertParams;

    invoke-direct {p2}, Lcom/miui/miuiwidget/track/AdvertParams;-><init>()V

    .line 129
    iput-object v2, p2, Lcom/miui/miuiwidget/track/AdvertParams;->ex:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "APP_LAUNCH_SUCCESS_DEEPLINK"

    goto :goto_2

    :cond_3
    const-string v0, "APP_LAUNCH_SUCCESS_PACKAGENAME"

    .line 130
    :goto_2
    iput-object v0, p2, Lcom/miui/miuiwidget/track/AdvertParams;->analyticsEvent:Ljava/lang/String;

    .line 131
    iput-object v0, p2, Lcom/miui/miuiwidget/track/AdvertParams;->oneTrackEvent:Ljava/lang/String;

    .line 132
    iput-object p1, p2, Lcom/miui/miuiwidget/track/AdvertParams;->trackingStrategy:Ljava/lang/String;

    .line 133
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->tracker:Lcom/miui/miuiwidget/track/MiuiWidgetTracker;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->context:Landroid/content/Context;

    invoke-interface {p1, p0, p2}, Lcom/miui/miuiwidget/track/MiuiWidgetTracker;->trackAd(Landroid/content/Context;Lcom/miui/miuiwidget/track/AdvertParams;)V

    :cond_4
    return-void
.end method

.method private trackAppItemAdExposure(Lcom/miui/miuiwidget/servicedelivery/model/AppItem;)V
    .locals 4

    .line 90
    new-instance v0, Lcom/miui/miuiwidget/track/AdvertParams;

    invoke-direct {v0}, Lcom/miui/miuiwidget/track/AdvertParams;-><init>()V

    .line 91
    iget-object v1, p1, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->adInfo:Lcom/miui/miuiwidget/servicedelivery/model/AppItem$AdInfo;

    iget-object v2, v1, Lcom/miui/miuiwidget/servicedelivery/model/AppItem$AdInfo;->ex:Ljava/lang/String;

    iput-object v2, v0, Lcom/miui/miuiwidget/track/AdvertParams;->ex:Ljava/lang/String;

    const-string v2, "VIEW"

    .line 92
    iput-object v2, v0, Lcom/miui/miuiwidget/track/AdvertParams;->analyticsEvent:Ljava/lang/String;

    const-string v2, "view"

    .line 93
    iput-object v2, v0, Lcom/miui/miuiwidget/track/AdvertParams;->oneTrackEvent:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, v1, Lcom/miui/miuiwidget/servicedelivery/model/AppItem$AdInfo;->parameters:Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v2, "trackingStrategy"

    const-string v3, ""

    .line 95
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/miuiwidget/track/AdvertParams;->trackingStrategy:Ljava/lang/String;

    .line 97
    :cond_0
    iget-object p1, p1, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->adInfo:Lcom/miui/miuiwidget/servicedelivery/model/AppItem$AdInfo;

    iget-object p1, p1, Lcom/miui/miuiwidget/servicedelivery/model/AppItem$AdInfo;->viewMonitorUrls:Ljava/util/List;

    iput-object p1, v0, Lcom/miui/miuiwidget/track/AdvertParams;->monitorUrls:Ljava/util/List;

    .line 98
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->tracker:Lcom/miui/miuiwidget/track/MiuiWidgetTracker;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->context:Landroid/content/Context;

    invoke-interface {p1, p0, v0}, Lcom/miui/miuiwidget/track/MiuiWidgetTracker;->trackAd(Landroid/content/Context;Lcom/miui/miuiwidget/track/AdvertParams;)V

    return-void
.end method


# virtual methods
.method public onLayoutStyleChanged(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->style:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    return-void
.end method

.method public putExposeDuration(Ljava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 187
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p2, "expose_duration"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public trackAppItemClick(Lcom/miui/miuiwidget/servicedelivery/model/AppItem;IZ)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda0;-><init>(Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public trackExposure(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/AppItem;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda5;-><init>(Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public trackFeedbackMenuShow(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda4;-><init>(Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public trackWidgetClick(Ljava/lang/String;I)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda2;-><init>(Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public trackWidgetExposure(Ljava/lang/String;IJ)V
    .locals 8

    .line 171
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda3;-><init>(Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/lang/String;IJ)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public trackWidgetSwitch(Ljava/lang/String;I)V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda1;-><init>(Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
