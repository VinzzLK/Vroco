.class public Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;
.super Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;
.source "ServiceDeliveryWidgetView.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.implements Lcom/miui/home/launcher/HostViewContainer;
.implements Lcom/miui/miuiwidget/LargeScreenTouchTarget;
.implements Lcom/miui/home/launcher/DragController$VisualizeCalibration;


# instance fields
.field private launcher:Lcom/miui/home/launcher/Launcher;

.field private mDeliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

.field private mIsAutoLayoutAnimating:Z

.field private mIsEnableAutoLayoutAnimation:Z

.field private final mRoundOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mServiceDeliveryInfo:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

.field private mSkipNextAutoLayoutAnimation:Z

.field private mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

.field private mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

.field private mWidgetTouchDetector:Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;

.field private startExposureTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mIsEnableAutoLayoutAnimation:Z

    const-wide/16 p1, 0x0

    .line 56
    iput-wide p1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->startExposureTimestamp:J

    .line 97
    new-instance p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView$1;-><init>(Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;)V

    iput-object p1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mRoundOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method private onServiceDeliveryTouche(Landroid/view/MotionEvent;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mWidgetTouchDetector:Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;

    if-eqz v0, :cond_0

    .line 313
    invoke-interface {v0, p1, p0}, Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;->onServiceDeliveryTouched(Landroid/view/MotionEvent;Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private trackExposure()V
    .locals 8

    .line 121
    iget-wide v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->startExposureTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->startExposureTimestamp:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "expose_duration"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mDeliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->getLayoutHost()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->getExposureTracker()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost$Tracker;->track(Ljava/util/Map;)V

    .line 126
    :cond_0
    iput-wide v2, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->startExposureTimestamp:J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->onServiceDeliveryTouche(Landroid/view/MotionEvent;)V

    .line 243
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 231
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->isForbidLaunchSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "dispatchTouchEvent: isForbidLaunchSplit = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ServiceDeliveryWidgetView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 236
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->onServiceDeliveryTouche(Landroid/view/MotionEvent;)V

    .line 237
    invoke-super {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getBoundsOnScreen()Landroid/graphics/Rect;
    .locals 1

    .line 204
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 205
    invoke-virtual {p0, p0, v0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getBoundsOnScreenInternal(Lcom/miui/home/launcher/HostViewContainer;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getCornerRadius()F
    .locals 0

    .line 249
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public getDeliveryLayout()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mDeliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    return-object p0
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHostView()Landroid/view/View;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mDeliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    return-object p0
.end method

.method public getHostViewBoundsOnScreen(Landroid/graphics/Rect;)V
    .locals 0

    .line 254
    invoke-super {p0, p1}, Lcom/miui/home/launcher/HostViewContainer;->getHostViewBoundsOnScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 362
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 363
    instance-of v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    if-eqz v0, :cond_0

    .line 364
    check-cast p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getScreenId()J
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 0

    .line 184
    iget-boolean p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return p0
.end method

.method public bridge synthetic getTitleView()Landroid/view/View;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p0

    return-object p0
.end method

.method public getTitleView()Lcom/miui/home/launcher/TitleTextView;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    return-object p0
.end method

.method public getTouchViewOptions(Landroid/graphics/Rect;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getViewCellX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewCellY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellY()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanY()I

    move-result p0

    return p0
.end method

.method public getVisionCenter([I)V
    .locals 4

    .line 264
    invoke-virtual {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->getHostView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    const/4 v0, 0x0

    .line 265
    aget v2, p1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->getHostView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, p1, v0

    .line 266
    aget v0, p1, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->getHostView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    aput v0, p1, v1

    return-void
.end method

.method public getVisionOffset([I)V
    .locals 2

    .line 259
    invoke-virtual {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->getHostView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    return-void
.end method

.method public getVisionRect(Landroid/graphics/Rect;)V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 271
    fill-array-data v0, :array_0

    .line 272
    invoke-virtual {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->getHostView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p0, v0, v2}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    const/4 v1, 0x0

    aget v3, v0, v1

    aget v4, v0, v2

    aget v1, v0, v1

    .line 273
    invoke-virtual {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->getHostView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    aget v0, v0, v2

    .line 274
    invoke-virtual {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->getHostView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    .line 273
    invoke-virtual {p1, v3, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getWidgetContainer()Landroid/view/View;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    return-object p0
.end method

.method public getWidgetId()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mDeliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->getLayoutHost()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mDeliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->getLayoutHost()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    move-result-object p0

    .line 138
    invoke-interface {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->widgetId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public initialize(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 85
    iput-object p3, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->launcher:Lcom/miui/home/launcher/Launcher;

    .line 86
    iput-object p1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mDeliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    .line 87
    iput-object p2, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mServiceDeliveryInfo:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    if-eqz p2, :cond_0

    .line 89
    iget-object p3, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    iget-object p2, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 92
    iget-object p2, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->setIsMIUIWidget(Z)V

    .line 93
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 94
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mRoundOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public isAutoLayoutAnimating()Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mIsAutoLayoutAnimating:Z

    return p0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 0

    .line 174
    iget-boolean p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return p0
.end method

.method public onAttachPreviewLayer()V
    .locals 1

    .line 298
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mDeliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 299
    invoke-virtual {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->setDrawSnapShot(Z)V

    const-string p0, "ServiceDeliveryWidgetView"

    const-string v0, "onAttachPreviewLayer"

    .line 300
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 279
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onAttachedToWindow()V

    const-string v0, "ServiceDeliveryWidgetView"

    const-string v1, "onAttachedToWindow: "

    .line 280
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onAttachedToWindow: isRegistered"

    .line 282
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mDeliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    if-eqz p0, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->onDelete()V

    :cond_0
    return-void
.end method

.method public onDetachPreviewLayer()V
    .locals 1

    .line 305
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mDeliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->setDrawSnapShot(Z)V

    const-string p0, "ServiceDeliveryWidgetView"

    const-string v0, "onDetachPreviewLayer"

    .line 307
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 289
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onDetachedFromWindow()V

    const-string v0, "ServiceDeliveryWidgetView"

    const-string v1, "onDetachedFromWindow: "

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "onDetachedFromWindow: isRegistered"

    .line 292
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onFinishInflate()V

    const v0, 0x7f0a0425

    .line 77
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherWidgetContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    const v0, 0x7f0a0203

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/TitleTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    .line 80
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 226
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInvisible()V
    .locals 1

    .line 115
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onInvisible()V

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mDeliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->onInvisible()V

    .line 117
    invoke-direct {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->trackExposure()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AssistantBlurSupportChangeMessage;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessageEvent: message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const-string v1, "is null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceDeliveryWidgetView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageEvent: isAssistantSupportBlur = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/miui/home/launcher/common/messages/AssistantBlurSupportChangeMessage;->isAssistantSupportBlur:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mDeliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    iget-boolean p1, p1, Lcom/miui/home/launcher/common/messages/AssistantBlurSupportChangeMessage;->isAssistantSupportBlur:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->onBlurSupportChanged(Z)V

    :cond_2
    return-void
.end method

.method public onVisible()V
    .locals 2

    .line 107
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onVisible()V

    const-string v0, "ServiceDeliveryWidgetView"

    const-string v1, "onVisible"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mDeliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->onVisible()V

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->startExposureTimestamp:J

    return-void
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 199
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p0

    return p0
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setIgnoreAnimationForOnce(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIgnoreAnimationForOnce(Z)V

    return-void
.end method

.method public setIsAutoLayoutAnimating(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mIsAutoLayoutAnimating:Z

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public setWidgetTouchDetector(Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mWidgetTouchDetector:Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;

    return-void
.end method

.method public touchIn(Landroid/graphics/Rect;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->updateSizeOnIconSizeChanged()V

    .line 345
    iget-object v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mDeliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->onViewSizeChange()V

    .line 346
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz p0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->updateSizeOnIconSizeChanged()V

    :cond_0
    return-void
.end method

.method public updateWidgetSizeRanges()V
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->mDeliveryLayout:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    if-eqz p0, :cond_0

    .line 324
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method
