.class Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$3;
.super Ljava/lang/Object;
.source "ServiceDeliveryLayout.java"

# interfaces
.implements Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;


# direct methods
.method constructor <init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$3;->this$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public track(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$3;->this$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    iget-object v0, v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    const-string v1, "ServiceDeliveryLayout"

    if-nez v0, :cond_0

    const-string p0, "track deliveryContainer ==null"

    .line 308
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 311
    :cond_0
    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getSelectedPosition()I

    move-result v0

    .line 312
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$3;->this$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    iget-object v2, v2, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->deliveryContainer:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    invoke-virtual {v2, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->getWidgetItemAt(I)Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "track widgetItem == null"

    .line 314
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 317
    :cond_1
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$3;->this$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->tracker:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    iget-object v1, v2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->intentExtra:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->trackFeedbackMenuShow(Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method
