.class public Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;
.super Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;
.source "MediumServiceDeliveryLayout.java"


# static fields
.field public static final DEFAULT_COL_COUNT:I = 0x5

.field public static final DEFAULT_ROW_COUNT:I = 0x2

.field public static final DELIVERY_COL_COUNT:I = 0x3

.field public static final DELIVERY_ROW_COUNT:I = 0x3


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$6cA4Yw8jU9rBxJlXT2_RBHul-hE(Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->lambda$onLayoutStyleChanged$0(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JuK35-Qd_StmdQatFxi1ZJwCHRE(Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->updateAppGridSize()V

    return-void
.end method

.method public static synthetic $r8$lambda$eNAUx0YX-EVR_nvLBZdJAItkVU0(Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->lambda$onLayoutStyleChanged$1(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;-><init>(Landroid/content/Context;Z)V

    const-string p1, "MediumServiceDeliveryLayout"

    .line 22
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->TAG:Ljava/lang/String;

    .line 31
    new-instance p1, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;

    invoke-direct {p1}, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    return-void
.end method

.method private initializeAppGrid(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V
    .locals 6

    .line 102
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGridFactory;

    invoke-direct {v0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGridFactory;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    iget-object v4, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->tracker:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    iget-object v5, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->backgroundExecutor:Ljava/util/concurrent/Executor;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGridFactory;->createMedium(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/util/concurrent/Executor;)Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeAppGrid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " row:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->getRowCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "col:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->getColCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " layoutStyle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediumServiceDeliveryLayout"

    .line 104
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 107
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    .line 108
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->updateAppGridSize()V

    return-void
.end method

.method private synthetic lambda$onLayoutStyleChanged$0(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V
    .locals 1

    .line 40
    sget-object v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DEFAULT:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne p1, v0, :cond_0

    .line 41
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p3}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->removeAllWidgets()V

    .line 44
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->updateViewSize()V

    return-void
.end method

.method private synthetic lambda$onLayoutStyleChanged$1(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->onLayoutStyleChangedInternal(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V

    return-void
.end method

.method private onLayoutStyleChangedInternal(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLayoutStyleChangedInternal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediumServiceDeliveryLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {p0, p3}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->initializeAppGrid(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V

    .line 67
    sget-object v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DELIVERY:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne p3, v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->initializeDeliveryContainer()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    .line 73
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->updateWhenDataSetChanged(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    .line 74
    sget-object p1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DEFAULT:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne p3, p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    invoke-static {p1, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startDefaultLayoutAppearAnimation(Ljava/lang/String;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private setLayoutPadding()V
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->getPadding()I

    move-result v0

    .line 121
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->getGridPadding()I

    move-result v1

    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0, v2, v0, v1, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method private updateAppGridSize()V
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutStyle:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    invoke-virtual {v0, v1}, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->getGridWidth(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)I

    move-result v0

    .line 164
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutStyle:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    invoke-virtual {v1, v2}, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->getGridHeight(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)I

    move-result v1

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediumServiceDeliveryLayout:updateViewSize: appGridWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " appGridHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediumServiceDeliveryLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x15

    .line 167
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 168
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutStyle:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    sget-object v1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DEFAULT:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne v0, v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->getGridPadding()I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->getGridItemPaddingH()I

    move-result v0

    .line 173
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->getGridItemPaddingV()I

    move-result v1

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediumServiceDeliveryLayout:updateViewSize: spacingH = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " spacingV = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    invoke-virtual {p0, v0, v1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->updateItemSpacing(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected defaultDataSet()Lcom/miui/miuiwidget/servicedelivery/model/DataSet;
    .locals 2

    .line 127
    new-instance p0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;-><init>()V

    .line 128
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;

    invoke-direct {v0}, Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;-><init>()V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->appItemDataSet:Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->timestamp:J

    .line 130
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->appItemDataSet:Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;

    sget-object v1, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->BUILT_IN_APP_ITEMS:Ljava/util/List;

    iput-object v1, v0, Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;->appList:Ljava/util/List;

    return-object p0
.end method

.method public getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    check-cast p0, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;

    return-object p0
.end method

.method public bridge synthetic getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "MediumServiceDeliveryLayout"

    const-string v1, "onConfigurationChanged"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-super {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "MediumServiceDeliveryLayout:onConfigurationChanged: "

    .line 115
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->updateViewSize()V

    return-void
.end method

.method protected onLayoutStyleChanged(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    .line 37
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    .line 38
    iput-object p4, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutStyle:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    .line 39
    new-instance v2, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p3, v0, v1}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout$$ExternalSyntheticLambda2;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V

    .line 49
    sget-object v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DEFAULT:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    if-eqz v0, :cond_0

    .line 50
    iget-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {p3}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    invoke-static {p3, v0, v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startDefaultLayoutDisappearAnimation(Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 51
    :cond_0
    sget-object v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DELIVERY:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    if-eqz p3, :cond_1

    .line 52
    iget-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    .line 53
    invoke-interface {p3}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getCarousel()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getIndicator()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    .line 52
    invoke-static {p3, v0, v1, v3, v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startDeliveryLayoutDisappearAnimation(Ljava/lang/String;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->updateViewSize()V

    .line 57
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    if-nez p3, :cond_2

    .line 58
    new-instance p3, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout$$ExternalSyntheticLambda1;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 60
    :cond_2
    invoke-direct {p0, p1, p2, p4}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->onLayoutStyleChangedInternal(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V

    :goto_1
    return-void
.end method

.method protected startDeliveryLayoutAppearAnimation()V
    .locals 3

    const-string v0, "MediumServiceDeliveryLayout"

    const-string v1, "startDeliveryLayoutAppearAnimation"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-nez v1, :cond_0

    const-string p0, "startDeliveryLayoutAppearAnimation: deliveryContainer == null"

    .line 83
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    .line 87
    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getCarousel()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    invoke-virtual {v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getIndicator()Landroid/view/View;

    move-result-object v2

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    .line 86
    invoke-static {v0, v1, v2, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startDeliveryLayoutAppearAnimation(Ljava/lang/String;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method protected updateViewSize()V
    .locals 5

    .line 139
    invoke-super {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->updateViewSize()V

    .line 140
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->setLayoutPadding()V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediumServiceDeliveryLayout:updateViewSize: is delivery : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutStyle:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    sget-object v2, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DELIVERY:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " is deliveryContainer not null : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "appGrid is not null : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    .line 144
    invoke-interface {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediumServiceDeliveryLayout"

    .line 142
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutStyle:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz v0, :cond_3

    .line 146
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->getContainerWidth()I

    move-result v0

    .line 147
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->getContainerHeight()I

    move-result v1

    .line 148
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    .line 149
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 150
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 151
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 152
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->getGridPadding()I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0x13

    .line 153
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 154
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->updateViewSize()V

    .line 157
    :cond_3
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout$$ExternalSyntheticLambda0;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/MediumServiceDeliveryLayout;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected updateWhenDataSetChanged(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V
    .locals 0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->updateWhenDataSetChanged(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    .line 93
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    iget-object p1, p2, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->appItemDataSet:Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->onDataSetChanged(Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;Z)V

    return-void
.end method

.method protected updateWhenDataSetNotChange(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->updateWhenDataSetNotChange(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    return-void
.end method
