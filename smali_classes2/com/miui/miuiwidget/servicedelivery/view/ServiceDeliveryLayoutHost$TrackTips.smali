.class public Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;
.super Ljava/lang/Object;
.source "ServiceDeliveryLayoutHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackTips"
.end annotation


# instance fields
.field public appItemClickTip:Ljava/lang/String;

.field public exposureTip:Ljava/lang/String;

.field public feedbackMenuShowTip:Ljava/lang/String;

.field public widgetClickTip:Ljava/lang/String;

.field public widgetExposureTip:Ljava/lang/String;

.field public widgetSwitchTip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;->exposureTip:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;->widgetExposureTip:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;->widgetClickTip:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;->feedbackMenuShowTip:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;->widgetSwitchTip:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;->appItemClickTip:Ljava/lang/String;

    return-void
.end method
