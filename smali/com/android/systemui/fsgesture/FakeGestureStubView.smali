.class public Lcom/android/systemui/fsgesture/FakeGestureStubView;
.super Landroid/widget/FrameLayout;
.source "FakeGestureStubView.java"


# instance fields
.field private mAssistX1:F

.field private mAssistX2:F

.field private mBesideNotchArrowXStart:I

.field private mContext:Landroid/content/Context;

.field private mCurrAction:I

.field private mCurrX:F

.field private mCurrY:F

.field private mDensity:F

.field private mDisplay:Landroid/view/Display;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mDownX:F

.field private mDownY:F

.field private mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

.field private mGestureStubDefaultSize:I

.field private mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

.field private mGestureStubPos:I

.field private mGestureStubSize:I

.field private mIsGestureAnimationEnabled:Z

.field private mIsGestureStarted:Z

.field private mKeepHidden:Z

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mLocation:[I

.field private mNeedAdaptRotation:Z

.field private mNeedAdjustArrowPosition:Z

.field private mNeedRender:Z

.field private mNotchHeight:I

.field private mNotchWidth:I

.field private mRotation:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private adaptNotch()V
    .locals 5

    .line 475
    invoke-static {}, Lcom/android/systemui/navigationbar/Utils;->isNotch()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mNotchHeight:I

    if-lez v0, :cond_6

    .line 476
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/high16 v1, 0x43240000    # 164.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    .line 502
    iget v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubDefaultSize:I

    iput v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubSize:I

    .line 503
    iput-boolean v2, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mNeedAdjustArrowPosition:Z

    .line 504
    iput v2, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mBesideNotchArrowXStart:I

    goto :goto_2

    .line 490
    :cond_0
    iget v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubPos:I

    if-ne v0, v3, :cond_1

    .line 491
    iget v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubDefaultSize:I

    iget v2, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mNotchHeight:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubSize:I

    .line 492
    iput-boolean v3, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mNeedAdjustArrowPosition:Z

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 494
    iget v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubDefaultSize:I

    iput v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubSize:I

    .line 495
    iput-boolean v2, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mNeedAdjustArrowPosition:Z

    .line 497
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mNotchWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mDensity:F

    mul-float/2addr v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    .line 498
    iget v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mNotchHeight:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mBesideNotchArrowXStart:I

    goto :goto_2

    .line 478
    :cond_3
    iget v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubPos:I

    if-nez v0, :cond_4

    .line 479
    iget v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubDefaultSize:I

    iget v2, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mNotchHeight:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubSize:I

    .line 480
    iput-boolean v3, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mNeedAdjustArrowPosition:Z

    goto :goto_1

    :cond_4
    if-ne v0, v3, :cond_5

    .line 482
    iget v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubDefaultSize:I

    iput v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubSize:I

    .line 483
    iput-boolean v2, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mNeedAdjustArrowPosition:Z

    .line 485
    :cond_5
    :goto_1
    iget v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mNotchWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mDensity:F

    mul-float/2addr v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    .line 486
    iget v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mNotchHeight:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mBesideNotchArrowXStart:I

    :cond_6
    :goto_2
    return-void
.end method

.method private adaptNotchHidden()V
    .locals 1

    .line 944
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mNeedAdaptRotation:Z

    if-eqz v0, :cond_0

    .line 945
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FakeGestureStubView;->rotateGesture()V

    :cond_0
    const/4 v0, 0x0

    .line 947
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mNeedAdaptRotation:Z

    return-void
.end method

.method private adaptRotation(Z)V
    .locals 2

    .line 935
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-nez p1, :cond_0

    .line 936
    iget v1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mRotation:I

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mRotation:I

    sub-int/2addr p1, v0

    .line 937
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 938
    :cond_1
    iput v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mRotation:I

    .line 939
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FakeGestureStubView;->rotateGesture()V

    :cond_2
    return-void
.end method

.method private clearMessages()V
    .locals 0

    const/4 p0, 0x0

    .line 750
    throw p0
.end method

.method private getAnimatingLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .line 629
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7eb

    const/16 v4, 0x128

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v0, 0x1

    .line 637
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 638
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    return-object p0
.end method

.method private getGestureStubWindowParam()Landroid/view/WindowManager$LayoutParams;
    .locals 10

    .line 579
    iget v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubPos:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 580
    iget v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubSize:I

    const/4 v2, -0x1

    goto :goto_0

    .line 583
    :cond_0
    iget v2, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubSize:I

    .line 584
    iget v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mScreenWidth:I

    int-to-float v0, v0

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    :goto_0
    move v5, v0

    move v4, v2

    .line 586
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    const/4 v9, 0x1

    if-nez v0, :cond_1

    .line 587
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x7eb

    const/16 v7, 0x128

    const/4 v8, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    .line 595
    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 596
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 597
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    goto :goto_1

    .line 599
    :cond_1
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 600
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 603
    :goto_1
    iget v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubPos:I

    const/16 v3, 0x50

    if-ne v0, v1, :cond_2

    .line 604
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "GestureStubBottom"

    .line 605
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 606
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0

    :cond_2
    if-nez v0, :cond_3

    move v2, v9

    :cond_3
    if-eqz v2, :cond_4

    const/4 v0, 0x3

    goto :goto_2

    :cond_4
    const/4 v0, 0x5

    .line 613
    :goto_2
    iget v4, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mRotation:I

    if-eqz v4, :cond_6

    if-ne v4, v1, :cond_5

    goto :goto_3

    :cond_5
    const/16 v3, 0x10

    .line 619
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    goto :goto_4

    :cond_6
    :goto_3
    const/high16 v1, 0x41500000    # 13.0f

    .line 615
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v1

    iget v1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v4, v1

    .line 616
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 622
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    or-int/2addr v0, v3

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v2, :cond_7

    const-string v0, "GestureStubLeft"

    goto :goto_5

    :cond_7
    const-string v0, "GestureStubRight"

    .line 623
    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 625
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method private initScreenSizeAndDensity(I)V
    .locals 2

    .line 444
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 445
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mDisplay:Landroid/view/Display;

    .line 446
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 448
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-le v1, v0, :cond_0

    .line 449
    iput v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mScreenWidth:I

    .line 450
    iput v1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mScreenHeight:I

    goto :goto_0

    .line 452
    :cond_0
    iput v1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mScreenWidth:I

    .line 453
    iput v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mScreenHeight:I

    :goto_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 457
    iget p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mScreenWidth:I

    const/16 v0, 0x2d0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x438

    const/16 v1, 0x36

    if-eq p1, v0, :cond_1

    .line 465
    iput v1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubSize:I

    iput v1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    .line 459
    :cond_1
    iput v1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubSize:I

    iput v1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    :cond_2
    const/16 p1, 0x28

    .line 462
    iput p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubSize:I

    iput p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    .line 468
    :cond_3
    iput p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubSize:I

    iput p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubDefaultSize:I

    .line 471
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mDensity:F

    return-void
.end method

.method private resetRenderProperty(Ljava/lang/String;)V
    .locals 2

    .line 546
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mKeepHidden:Z

    if-eqz v0, :cond_0

    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 550
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FakeGestureStubView;->getGestureStubWindowParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 549
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetRenderProperty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GestureStubView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 555
    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mNeedRender:Z

    .line 556
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private rotateGesture()V
    .locals 2

    .line 951
    iget v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubDefaultSize:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fsgesture/FakeGestureStubView;->setSize(I)V

    .line 952
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    if-eqz v0, :cond_0

    .line 953
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 954
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mDisplay:Landroid/view/Display;

    .line 955
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 956
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setDisplayWidth(I)V

    :cond_0
    return-void
.end method

.method static supportNextTask(Landroid/app/KeyguardManager;Landroid/content/ContentResolver;)Z
    .locals 0

    .line 271
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/fsgesture/GestureLineUtils;->isUserSetUp(Landroid/content/ContentResolver;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9

    .line 528
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mNeedRender:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 529
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 530
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gatherTransparentRegion: need render w:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GestureStubView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 535
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mLocation:[I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 536
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mLocation:[I

    const/4 v2, 0x0

    aget v4, p0, v2

    const/4 v3, 0x1

    .line 537
    aget v5, p0, v3

    add-int v6, v4, v0

    add-int v7, v5, v1

    .line 538
    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return v2

    .line 542
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p0

    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 51
    invoke-super {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    .line 51
    invoke-super {p0}, Landroid/widget/FrameLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 306
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 p0, 0x0

    .line 307
    throw p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 392
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    and-int/lit16 v0, p1, 0x400

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit16 v3, p1, 0x800

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 398
    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mKeepHidden:Z

    if-nez p1, :cond_4

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    const/4 p1, -0x1

    .line 399
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FakeGestureStubView;->initScreenSizeAndDensity(I)V

    .line 400
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    if-eqz p1, :cond_3

    .line 401
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 403
    :cond_3
    iget p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubPos:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/fsgesture/FakeGestureStubView;->setGestureStubPosition(I)V

    .line 410
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/systemui/fsgesture/FakeGestureStubView;->adaptRotation(Z)V

    .line 411
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FakeGestureStubView;->adaptNotchHidden()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 370
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 p0, 0x0

    .line 371
    throw p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mCurrAction:I

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    goto/16 :goto_2

    .line 668
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mCurrX:F

    .line 669
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mCurrY:F

    .line 671
    iget v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mDownY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    iget v3, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mCurrX:F

    iget v4, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mDownX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v0

    cmpl-float p1, p1, v3

    if-lez p1, :cond_8

    iget-boolean p0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mIsGestureStarted:Z

    if-eqz p0, :cond_1

    goto :goto_2

    .line 674
    :cond_1
    throw v1

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_3

    return v3

    .line 691
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mCurrX:F

    .line 692
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mCurrY:F

    .line 693
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 696
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x96

    cmp-long p1, v3, v5

    if-gez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mIsGestureStarted:Z

    if-nez p1, :cond_5

    .line 698
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FakeGestureStubView;->clearMessages()V

    .line 700
    iget p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mCurrX:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr p1, v3

    .line 701
    iget v3, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mCurrY:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    sub-float/2addr v3, v0

    .line 703
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mIsGestureStarted:Z

    if-nez v0, :cond_5

    .line 704
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_5

    .line 705
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-lez p1, :cond_4

    goto :goto_0

    .line 706
    :cond_4
    throw v1

    .line 718
    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mIsGestureStarted:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mIsGestureAnimationEnabled:Z

    if-nez p1, :cond_6

    goto :goto_1

    .line 719
    :cond_6
    throw v1

    .line 723
    :cond_7
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mIsGestureStarted:Z

    :cond_8
    :goto_2
    return v2

    .line 648
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mAssistX2:F

    iput v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mAssistX1:F

    iput v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mDownX:F

    iput v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mCurrX:F

    .line 649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mDownY:F

    iput v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mCurrY:F

    .line 650
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_a

    .line 651
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 653
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 656
    throw v1
.end method

.method public setGestureStubPosition(I)V
    .locals 2

    .line 739
    iput p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubPos:I

    .line 740
    new-instance p1, Lcom/android/systemui/fsgesture/GestureBackArrowView;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubPos:I

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 741
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 743
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 744
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mDisplay:Landroid/view/Display;

    .line 745
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 746
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setDisplayWidth(I)V

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 510
    iput p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubDefaultSize:I

    iput p1, p0, Lcom/android/systemui/fsgesture/FakeGestureStubView;->mGestureStubSize:I

    .line 511
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FakeGestureStubView;->adaptNotch()V

    .line 518
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "setSize"

    .line 519
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FakeGestureStubView;->resetRenderProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 522
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
