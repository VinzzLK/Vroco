.class public Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;
.super Ljava/lang/Object;
.source "IServiceDeliveryWidgetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public final instanceId:Ljava/lang/String;

.field public final intentExtra:Ljava/lang/String;

.field public final parentWidgetId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;->parentWidgetId:I

    .line 62
    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;->instanceId:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;->intentExtra:Ljava/lang/String;

    return-void
.end method
