.class public interface abstract Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;
.super Ljava/lang/Object;
.source "ServiceDeliveryLayoutHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;,
        Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;,
        Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$FeedbackMenuClickListener;
    }
.end annotation


# static fields
.field public static final TYPE_HOME:I = 0x0

.field public static final TYPE_PA:I = 0x1


# virtual methods
.method public abstract cellX()I
.end method

.method public abstract cellY()I
.end method

.method public abstract disableFeedbackMenu()V
.end method

.method public abstract enableFeedbackMenu()V
.end method

.method public abstract exposureProportion()F
.end method

.method public getCardInfo()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " screenIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->screenIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " widget id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->widgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cell x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->cellX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cell y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->cellY()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getExposureTracker()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;
.end method

.method public abstract getExtraTrackParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFeedbackMenuClickListener()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$FeedbackMenuClickListener;
.end method

.method public abstract getFeedbackMenuShowTracker()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;
.end method

.method public abstract getTrackTips()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$TrackTips;
.end method

.method public hostType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isCompatibleNewLayout()Z
.end method

.method public abstract isFeedbackMenuEnabled()Z
.end method

.method public abstract isFoldDevice()Z
.end method

.method public abstract isSupportNewLayout()Z
.end method

.method public abstract onExposureProportionChanged(F)V
.end method

.method public abstract requestInterceptTouchEvent()V
.end method

.method public abstract screenIndex()I
.end method

.method public abstract setExposureTracker(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;)V
.end method

.method public abstract setFeedbackMenuClickListener(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$FeedbackMenuClickListener;)V
.end method

.method public abstract setFeedbackMenuShowTracker(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;)V
.end method

.method public abstract setOrClearBlur(Z)V
.end method

.method public abstract spanX()I
.end method

.method public abstract spanY()I
.end method

.method public abstract widgetId()I
.end method
