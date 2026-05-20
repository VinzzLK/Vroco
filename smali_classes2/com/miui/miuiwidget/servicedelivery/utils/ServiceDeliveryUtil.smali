.class public Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUtil;
.super Ljava/lang/Object;
.source "ServiceDeliveryUtil.java"


# static fields
.field public static final MEDIUM_SERVICE_DELIVERY_PROVIDER_NAME:Ljava/lang/String; = "com.miui.personalassistant.widget.MediumServiceDeliveryProvider"

.field public static final SMALL_SERVICE_DELIVERY_PROVIDER_NAME:Ljava/lang/String; = "com.miui.personalassistant.widget.SmallServiceDeliveryProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWidgetProviderName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const-string p0, "com.miui.personalassistant.widget.MediumServiceDeliveryProvider"

    goto :goto_0

    :cond_0
    const-string p0, "com.miui.personalassistant.widget.SmallServiceDeliveryProvider"

    :goto_0
    return-object p0
.end method
