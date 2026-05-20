.class public final Lcom/miui/home/recents/GestureHomeCalculator;
.super Ljava/lang/Object;
.source "GestureHomeCalculator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/GestureHomeCalculator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/GestureHomeCalculator$Companion;


# instance fields
.field private mCurTaskAlpha:F

.field private mCurTaskFullscreenProgress:F

.field private mCurTaskHeight:F

.field private mCurTaskRadius:F

.field private mCurTaskRatio:F

.field private mCurTaskWidth:F

.field private mCurTaskX:F

.field private mCurTaskY:F

.field private mCurrX:F

.field private mCurrY:F

.field private mDelta:F

.field private mDownTime:J

.field private mDownX:F

.field private mDownY:F

.field private mFollowTailDistance:F

.field private mFollowTailX:F

.field private mFollowTailXDelta:F

.field private mFollowTailY:F

.field private mFollowTailYDelta:F

.field private mGesturePosition:I

.field private mInitX:F

.field private mInitY:F

.field private mIsSafeArea:Z

.field private mIsVertical:Z

.field private mLastVelocity:F

.field private mPer:F

.field private mPivotLocX:F

.field private mPivotLocY:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTaskViewWidth:F

.field private mTaskViewX:F

.field private final mTempCurrentRectF:Landroid/graphics/RectF;

