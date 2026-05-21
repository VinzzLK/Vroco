.class Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;
.super Ljava/lang/Object;
.source "ServiceDeliveryContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddWidgetAndUpdateRunnable"
.end annotation


# instance fields
.field private final index:I

.field outerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;",
            ">;"
        }
    .end annotation
.end field

.field widgetContainer:Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;


# direct methods
.method public static synthetic $r8$lambda$9NBmJ-tNE5Lu5S0kt21qaUMPfFs(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;Landroid/view/View;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;->lambda$run$0(Landroid/view/View;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ys9DLBdX8yC4f1lJDe04NT1RnXM(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;->lambda$run$1(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;",
            ">;",
            "Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;",
            "I)V"
        }
    .end annotation

    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;->outerRef:Ljava/lang/ref/WeakReference;

    .line 842
    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;->widgetContainer:Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    .line 843
    iput p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;->index:I

    return-void
.end method

.method private synthetic lambda$run$0(Landroid/view/View;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V
    .locals 4

    const-string v0, "ServiceDeliveryContainer"

    const-string v1, "ensureWidgetLoaded: to replace widgetContainer"

    .line 857
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;->widgetContainer:Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;->widgetContainer:Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    invoke-virtual {v3}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetData()Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->setWidgetView(Landroid/view/View;Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;)V

    .line 860
    invoke-static {p2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->access$200(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)I

    move-result p1

    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;->index:I

    if-ne p1, v1, :cond_0

    const-string p1, "ensureWidgetLoaded post view error "

    .line 861
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;->index:I

    invoke-static {p2, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->access$300(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$run$1(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;->widgetContainer:Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->access$100(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Landroid/view/View;

    move-result-object v0

    .line 856
    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;Landroid/view/View;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 848
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;->outerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    if-eqz v0, :cond_1

    .line 849
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;->widgetContainer:Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 854
    :cond_0
    invoke-static {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->access$000(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable$$ExternalSyntheticLambda1;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$AddWidgetAndUpdateRunnable;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "ServiceDeliveryContainer"

    const-string v0, "service delivery container == null || widgetContainer == null"

    .line 850
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
