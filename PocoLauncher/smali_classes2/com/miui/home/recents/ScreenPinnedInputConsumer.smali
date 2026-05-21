.class public Lcom/miui/home/recents/ScreenPinnedInputConsumer;
.super Ljava/lang/Object;
.source "ScreenPinnedInputConsumer.java"


# instance fields
.field private mMotionPauseDetector:Lcom/miui/home/recents/util/MotionPauseDetector;

.field private mMotionPauseMinDisplacement:F

.field private mTouchDownY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 22
    iput v0, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mTouchDownY:F

    .line 25
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mMotionPauseMinDisplacement:F

    .line 31
    new-instance v0, Lcom/miui/home/recents/util/MotionPauseDetector;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/miui/home/recents/util/MotionPauseDetector;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mMotionPauseDetector:Lcom/miui/home/recents/util/MotionPauseDetector;

    .line 32
    new-instance p1, Lcom/miui/home/recents/ScreenPinnedInputConsumer$1;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/ScreenPinnedInputConsumer$1;-><init>(Lcom/miui/home/recents/ScreenPinnedInputConsumer;)V

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/miui/home/recents/util/MotionPauseDetector$OnMotionPauseListener;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 p1, 0x3

    if-eq v1, p1, :cond_3

    goto :goto_1

    .line 48
    :cond_0
    iget v1, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mTouchDownY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 49
    iput v0, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mTouchDownY:F

    .line 51
    :cond_1
    iget v1, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mTouchDownY:F

    sub-float/2addr v1, v0

    .line 52
    iget-object v0, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mMotionPauseDetector:Lcom/miui/home/recents/util/MotionPauseDetector;

    iget v2, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mMotionPauseMinDisplacement:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lcom/miui/home/recents/util/MotionPauseDetector;->setDisallowPause(Z)V

    .line 53
    iget-object p0, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mMotionPauseDetector:Lcom/miui/home/recents/util/MotionPauseDetector;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 57
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mMotionPauseDetector:Lcom/miui/home/recents/util/MotionPauseDetector;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/MotionPauseDetector;->clear()V

    .line 58
    iput v2, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mTouchDownY:F

    goto :goto_1

    .line 45
    :cond_4
    iput v0, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mTouchDownY:F

    :goto_1
    return-void
.end method
