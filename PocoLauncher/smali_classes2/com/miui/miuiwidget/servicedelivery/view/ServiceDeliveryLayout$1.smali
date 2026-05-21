.class Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$1;
.super Ljava/lang/Object;
.source "ServiceDeliveryLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->initializeDeliveryContainer(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

.field final synthetic val$deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

.field final synthetic val$indicatorDisappearAnimation:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;Ljava/lang/Runnable;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$1;->this$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$1;->val$deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    iput-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$1;->val$indicatorDisappearAnimation:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGlobalLayout isContainerLayoutCompleted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$1;->this$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    invoke-static {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->access$000(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceDeliveryLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$1;->this$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    invoke-static {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->access$000(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$1;->this$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->access$002(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;Z)Z

    .line 204
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$1;->val$deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 205
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$1;->this$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->startDeliveryLayoutAppearAnimation()V

    .line 206
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$1;->val$deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->shouldCarousel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$1;->val$deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$1;->val$indicatorDisappearAnimation:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->executeAnimationRunnable(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
