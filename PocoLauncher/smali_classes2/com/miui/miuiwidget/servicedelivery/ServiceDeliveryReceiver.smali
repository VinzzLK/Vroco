.class public Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ServiceDeliveryReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver$Callbacks;
    }
.end annotation


# static fields
.field public static final ACTION_COMPLETE_SERVICE:Ljava/lang/String; = "com.miui.servicedelivery.completeService"

.field public static final ACTION_DISLIKE_FEEDBACK:Ljava/lang/String; = "com.miui.servicedelivery.dislikeFeedback"

.field public static final ACTION_UPDATE_DATA_SET:Ljava/lang/String; = "com.miui.servicedelivery.updateDataSet"

.field public static final EXTRA_PARAM_DELIVERY_ENTITY:Ljava/lang/String; = "deliveryEntity"

.field public static final EXTRA_PARAM_DISLIKE_OPTION_INDEX:Ljava/lang/String; = "dislikeOptionIndex"

.field public static final EXTRA_PARAM_INSTANCE_IDS:Ljava/lang/String; = "instanceIds"

.field public static final EXTRA_PARAM_INTENT:Ljava/lang/String; = "intent"

.field public static final EXTRA_WIDGET_COMMON_PARAM:Ljava/lang/String; = "cardCommonParam"

.field private static final TAG:Ljava/lang/String; = "ServiceDeliveryReceiver"


# instance fields
.field private callbacks:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver$Callbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;->callbacks:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver$Callbacks;

    const-string v1, "ServiceDeliveryReceiver"

    if-nez v0, :cond_0

    const-string p0, "callback not set"

    .line 26
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_5

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive action: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "com.miui.servicedelivery.completeService"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "com.miui.servicedelivery.dislikeFeedback"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "com.miui.servicedelivery.updateDataSet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "unknown action "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 36
    :pswitch_0
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;->callbacks:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver$Callbacks;

    invoke-interface {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver$Callbacks;->onCompleteService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 39
    :pswitch_1
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;->callbacks:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver$Callbacks;

    invoke-interface {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver$Callbacks;->onDislikeFeedback(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 42
    :pswitch_2
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;->callbacks:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver$Callbacks;

    invoke-interface {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver$Callbacks;->onUpdateDataSet(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    const-string p0, "receive invalid message, action is empty"

    .line 30
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1f225719 -> :sswitch_2
        0x73d14d14 -> :sswitch_1
        0x7eb7c086 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeCallbacks()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;->callbacks:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver$Callbacks;

    return-void
.end method

.method public final setCallbacks(Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver$Callbacks;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;->callbacks:Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver$Callbacks;

    return-void
.end method
