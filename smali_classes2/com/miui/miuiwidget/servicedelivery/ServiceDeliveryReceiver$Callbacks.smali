.class public interface abstract Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver$Callbacks;
.super Ljava/lang/Object;
.source "ServiceDeliveryReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onCompleteService(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onDislikeFeedback(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onUpdateDataSet(Landroid/content/Context;Landroid/content/Intent;)V
.end method
