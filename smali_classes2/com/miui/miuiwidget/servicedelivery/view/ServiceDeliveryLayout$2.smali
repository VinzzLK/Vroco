.class Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$2;
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

    .line 297
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$2;->this$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public track(Ljava/util/Map;)V
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

    .line 300
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$2;->this$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    iget-object v1, v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->tracker:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    iget-object v0, v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->layoutController:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->getDataSet()Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->widgetItemList:Ljava/util/List;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$2;->this$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->getAppItemList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->trackExposure(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
