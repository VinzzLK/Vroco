.class public Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryOldLayout;
.super Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;
.source "SmallServiceDeliveryOldLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmallServiceDeliveryOldLayout"


# direct methods
.method public static synthetic $r8$lambda$GqYOVCpqsyNmbzRPD0-pFNOq3Go(Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryOldLayout;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryOldLayout;->lambda$onLayoutStyleChanged$0(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;-><init>(Landroid/content/Context;Z)V

    .line 21
    new-instance p1, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryOldUIAdapter;

    invoke-direct {p1}, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryOldUIAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    return-void
.end method

.method private synthetic lambda$onLayoutStyleChanged$0(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DEFAULT:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne p1, v0, :cond_0

    .line 31
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p3}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->removeAllWidgets()V

    .line 34
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 36
    :goto_0
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryOldLayout;->updateViewSize()V

    return-void
.end method

.method private onLayoutStyleChangedInternal(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V
    .locals 2

    .line 57
    sget-object v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DELIVERY:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    .line 58
    iput-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    .line 59
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->initializeDeliveryContainer()V

    goto :goto_0

    .line 61
    :cond_0
    iput-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    .line 63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "SmallServiceDeliveryOldLayout"

    if-eqz v0, :cond_1

    const-string v0, "onLayoutStyleChanged: isUserUnlocked initializeWidgetContainer"

    .line 64
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->initializeAppGrid()V

    :cond_1
    const-string v0, "onLayoutStyleChanged: isUserUnlocked false wait unlocked broadcast"

    .line 68
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->updateWhenDataSetChanged(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    .line 73
    sget-object p1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DEFAULT:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne p3, p1, :cond_2

    .line 74
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    invoke-static {p1, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startAppGrid3x3AppearAnimation(Ljava/lang/String;Landroid/view/View;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onLayoutStyleChanged(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    .line 27
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->appGrid:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    .line 28
    iput-object p4, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutStyle:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    .line 29
    new-instance v2, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryOldLayout$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3, v1, v0}, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryOldLayout$$ExternalSyntheticLambda0;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryOldLayout;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V

    .line 38
    sget-object v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DEFAULT:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne p3, v0, :cond_0

    if-eqz v1, :cond_0

    .line 39
    iget-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {p3}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v1, v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startAppGrid3x3DisappearAnimation(Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 41
    :cond_0
    sget-object v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DELIVERY:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz p3, :cond_1

    .line 42
    iget-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    .line 43
    invoke-interface {p3}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    .line 44
    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getCarousel()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    .line 45
    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getIndicator()Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    .line 42
    invoke-static {p3, v0, v1, v3, v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startDeliveryLayoutDisappearAnimation(Ljava/lang/String;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryOldLayout;->updateViewSize()V

    .line 52
    :goto_0
    invoke-direct {p0, p1, p2, p4}, Lcom/miui/miuiwidget/servicedelivery/view/SmallServiceDeliveryOldLayout;->onLayoutStyleChangedInternal(Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)V

    return-void
.end method

.method protected updateViewSize()V
    .locals 5

    .line 84
    invoke-super {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->updateViewSize()V

    .line 86
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

    const-string v1, "SmallServiceDeliveryOldLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutStyle:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->getContainerWidth()I

    move-result v0

    .line 89
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->getContainerHeight()I

    move-result v1

    .line 90
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x13

    .line 91
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->getUiAdapter()Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->getPadding()I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 93
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->updateViewSize()V

    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/AbsSmallServiceDeliveryLayout;->updateGridViewSize()V

    return-void
.end method
