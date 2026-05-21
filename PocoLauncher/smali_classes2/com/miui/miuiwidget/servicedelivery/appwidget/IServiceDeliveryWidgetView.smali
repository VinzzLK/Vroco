.class public interface abstract Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;
.super Ljava/lang/Object;
.source "IServiceDeliveryWidgetView.java"

# interfaces
.implements Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetViewLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;
    }
.end annotation


# static fields
.field public static final MIUI_DELIVERY_EXTRA_INTENT_OPTION:Ljava/lang/String; = "miuiDeliveryIntentExtraOption"

.field public static final MIUI_DELIVERY_EXTRA_WIDGET_ID:Ljava/lang/String; = "miuiDeliveryWidgetId"

.field public static final TAG:Ljava/lang/String; = "IDeliveryServiceWidgetView"


# direct methods
.method public static getDeliveryWidgetData(Landroid/view/View;)Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;
    .locals 1

    .line 19
    sget v0, Lcom/miui/miuiwidget/R$id;->delivery_widget_view_data_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;

    return-object p0
.end method

.method public static getId(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .line 41
    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;->getDeliveryWidgetData(Landroid/view/View;)Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "IDeliveryServiceWidgetView"

    const-string v0, "data is null"

    .line 43
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;->instanceId:Ljava/lang/String;

    return-object p0
.end method

.method public static getIntentExtra(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .line 32
    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;->getDeliveryWidgetData(Landroid/view/View;)Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "IDeliveryServiceWidgetView"

    const-string v0, "data is null"

    .line 34
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;->intentExtra:Ljava/lang/String;

    return-object p0
.end method

.method public static setDeliveryWidgetData(Landroid/view/View;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;)V
    .locals 3

    const-string v0, "IDeliveryServiceWidgetView"

    if-eqz p1, :cond_0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeliveryWidgetData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;->parentWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "instant id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;->instanceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "setDeliveryWidgetData data == null"

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :goto_0
    sget v0, Lcom/miui/miuiwidget/R$id;->delivery_widget_view_data_tag:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getProviderName()Ljava/lang/String;
    .locals 0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onInvisible()V
    .locals 0

    return-void
.end method

.method public onSizeChanged()V
    .locals 0

    return-void
.end method

.method public onVisible()V
    .locals 0

    return-void
.end method

.method public resetVisibleInSession()V
    .locals 0

    return-void
.end method
