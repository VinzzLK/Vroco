.class Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;
.super Ljava/lang/Object;
.source "ServiceDeliveryLayoutController.java"

# interfaces
.implements Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver$Callbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeliveryLayoutController"


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final dataFetcher:Lcom/miui/miuiwidget/servicedelivery/model/DataFetcher;

.field private dataSet:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

.field private final deliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

.field private serviceDeliveryReceiver:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;


# direct methods
.method public static synthetic $r8$lambda$-I64TyCTl1XLbvIiyLZgJ09yPzk(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->lambda$updateInternal$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$6cymF9VdUef7nRke0wTaCKVjhew(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->lambda$update$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Pcmr_rXUXxTuTqLB9CA43rZAmQc(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->lambda$updateInternal$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$fIjaK8XadKiFayC2D4TqZgTC5Nk(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;Ljava/util/List;Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;)Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->lambda$convertToWidgetItemList$4(Ljava/util/List;Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;)Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oLY_aYWxsJyx_pG6fUYkMkxKIng(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->lambda$updateInternal$3(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;Lcom/miui/miuiwidget/servicedelivery/model/DataFetcher;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    invoke-direct {v0}, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;-><init>()V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->dataSet:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    .line 49
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->deliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    .line 50
    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->dataFetcher:Lcom/miui/miuiwidget/servicedelivery/model/DataFetcher;

    .line 51
    iput-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private convertToWidgetItemList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->deliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    .line 149
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController$$ExternalSyntheticLambda4;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController$$ExternalSyntheticLambda5;->INSTANCE:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController$$ExternalSyntheticLambda5;

    .line 162
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private createWidgetItem(Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;Ljava/util/List;)Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)",
            "Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;"
        }
    .end annotation

    .line 166
    iget-object p1, p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;->intentCardList:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 167
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 168
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo$IntentCard;

    .line 171
    iget v1, p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo$IntentCard;->implType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 p2, 0x2

    if-eq v1, p2, :cond_1

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unsupported implType "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo$IntentCard;->implType:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "DeliveryLayoutController"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :cond_1
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->deliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object p2, p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo$IntentCard;->mamlImplInfo:Lcom/miui/miuiwidget/servicedelivery/bean/MamlImplInfo;

    invoke-static {p0, p2}, Lcom/miui/miuiwidget/servicedelivery/bean/BeanUtil;->toMamlWidgetItem(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/bean/MamlImplInfo;)Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_2
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->deliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object v0, p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo$IntentCard;->widgetImplInfo:Lcom/miui/miuiwidget/servicedelivery/bean/WidgetImplInfo;

    invoke-static {p0, v0, p2}, Lcom/miui/miuiwidget/servicedelivery/bean/BeanUtil;->toAppWidgetItem(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/bean/WidgetImplInfo;Ljava/util/List;)Lcom/miui/miuiwidget/servicedelivery/model/AppWidgetItem;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 183
    iget-object p0, p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo$IntentCard;->implUniqueCode:Ljava/lang/String;

    iput-object p0, v0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->implUniqueCode:Ljava/lang/String;

    .line 184
    iget-object p0, p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo$IntentCard;->localDarkPicture:Ljava/lang/String;

    iput-object p0, v0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->darkPreviewUrl:Ljava/lang/String;

    .line 185
    iget-object p0, p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo$IntentCard;->localLightPicture:Ljava/lang/String;

    iput-object p0, v0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->lightPreviewUrl:Ljava/lang/String;

    :cond_3
    :goto_1
    return-object v0
.end method

.method private getCardInfo()Ljava/lang/String;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->deliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    if-eqz p0, :cond_0

    .line 270
    invoke-interface {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "no cell info"

    return-object p0
.end method

.method private synthetic lambda$convertToWidgetItemList$4(Ljava/util/List;Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;)Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;
    .locals 3

    .line 151
    invoke-direct {p0, p2, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->createWidgetItem(Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;Ljava/util/List;)Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object p1

    .line 152
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-string v1, "DeliveryLayoutController"

    if-eqz p1, :cond_0

    .line 154
    iget-object v2, p2, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;->instanceId:Ljava/lang/String;

    iput-object v2, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->id:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->intentExtra:Ljava/lang/String;

    .line 156
    iget-boolean v0, p2, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;->isFeedbackEnabled:Z

    iput-boolean v0, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->isFeedbackEnabled:Z

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertToWidgetItemList instanceId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;->instanceId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->getCardInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertToWidgetItemList error "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p1
.end method

.method private synthetic lambda$update$0()V
    .locals 5

    const-string v0, "DeliveryLayoutController"

    .line 62
    :try_start_0
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->getCardInfo()Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->dataFetcher:Lcom/miui/miuiwidget/servicedelivery/model/DataFetcher;

    invoke-interface {v2, v1}, Lcom/miui/miuiwidget/servicedelivery/model/DataFetcher;->fetch(Ljava/lang/String;)Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v2, v1, Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;->intentServiceInfoList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update finish:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;->finishTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;->intentServiceInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->getCardInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v1, :cond_1

    const-string p0, "update finish: serviceDeliveryEntity == null, don\'t update"

    .line 69
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->updateInternal(Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "update error, "

    .line 74
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateInternal$1()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->deliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->dataSet:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->defaultDataSet()Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->onDataSetFetched(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    return-void
.end method

.method private synthetic lambda$updateInternal$2()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->deliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->dataSet:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    invoke-virtual {v0, p0, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->onDataSetFetched(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    return-void
.end method

.method private synthetic lambda$updateInternal$3(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->deliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    invoke-virtual {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->onDataSetFetched(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    return-void
.end method

.method private registerServiceDeliveryReceiver(Landroid/content/Context;)V
    .locals 3

    .line 237
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;

    invoke-direct {v0}, Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;-><init>()V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->serviceDeliveryReceiver:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;

    .line 238
    invoke-virtual {v0, p0}, Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;->setCallbacks(Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver$Callbacks;)V

    .line 239
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.miui.servicedelivery.completeService"

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.servicedelivery.updateDataSet"

    .line 241
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.servicedelivery.dislikeFeedback"

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 244
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->serviceDeliveryReceiver:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;

    const/4 v1, 0x2

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 246
    :cond_0
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->serviceDeliveryReceiver:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method private removeWidgets(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "instanceIds"

    .line 196
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 197
    array-length p2, p1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    array-length p2, p1

    const/4 v0, 0x0

    const-string v1, ""

    :goto_0
    if-ge v0, p2, :cond_1

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeWidgets instanceIdsStr:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DeliveryLayoutController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 207
    invoke-static {p2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 208
    invoke-direct {p0, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->removeWidgets(Ljava/util/Set;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private removeWidgets(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->dataSet:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->dataSet:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    iget-object v1, v1, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->widgetItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    .line 135
    iget-object v3, v2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->id:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->dataSet:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    iput-object v0, v1, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->widgetItemList:Ljava/util/List;

    .line 140
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->deliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    invoke-direct {v0}, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;-><init>()V

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->dataSet:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    invoke-virtual {p1, v0, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->onDataSetFetched(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    goto :goto_1

    .line 143
    :cond_3
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->deliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    invoke-virtual {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->removeWidgets(Ljava/util/Set;)V

    :goto_1
    return-void
.end method

.method private updateInternal(Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;)V
    .locals 6

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInternal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->getCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeliveryLayoutController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "updateInternal:serviceDeliveryEntity is null"

    .line 90
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->deliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController$$ExternalSyntheticLambda2;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->dataSet:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    if-eqz v0, :cond_1

    iget-wide v2, p1, Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;->finishTime:J

    iget-wide v4, v0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->timestamp:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateInternal:dataSet != null || serviceDeliveryEntity.finishTime == dataSet.timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->getCardInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->deliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController$$ExternalSyntheticLambda0;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 101
    :cond_1
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    invoke-direct {v0}, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;-><init>()V

    .line 102
    iget-wide v2, p1, Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;->finishTime:J

    iput-wide v2, v0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->timestamp:J

    .line 104
    iget-object v2, p1, Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;->intentServiceInfoList:Ljava/util/List;

    .line 105
    invoke-static {v2}, Lcom/miui/miuiwidget/servicedelivery/utils/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intentServiceInfoList.size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->getCardInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0, v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->convertToWidgetItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->widgetItemList:Ljava/util/List;

    goto :goto_0

    :cond_2
    const-string v2, "intentServiceInfoList is null: "

    .line 109
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    new-instance v2, Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;

    invoke-direct {v2}, Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;-><init>()V

    .line 113
    iget-object p1, p1, Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;->appSuggest:Lcom/miui/miuiwidget/servicedelivery/bean/AppSuggest;

    if-eqz p1, :cond_3

    .line 115
    iget-object v3, p1, Lcom/miui/miuiwidget/servicedelivery/bean/AppSuggest;->appList:Ljava/util/List;

    iput-object v3, v2, Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;->appList:Ljava/util/List;

    .line 116
    iget-object v3, p1, Lcom/miui/miuiwidget/servicedelivery/bean/AppSuggest;->adMap:Ljava/util/Map;

    iput-object v3, v2, Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;->adMap:Ljava/util/Map;

    .line 117
    iget-object p1, p1, Lcom/miui/miuiwidget/servicedelivery/bean/AppSuggest;->experiments:Ljava/lang/String;

    iput-object p1, v2, Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;->experiments:Ljava/lang/String;

    .line 119
    :cond_3
    iput-object v2, v0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->appItemDataSet:Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataSet.widgetItemList.size "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->widgetItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->getCardInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->dataSet:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    .line 123
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->dataSet:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataSet:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->timestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->widgetItemList:Ljava/util/List;

    if-nez v3, :cond_4

    const-string v3, ""

    goto :goto_1

    .line 126
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->widgetItemList:Ljava/util/List;

    .line 125
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->getCardInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->deliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    new-instance v2, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController$$ExternalSyntheticLambda3;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getDataSet()Lcom/miui/miuiwidget/servicedelivery/model/DataSet;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->dataSet:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    return-object p0
.end method

.method public onAdd()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->serviceDeliveryReceiver:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->deliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->registerServiceDeliveryReceiver(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onCompleteService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->removeWidgets(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onDislikeFeedback(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->removeWidgets(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onRemove()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->serviceDeliveryReceiver:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;

    if-eqz v0, :cond_0

    .line 259
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;->removeCallbacks()V

    .line 260
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->deliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->serviceDeliveryReceiver:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->serviceDeliveryReceiver:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeliveryLayoutController"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onUpdateDataSet(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "deliveryEntity"

    .line 218
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "DeliveryLayoutController"

    if-eqz p2, :cond_0

    const-string p0, "empty data"

    .line 220
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 226
    :cond_0
    :try_start_0
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;

    invoke-virtual {p2, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;

    if-eqz p1, :cond_1

    .line 227
    iget-object p2, p1, Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;->intentServiceInfoList:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 228
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateDataSet:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->getCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "size:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;->intentServiceInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->updateInternal(Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "update dataSet error "

    .line 232
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public update()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->deliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "DeliveryLayoutController"

    const-string v0, "update: isUserUnlocked false can\'t update data!"

    .line 57
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController$$ExternalSyntheticLambda1;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public update(Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->updateInternal(Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;)V

    return-void
.end method
