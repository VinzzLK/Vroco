.class public Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$SavedState;,
        Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$OnPatternListener;,
        Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;,
        Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;
    }
.end annotation


# instance fields
.field private mAnimatingPeriodStart:J

.field private final mArrowMatrix:Landroid/graphics/Matrix;

.field private mAspect:I

.field private mBitmapBtnRed:Landroid/graphics/Bitmap;

.field private mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mBitmapsPatternDisplayed:[Landroid/graphics/Bitmap;

.field private mBitmapsPatternPressed:[Landroid/graphics/Bitmap;

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDiameterFactor:F

.field private mDistancePointsHeight:I

.field private mDistancePointsWidth:I

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mIsAppPage:Z

.field private mLightMode:Z

.field private mOnPatternListener:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$OnPatternListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private mStrokeAlpha:I

.field private mWrongPathPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 273
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mDrawingProfilingStarted:Z

    .line 46
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 47
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 69
    fill-array-data v1, :array_0

    const-class v2, Z

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternDrawLookup:[[Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 75
    iput v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInProgressX:F

    .line 76
    iput v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInProgressY:F

    .line 80
    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Correct:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternDisplayMode:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    const/4 v1, 0x1

    .line 81
    iput-boolean v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInputEnabled:Z

    .line 82
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInStealthMode:Z

    .line 83
    iput-boolean v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mEnableHapticFeedback:Z

    .line 84
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternInProgress:Z

    const v0, 0x3d4ccccd    # 0.05f

    .line 86
    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mDiameterFactor:F

    const/16 v0, 0x40

    .line 87
    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mStrokeAlpha:I

    const v0, 0x3f19999a    # 0.6f

    .line 88
    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mHitFactor:F

    .line 96
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    .line 104
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 277
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 279
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 280
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 281
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mStrokeAlpha:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 282
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 283
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 284
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 286
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 287
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 288
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mStrokeAlpha:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 289
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 290
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 291
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method private addCellToPattern(Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;)V
    .locals 3

    .line 575
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 576
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->notifyCellAdded()V

    return-void
.end method

.method private checkForNewHit(FF)Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;
    .locals 1

    .line 583
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->getRowHit(F)I

    move-result p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    .line 587
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->getColumnHit(F)I

    move-result p1

    if-gez p1, :cond_1

    return-object v0

    .line 592
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object p0, p0, p2

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_2

    return-object v0

    .line 595
    :cond_2
    invoke-static {p2, p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->of(II)Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;

    move-result-object p0

    return-object p0
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 437
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v4, v4, v1

    aput-boolean v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;
    .locals 8

    .line 530
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->checkForNewHit(FF)Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    .line 535
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 536
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 537
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;

    .line 538
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getRow()I

    move-result v1

    sub-int/2addr v0, v1

    .line 539
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getColumn()I

    move-result v3

    sub-int/2addr v1, v3

    .line 541
    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getRow()I

    move-result v3

    .line 542
    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getColumn()I

    move-result v4

    .line 544
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 545
    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getRow()I

    move-result v3

    if-lez v0, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    add-int/2addr v3, v5

    .line 548
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v5, v7, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 549
    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getColumn()I

    move-result p2

    if-lez v1, :cond_2

    move v6, v2

    :cond_2
    add-int v4, p2, v6

    .line 552
    :cond_3
    invoke-static {v3, v4}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->of(II)Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;

    move-result-object p2

    :cond_4
    if-eqz p2, :cond_5

    .line 555
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternDrawLookup:[[Z

    .line 556
    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getColumn()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_5

    .line 557
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->addCellToPattern(Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;)V

    .line 559
    :cond_5
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->addCellToPattern(Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;)V

    .line 560
    iget-boolean p2, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mEnableHapticFeedback:Z

    if-eqz p2, :cond_6

    const/4 p2, 0x3

    .line 562
    :try_start_0
    invoke-virtual {p0, v2, p2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 566
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return-object p1

    :cond_7
    return-object p2
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZII)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_6

    .line 902
    iget-boolean p4, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInStealthMode:Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternDisplayMode:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    sget-object v2, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Wrong:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    if-eq p4, v2, :cond_0

    goto :goto_1

    .line 910
    :cond_0
    iget-boolean p4, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternInProgress:Z

    if-eqz p4, :cond_2

    .line 912
    iget-object p4, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapsPatternPressed:[Landroid/graphics/Bitmap;

    if-eqz p4, :cond_1

    iget-boolean v2, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mIsAppPage:Z

    if-eqz v2, :cond_1

    mul-int/lit8 p5, p5, 0x3

    add-int/2addr p5, p6

    .line 913
    aget-object p4, p4, p5

    goto :goto_3

    .line 916
    :cond_1
    iget-object p4, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 918
    :cond_2
    iget-object p4, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternDisplayMode:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    sget-object p5, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Wrong:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    if-ne p4, p5, :cond_3

    .line 920
    iget-object p4, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapBtnRed:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 921
    :cond_3
    sget-object p5, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Correct:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    if-eq p4, p5, :cond_5

    sget-object p5, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Animate:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    if-ne p4, p5, :cond_4

    goto :goto_0

    .line 926
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown display mode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternDisplayMode:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 924
    :cond_5
    :goto_0
    iget-object p4, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 904
    :cond_6
    :goto_1
    iget-object p4, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapsPatternDisplayed:[Landroid/graphics/Bitmap;

    if-eqz p4, :cond_7

    iget-boolean v2, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mIsAppPage:Z

    if-eqz v2, :cond_7

    mul-int/lit8 p5, p5, 0x3

    add-int/2addr p5, p6

    .line 905
    aget-object p4, p4, p5

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_3

    .line 908
    :cond_7
    iget-object p4, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    :goto_2
    move v0, v1

    .line 929
    :goto_3
    iget-boolean p5, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mLightMode:Z

    if-eqz p5, :cond_8

    if-nez v0, :cond_8

    if-nez v1, :cond_8

    .line 930
    iget-object p4, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapBtnRed:Landroid/graphics/Bitmap;

    .line 936
    :cond_8
    iget p5, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mSquareWidth:F

    .line 937
    iget p6, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mSquareHeight:F

    if-eqz p4, :cond_9

    .line 940
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p5, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p5, v0

    float-to-int p5, p5

    .line 941
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p6, v1

    div-float/2addr p6, v0

    float-to-int p6, p6

    .line 944
    iget v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mSquareWidth:F

    iget v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 945
    iget v2, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mSquareHeight:F

    iget v3, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 947
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int/2addr p2, p5

    int-to-float p2, p2

    add-int/2addr p3, p6

    int-to-float p3, p3

    invoke-virtual {v2, p2, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 948
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget p3, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapWidth:I

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget p5, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapHeight:I

    div-int/lit8 p5, p5, 0x2

    int-to-float p5, p5

    invoke-virtual {p2, p3, p5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 949
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 950
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget p3, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapWidth:I

    neg-int p3, p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget p5, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapHeight:I

    neg-int p5, p5

    div-int/lit8 p5, p5, 0x2

    int-to-float p5, p5

    invoke-virtual {p2, p3, p5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 952
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_9
    return-void
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 298
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getCenterXForColumn(I)F
    .locals 1

    .line 766
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mSquareWidth:F

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 1

    .line 770
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mSquareHeight:F

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method private getColumnHit(F)I
    .locals 5

    .line 625
    iget v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mSquareWidth:F

    .line 626
    iget v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mHitFactor:F

    mul-float/2addr v1, v0

    .line 628
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    int-to-float p0, p0

    sub-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr p0, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    int-to-float v3, v2

    mul-float/2addr v3, v0

    add-float/2addr v3, p0

    cmpl-float v4, p1, v3

    if-ltz v4, :cond_0

    add-float/2addr v3, v1

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getRowHit(F)I
    .locals 5

    .line 604
    iget v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mSquareHeight:F

    .line 605
    iget v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mHitFactor:F

    mul-float/2addr v1, v0

    .line 607
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    sub-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr p0, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    int-to-float v3, v2

    mul-float/2addr v3, v0

    add-float/2addr v3, p0

    cmpl-float v4, p1, v3

    if-ltz v4, :cond_0

    add-float/2addr v3, v1

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 2

    .line 742
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->resetPattern()V

    .line 743
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 744
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 745
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->detectAndAddHit(FF)Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 747
    iput-boolean v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternInProgress:Z

    .line 748
    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Correct:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternDisplayMode:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    .line 749
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->notifyPatternStarted()V

    .line 750
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 752
    iput-boolean v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternInProgress:Z

    .line 753
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->notifyPatternCleared()V

    .line 755
    :goto_0
    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInProgressX:F

    .line 756
    iput p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInProgressY:F

    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 7

    .line 698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, 0x1

    if-ge v1, v2, :cond_4

    if-ge v1, v0, :cond_0

    .line 700
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    :goto_1
    if-ge v1, v0, :cond_1

    .line 701
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v3

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 702
    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->detectAndAddHit(FF)Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;

    move-result-object v4

    .line 703
    iget-object v5, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    if-ne v5, v4, :cond_2

    .line 705
    iput-boolean v4, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternInProgress:Z

    .line 706
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->notifyPatternStarted()V

    .line 709
    :cond_2
    iget v4, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInProgressX:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 710
    iget v5, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInProgressY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    .line 712
    iget v5, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mSquareWidth:F

    const v6, 0x3c23d70a    # 0.01f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 713
    iput v2, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInProgressX:F

    .line 714
    iput v3, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInProgressY:F

    .line 715
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 0

    .line 728
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 729
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternInProgress:Z

    .line 730
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->notifyPatternDetected()V

    .line 731
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private isAccessibilityTouchEnabled(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 232
    sget-object v0, Lcom/miui/home/R$styleable;->LockPatternView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 234
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "square"

    .line 235
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 236
    iput v3, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mAspect:I

    goto :goto_0

    :cond_0
    const-string v1, "lock_width"

    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    iput v2, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mAspect:I

    goto :goto_0

    :cond_1
    const-string v1, "lock_height"

    .line 239
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    iput p2, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mAspect:I

    goto :goto_0

    :cond_2
    const-string v1, "fixed"

    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 242
    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mAspect:I

    goto :goto_0

    .line 244
    :cond_3
    iput v3, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mAspect:I

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v1, 0xb

    const/4 v4, -0x1

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0xa

    const v1, 0x3dcccccd    # 0.1f

    .line 249
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mDiameterFactor:F

    const/16 v0, 0xc

    const/16 v1, 0x80

    .line 250
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mStrokeAlpha:I

    const/4 v0, 0x6

    .line 252
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    const/4 v0, 0x5

    .line 253
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-ne v4, v0, :cond_4

    .line 255
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapBtnRed:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 257
    :cond_4
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapBtnRed:Landroid/graphics/Bitmap;

    :goto_1
    new-array v0, p2, [Landroid/graphics/Bitmap;

    .line 261
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapBtnRed:Landroid/graphics/Bitmap;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    aput-object v1, v0, v2

    :goto_2
    if-ge v3, p2, :cond_6

    .line 263
    aget-object v1, v0, v3

    if-eqz v1, :cond_5

    .line 265
    iget v2, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapWidth:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapWidth:I

    .line 266
    iget v2, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapHeight:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapHeight:I

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 269
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mOnPatternListener:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 389
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    :cond_0
    const v0, 0x7f1002bc

    .line 391
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->sendAccessEvent(I)V

    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mOnPatternListener:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 409
    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$OnPatternListener;->onPatternCleared()V

    :cond_0
    const v0, 0x7f1002bd

    .line 411
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->sendAccessEvent(I)V

    return-void
.end method

.method private notifyPatternDetected()V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mOnPatternListener:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 403
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mOnPatternListener:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 396
    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$OnPatternListener;->onPatternStart()V

    :cond_0
    const v0, 0x7f1002be

    .line 398
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->sendAccessEvent(I)V

    return-void
.end method

.method private resetPattern()V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 426
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->clearPatternDrawLookup()V

    .line 427
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Correct:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternDisplayMode:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    .line 428
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private resolveMeasured(II)I
    .locals 1

    .line 468
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 469
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    move p2, p0

    goto :goto_0

    .line 474
    :cond_0
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method private sendAccessEvent(I)V
    .locals 1

    .line 721
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    .line 722
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/4 p1, 0x0

    .line 723
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    .line 418
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->resetPattern()V

    return-void
.end method

.method public disableInput()V
    .locals 1

    const/4 v0, 0x0

    .line 447
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInputEnabled:Z

    return-void
.end method

.method public enableInput()V
    .locals 1

    const/4 v0, 0x1

    .line 454
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInputEnabled:Z

    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 0

    .line 492
    iget p0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapWidth:I

    mul-int/lit8 p0, p0, 0x3

    return p0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 0

    .line 486
    iget p0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapWidth:I

    mul-int/lit8 p0, p0, 0x3

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 775
    iget-object v9, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 776
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 777
    iget-object v11, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternDrawLookup:[[Z

    .line 779
    iget-object v0, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternDisplayMode:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Animate:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    const/4 v13, 0x1

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, v10, 0x1

    mul-int/lit16 v0, v0, 0x2bc

    .line 785
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    rem-int/2addr v1, v0

    .line 787
    div-int/lit16 v0, v1, 0x2bc

    .line 789
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->clearPatternDrawLookup()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 791
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;

    .line 792
    invoke-virtual {v3}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getRow()I

    move-result v4

    aget-object v4, v11, v4

    invoke-virtual {v3}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getColumn()I

    move-result v3

    aput-boolean v13, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v10, :cond_1

    move v2, v13

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 801
    rem-int/lit16 v1, v1, 0x2bc

    int-to-float v1, v1

    const/high16 v2, 0x442f0000    # 700.0f

    div-float/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    .line 805
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;

    .line 806
    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getColumn()I

    move-result v3

    invoke-direct {v7, v3}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->getCenterXForColumn(I)F

    move-result v3

    .line 807
    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getRow()I

    move-result v2

    invoke-direct {v7, v2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->getCenterYForRow(I)F

    move-result v2

    .line 809
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;

    .line 811
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getColumn()I

    move-result v4

    invoke-direct {v7, v4}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->getCenterXForColumn(I)F

    move-result v4

    sub-float/2addr v4, v3

    mul-float/2addr v4, v1

    .line 813
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->getCenterYForRow(I)F

    move-result v0

    sub-float/2addr v0, v2

    mul-float/2addr v1, v0

    add-float/2addr v3, v4

    .line 814
    iput v3, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInProgressX:F

    add-float/2addr v2, v1

    .line 815
    iput v2, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInProgressY:F

    .line 818
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 821
    :cond_3
    iget v14, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mSquareWidth:F

    .line 822
    iget v15, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mSquareHeight:F

    .line 824
    iget v0, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mDiameterFactor:F

    mul-float/2addr v0, v14

    .line 825
    iget-object v1, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 826
    iget-object v1, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 828
    iget-object v6, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 829
    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 832
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 833
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    const/4 v3, 0x0

    :goto_2
    const/4 v2, 0x3

    if-ge v3, v2, :cond_5

    int-to-float v0, v5

    int-to-float v1, v3

    mul-float/2addr v1, v15

    add-float/2addr v1, v0

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_4

    int-to-float v2, v4

    int-to-float v12, v0

    mul-float/2addr v12, v14

    add-float/2addr v2, v12

    float-to-int v2, v2

    float-to-int v12, v1

    .line 840
    aget-object v18, v11, v3

    aget-boolean v18, v18, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object/from16 v1, p1

    const/16 v16, 0x3

    move/from16 v21, v3

    move v3, v12

    move v12, v4

    move/from16 v4, v18

    move/from16 v18, v5

    move/from16 v5, v21

    move-object/from16 v22, v6

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZII)V

    add-int/lit8 v0, v19, 0x1

    move v4, v12

    move/from16 v2, v16

    move/from16 v5, v18

    move/from16 v1, v20

    move/from16 v3, v21

    move-object/from16 v6, v22

    goto :goto_3

    :cond_4
    move/from16 v21, v3

    move v12, v4

    move/from16 v18, v5

    move-object/from16 v22, v6

    add-int/lit8 v3, v21, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v22, v6

    .line 848
    iget-boolean v0, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInStealthMode:Z

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternDisplayMode:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Wrong:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    move v0, v13

    .line 851
    :goto_5
    iget-object v1, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    move v1, v13

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    .line 852
    :goto_6
    iget-object v2, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz v0, :cond_f

    const/4 v12, 0x0

    const/16 v17, 0x0

    :goto_7
    if-ge v12, v10, :cond_b

    .line 857
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;

    .line 862
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getRow()I

    move-result v2

    aget-object v2, v11, v2

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getColumn()I

    move-result v3

    aget-boolean v2, v2, v3

    if-nez v2, :cond_9

    goto :goto_9

    .line 867
    :cond_9
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getColumn()I

    move-result v2

    invoke-direct {v7, v2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 868
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->getCenterYForRow(I)F

    move-result v0

    if-nez v12, :cond_a

    move-object/from16 v3, v22

    .line 870
    invoke-virtual {v3, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_8

    :cond_a
    move-object/from16 v3, v22

    .line 872
    invoke-virtual {v3, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_8
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v22, v3

    move/from16 v17, v13

    goto :goto_7

    :cond_b
    :goto_9
    move-object/from16 v3, v22

    .line 877
    iget-boolean v0, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternInProgress:Z

    if-nez v0, :cond_c

    iget-object v0, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternDisplayMode:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    sget-object v2, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Animate:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    if-ne v0, v2, :cond_d

    :cond_c
    if-eqz v17, :cond_d

    .line 879
    iget v0, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInProgressX:F

    iget v2, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInProgressY:F

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 881
    :cond_d
    iget-object v0, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternDisplayMode:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    sget-object v2, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Wrong:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    if-eq v0, v2, :cond_e

    .line 882
    iget-object v0, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 884
    :cond_e
    iget-object v0, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 888
    :cond_f
    :goto_a
    iget-object v0, v7, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 641
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->isAccessibilityTouchEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 642
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 651
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 645
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 648
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 654
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 655
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 657
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 497
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 498
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 499
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->resolveMeasured(II)I

    move-result p1

    .line 500
    invoke-direct {p0, p2, v1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->resolveMeasured(II)I

    move-result p2

    .line 502
    iget v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mAspect:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_3

    .line 513
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mDistancePointsWidth:I

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 514
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0705e5

    if-eqz v1, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mDistancePointsWidth:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 515
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget p2, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mDistancePointsHeight:I

    :goto_2
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_3

    .line 510
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_3

    .line 507
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_3

    .line 504
    :cond_6
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    move p2, p1

    .line 518
    :goto_3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 459
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p1, p3

    .line 460
    iput p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mSquareWidth:F

    .line 462
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    div-float/2addr p1, p3

    .line 463
    iput p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mSquareHeight:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 667
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInputEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 670
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    return v1

    .line 681
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->resetPattern()V

    .line 682
    iput-boolean v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternInProgress:Z

    .line 683
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->notifyPatternCleared()V

    return v2

    .line 678
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    return v2

    .line 675
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    return v2

    .line 672
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public setAppPage(Z)V
    .locals 0

    .line 974
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mIsAppPage:Z

    return-void
.end method

.method public setDisplayMode(Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;)V
    .locals 2

    .line 372
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPatternDisplayMode:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    .line 373
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Animate:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_1

    .line 374
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mAnimatingPeriodStart:J

    .line 379
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;

    .line 380
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getColumn()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->getCenterXForColumn(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInProgressX:F

    .line 381
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getRow()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->getCenterYForRow(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInProgressY:F

    .line 382
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->clearPatternDrawLookup()V

    goto :goto_0

    .line 375
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 384
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0

    .line 323
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mInStealthMode:Z

    return-void
.end method

.method public setLightMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 958
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mLightMode:Z

    .line 959
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnPatternListener(Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$OnPatternListener;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mOnPatternListener:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$OnPatternListener;

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    .line 333
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method

.method public updateBitmapForUiMode(Ljava/lang/Boolean;)V
    .locals 2

    .line 1056
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0806af

    .line 1057
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapBtnRed:Landroid/graphics/Bitmap;

    .line 1058
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0806aa

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_1
    const v0, 0x7f0806ae

    .line 1061
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapBtnRed:Landroid/graphics/Bitmap;

    .line 1062
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const v0, 0x7f0806ac

    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 1065
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
