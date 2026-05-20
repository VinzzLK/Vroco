.class Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;
.super Landroid/widget/FrameLayout;
.source "ServiceDeliveryContainer.java"

# interfaces
.implements Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnSelectedChildChangedListener;
.implements Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$FeedbackMenuClickListener;
.implements Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector$OnClickDetectListener;
.implements Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnChildRemovedListener;
.implements Lcom/miui/miuiwidget/servicedelivery/view/ViewSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceDeliveryContainer"


# instance fields
.field private backgroundExecutor:Ljava/util/concurrent/Executor;

.field private carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

.field private final clickDetector:Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;

.field private coolExecutor:Ljava/util/concurrent/Executor;

.field private indicator:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;

.field private indicatorDisappearAnimation:Ljava/lang/Runnable;

.field private indicatorLayout:Landroid/widget/LinearLayout;

.field private isFeedbackEnabledForCurrentCard:Z

.field private lastData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

.field private final mLock:Ljava/lang/Object;

.field private final pendingViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPosition:I

.field private serviceDeliveryAccessibilityDesc:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;

.field private tracker:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

.field private uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

.field private widgetController:Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;


# direct methods
.method public static synthetic $r8$lambda$1wlsibYz0N0CVeaNSVYTQ5MNgyI(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->lambda$onDataSetChangedWhenCarouselWithoutChildren$8(ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BydqshjYmg9tW6az3NFvTL87fjU(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->removeFromPendingSet(Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FHGORO9L-KsXfXNiyA5ApkVmgH0(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->lambda$onInvisible$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$QaGvF_BE_yuPxASa3rn7b0yMbZI(Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->lambda$onDataSetChangedWhenCarouselWithChildren$4(Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WIlmzxHFh00INWa0brXHCxEnlcw(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->lambda$dispatchTouchEvent$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZU1D2YN34CDfCcO8JNJ0f6HRkxc(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;Ljava/util/Map;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->lambda$onDataSetChangedWhenCarouselWithChildren$6(Ljava/util/Map;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$_rF1LQN8qcOdesReeuXSenafbUI(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->lambda$removeWidgets$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ao-3SQX0YhTCu-__6RtIX10f6RE(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->lambda$onDataSetChangedWhenCarouselWithChildren$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fjWn0mqVpzL4ZPNjKvpd32KyhEY(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;Ljava/util/Set;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->lambda$onDataSetChangedWhenCarouselWithChildren$7(Ljava/util/Set;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$hqlbXZhvDqkcogIQotFdAHplrUY(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->lambda$onDataSetChangedWhenCarouselWithoutChildren$9(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x6_7oAO1uMH-a87CeZAc8uf2cOk(Ljava/lang/String;)Ljava/util/Queue;
    .locals 0

    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->lambda$onDataSetChangedWhenCarouselWithChildren$3(Ljava/lang/String;)Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->isFeedbackEnabledForCurrentCard:Z

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->mLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->pendingViews:Ljava/util/HashSet;

    .line 90
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;

    invoke-direct {v0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->clickDetector:Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;

    .line 91
    invoke-virtual {v0, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->setDetectListener(Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector$OnClickDetectListener;)V

    const/4 p1, -0x1

    .line 92
    iput p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Landroid/view/View;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->createWidgetView(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->notifyWidgetVisible(I)V

    return-void
.end method

.method private addToPendingSet(Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;)V
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->hostType()I

    move-result v0

    if-nez v0, :cond_0

    .line 711
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->pendingViews:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private buildWidgetContain(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;Landroid/view/View;)Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;
    .locals 4

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataSetChangedWhenCarouselWithoutChildren buildWidgetContain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->implUniqueCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceDeliveryContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    invoke-direct {v0, v2, v3}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;-><init>(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;)V

    .line 660
    new-instance v2, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 662
    invoke-static {p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getDrawingCache(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;->setPlaceHolder(Landroid/graphics/Bitmap;)V

    .line 668
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "carousel widget implUniqueCode:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->implUniqueCode:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getCardInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance p2, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    .line 670
    invoke-interface {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->widgetId()I

    move-result p0

    iget-object v1, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->intentExtra:Ljava/lang/String;

    invoke-direct {p2, p0, v1, v3}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-virtual {v0, v2, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->setWidgetView(Landroid/view/View;Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;)V

    return-object v0
.end method

.method private checkSelectViewVaild(Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 644
    :cond_0
    invoke-virtual {p1}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetView()Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {p1}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetView()Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 646
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScaleY()F

    move-result p1

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private createWidgetView(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Landroid/view/View;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->widgetController:Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;

    invoke-virtual {v0, p1}, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;->createWidgetView(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Landroid/view/View;

    move-result-object p1

    .line 703
    instance-of v0, p1, Lcom/miui/miuiwidget/servicedelivery/appwidget/IPendingWidgetView;

    if-eqz v0, :cond_0

    .line 704
    move-object v0, p1

    check-cast v0, Lcom/miui/miuiwidget/servicedelivery/appwidget/IPendingWidgetView;

    invoke-direct {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->addToPendingSet(Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;)V

    :cond_0
    return-object p1
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private ensureWidgetLoaded(I)V
    .locals 6

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureWidgetLoaded index :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceDeliveryContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_4

    .line 807
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    .line 812
    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetView()Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    move-result-object v2

    .line 813
    instance-of v3, v2, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;

    if-eqz v3, :cond_3

    const-string v3, "ensureWidgetLoaded: widgetView is ServiceDeliveryWidgetHolderView"

    .line 814
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    check-cast v2, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;

    .line 816
    invoke-virtual {v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 819
    :cond_1
    iget-object v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->widgetController:Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;

    invoke-virtual {v3}, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;->isAppWidgetFactoryInitialized()Z

    move-result v3

    .line 820
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ensureWidgetLoaded: holderView startLoading appWidgetFactoryInitialized :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-virtual {v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;->startLoading()V

    .line 822
    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;-><init>(Ljava/lang/ref/WeakReference;Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;I)V

    if-eqz v3, :cond_2

    .line 826
    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;->run()V

    goto :goto_0

    .line 828
    :cond_2
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->coolExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p0, "ensureWidgetLoaded index < 0 || index >= carousel.getChildCount()"

    .line 808
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getCardInfo()Ljava/lang/String;
    .locals 0

    .line 944
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    if-eqz p0, :cond_0

    .line 945
    invoke-interface {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getCardInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getDrawingCache(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 932
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    .line 937
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 938
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 939
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_2
    :goto_0
    const-string p0, "ServiceDeliveryContainer"

    const-string v1, "getDrawingCache: width or height <= 0"

    .line 933
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private isDataChange(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "ServiceDeliveryContainer"

    if-ne p2, p1, :cond_0

    const-string p0, "isDataChange: lastData == newData && latestLayoutStyle == newLayoutStyle "

    .line 361
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 364
    :cond_0
    invoke-static {p1}, Lcom/miui/miuiwidget/servicedelivery/utils/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    invoke-static {p2}, Lcom/miui/miuiwidget/servicedelivery/utils/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 370
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataChange: newData.size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " lastData.size = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getCardInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 371
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    move p0, v0

    .line 376
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_4

    .line 377
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    .line 378
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    .line 379
    invoke-virtual {v2, v4}, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->isDataHasDiff(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 380
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isDataChange: position "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " item is change"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isDataChange: lastItem = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isDataChange: newItem = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    const-string p0, "isDataChange: data is not change"

    .line 386
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 365
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isDataChange: newData = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is null "

    const-string v2, " is not null "

    if-nez p1, :cond_6

    move-object p1, v0

    goto :goto_2

    :cond_6
    move-object p1, v2

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " lastData = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    move-object v0, v2

    .line 366
    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 365
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private synthetic lambda$dispatchTouchEvent$2()V
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->disableFeedbackMenu()V

    return-void
.end method

.method private static synthetic lambda$onDataSetChangedWhenCarouselWithChildren$3(Ljava/lang/String;)Ljava/util/Queue;
    .locals 0

    .line 467
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$onDataSetChangedWhenCarouselWithChildren$4(Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;)V
    .locals 0

    .line 517
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->onVisible()V

    return-void
.end method

.method private static synthetic lambda$onDataSetChangedWhenCarouselWithChildren$5(Landroid/view/View;)V
    .locals 0

    .line 554
    check-cast p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->onVisible()V

    return-void
.end method

.method private synthetic lambda$onDataSetChangedWhenCarouselWithChildren$6(Ljava/util/Map;Z)V
    .locals 5

    .line 546
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 547
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    .line 548
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetData()Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->setWidgetView(Landroid/view/View;Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;)V

    goto :goto_0

    .line 550
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hadSetVisibleFinal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " select position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceDeliveryContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    .line 552
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 553
    instance-of v0, p2, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    if-eqz v0, :cond_1

    .line 554
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 557
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private synthetic lambda$onDataSetChangedWhenCarouselWithChildren$7(Ljava/util/Set;Z)V
    .locals 6

    .line 530
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 531
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 532
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 533
    :cond_1
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    .line 534
    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetView()Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    move-result-object v2

    .line 535
    instance-of v3, v2, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;

    if-eqz v3, :cond_0

    .line 536
    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 538
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startLoading widgetId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " implUniqueCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->implUniqueCode:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ServiceDeliveryContainer"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_2
    check-cast v2, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;

    invoke-virtual {v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;->startLoading()V

    .line 542
    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v2

    .line 541
    invoke-direct {p0, v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->createWidgetView(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 545
    :cond_3
    new-instance p1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, v0, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda6;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;Ljava/util/Map;Z)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onDataSetChangedWhenCarouselWithoutChildren$8(ILjava/util/List;Ljava/util/List;)V
    .locals 3

    .line 613
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const-string v1, "ServiceDeliveryContainer"

    if-lez v0, :cond_0

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataSetChangedWhenCarouselWithoutChildren, carousel size > 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getCardInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->removeWidgetExcludeReuse(I)V

    .line 617
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {p1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->removeAllViews()V

    .line 618
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicator:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;

    invoke-virtual {p1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->removeAllViews()V

    .line 619
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->clearPendingSet()V

    goto :goto_0

    .line 621
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "carousel count :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    .line 624
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v2, v0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 626
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDataSetChangedWhenCarouselWithoutChildren: carousel size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " widgetContainerList size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getCardInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 626
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iput-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->lastData:Ljava/util/List;

    .line 631
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 633
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->preLoadAndVisible()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onDataSetChangedWhenCarouselWithoutChildren$9(Ljava/util/List;)V
    .locals 11

    .line 568
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 571
    iget v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    iget-object v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    .line 572
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    iget v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 573
    instance-of v3, v2, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    if-eqz v3, :cond_0

    .line 574
    check-cast v2, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 578
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 579
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    if-nez v5, :cond_3

    if-eqz v2, :cond_1

    .line 582
    invoke-virtual {v2}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->checkSelectViewVaild(Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 583
    invoke-static {v6}, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItemUtils;->widgetUniqueMark(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Ljava/lang/String;

    move-result-object v7

    .line 584
    invoke-virtual {v2}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItemUtils;->widgetUniqueMark(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Ljava/lang/String;

    move-result-object v8

    .line 583
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 587
    invoke-virtual {v2}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v3

    iget v3, v3, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    iput v3, v6, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    const-string v7, "ServiceDeliveryContainer"

    .line 589
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reuse widgetId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "mark: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItemUtils;->widgetUniqueMark(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " implUniqueCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->implUniqueCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getCardInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 589
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    new-instance v7, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;

    iget-object v8, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    .line 592
    invoke-interface {v8}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->widgetId()I

    move-result v8

    iget-object v9, v6, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->id:Ljava/lang/String;

    iget-object v10, v6, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->intentExtra:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual {v2, v6, v7}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->resetData(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;)V

    move-object v6, v2

    goto :goto_3

    :cond_1
    if-eqz v2, :cond_2

    .line 595
    invoke-virtual {v2}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 596
    invoke-virtual {v2}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v7

    const-string v8, "ServiceDeliveryContainer"

    .line 597
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " widgetId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " implUniqueCode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->implUniqueCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "select widget id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->implUniqueCode:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getCardInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 597
    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v7, "ServiceDeliveryContainer"

    const-string v8, "selectView == null || selectView.getWidgetItem() == null"

    .line 602
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_2
    invoke-direct {p0, v6, v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->buildWidgetContain(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;Landroid/view/View;)Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    move-result-object v6

    goto :goto_3

    .line 607
    :cond_3
    invoke-direct {p0, v6, v4}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->buildWidgetContain(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;Landroid/view/View;)Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    move-result-object v6

    .line 609
    :goto_3
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 612
    :cond_4
    new-instance v2, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v3, v1, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda4;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;ILjava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 636
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onInvisible$1()V
    .locals 1

    .line 283
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicator:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout()Landroid/widget/LinearLayout;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$removeWidgets$0()V
    .locals 1

    .line 206
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 207
    instance-of v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    if-eqz v0, :cond_0

    .line 208
    check-cast p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->onVisible()V

    :cond_0
    return-void
.end method

.method private notifyWidgetInvisible(I)V
    .locals 8

    .line 748
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    if-nez v0, :cond_0

    return-void

    .line 749
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    if-eqz v0, :cond_3

    .line 751
    invoke-interface {v0}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;->onInvisible()V

    .line 752
    check-cast v0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    .line 753
    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "ServiceDeliveryContainer"

    const-string p1, "widgetItem == null"

    .line 755
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 759
    :cond_1
    sget v2, Lcom/miui/miuiwidget/R$id;->delivery_widget_visible_timestamp_tag:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2

    .line 761
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_0

    :cond_2
    move-wide v6, v4

    :goto_0
    cmp-long v3, v6, v4

    if-lez v3, :cond_3

    .line 764
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 765
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->tracker:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    iget-object v0, v1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->intentExtra:Ljava/lang/String;

    .line 766
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v6

    .line 765
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->trackWidgetExposure(Ljava/lang/String;IJ)V

    :cond_3
    return-void
.end method

.method private notifyWidgetVisible(I)V
    .locals 4

    .line 737
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    if-nez v0, :cond_0

    return-void

    .line 738
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    if-eqz p1, :cond_1

    .line 740
    invoke-interface {p1}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;->onVisible()V

    .line 741
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->exposureProportion()F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p0, v0, v2

    if-lez p0, :cond_1

    .line 742
    check-cast p1, Landroid/view/View;

    sget p0, Lcom/miui/miuiwidget/R$id;->delivery_widget_visible_timestamp_tag:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private onDataSetChangedWhenCarouselWithChildren(Ljava/util/Set;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;",
            ">;)V"
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataSetChangedWhenCarouselWithChildren carousel count :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceDeliveryContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :goto_0
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v1, v3, :cond_2

    .line 460
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 461
    instance-of v3, v1, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    if-eqz v3, :cond_1

    .line 462
    move-object v3, v1

    check-cast v3, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    .line 463
    invoke-virtual {v3}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetView()Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    move-result-object v4

    .line 464
    instance-of v5, v4, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;

    if-nez v5, :cond_0

    if-eqz v4, :cond_0

    .line 465
    invoke-virtual {v3}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v5

    .line 466
    invoke-static {v5}, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItemUtils;->widgetUniqueMark(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Ljava/lang/String;

    move-result-object v5

    .line 467
    sget-object v6, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda10;->INSTANCE:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda10;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Queue;

    .line 468
    invoke-interface {v5, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 470
    instance-of v5, v4, Landroid/appwidget/AppWidgetHostView;

    if-eqz v5, :cond_0

    .line 471
    check-cast v4, Landroid/appwidget/AppWidgetHostView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 474
    :cond_0
    invoke-virtual {v3}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 476
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carousel widget implUniqueCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->implUniqueCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_1
    iget-object v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v3, v1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 481
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    move v5, v3

    :goto_1
    if-ge v3, v1, :cond_b

    .line 484
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    .line 485
    invoke-static {v6}, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItemUtils;->widgetUniqueMark(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Ljava/lang/String;

    move-result-object v7

    .line 486
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "i:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "uniqueMark:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v8, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_3

    iget-object v8, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v8, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    goto :goto_2

    :cond_3
    new-instance v8, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    invoke-direct {v8, v9, v10}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;-><init>(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;)V

    .line 488
    :goto_2
    invoke-virtual {v8}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItemUtils;->widgetUniqueMark(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 489
    invoke-virtual {v8}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v7

    iget v7, v7, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    iput v7, v6, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    .line 490
    new-instance v7, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;

    iget-object v9, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v9}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->widgetId()I

    move-result v9

    iget-object v10, v6, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->id:Ljava/lang/String;

    iget-object v11, v6, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->intentExtra:Ljava/lang/String;

    invoke-direct {v7, v9, v10, v11}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->resetData(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;)V

    if-nez v3, :cond_a

    .line 492
    invoke-virtual {v8}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->onVisible()V

    :goto_3
    move v5, v4

    goto/16 :goto_5

    .line 497
    :cond_4
    iget-object v9, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v9

    if-lt v3, v9, :cond_5

    .line 498
    iget-object v9, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v9, v8}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->addView(Landroid/view/View;)V

    .line 500
    :cond_5
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Queue;

    .line 501
    invoke-static {v7}, Lcom/miui/miuiwidget/servicedelivery/utils/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "onDataSetChangedWhenCarouselWithChildren cache"

    .line 502
    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    .line 505
    instance-of v9, v7, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    if-eqz v9, :cond_8

    .line 506
    check-cast v7, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    .line 507
    invoke-virtual {v7}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 508
    invoke-virtual {v7}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v9

    iget v9, v9, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    iput v9, v6, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    .line 510
    :cond_6
    invoke-virtual {v7}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetView()Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 511
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onDataSetChangedWhenCarouselWithChildren: cacheContainer widget view = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_7

    const-string v10, " is null"

    goto :goto_4

    .line 512
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 511
    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v9, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;

    iget-object v10, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    .line 514
    invoke-interface {v10}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->widgetId()I

    move-result v10

    iget-object v11, v6, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->id:Ljava/lang/String;

    iget-object v12, v6, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->intentExtra:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v12}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual {v8, v7, v6, v9}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->setWidgetView(Landroid/view/View;Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;)V

    :cond_8
    if-nez v3, :cond_a

    .line 517
    new-instance v5, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda8;

    invoke-direct {v5, v8}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda8;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;)V

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_9
    const-string v7, "onDataSetChangedWhenCarouselWithChildren no cache"

    .line 521
    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v7, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;

    iget-object v10, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    .line 523
    invoke-interface {v10}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->widgetId()I

    move-result v10

    iget-object v11, v6, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->id:Ljava/lang/String;

    iget-object v12, v6, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->intentExtra:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v12}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {v8, v7, v6, v9}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->setWidgetView(Landroid/view/View;Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;)V

    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 526
    :cond_b
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {p2}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->resetSelectedChild()V

    .line 527
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 529
    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, v5}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda7;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;Ljava/util/Set;Z)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onDataSetChangedWhenCarouselWithoutChildren(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;",
            ">;)V"
        }
    .end annotation

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataSetChangedWhenCarouselWithoutChildren size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceDeliveryContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda5;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private preLoadAndVisible()V
    .locals 4

    .line 678
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    const-string v1, "ServiceDeliveryContainer"

    if-nez v0, :cond_0

    const-string p0, "preLoadAndVisible: carousel is null"

    .line 679
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 683
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preLoadAndVisible: carousel childCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 685
    iput v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    if-lez v0, :cond_1

    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preLoadAndVisible: selectedPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " preload selectedPosition and selectedPosition next"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    invoke-direct {p0, v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->ensureWidgetLoaded(I)V

    .line 689
    iget v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->ensureWidgetLoaded(I)V

    goto :goto_0

    :cond_1
    const-string v2, "preLoadAndVisible: carousel childCount = 0"

    .line 691
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    const-string v2, "preLoadAndVisible: preload last position"

    .line 695
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    .line 696
    invoke-direct {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->ensureWidgetLoaded(I)V

    :cond_2
    return-void
.end method

.method private removeData(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 220
    invoke-static {p1}, Lcom/miui/miuiwidget/servicedelivery/utils/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const-string v1, "ServiceDeliveryContainer"

    if-eqz v0, :cond_0

    const-string p0, "removeData: instanceIds is null  or empty"

    .line 221
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->lastData:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/miuiwidget/servicedelivery/utils/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "removeData: lastData is null  or empty"

    .line 225
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeData: before remove lastData size "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->lastData:Ljava/util/List;

    .line 230
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " need remove size "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->lastData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    if-eqz v3, :cond_2

    .line 233
    iget-object v4, v3, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->id:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 234
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :cond_3
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->lastData:Ljava/util/List;

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeData: after remove lastData size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->lastData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeFromPendingSet(Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;)V
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->hostType()I

    move-result v0

    if-nez v0, :cond_0

    .line 717
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->pendingViews:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private removeWidgetExcludeReuse(I)V
    .locals 6

    .line 247
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetWidgetIdExcludeReuse count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "reUseWidgetId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getCardInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceDeliveryContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 250
    iget-object v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 251
    instance-of v4, v3, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    if-eqz v4, :cond_0

    .line 252
    check-cast v3, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    invoke-virtual {v3}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v3

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAllWidgets widgetItem id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget v4, v3, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    if-eq v4, p1, :cond_0

    .line 255
    iget-object v4, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->widgetController:Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;->removeWidgetView(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setCarouselLayoutParams(Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->getServiceDeliveryWidth()I

    move-result v0

    .line 144
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->getServiceDeliveryHeight()I

    move-result p0

    .line 145
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCarouselLayoutParams: carouselSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceDeliveryContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0x10

    .line 149
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 150
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setIndicatorLayoutParams(Landroid/widget/LinearLayout;)V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->getIndicatorWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x40666666    # 3.6f

    invoke-static {v0, v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 156
    :cond_0
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->getIndicatorPaddingH()I

    move-result p0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIndicatorLayoutParams: indicatorMarginStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceDeliveryContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v0, 0x800015

    .line 159
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 160
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 161
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private startIndicatorDisappearIfCan()V
    .locals 1

    .line 951
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicatorDisappearAnimation:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    .line 952
    :cond_0
    invoke-static {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->executeAnimationRunnable(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected clearPendingSet()V
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->hostType()I

    move-result v0

    if-nez v0, :cond_0

    .line 723
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->pendingViews:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->hostType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 290
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 292
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->enableFeedbackMenu()V

    .line 295
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->shouldCarousel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicatorDisappearAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 297
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicator:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startIndicatorAppearAnimationNormal(Landroid/view/View;)V

    .line 298
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->requestInterceptTouchEvent()V

    goto :goto_0

    :cond_1
    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 302
    :cond_2
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda2;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 303
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->shouldCarousel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->startIndicatorDisappearIfCan()V

    .line 307
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->clickDetector:Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;

    invoke-virtual {v0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->onDetectEvent(Landroid/view/MotionEvent;)V

    .line 308
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected downloadSucceed(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;",
            ">;)V"
        }
    .end annotation

    .line 732
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda9;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 733
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final getCarousel()Landroid/view/View;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    return-object p0
.end method

.method public final getIndicator()Landroid/view/View;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicator:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method protected getPendingSet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;",
            ">;"
        }
    .end annotation

    .line 728
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->pendingViews:Ljava/util/HashSet;

    return-object p0
.end method

.method public getSelectedPosition()I
    .locals 0

    .line 391
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    return p0
.end method

.method public getWidgetContainerAt(I)Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 408
    :cond_1
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getWidgetItemAt(I)Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 398
    :cond_1
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final init(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;Ljava/lang/Runnable;Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;)V
    .locals 0

    .line 104
    iput-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->tracker:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    .line 105
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    .line 106
    invoke-interface {p1, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->setFeedbackMenuClickListener(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$FeedbackMenuClickListener;)V

    .line 107
    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->widgetController:Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;

    .line 108
    iput-object p4, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 109
    iput-object p5, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->coolExecutor:Ljava/util/concurrent/Executor;

    .line 110
    iput-object p6, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    .line 111
    iput-object p7, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicatorDisappearAnimation:Ljava/lang/Runnable;

    .line 112
    iput-object p8, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->serviceDeliveryAccessibilityDesc:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;

    .line 113
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 114
    new-instance p2, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-direct {p2, p1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;-><init>(Landroid/content/Context;)V

    if-eqz p8, :cond_0

    .line 116
    iget p3, p8, Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;->carouselSwitchDescResId:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    :cond_0
    invoke-virtual {p2}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->getChangedListenerRegistry()Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistry;

    move-result-object p1

    .line 119
    invoke-interface {p1, p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistry;->addOnSelectedChildChangedListeners(Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnSelectedChildChangedListener;)V

    .line 120
    invoke-interface {p1, p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistry;->addOnChildRemovedListener(Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnChildRemovedListener;)V

    .line 121
    invoke-direct {p0, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->setCarouselLayoutParams(Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;)V

    .line 122
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicatorLayout:Landroid/widget/LinearLayout;

    .line 123
    invoke-direct {p0, p3}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->setIndicatorLayoutParams(Landroid/widget/LinearLayout;)V

    .line 124
    iget-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicatorLayout:Landroid/widget/LinearLayout;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
    new-instance p3, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;

    iget-object p4, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicatorLayout:Landroid/widget/LinearLayout;

    invoke-direct {p3, p4, p6}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;-><init>(Landroid/widget/LinearLayout;Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;)V

    .line 126
    invoke-interface {p1, p3}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistry;->addOnChildAddedListener(Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnChildAddedListener;)V

    .line 127
    invoke-interface {p1, p3}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistry;->addOnChildRemovedListener(Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnChildRemovedListener;)V

    .line 128
    invoke-interface {p1, p3}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistry;->addOnSelectedChildChangedListeners(Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnSelectedChildChangedListener;)V

    .line 130
    iput-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicator:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;

    .line 131
    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    .line 132
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 133
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicatorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 134
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    return-void
.end method

.method public isFeedbackEnabledForCurrentCard()Z
    .locals 0

    .line 138
    iget-boolean p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->isFeedbackEnabledForCurrentCard:Z

    return p0
.end method

.method public onChildRemoved(I)V
    .locals 1

    add-int/lit8 v0, p1, -0x1

    .line 918
    invoke-direct {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->ensureWidgetLoaded(I)V

    add-int/lit8 p1, p1, 0x1

    .line 919
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->ensureWidgetLoaded(I)V

    return-void
.end method

.method public onClickDetected()V
    .locals 2

    .line 893
    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    invoke-virtual {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getWidgetItemAt(I)Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->tracker:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    iget-object v0, v0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->intentExtra:Ljava/lang/String;

    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    invoke-virtual {v1, v0, p0}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->trackWidgetClick(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 175
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 176
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->setCarouselLayoutParams(Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;)V

    .line 177
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicator:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;

    invoke-virtual {p1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->setIndicatorLayoutParams(Landroid/widget/LinearLayout;)V

    .line 178
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicator:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->onConfigurationChanged()V

    return-void
.end method

.method public final onDataSetChanged(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;",
            ">;Z)V"
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataSetChanged widgetId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceDeliveryContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataSetChanged isUseCache:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "card info:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getCardInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widgetItem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->implUniqueCode:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "layout host == null"

    .line 319
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->lastData:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->isDataChange(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onDataSetChanged: data is not change "

    .line 322
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->lastData:Ljava/util/List;

    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->refreshData(Ljava/util/List;Z)V

    .line 328
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->onVisible()V

    return-void

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    if-nez v0, :cond_3

    return-void

    .line 334
    :cond_3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez p2, :cond_4

    if-nez v0, :cond_4

    const-string p0, "onDataSetChanged: is not use cache and without child"

    .line 337
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 341
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->onDataSetChangedWhenCarouselWithoutChildren(Ljava/util/List;)V

    .line 342
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_5

    .line 343
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicator:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;

    invoke-virtual {p1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->show()V

    .line 344
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->startIndicatorDisappearIfCan()V

    goto :goto_1

    .line 346
    :cond_5
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicator:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->hide()V

    :goto_1
    return-void
.end method

.method public onFeedbackClicked()V
    .locals 5

    .line 871
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    if-nez v0, :cond_0

    return-void

    .line 872
    :cond_0
    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    if-ltz v1, :cond_3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-le v1, v0, :cond_1

    goto/16 :goto_1

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 874
    instance-of v1, v0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    if-eqz v1, :cond_3

    .line 875
    check-cast v0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    .line 876
    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v0

    .line 877
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 878
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.miui.personalassistant"

    const-string v4, "com.miui.personalassistant.service.servicedelivery.ServiceDeliveryReportDislikeActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 880
    iget-object v4, v0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "instanceIds"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    iget-object v0, v0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->intentExtra:Ljava/lang/String;

    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 882
    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    const-string v2, "self_component_service_offset"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 883
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->spanX()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_2

    const-string v0, "\u670d\u52a1\u76f4\u8fbe\u5e94\u7528\u5efa\u8bae"

    goto :goto_0

    :cond_2
    const-string v0, "\u7eaf\u670d\u52a1\u5361\u7247"

    :goto_0
    const-string v2, "self_component_staus"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->screenIndex()I

    move-result v0

    const-string v2, "screen_location"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 885
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getExtraTrackParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "cardCommonParam"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10800000

    .line 886
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 887
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onInvisible()V
    .locals 1

    .line 279
    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    invoke-direct {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->notifyWidgetInvisible(I)V

    .line 280
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->shouldCarousel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicatorDisappearAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 282
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda1;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSelectedChildChanged(III)V
    .locals 7

    const-string v0, "ServiceDeliveryContainer"

    const-string v1, "onSelectedChildChanged: "

    .line 772
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iput p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    .line 774
    invoke-direct {p0, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->notifyWidgetVisible(I)V

    add-int/lit8 v1, p2, -0x1

    .line 776
    invoke-direct {p0, v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->ensureWidgetLoaded(I)V

    add-int/lit8 v1, p2, 0x1

    .line 777
    invoke-direct {p0, v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->ensureWidgetLoaded(I)V

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    if-eq p1, p2, :cond_0

    .line 779
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->notifyWidgetInvisible(I)V

    .line 781
    :cond_0
    iget v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    invoke-virtual {p0, v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getWidgetItemAt(I)Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v2

    .line 782
    iget-object v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->serviceDeliveryAccessibilityDesc:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p3, v4, :cond_1

    .line 784
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v5, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->serviceDeliveryAccessibilityDesc:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;

    iget v5, v5, Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;->carouselPageUpDescResId:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->title:Ljava/lang/String;

    aput-object v6, v4, v3

    invoke-virtual {p3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    if-ne p3, v5, :cond_2

    .line 786
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v5, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->serviceDeliveryAccessibilityDesc:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;

    iget v5, v5, Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;->carouselPageDownDescResId:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->title:Ljava/lang/String;

    aput-object v6, v4, v3

    invoke-virtual {p3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 790
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSelectedChildChanged oldPosition:"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " newPosition:"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "widgetId:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "isFeedbackEnabled"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, v2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->isFeedbackEnabled:Z

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "cell x:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    .line 792
    invoke-interface {p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->cellX()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "cell y:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->cellY()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 790
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-boolean p2, v2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->isFeedbackEnabled:Z

    iput-boolean p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->isFeedbackEnabledForCurrentCard:Z

    if-eq p1, v1, :cond_3

    .line 795
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->tracker:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    iget-object p2, v2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->intentExtra:Ljava/lang/String;

    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    invoke-virtual {p1, p2, p0}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->trackWidgetSwitch(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public onViewSizeChange()V
    .locals 3

    const/4 v0, 0x0

    .line 961
    :goto_0
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 962
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 963
    instance-of v2, v1, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    if-eqz v2, :cond_0

    .line 964
    check-cast v1, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    invoke-interface {v1}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;->onSizeChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onVisible()V
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisible count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " selectedPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cardInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceDeliveryContainer"

    .line 270
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->startIndicatorDisappearIfCan()V

    .line 273
    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    if-ltz v0, :cond_0

    .line 274
    invoke-direct {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->notifyWidgetVisible(I)V

    :cond_0
    return-void
.end method

.method public refreshData(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "ServiceDeliveryContainer"

    const-string v1, "refreshData: "

    .line 417
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {p1}, Lcom/miui/miuiwidget/servicedelivery/utils/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 420
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 421
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    .line 422
    invoke-static {v2}, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItemUtils;->widgetUniqueMark(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-virtual {p0, v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getWidgetContainerAt(I)Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    move-result-object v4

    if-nez v4, :cond_1

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshData: item widget container is null position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 428
    :cond_1
    invoke-virtual {v4}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v5

    .line 429
    invoke-static {v5}, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItemUtils;->widgetUniqueMark(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshData: position = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget v3, v5, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    iput v3, v2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    .line 432
    new-instance v3, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;

    iget-object v5, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v5}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->widgetId()I

    move-result v5

    iget-object v6, v2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->id:Ljava/lang/String;

    iget-object v7, v2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->intentExtra:Ljava/lang/String;

    invoke-direct {v3, v5, v6, v7}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->resetData(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;)V

    if-nez p2, :cond_2

    .line 434
    invoke-virtual {v4}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetView()Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 435
    invoke-virtual {v4, v2}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->updateWidgetViewLayout(Landroid/view/View;)V

    .line 437
    :cond_2
    iget v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->selectedPosition:I

    if-ne v2, v1, :cond_5

    .line 438
    invoke-virtual {v4}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetView()Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;

    if-eqz v2, :cond_5

    const-string v2, "refreshData: WidgetView is HolderView"

    .line 439
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-direct {p0, v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->ensureWidgetLoaded(I)V

    add-int/lit8 v2, v1, 0x1

    .line 441
    invoke-direct {p0, v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->ensureWidgetLoaded(I)V

    if-nez v1, :cond_3

    .line 443
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->ensureWidgetLoaded(I)V

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v1, -0x1

    .line 445
    invoke-direct {p0, v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->ensureWidgetLoaded(I)V

    goto :goto_1

    .line 449
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshData: data not match position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " item = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public removeAllWidgets()V
    .locals 1

    const/4 v0, -0x1

    .line 242
    invoke-direct {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->removeWidgetExcludeReuse(I)V

    .line 243
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->removeAllViews()V

    return-void
.end method

.method public removeWidgets(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 186
    iget-object v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    .line 187
    invoke-virtual {v3}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v4

    iget-object v4, v4, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->id:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    .line 192
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 193
    iget-object v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {v3, v1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->removeView(Landroid/view/View;)V

    .line 194
    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetView()Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->removeFromPendingSet(Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;)V

    .line 195
    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeWidgets removeView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->implUniqueCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "indexOfChild:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "cell x:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    .line 199
    invoke-interface {v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->cellX()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "cell y:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->cellY()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServiceDeliveryContainer"

    .line 197
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_2
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->widgetController:Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;->removeWidgetView(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)V

    goto :goto_1

    .line 204
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->removeData(Ljava/util/Set;)V

    .line 205
    new-instance p1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda3;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDrawSnapShot(Z)V
    .locals 0

    .line 900
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->setDrawSnapShot(Z)V

    return-void
.end method

.method public shouldCarousel()Z
    .locals 1

    .line 956
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateViewSize()V
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->carousel:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    if-eqz v0, :cond_0

    .line 905
    invoke-direct {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->setCarouselLayoutParams(Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;)V

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicatorLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 909
    invoke-direct {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->setIndicatorLayoutParams(Landroid/widget/LinearLayout;)V

    .line 910
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicatorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->indicator:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;

    if-eqz p0, :cond_1

    .line 911
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->onConfigurationChanged()V

    :cond_1
    return-void
.end method

.method public userUnlocked()V
    .locals 2

    const-string v0, "ServiceDeliveryContainer"

    const-string v1, "userUnlocked: userUnlocked call back to preload"

    .line 923
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->preLoadAndVisible()V

    return-void
.end method
