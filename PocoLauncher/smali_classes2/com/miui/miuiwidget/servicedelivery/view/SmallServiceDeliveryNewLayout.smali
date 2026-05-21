.class public Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout;
.super Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;
.source "SmallServiceDeliveryNewLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmallServiceDeliveryNewLayout"


# instance fields
.field private indicatorDisappearAnimation:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$Sgh-S1Fh_i3jv3JpRVQQQFCrbDI(Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout;->lambda$onLayoutStyleChanged$1(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pbk-e5Ftq5H4fPg6DfjbbSElzaU(Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;-><init>(Landroid/content/Context;Z)V

    .line 18
    new-instance p1, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout$$ExternalSyntheticLambda0;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout;)V

    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout;->indicatorDisappearAnimation:Ljava/lang/Runnable;

    .line 27
    new-instance p1, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryNewUIAdapter;

    invoke-direct {p1}, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryNewUIAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-nez p0, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getIndicator()Landroid/view/View;

    move-result-object p0

    .line 21
    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startIndicatorDisappearAnimationNormal(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onLayoutStyleChanged$1(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V
    .locals 1

    .line 37
    sget-object v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DEFAULT:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne p1, v0, :cond_0

    .line 38
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p3}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->removeAllWidgets()V

    .line 41
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout;->updateViewSize()V

    .line 44
    sget-object p1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DELIVERY:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne p4, p1, :cond_1

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout;->setParentBlur(Z)V

    :cond_1
    return-void
.end method

.method private onLayoutStyleChangedInternal(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V
    .locals 2

    .line 69
    sget-object v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DELIVERY:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    .line 70
    iput-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    .line 71
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout;->indicatorDisappearAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->initializeDeliveryContainer(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 73
    :cond_0
    iput-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    .line 74
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->initializeAppGrid()V

    .line 77
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->updateWhenDataSetChanged(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    .line 79
    sget-object p1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DEFAULT:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne p3, p1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    invoke-static {p1, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startAppGrid3x3AppearAnimation(Ljava/lang/String;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private setOrClearBlur()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    iget-boolean v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->setViewBlur:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutStyle:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    sget-object v1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DELIVERY:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->setOrClearBlur(Z)V

    return-void
.end method


# virtual methods
.method protected needBlur()Z
    .locals 1

    .line 95
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutStyle:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    sget-object v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DELIVERY:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onLayoutStyleChanged(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V
    .locals 7

    .line 32
    iget-object v4, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    .line 33
    iget-object v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    .line 34
    iput-object p4, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutStyle:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    .line 35
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout;->setOrClearBlur()V

    .line 36
    new-instance v6, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout$$ExternalSyntheticLambda1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout$$ExternalSyntheticLambda1;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V

    .line 48
    sget-object v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DEFAULT:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    if-eqz v0, :cond_0

    .line 49
    iget-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {p3}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    invoke-static {p3, v0, v6}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startAppGrid3x3DisappearAnimation(Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 51
    :cond_0
    sget-object v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DELIVERY:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    .line 52
    invoke-virtual {p0, p3}, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout;->setParentBlur(Z)V

    .line 53
    iget-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout;->indicatorDisappearAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 54
    iget-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    .line 55
    invoke-interface {p3}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    .line 56
    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getCarousel()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    .line 57
    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getIndicator()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 54
    invoke-static {p3, v0, v1, v2, v6}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startDeliveryLayoutDisappearAnimation(Ljava/lang/String;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout;->updateViewSize()V

    .line 64
    :goto_0
    invoke-direct {p0, p1, p2, p4}, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryNewLayout;->onLayoutStyleChangedInternal(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V

    return-void
.end method

.method public setParentBlur(Z)V
    .locals 1

    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 121
    instance-of v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/BlurContainer;

    if-eqz v0, :cond_0

    .line 122
    check-cast p0, Lcom/miui/miuiwidget/servicedelivery/view/BlurContainer;

    invoke-interface {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/BlurContainer;->setContainerBlur(Z)V

    :cond_0
    return-void
.end method

.method protected updateViewSize()V
    .locals 5

    .line 103
    invoke-super {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->updateViewSize()V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmallServiceDeliveryLayout:updateViewSize: is delivery : "

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

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmallServiceDeliveryNewLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutStyle:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->getContainerWidth()I

    move-result v0

    .line 108
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->getContainerHeight()I

    move-result v1

    .line 109
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x13

    .line 110
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 111
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->updateViewSize()V

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->updateGridViewSize()V

    return-void
.end method
