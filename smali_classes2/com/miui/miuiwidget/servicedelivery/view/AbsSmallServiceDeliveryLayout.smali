.class public abstract Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;
.super Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;
.source "AbsSmallServiceDeliveryLayout.java"


# static fields
.field public static final DEFAULT_ROW_COL_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SmallServiceDeliveryLayout"


# instance fields
.field protected appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected defaultDataSet()Lcom/miui/miuiwidget/servicedelivery/model/DataSet;
    .locals 2

    .line 39
    new-instance p0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;-><init>()V

    .line 40
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;

    invoke-direct {v0}, Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;-><init>()V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->appItemDataSet:Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->timestamp:J

    .line 42
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->appItemDataSet:Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;->appList:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    check-cast p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;

    return-object p0
.end method

.method protected initializeAppGrid()V
    .locals 5

    .line 59
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGridFactory;

    invoke-direct {v0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGridFactory;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    iget-object v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->tracker:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    iget-object v4, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGridFactory;->createSmall(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/util/concurrent/Executor;)Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;->getGridPadding()I

    move-result v2

    .line 62
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeAppGrid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmallServiceDeliveryLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 66
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "SmallServiceDeliveryLayout"

    const-string v1, "onConfigurationChanged"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-super {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 55
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->updateViewSize()V

    return-void
.end method

.method protected updateGridViewSize()V
    .locals 5

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateViewSize: appGrid is not null : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmallServiceDeliveryLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    .line 74
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 75
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;->getGridPadding()I

    move-result v2

    .line 76
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 77
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;->getGridItemPaddingH()I

    move-result v0

    .line 79
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;->getGridItemPaddingV()I

    move-result v2

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediumServiceDeliveryLayout:updateViewSize: spacingH = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " spacingV = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    invoke-virtual {p0, v0, v2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->updateItemSpacing(II)V

    :cond_1
    return-void
.end method

.method protected updateWhenDataSetChanged(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V
    .locals 1

    .line 31
    invoke-super {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->updateWhenDataSetChanged(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    .line 32
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutStyle:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    sget-object v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DELIVERY:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    if-eqz p0, :cond_0

    .line 33
    iget-object p1, p2, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->appItemDataSet:Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->onDataSetChanged(Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;Z)V

    :cond_0
    return-void
.end method
