.class public Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;
.super Landroid/widget/FrameLayout;
.source "WidgetContainer.java"

# interfaces
.implements Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceDelivery:WidgetContainer"


# instance fields
.field private shouldScale:Z

.field private final uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

.field private widgetData:Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;

.field private widgetItem:Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

.field private widgetView:Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetItem:Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    .line 29
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetData:Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->shouldScale:Z

    .line 37
    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    return-void
.end method


# virtual methods
.method public getWidgetData()Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetData:Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;

    return-object p0
.end method

.method public getWidgetItem()Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetItem:Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    return-object p0
.end method

.method public getWidgetView()Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetView:Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    return-object p0
.end method

.method public onInvisible()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetView:Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInvisible :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetItem:Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    iget v1, v1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " implUniqueCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetItem:Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    iget-object v1, v1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->implUniqueCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceDelivery:WidgetContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetView:Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    invoke-interface {p0}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;->onInvisible()V

    :cond_0
    return-void
.end method

.method public onVisible()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetView:Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisible widgetId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetItem:Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    iget v1, v1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " implUniqueCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetItem:Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    iget-object v1, v1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->implUniqueCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceDelivery:WidgetContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetView:Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    invoke-interface {p0}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;->onVisible()V

    :cond_0
    return-void
.end method

.method public resetData(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;)V
    .locals 2

    .line 77
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetItem:Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    .line 78
    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetData:Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetData, providerName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetView:Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    invoke-interface {v1}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", widgetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceDelivery:WidgetContainer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-interface {p0}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;->resetVisibleInSession()V

    .line 82
    invoke-virtual {p0, p2}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->setDeliveryWidgetData(Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;)V

    return-void
.end method

.method public setDeliveryWidgetData(Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;)V
    .locals 3

    const-string v0, "ServiceDelivery:WidgetContainer"

    if-eqz p1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeliveryWidgetData instanceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;->instanceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "widgetItem id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetItem:Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    iget v2, v2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "widget id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;->parentWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "setDeliveryWidgetData widget data == null:"

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetView:Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 70
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;->setDeliveryWidgetData(Landroid/view/View;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;)V

    goto :goto_1

    :cond_1
    const-string p0, "widgetView not IServiceDeliveryWidgetView "

    .line 72
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setWidgetView(Landroid/view/View;Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;)V
    .locals 1

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->setWidgetView(Landroid/view/View;Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;Z)V

    return-void
.end method

.method public setWidgetView(Landroid/view/View;Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;Z)V
    .locals 3

    .line 87
    instance-of v0, p1, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    const-string v1, "ServiceDelivery:WidgetContainer"

    if-nez v0, :cond_0

    const-string p0, "view is not a IDeliveryServiceWidgetView"

    .line 88
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetItem:Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWidgetView removeView: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetView:Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    invoke-interface {v2}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetItem:Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    iget v2, v2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 95
    iput-boolean p4, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->shouldScale:Z

    .line 96
    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetItem:Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    .line 97
    iput-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetData:Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;

    .line 99
    invoke-virtual {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->updateWidgetViewLayout(Landroid/view/View;)V

    .line 101
    move-object p4, p1

    check-cast p4, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    iput-object p4, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetView:Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    .line 102
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setWidgetView, providerName: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->widgetView:Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    invoke-interface {v0}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", widgetId: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {p1, p3}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;->setDeliveryWidgetData(Landroid/view/View;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;)V

    if-eqz p3, :cond_2

    .line 107
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setWidgetView widgetId "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " instanceId "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;->instanceId:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public updateWidgetViewLayout(Landroid/view/View;)V
    .locals 9

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidgetContainer:updateWidgetViewLayout: shouldScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->shouldScale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceDelivery:WidgetContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 119
    iget-boolean v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->shouldScale:Z

    if-eqz v2, :cond_2

    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 121
    iget-object v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    iget v3, v3, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    if-lez v3, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    sget v3, Lcom/miui/miuiwidget/R$dimen;->delivery_widget_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 123
    :goto_0
    iget-object v4, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    iget v4, v4, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalHeight:I

    if-lez v4, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    sget v4, Lcom/miui/miuiwidget/R$dimen;->delivery_widget_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 125
    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 127
    iget-object v6, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    invoke-virtual {v6, v3}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->getServiceDeliveryWidth(I)I

    move-result v3

    .line 128
    iget-object v6, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    invoke-virtual {v6, v4}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->getServiceDeliveryHeight(I)I

    move-result v4

    .line 129
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v4, v3

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v4, v6

    int-to-float v7, v5

    mul-float v8, v7, v6

    div-float/2addr v4, v8

    .line 132
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WidgetContainer:updateWidgetViewLayout:size = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  carouselSize = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "scale = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 136
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 138
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 139
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 140
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    mul-float/2addr v7, v4

    float-to-int v1, v7

    .line 142
    new-instance v3, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer$1;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;ILandroid/content/res/Resources;)V

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 151
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
