.class public Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryPendingHostView;
.super Lcom/miui/home/launcher/gadget/MaMlPendingHostView;
.source "ServiceDeliveryPendingHostView.java"

# interfaces
.implements Lcom/miui/miuiwidget/servicedelivery/appwidget/IPendingWidgetView;


# instance fields
.field private widgetController:Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private tryReplaceWidget()V
    .locals 3

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getMaMlItemInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    const-string v1, "ServiceDeliveryPendingHostView"

    if-nez v0, :cond_0

    const-string/jumbo p0, "tryReplaceWidget error, itemInfo is null"

    .line 43
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 46
    :cond_0
    invoke-static {v0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlResPath(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 47
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    invoke-static {v0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryBeanUtils;->toMamlWidgetItem(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo p0, "tryReplaceWidget error, widgetItem is null"

    .line 53
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 56
    :cond_2
    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;->getId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->id:Ljava/lang/String;

    .line 57
    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;->getIntentExtra(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->intentExtra:Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryPendingHostView;->widgetController:Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;

    invoke-virtual {v2, v0}, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;->createWidgetView(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Landroid/view/View;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 61
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 62
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "tryReplaceWidget, view has been remove."

    .line 64
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p0, "resPath is Empty."

    .line 48
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public setWidgetController(Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryPendingHostView;->widgetController:Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;

    return-void
.end method

.method public updateProgress(II)V
    .locals 1

    const/4 v0, -0x5

    if-ne p1, v0, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryPendingHostView;->tryReplaceWidget()V

    .line 37
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->updateProgress(II)V

    return-void
.end method
