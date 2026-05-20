.class public Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;
.super Ljava/lang/Object;
.source "ServiceDeliveryLayoutHost.java"

# interfaces
.implements Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;


# instance fields
.field private exposureTracker:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;

.field private feedbackMenuClickListener:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$FeedbackMenuClickListener;

.field private feedbackMenuShowTracker:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;

.field private final info:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

.field private isFeedbackMenuEnabled:Z

.field private final launcher:Lcom/miui/home/launcher/Launcher;

.field private serviceDeliveryWidgetView:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->isFeedbackMenuEnabled:Z

    .line 26
    iput-object p1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->info:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    .line 27
    iput-object p2, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->launcher:Lcom/miui/home/launcher/Launcher;

    .line 28
    iput-object p3, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->serviceDeliveryWidgetView:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    return-void
.end method


# virtual methods
.method public cellX()I
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->info:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    return p0
.end method

.method public cellY()I
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->info:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    return p0
.end method

.method public disableFeedbackMenu()V
    .locals 2

    const-string v0, "ServiceDeliveryLayoutHost"

    const-string v1, "disableFeedbackMenu:."

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->isFeedbackMenuEnabled:Z

    return-void
.end method

.method public enableFeedbackMenu()V
    .locals 2

    const-string v0, "ServiceDeliveryLayoutHost"

    const-string v1, "enableFeedbackMenu."

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->isFeedbackMenuEnabled:Z

    return-void
.end method

.method public exposureProportion()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getExposureTracker()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->exposureTracker:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;

    return-object p0
.end method

.method public getExtraTrackParams()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->launcher:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->info:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    invoke-static {v1, p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getMiuiWidgetInfo(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/util/Map;)V

    return-object v0
.end method

.method public getFeedbackMenuClickListener()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$FeedbackMenuClickListener;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->feedbackMenuClickListener:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$FeedbackMenuClickListener;

    return-object p0
.end method

.method public getFeedbackMenuShowTracker()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->feedbackMenuShowTracker:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;

    return-object p0
.end method

.method public getTrackTips()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;
    .locals 7

    .line 144
    new-instance p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;

    const-string v1, "603.2.4.1.34815"

    const-string v2, "603.2.4.1.34816"

    const-string v3, "603.2.4.1.34819"

    const-string v4, "603.2.4.1.34823"

    const-string v5, "603.2.8.1.34821"

    const-string v6, "603.2.4.1.34819"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public isCompatibleNewLayout()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFeedbackMenuEnabled()Z
    .locals 2

    const-string v0, "ServiceDeliveryLayoutHost"

    const-string v1, "isFeedbackMenuEnabled."

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-boolean p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->isFeedbackMenuEnabled:Z

    return p0
.end method

.method public isFoldDevice()Z
    .locals 0

    .line 66
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p0

    return p0
.end method

.method public isSupportNewLayout()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onExposureProportionChanged(F)V
    .locals 0

    return-void
.end method

.method public requestInterceptTouchEvent()V
    .locals 1

    .line 83
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p0

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SuperDraglayer;->requestSwipeControllerDisallowInterceptTouchEventVertical(Z)V

    return-void
.end method

.method public screenIndex()I
    .locals 2

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->info:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    iget-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    long-to-int p0, v0

    return p0
.end method

.method public setExposureTracker(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->exposureTracker:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;

    return-void
.end method

.method public setFeedbackMenuClickListener(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$FeedbackMenuClickListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->feedbackMenuClickListener:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$FeedbackMenuClickListener;

    return-void
.end method

.method public setFeedbackMenuShowTracker(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->feedbackMenuShowTracker:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;

    return-void
.end method

.method public setOrClearBlur(Z)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->serviceDeliveryWidgetView:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->getWidgetContainer()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v1, p1, 0x1

    .line 152
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->setOrClearBlur(Z)V

    .line 153
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->info:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    iput-boolean p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->supportBackgroundBlur:Z

    return-void
.end method

.method public spanX()I
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->info:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    return p0
.end method

.method public spanY()I
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->info:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    return p0
.end method

.method public widgetId()I
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;->info:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    iget p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->widgetId:I

    return p0
.end method
