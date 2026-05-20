.class public Lcom/miui/home/launcher/LauncherWidgetView;
.super Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;
.source "LauncherWidgetView.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.implements Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;
.implements Lcom/miui/home/launcher/HostViewContainer;
.implements Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;
.implements Lcom/miui/miuiwidget/LargeScreenTouchTarget;
.implements Lcom/miui/home/launcher/DragController$VisualizeCalibration;
.implements Lcom/miui/miuiwidget/servicedelivery/appwidget/IAppWidgetView;


# instance fields
.field private isFirstMiuiUpdate:Z

.field private isUseOpenWindowTransitionAnim:Z

.field private mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

.field private mBroadCastRetryCount:I

.field private mIsAppDataCleared:Z

.field private mIsAutoLayoutAnimating:Z

.field private mIsEnableAutoLayoutAnimation:Z

.field private mLastBroadcastRetryTime:J

.field private mLastBroadcastTime:J

.field private mLastUpdateTime:J

.field private mSkipNextAutoLayoutAnimation:Z

.field private mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

.field private mWidgetTouchDetector:Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;


# direct methods
.method public static synthetic $r8$lambda$4ZndngUkl9IedR_Ll4K53qdCP1I(Lcom/miui/home/launcher/LauncherWidgetView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->lambda$onVisible$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$C06AEUWO6y4mep3PsOwMbs_CW8M(Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherWidgetView;->lambda$onProviderChanged$2(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uma-4M-j74MOQxchDF_ROtcrsuM(Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherWidgetView;->lambda$onProviderChanged$1(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p2, 0x1

    .line 51
    iput-boolean p2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEnableAutoLayoutAnimation:Z

    .line 53
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isUseOpenWindowTransitionAnim:Z

    .line 64
    iput-boolean p2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isFirstMiuiUpdate:Z

    return-void
.end method

.method private getTouchViewOptions(Landroid/graphics/Rect;Landroid/view/View;Landroid/graphics/Rect;[I)Landroid/os/Bundle;
    .locals 4

    .line 486
    invoke-virtual {p2, p4}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    .line 487
    aget v0, p4, p0

    const/4 v1, 0x1

    aget v2, p4, v1

    aget p0, p4, p0

    .line 489
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr p0, v3

    aget p4, p4, v1

    .line 490
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr p4, v1

    .line 487
    invoke-virtual {p3, v0, v2, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 491
    instance-of p0, p2, Lcom/miui/miuiwidget/LargeScreenSupporter;

    if-eqz p0, :cond_1

    .line 492
    move-object p0, p2

    check-cast p0, Lcom/miui/miuiwidget/LargeScreenSupporter;

    .line 493
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-nez p2, :cond_1

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "Launcher:WidgetView"

    const-string p2, "find touch view"

    .line 494
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-interface {p0}, Lcom/miui/miuiwidget/LargeScreenSupporter;->getLargeScreenOptions()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTouchViewOptions(Landroid/graphics/Rect;Landroid/view/ViewGroup;)Landroid/os/Bundle;
    .locals 5

    .line 460
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 462
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/home/launcher/LauncherWidgetView;->getTouchViewOptions(Landroid/graphics/Rect;Landroid/view/View;Landroid/graphics/Rect;[I)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    .line 467
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 468
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 469
    invoke-direct {p0, p1, v3, v0, v1}, Lcom/miui/home/launcher/LauncherWidgetView;->getTouchViewOptions(Landroid/graphics/Rect;Landroid/view/View;Landroid/graphics/Rect;[I)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    return-object v4

    .line 474
    :cond_1
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 475
    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/LauncherWidgetView;->getTouchViewOptions(Landroid/graphics/Rect;Landroid/view/ViewGroup;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onProviderChanged$1(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 1

    .line 425
    iget-boolean v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mDisplayTitle:Z

    if-nez v0, :cond_0

    return-void

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p0

    iget-boolean p1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onProviderChanged$2(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 2

    .line 422
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->initMiuiAttribute(Landroid/content/ComponentName;)V

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMiuiAttribute isMIUIWidget = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher:WidgetView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v0, Lcom/miui/home/launcher/LauncherWidgetView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/LauncherWidgetView$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onVisible$0()V
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mVisible:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->onMiuiWidgetUpdate()V

    :cond_0
    return-void
.end method

.method private onAppDataCleared(Ljava/lang/String;)V
    .locals 2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppDataCleared "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isVisible = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mVisible:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher:WidgetView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 410
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsAppDataCleared:Z

    .line 411
    iget-boolean p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mVisible:Z

    if-eqz p1, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->onMiuiWidgetUpdate()V

    :cond_0
    return-void
.end method

.method private onMiuiWidgetUpdate()V
    .locals 13

    .line 268
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    const-string v1, "Launcher:WidgetView"

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMiuiWidgetUpdate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object v0

    .line 272
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    if-nez v2, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    const-string p0, "onMiuiWidgetUpdate itemInfo from tag is null!"

    .line 276
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 279
    :cond_2
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v2

    if-gtz v2, :cond_3

    .line 281
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMiuiWidgetUpdate appWidgetId is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 284
    :cond_3
    iget-boolean v3, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-nez v3, :cond_4

    const-string p0, "onMiuiWidgetUpdate widget is not miuiWidget!"

    .line 285
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 289
    :cond_4
    iget-boolean v3, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsAppDataCleared:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_a

    .line 290
    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->needRefreshWhenExposure()Z

    move-result v3

    if-nez v3, :cond_5

    const-string p0, "onMiuiWidgetUpdate widget dont need refresh!"

    .line 291
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 294
    :cond_5
    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->getMIUIWidgetRefreshMinInterval()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gtz v3, :cond_6

    const-string p0, "onMiuiWidgetUpdate widget refreshMinInterval less than zero!"

    .line 296
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 299
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 300
    iget-wide v10, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastBroadcastTime:J

    sub-long v10, v8, v10

    cmp-long v3, v10, v6

    if-gtz v3, :cond_a

    const-string v3, "onMiuiWidgetUpdate widget update less than minInterval!"

    .line 301
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-wide v6, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastBroadcastRetryTime:J

    sub-long/2addr v8, v6

    const v3, 0xea60

    iget v10, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBroadCastRetryCount:I

    add-int/lit8 v11, v10, 0x1

    mul-int/2addr v11, v3

    int-to-long v11, v11

    cmp-long v3, v8, v11

    if-gez v3, :cond_7

    const-string p0, "onMiuiWidgetUpdate widget update less than minRetryInterval!"

    .line 305
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 307
    :cond_7
    iget-wide v8, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastUpdateTime:J

    cmp-long v3, v8, v6

    if-lez v3, :cond_8

    const-string p0, "onMiuiWidgetUpdate widget update after broadcast!"

    .line 308
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    const/4 v3, 0x3

    if-lt v10, v3, :cond_9

    const-string p0, "onMiuiWidgetUpdate retryCount more than 3"

    .line 314
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    const-string v3, "onMiuiWidgetUpdate no update received after 1 minutes of broadcast"

    .line 318
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget v3, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBroadCastRetryCount:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBroadCastRetryCount:I

    move v3, v4

    goto :goto_0

    :cond_a
    move v3, v5

    :goto_0
    :try_start_0
    new-array v4, v4, [I

    aput v2, v4, v5

    .line 326
    iget-object v6, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    .line 327
    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 326
    invoke-virtual {v0, v4, v6}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->obtainMIUIWidgetUpdateIntent([ILandroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 329
    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;->getIntentExtra(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 330
    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;->getDeliveryWidgetData(Landroid/view/View;)Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;

    move-result-object v7

    if-eqz v7, :cond_b

    const-string v8, "parent_widget_id"

    .line 332
    iget v9, v7, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;->parentWidgetId:I

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "miuiDeliveryWidgetId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;->parentWidgetId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "instanceId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView$Data;->instanceId:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "miuiDeliveryIntentExtraOption"

    .line 337
    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    :cond_c
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 340
    iput-boolean v5, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isFirstMiuiUpdate:Z

    if-eqz v3, :cond_d

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastBroadcastRetryTime:J

    goto :goto_1

    .line 344
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastBroadcastTime:J

    .line 345
    iput-wide v3, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastBroadcastRetryTime:J

    .line 347
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMiuiWidgetUpdate broadcasst success, mIsAppDataCleared = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsAppDataCleared:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " appWidgetId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iput-boolean v5, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsAppDataCleared:Z

    .line 351
    iget-boolean v2, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsEditMode:Z

    if-nez v2, :cond_e

    .line 352
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackRefreshMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "onMiuiWidgetUpdate"

    .line 356
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_2
    return-void
.end method

.method private onWidgetTouched(Landroid/view/MotionEvent;)V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetTouchDetector:Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;

    if-eqz v0, :cond_0

    .line 529
    invoke-interface {v0, p1, p0}, Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;->onWidgetTouched(Landroid/view/MotionEvent;Landroid/view/View;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 523
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherWidgetView;->onWidgetTouched(Landroid/view/MotionEvent;)V

    .line 524
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 512
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->isForbidLaunchSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "dispatchTouchEvent: isForbidLaunchSplit = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher:WidgetView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 517
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherWidgetView;->onWidgetTouched(Landroid/view/MotionEvent;)V

    .line 518
    invoke-super {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public doSetFrame(IIII)Z
    .locals 0

    .line 169
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p0

    return p0
.end method

.method public getAnimTargetContainerView()Landroid/view/View;
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    return-object p0
.end method

.method public bridge synthetic getAnimTargetHeight()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetHeight()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getAnimTargetOriginalLocation()Landroid/graphics/Rect;
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getAnimTargetOriginalLocation()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAnimTargetVisibility()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetVisibility()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getAnimTargetWidth()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetWidth()I

    move-result p0

    return p0
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public getBindAppPackage()Ljava/lang/String;
    .locals 1

    .line 212
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 214
    instance-of v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 215
    check-cast p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 216
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getBoundsOnScreen()Landroid/graphics/Rect;
    .locals 1

    .line 503
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 504
    invoke-virtual {p0, p0, v0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getBoundsOnScreenInternal(Lcom/miui/home/launcher/HostViewContainer;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public bridge synthetic getContentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getCornerRadius()F
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    if-eqz v1, :cond_0

    .line 546
    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getEnforcedCornerRadius()F

    move-result p0

    return p0

    .line 548
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getHeightDiffBetweenImageAndImageView()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getHeightDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method public getHostView()Landroid/appwidget/AppWidgetHostView;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    return-object p0
.end method

.method public bridge synthetic getHostView()Landroid/view/View;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object p0

    return-object p0
.end method

.method public getIconRadius()F
    .locals 0

    .line 381
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getCornerRadius()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getIconTransparentEdge()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result p0

    return p0
.end method

.method public getItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 572
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object p0

    return-object p0
.end method

.method public getItemInfoFromTag()Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    .locals 1

    .line 361
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 362
    instance-of v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 363
    check-cast p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

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

    .line 160
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return p0
.end method

.method public getTargetRootView()Landroid/view/View;
    .locals 0

    .line 386
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTitleView()Landroid/view/View;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p0

    return-object p0
.end method

.method public getTitleView()Lcom/miui/home/launcher/TitleTextView;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    return-object p0
.end method

.method public getTouchViewOptions(Landroid/graphics/Rect;)Landroid/os/Bundle;
    .locals 0

    .line 456
    invoke-direct {p0, p1, p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTouchViewOptions(Landroid/graphics/Rect;Landroid/view/ViewGroup;)Landroid/os/Bundle;

    move-result-object p0

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

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    const/4 v0, 0x0

    .line 111
    aget v2, p1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, p1, v0

    .line 112
    aget v0, p1, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    aput v0, p1, v1

    return-void
.end method

.method public getVisionOffset([I)V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    return-void
.end method

.method public getVisionRect(Landroid/graphics/Rect;)V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 117
    fill-array-data v0, :array_0

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p0, v0, v2}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    const/4 v1, 0x0

    aget v3, v0, v1

    aget v4, v0, v2

    aget v1, v0, v1

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    aget v0, v0, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

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

    .line 567
    iget-object p0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    return-object p0
.end method

.method public getWidgetId()I
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public bridge synthetic getWidthDiffBetweenImageAndImageView()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getWidthDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method public isAutoLayoutAnimating()Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsAutoLayoutAnimating:Z

    return p0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return p0
.end method

.method public isMiuiWidget()Z
    .locals 0

    .line 203
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-boolean p0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    return p0
.end method

.method public isUseTransitionAnimation()Z
    .locals 0

    .line 391
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isUseOpenWindowTransitionAnim:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onAttachedToWindow()V

    .line 90
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onDetachedFromWindow()V

    .line 98
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onFinishInflate()V

    const v0, 0x7f0a0203

    .line 81
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/TitleTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    .line 83
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method public onInvisible()V
    .locals 0

    .line 249
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onInvisible()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 396
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 402
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->onAppDataCleared(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onProviderChanged()V
    .locals 2

    .line 417
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 421
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/LauncherWidgetView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/LauncherWidgetView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 538
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 539
    check-cast p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->onScreenSizeChanged()V

    :cond_0
    return-void
.end method

.method public onSizeChanged()V
    .locals 1

    .line 239
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    if-nez p0, :cond_0

    return-void

    .line 242
    :cond_0
    instance-of v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    if-eqz v0, :cond_1

    .line 243
    check-cast p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->onScreenSizeChanged()V

    :cond_1
    return-void
.end method

.method public onVisible()V
    .locals 4

    .line 225
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onVisible()V

    .line 226
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isFirstMiuiUpdate:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xc8

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x258

    .line 227
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVisible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher:WidgetView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    new-instance v2, Lcom/miui/home/launcher/LauncherWidgetView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/LauncherWidgetView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/LauncherWidgetView;)V

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onWidgetUpdate(Landroid/widget/RemoteViews;)V
    .locals 3

    .line 254
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    if-nez p1, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    const-string v0, "Launcher:WidgetView"

    if-eqz p1, :cond_1

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWidgetUpdate id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "onWidgetUpdate appWidgetInfo is null"

    .line 261
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastUpdateTime:J

    const/4 p1, 0x0

    .line 264
    iput p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBroadCastRetryCount:I

    return-void
.end method

.method protected overrideSetFrame()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic setAnimTargetAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->setAnimTargetAlpha(F)V

    return-void
.end method

.method public bridge synthetic setAnimTargetVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->setAnimTargetVisibility(I)V

    return-void
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
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

    .line 146
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsAutoLayoutAnimating:Z

    return-void
.end method

.method public setIsDrawPagToContent(Z)V
    .locals 0

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method setWidget(Landroid/appwidget/AppWidgetHostView;)V
    .locals 3

    .line 123
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 125
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    if-eqz v0, :cond_2

    .line 126
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    .line 127
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidget(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v2, v0}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetTransitionAnimation(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isUseOpenWindowTransitionAnim:Z

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->setIsMIUIWidget(Z)V

    .line 134
    :cond_1
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->bindWidgetUpdateListener(Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;)V

    :cond_2
    return-void
.end method

.method public setWidgetTouchDetector(Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetTouchDetector:Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;

    return-void
.end method

.method public supportSizeAdapt()Z
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->isMiuiWidget()Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz v0, :cond_0

    iget p0, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public touchIn(Landroid/graphics/Rect;)Z
    .locals 6

    .line 438
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object p0

    .line 439
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 445
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    .line 446
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/graphics/Rect;->top:I

    .line 447
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/graphics/Rect;->right:I

    .line 448
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 449
    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-direct {v0, v2, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 450
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr p0, v0

    int-to-float p0, p0

    .line 451
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/2addr v0, p1

    int-to-float p1, v0

    div-float/2addr p1, p0

    const/high16 p0, 0x40000000    # 2.0f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->updateSizeOnIconSizeChanged()V

    .line 557
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    if-eqz v1, :cond_0

    .line 558
    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->onScreenSizeChanged()V

    .line 560
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz p0, :cond_1

    .line 561
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->updateSizeOnIconSizeChanged()V

    :cond_1
    return-void
.end method