.field private final mVelocityPxPerMs:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/GestureHomeCalculator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/GestureHomeCalculator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/GestureHomeCalculator;->Companion:Lcom/miui/home/recents/GestureHomeCalculator$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mGesturePosition:I

    .line 73
    new-instance p1, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mVelocityPxPerMs:Landroid/graphics/PointF;

    .line 75
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mTempCurrentRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private final calculatePer(Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;)V
    .locals 2

    .line 111
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mGesturePosition:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 121
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurrY:F

    iget v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mDownY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mScreenHeight:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_0
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurrX:F

    iget v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mScreenWidth:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_1
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mDownX:F

    iget v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurrX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mScreenWidth:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_2
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurrY:F

    iget v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mDownY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mScreenHeight:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 111
    :goto_0
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 123
    invoke-virtual {p1, v1, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculatePer(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPer:F

    return-void
.end method

.method private final calculateTaskAlpha()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 199
    iput v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskAlpha:F

    return v0
.end method

.method private final calculateTaskFullscreenProgress()F
    .locals 3

    const/4 v0, 0x2

    int-to-float v0, v0

    .line 190
    iget v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPer:F

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getPercentsValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskFullscreenProgress:F

    return v0
.end method

.method private final calculateTaskSize(Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;Landroid/graphics/Rect;)V
    .locals 2

    .line 130
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mGesturePosition:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPer:F

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskWidth(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskHeight:F

    .line 138
    iget p2, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskRatio:F

    div-float/2addr p1, p2

    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskWidth:F

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPer:F

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskWidth(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskWidth:F

    .line 133
    iget p2, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskRatio:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskHeight:F

    :goto_0
    return-void
.end method

.method private final calculateTaskXY(Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;Landroid/graphics/Rect;I)V
    .locals 7

    .line 208
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mGesturePosition:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mDownY:F

    .line 228
    iget v4, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurrY:F

    .line 229
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 230
    iget v6, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskHeight:F

    .line 226
    invoke-virtual {p1, v0, v4, v5, v6}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskX(FFFF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskY:F

    .line 233
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mGesturePosition:I

    .line 234
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 235
    iget v5, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskWidth:F

    .line 236
    iget v6, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPer:F

    .line 232
    invoke-virtual {p1, v0, v4, v5, v6}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskY(IFFF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskX:F

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    .line 213
    iget v5, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskHeight:F

    .line 214
    iget v6, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPer:F

    .line 210
    invoke-virtual {p1, v0, v4, v5, v6}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskY(IFFF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskY:F

    .line 217
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mDownX:F

    iget v4, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    .line 218
    iget v4, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurrX:F

    .line 219
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 220
    iget v6, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskWidth:F

    .line 216
    invoke-virtual {p1, v0, v4, v5, v6}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskX(FFFF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskX:F

    .line 241
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 243
    invoke-direct {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isPortraitDisplay()Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_2

    if-ne p3, v3, :cond_2

    goto :goto_2

    .line 244
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isPortraitDisplay()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p3, v1, :cond_3

    :goto_1
    move v3, v4

    goto :goto_2

    .line 245
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isLandscapeDisplay()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p3, :cond_4

    goto :goto_1

    .line 246
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isLandscapeDisplay()Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p3, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 251
    iget p3, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurrX:F

    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mDownX:F

    sub-float/2addr p3, v0

    .line 252
    iget v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskY:F

    int-to-float v2, v3

    mul-float/2addr p3, v2

    add-float/2addr v1, p3

    iput v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskY:F

    .line 256
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    .line 257
    iget p3, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskWidth:F

    .line 253
    invoke-virtual {p1, v0, v0, p2, p3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskX(FFFF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskX:F

    :cond_6
    return-void
.end method

.method private final canFastPullUp(FFF)Z
    .locals 4

    .line 515
    iget-object p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v0, p0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    .line 516
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 519
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x41c80000    # 25.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

    .line 522
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3f4ccccd    # 0.8f

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    cmpl-float p0, p0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final getCurrentDisplayRotation()I
    .locals 0

    .line 274
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final getOriginTaskRadius(I)F
    .locals 0

    .line 279
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    .line 281
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getCornerRadius()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x16

    goto :goto_0

    .line 286
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getCornerRadius()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0
.end method

.method private final getPercentsValue(FFF)F
    .locals 2

    float-to-double p0, p1

    const-wide/16 v0, 0x0

    .line 185
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    double-to-float p0, p0

    sub-float/2addr p3, p2

    mul-float/2addr p3, p0

    add-float/2addr p2, p3

    return p2
.end method

.method private final getTaskStackLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
    .locals 1

    .line 300
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final isLandscapeDisplay()Z
    .locals 2

    .line 269
    invoke-direct {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurrentDisplayRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private final isPortraitDisplay()Z
    .locals 1

    .line 264
    invoke-direct {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurrentDisplayRotation()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final linearToCubic(FFFF)F
    .locals 3

    cmpg-float p0, p3, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p0, :cond_1

    return v2

    :cond_1
    sub-float/2addr p1, p2

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    const/4 p0, 0x0

    cmpg-float p2, p4, p0

    if-nez p2, :cond_2

    move v0, v1

    :cond_2
    if-nez v0, :cond_3

    int-to-float p2, v1

    sub-float p1, p2, p1

    float-to-double v0, p1

    float-to-double p3, p4

    .line 538
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    double-to-float p1, p3

    sub-float/2addr p2, p1

    goto :goto_1

    :cond_3
    move p2, p0

    .line 540
    :goto_1
    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private final updateRatio(Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;Landroid/graphics/Rect;Lcom/miui/home/recents/views/SmallWindowCrop;)V
    .locals 3

    .line 169
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 170
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float p2, v0, p2

    .line 171
    :goto_0
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPer:F

    iget-boolean v2, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mIsVertical:Z

    .line 168
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskRatio(FFFZ)F

    move-result p1

    .line 173
    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskRatio:F

    if-eqz p3, :cond_1

    .line 178
    invoke-virtual {p3, p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->getTargetRatio(F)F

    move-result p2

    .line 179
    invoke-virtual {p3, p1, p2}, Lcom/miui/home/recents/views/SmallWindowCrop;->mix(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskRatio:F

    :cond_1
    return-void
.end method


# virtual methods
.method public final calculateTaskPosition(Landroid/graphics/Rect;Lcom/miui/home/recents/views/SmallWindowCrop;II)V
    .locals 1

    const-string v0, "sourceStackBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getTaskStackLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/recents/GestureHomeCalculator;->calculatePer(Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;)V

    .line 97
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/recents/GestureHomeCalculator;->updateRatio(Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;Landroid/graphics/Rect;Lcom/miui/home/recents/views/SmallWindowCrop;)V

    .line 98
    invoke-direct {p0, v0, p1}, Lcom/miui/home/recents/GestureHomeCalculator;->calculateTaskSize(Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;Landroid/graphics/Rect;)V

    .line 99
    invoke-direct {p0, v0, p1, p3}, Lcom/miui/home/recents/GestureHomeCalculator;->calculateTaskXY(Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;Landroid/graphics/Rect;I)V

    .line 101
    invoke-direct {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->calculateTaskFullscreenProgress()F

    .line 102
    invoke-direct {p0, p4}, Lcom/miui/home/recents/GestureHomeCalculator;->getOriginTaskRadius(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskRadius:F

    .line 103
    invoke-direct {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->calculateTaskAlpha()F

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AnimTest calculateTaskPosition mPer="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPer:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " mCurTaskWidth="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskWidth:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " mCurTaskHeight = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskHeight:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " mCurTaskX="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskX:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ",mCurTaskY = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskY:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " mCurTaskRadius="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskRadius:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 104
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final calculateTaskWidthHome()F
    .locals 3

    .line 572
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskWidth:F

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getVisibleScreenWidth()F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mTaskViewWidth:F

    return v0
.end method

.method public final calculateTaskXHome(Landroid/graphics/Rect;)F
    .locals 4

    const-string v0, "sourceStackBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getVisibleScreenWidth()F

    move-result v0

    .line 580
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictHalfSplitMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 582
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictRecentsVisibleBound()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    cmpg-float v3, v0, v2

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 585
    iget v2, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskWidth:F

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    :cond_2
    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v0, v3

    add-float/2addr v0, v1

    .line 589
    iget v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskX:F

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskWidth:F

    div-float/2addr p1, v3

    add-float/2addr v1, p1

    add-float/2addr v1, v2

    .line 587
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 590
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskWidth:F

    div-float/2addr v0, v3

    sub-float/2addr p1, v0

    const/16 v0, 0xc8

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 587
    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mTaskViewX:F

    return p1
.end method

.method public final getCurRect()Landroid/graphics/RectF;
    .locals 5

    .line 467
    iget-object v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mTempCurrentRectF:Landroid/graphics/RectF;

    .line 468
    iget v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskX:F

    .line 469
    iget v2, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskY:F

    .line 470
    iget v3, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskWidth:F

    add-float/2addr v3, v1

    .line 471
    iget v4, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskHeight:F

    add-float/2addr v4, v2

    .line 467
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 473
    iget-object p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mTempCurrentRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getCurTaskAlpha()F
    .locals 0

    .line 296
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskAlpha:F

    return p0
.end method

.method public final getCurTaskRadius()F
    .locals 0

    .line 292
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskRadius:F

    return p0
.end method

.method public final getCurTaskY()F
    .locals 0

    .line 399
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskY:F

    return p0
.end method

.method public final getCurrX()F
    .locals 0

    .line 387
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurrX:F

    return p0
.end method

.method public final getCurrY()F
    .locals 0

    .line 383
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurrY:F

    return p0
.end method

.method public final getCurrentPositionTaskIndexLeft()Z
    .locals 1

    .line 415
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getDistanceX()F

    move-result p0

    const/high16 v0, 0x43480000    # 200.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getCurrentPositionTaskIndexRight()Z
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getDistanceX()F

    move-result p0

    const/high16 v0, -0x3cb80000    # -200.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getDistanceX()F
    .locals 1

    .line 334
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurrX:F

    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mInitX:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public final getDistanceY()F
    .locals 1

    .line 338
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mInitY:F

    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurrY:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public final getDownTime()J
    .locals 2

    .line 379
    iget-wide v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mDownTime:J

    return-wide v0
.end method

.method public final getDownY()F
    .locals 0

    .line 391
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mDownY:F

    return p0
.end method

.method public final getFollowTailDistance()F
    .locals 0

    .line 439
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailDistance:F

    return p0
.end method

.method public final getFollowTailX()F
    .locals 0

    .line 435
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailX:F

    return p0
.end method

.method public final getFollowTailXDelta()F
    .locals 0

    .line 443
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailXDelta:F

    return p0
.end method

.method public final getFollowTailY()F
    .locals 0

    .line 431
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailY:F

    return p0
.end method

.method public final getFollowTailYDelta()F
    .locals 0

    .line 447
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailYDelta:F

    return p0
.end method

.method public final getFullscreenProgress()F
    .locals 0

    .line 195
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskFullscreenProgress:F

    return p0
.end method

.method public final getInitY()F
    .locals 0

    .line 395
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mInitY:F

    return p0
.end method

.method public final getPer()F
    .locals 0

    .line 375
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPer:F

    return p0
.end method

.method public final getPivotLocX()F
    .locals 0

    .line 455
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPivotLocX:F

    return p0
.end method

.method public final getPivotLocY()F
    .locals 0

    .line 459
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPivotLocY:F

    return p0
.end method

.method public final getRotateTaskViewRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    const-string v0, "originRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mGesturePosition:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    return-object p1

    .line 635
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isLandscapeDisplay()Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 636
    invoke-direct {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurrentDisplayRotation()I

    move-result p0

    if-ne p0, v4, :cond_1

    move v2, v4

    .line 640
    :cond_1
    invoke-static {v2, v3, p1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    const-string p1, "{\n                    va\u2026      )\n                }"

    .line 635
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 647
    :cond_2
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mGesturePosition:I

    if-eq p0, v1, :cond_4

    if-ne p0, v2, :cond_3

    .line 650
    new-instance p0, Lkotlin/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 651
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 650
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 652
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 648
    :cond_4
    new-instance p0, Lkotlin/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 649
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 648
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 647
    :goto_0
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 654
    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    const-string p1, "{\n                    //\u2026inRect)\n                }"

    .line 645
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public final getTaskViewHeight()F
    .locals 0

    .line 411
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskHeight:F

    return p0
.end method

.method public final getTaskViewWidth()F
    .locals 0

    .line 407
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurTaskWidth:F

    return p0
.end method

.method public final getTaskViewX()F
    .locals 0

    .line 403
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mTaskViewX:F

    return p0
.end method

.method public final getVelocity()Landroid/graphics/PointF;
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mVelocityPxPerMs:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final getVisibleScreenHeight()F
    .locals 1

    .line 564
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictRecentsVisibleBound()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0

    .line 568
    :cond_0
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mScreenHeight:I

    goto :goto_0
.end method

.method public final getVisibleScreenWidth()F
    .locals 1

    .line 556
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictRecentsVisibleBound()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0

    .line 560
    :cond_0
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mScreenWidth:I

    goto :goto_0
.end method

.method public final initValue(Landroid/view/MotionEvent;)V
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mDownX:F

    .line 596
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mDownY:F

    .line 597
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mDownTime:J

    const/4 p1, 0x0

    .line 598
    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mLastVelocity:F

    .line 600
    iget p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mScreenWidth:I

    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mDownX:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mDelta:F

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 601
    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPivotLocX:F

    .line 602
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mScreenHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPivotLocY:F

    .line 603
    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailX:F

    .line 604
    iput v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailY:F

    .line 605
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isSafeArea()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mIsSafeArea:Z

    return-void
.end method

.method public final isBottomPositionGesture()Z
    .locals 1

    .line 625
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mGesturePosition:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFastPullDown()Z
    .locals 4

    .line 342
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isBottomPositionGesture()Z

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 343
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPivotLocY:F

    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailY:F

    sub-float/2addr v0, p0

    cmpl-float p0, v0, v1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isLeftPositionGesture()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 345
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPivotLocX:F

    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailX:F

    sub-float/2addr v0, p0

    const/high16 p0, -0x3e380000    # -25.0f

    cmpg-float p0, v0, p0

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    .line 346
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isRightPositionGesture()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 347
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPivotLocX:F

    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailX:F

    sub-float/2addr v0, p0

    cmpl-float p0, v0, v1

    if-lez p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2

    :cond_5
    return v3
.end method

.method public final isFastPullUp()Z
    .locals 4

    .line 478
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFastPullUp  mPivotLocY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getPivotLocY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   mFollowTailY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getFollowTailY()F

    move-result v2

    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   mPivotLocX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getPivotLocX()F

    move-result v2

    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   mFollowTailX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getFollowTailX()F

    move-result v2

    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   TAIL_GAP=25   vx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-object v2, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   vy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    iget-object v2, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isBottomPositionGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getFollowTailY()F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getPivotLocY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 489
    new-instance v1, Lkotlin/Triple;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isLeftPositionGesture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getPivotLocX()F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getFollowTailX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 494
    new-instance v1, Lkotlin/Triple;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isRightPositionGesture()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getFollowTailX()F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getPivotLocX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 499
    new-instance v1, Lkotlin/Triple;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 486
    :goto_0
    invoke-virtual {v1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 507
    invoke-direct {p0, v0, v2, v1}, Lcom/miui/home/recents/GestureHomeCalculator;->canFastPullUp(FFF)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isLeftDirection()Z
    .locals 1

    .line 423
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurrX:F

    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mDownX:F

    sub-float/2addr v0, p0

    const/high16 p0, 0x43480000    # 200.0f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLeftOrRightPositionGesture()Z
    .locals 1

    .line 621
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isLeftPositionGesture()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isRightPositionGesture()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isLeftPositionGesture()Z
    .locals 1

    .line 613
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mGesturePosition:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isOverDistanceThread()Z
    .locals 1

    .line 330
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurrX:F

    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mInitX:F

    sub-float/2addr v0, p0

    const/high16 p0, 0x43480000    # 200.0f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPullLeft()Z
    .locals 4

    .line 364
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isBottomPositionGesture()Z

    move-result v0

    const/high16 v1, -0x3e380000    # -25.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 365
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPivotLocX:F

    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailX:F

    sub-float/2addr v0, p0

    cmpg-float p0, v0, v1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isLeftPositionGesture()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 367
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPivotLocY:F

    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailY:F

    sub-float/2addr v0, p0

    cmpg-float p0, v0, v1

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    .line 368
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isRightPositionGesture()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 369
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPivotLocY:F

    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailY:F

    sub-float/2addr v0, p0

    const/high16 p0, 0x41c80000    # 25.0f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2

    :cond_5
    return v3
.end method

.method public final isPullRight()Z
    .locals 4

    .line 353
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isBottomPositionGesture()Z

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 354
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPivotLocX:F

    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailX:F

    sub-float/2addr v0, p0

    cmpl-float p0, v0, v1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isLeftPositionGesture()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPivotLocY:F

    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailY:F

    sub-float/2addr v0, p0

    cmpl-float p0, v0, v1

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    .line 357
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isRightPositionGesture()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 358
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPivotLocY:F

    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailY:F

    sub-float/2addr v0, p0

    const/high16 p0, -0x3e380000    # -25.0f

    cmpg-float p0, v0, p0

    if-gez p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2

    :cond_5
    return v3
.end method

.method public final isRightDirection()Z
    .locals 1

    .line 427
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurrX:F

    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mDownX:F

    sub-float/2addr v0, p0

    const/high16 p0, 0x43480000    # 200.0f

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRightPositionGesture()Z
    .locals 1

    .line 617
    iget p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mGesturePosition:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSafeArea()Z
    .locals 4

    .line 308
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isBottomPositionGesture()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x437a0000    # 250.0f

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getDistanceY()F

    move-result p0

    cmpg-float p0, p0, v3

    if-gez p0, :cond_1

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getDistanceX()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v3

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public final isSafeAreaWithoutGestureLine()Z
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getDistanceY()F

    move-result p0

    const/high16 v0, 0x43fa0000    # 500.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSlideHorizontal()Z
    .locals 6

    .line 316
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isBottomPositionGesture()Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x42700000    # 60.0f

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v4, v4

    iget-object v5, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getDistanceX()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, v2

    if-lez p0, :cond_1

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v4, v4

    iget-object v5, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getDistanceY()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, v2

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1
.end method

.method public final setCurrEvent(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurrX:F

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurrY:F

    return-void
.end method

.method public final setInitEvent(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mInitX:F

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mInitY:F

    return-void
.end method

.method public final setLastVelocity(F)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mLastVelocity:F

    return-void
.end method

.method public final updatePivotLoc(Landroid/view/MotionEvent;Ljava/lang/Runnable;)V
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enterRecentCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mDownX:F

    add-float/2addr p1, v0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mDelta:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPivotLocX:F

    .line 545
    iget p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mScreenHeight:I

    int-to-float v0, p1

    iget v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mCurrY:F

    int-to-float p1, p1

    const/4 v2, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/miui/home/recents/GestureHomeCalculator;->linearToCubic(FFFF)F

    move-result p1

    const/16 v1, 0x1bc

    int-to-float v1, v1

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPivotLocY:F

    .line 546
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isSafeArea()Z

    move-result p1

    .line 547
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mIsSafeArea:Z

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 549
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 551
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mIsSafeArea:Z

    :cond_1
    return-void
.end method

.method public final updateScreenData(IIZ)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mScreenWidth:I

    .line 145
    iput p2, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mScreenHeight:I

    .line 146
    iput-boolean p3, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mIsVertical:Z

    return-void
.end method

.method public final updateTail()V
    .locals 5

    .line 154
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailX:F

    iget v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPivotLocX:F

    sub-float v2, v1, v0

    const/4 v3, 0x4

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailX:F

    .line 155
    iget v2, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailY:F

    iget v4, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPivotLocY:F

    sub-float/2addr v4, v2

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailY:F

    sub-float/2addr v1, v0

    .line 157
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailXDelta:F

    .line 158
    iget v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mPivotLocY:F

    iget v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailYDelta:F

    .line 160
    iget v1, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailXDelta:F

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 159
    iput v0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mFollowTailDistance:F

    return-void
.end method

.method public final updateVelocity(FF)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/miui/home/recents/GestureHomeCalculator;->mVelocityPxPerMs:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public final useHorizontalStyleToInitTaskView()Z
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getDistanceX()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
