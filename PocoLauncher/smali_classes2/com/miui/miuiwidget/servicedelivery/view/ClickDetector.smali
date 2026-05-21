.class public Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;
.super Ljava/lang/Object;
.source "ClickDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector$OnClickDetectListener;
    }
.end annotation


# static fields
.field private static final LONG_CLICK_TIMEOUT_DEFAULT:J = 0x15eL


# instance fields
.field private mDetectListener:Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector$OnClickDetectListener;

.field private mDownTimeMillis:J

.field private mDownX:F

.field private mDownY:F

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->mTouchSlop:I

    return-void
.end method

.method private reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->mDownTimeMillis:J

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->mDownX:F

    .line 49
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->mDownY:F

    return-void
.end method


# virtual methods
.method public onDetectEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->mDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->mDownY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_6

    .line 31
    :cond_1
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->reset()V

    goto :goto_1

    .line 35
    :cond_2
    iget-wide v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->mDownTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->mDetectListener:Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector$OnClickDetectListener;

    if-nez p1, :cond_3

    goto :goto_1

    .line 38
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->mDownTimeMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x15e

    cmp-long p1, v0, v2

    if-gez p1, :cond_4

    .line 39
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->mDetectListener:Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector$OnClickDetectListener;

    invoke-interface {p1}, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector$OnClickDetectListener;->onClickDetected()V

    .line 42
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->reset()V

    goto :goto_1

    .line 25
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->mDownTimeMillis:J

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->mDownX:F

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->mDownY:F

    :cond_6
    :goto_1
    return-void
.end method

.method public setDetectListener(Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector$OnClickDetectListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector;->mDetectListener:Lcom/miui/miuiwidget/servicedelivery/view/ClickDetector$OnClickDetectListener;

    return-void
.end method
