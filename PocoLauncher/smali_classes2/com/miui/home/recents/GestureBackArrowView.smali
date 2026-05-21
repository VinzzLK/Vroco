.class public Lcom/miui/home/recents/GestureBackArrowView;
.super Landroid/view/View;
.source "GestureBackArrowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/GestureBackArrowView$ReadyState;
    }
.end annotation


# static fields
.field private static final ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mArrow:Landroid/graphics/Bitmap;

.field private mArrowAnimator:Landroid/animation/ValueAnimator;

.field private mArrowDstRect:Landroid/graphics/Rect;

.field private mArrowFeedBackDone:Z

.field private mArrowHeight:I

.field private mArrowPaint:Landroid/graphics/Paint;

.field private mArrowShown:Z

.field private mArrowWidth:I

.field private mBackDstRect:Landroid/graphics/Rect;

.field private mBackHeight:I

.field private mBackWidth:I

.field private mBackground:Landroid/graphics/Bitmap;

.field private mBgPaint:Landroid/graphics/Paint;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurArrowAlpha:I

.field private mCurrentY:F

.field private mExpectBackHeight:F

.field private mFinishAnimator:Landroid/animation/ValueAnimator;

.field private mIconHeight:I

.field private mIconNeedDraw:Z

.field private mIconScale:F

.field private mIconWidth:I

.field private mIsSwipe:Z

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastIconAnimator:Landroid/animation/ValueAnimator;

.field private mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

.field private mOffsetX:F

.field private mPosition:I

.field private mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

.field private mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

.field private mScale:F

.field private mStartX:F

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveChangeAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/miui/home/recents/GestureBackArrowView;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 41
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/miui/home/recents/GestureBackArrowView;->QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 42
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/miui/home/recents/GestureBackArrowView;->ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/home/recents/GestureBackArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/home/recents/GestureBackArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    .line 94
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/GestureBackArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    const-class p2, Lcom/miui/home/recents/GestureBackArrowView;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 46
    iput p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 47
    iput p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    .line 63
    sget-object p2, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    iput-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    .line 76
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastConfiguration:Landroid/content/res/Configuration;

    const/4 p3, 0x0

    .line 78
    iput-boolean p3, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIsSwipe:Z

    .line 222
    iput-boolean p3, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowFeedBackDone:Z

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mContentResolver:Landroid/content/ContentResolver;

    .line 105
    iput p5, p0, Lcom/miui/home/recents/GestureBackArrowView;->mPosition:I

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p2, Lcom/miui/home/recents/GestureBackArrowView;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mPosition:I

    invoke-static {p2}, Lcom/miui/home/recents/GestureStubView;->getPosStringSuffix(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->TAG:Ljava/lang/String;

    .line 108
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    .line 109
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 110
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 112
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    .line 113
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 114
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 115
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 117
    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->loadResources()V

    .line 119
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackDstRect:Landroid/graphics/Rect;

    .line 120
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowDstRect:Landroid/graphics/Rect;

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/GestureBackArrowView;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowFeedBackDone:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/recents/GestureBackArrowView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowFeedBackDone:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/recents/GestureBackArrowView;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/miui/home/recents/GestureBackArrowView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowShown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/recents/GestureBackArrowView;)Landroid/graphics/Paint;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/home/recents/GestureBackArrowView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconNeedDraw:Z

    return p1
.end method

.method static synthetic access$402(Lcom/miui/home/recents/GestureBackArrowView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mCurArrowAlpha:I

    return p1
.end method

.method static synthetic access$502(Lcom/miui/home/recents/GestureBackArrowView;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    return p1
.end method

.method static synthetic access$600(Lcom/miui/home/recents/GestureBackArrowView;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mOffsetX:F

    return p0
.end method

.method static synthetic access$700(Lcom/miui/home/recents/GestureBackArrowView;)Lcom/miui/home/recents/GestureBackArrowView$ReadyState;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/recents/GestureBackArrowView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$902(Lcom/miui/home/recents/GestureBackArrowView;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    return p1
.end method

.method private changeScale(FFIZ)V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 295
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p3

    .line 296
    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 297
    iget-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object p3, Lcom/miui/home/recents/GestureBackArrowView;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 298
    iget-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/miui/home/recents/GestureBackArrowView$3;

    invoke-direct {p3, p0, p4, p1}, Lcom/miui/home/recents/GestureBackArrowView$3;-><init>(Lcom/miui/home/recents/GestureBackArrowView;ZF)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 310
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 312
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 313
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    new-array p1, v0, [F

    .line 315
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x64

    .line 316
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 317
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/miui/home/recents/GestureBackArrowView;->QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 318
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/home/recents/GestureBackArrowView$4;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/GestureBackArrowView$4;-><init>(Lcom/miui/home/recents/GestureBackArrowView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 327
    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private generateLeftBg()Landroid/graphics/Bitmap;
    .locals 1

    .line 417
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f08026b

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private generateRightBg()Landroid/graphics/Bitmap;
    .locals 7

    .line 422
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 423
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v0, 0x43340000    # 180.0f

    .line 424
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 425
    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->generateLeftBg()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 427
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 426
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private initDrawState()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 356
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowShown:Z

    .line 357
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconNeedDraw:Z

    return-void
.end method

.method private loadRecentTaskIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->supportNextTask(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 332
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/GestureStubView;->getNextTask(Landroid/content/Context;ZI)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0
.end method

.method private loadResources()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadResources: mPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mPosition:I

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->generateLeftBg()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackground:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->generateRightBg()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackground:Landroid/graphics/Bitmap;

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackHeight:I

    .line 135
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackWidth:I

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    .line 138
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconWidth:I

    .line 139
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconHeight:I

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08026a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    .line 143
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowHeight:I

    .line 144
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowWidth:I

    return-void
.end method

.method private setStartLocation(FFF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 345
    iput p3, p0, Lcom/miui/home/recents/GestureBackArrowView;->mExpectBackHeight:F

    .line 346
    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mCurrentY:F

    goto :goto_0

    .line 348
    :cond_0
    iget p3, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackHeight:I

    int-to-float p3, p3

    iput p3, p0, Lcom/miui/home/recents/GestureBackArrowView;->mExpectBackHeight:F

    const/high16 p3, 0x41a00000    # 20.0f

    sub-float/2addr p1, p3

    .line 349
    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mCurrentY:F

    .line 351
    :goto_0
    iput p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mStartX:F

    return-void
.end method

.method private skipChangeScaleOnAcitonMove()Z
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 370
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

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

.method private startArrowAnimating(ZI)V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowFeedBackDone:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 238
    iget v2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mCurArrowAlpha:I

    aput v2, v1, v0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const/16 v0, 0xff

    :cond_1
    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p2

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 240
    iget-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 241
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->isSupportEffectGestureBackLinear()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 242
    iget-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/recents/GestureBackArrowView$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/GestureBackArrowView$1;-><init>(Lcom/miui/home/recents/GestureBackArrowView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    :cond_2
    iget-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/recents/GestureBackArrowView$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/GestureBackArrowView$2;-><init>(Lcom/miui/home/recents/GestureBackArrowView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 265
    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method cancelFinishAnim()V
    .locals 0

    .line 432
    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mFinishAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 433
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method

.method getCurrentState()Lcom/miui/home/recents/GestureBackArrowView$ReadyState;
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    return-object p0
.end method

.method public isArrowFeedBackDone()Z
    .locals 0

    .line 225
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowFeedBackDone:Z

    return p0
.end method

.method public isSwipeOrFinishAnimRunning()Z
    .locals 1

    .line 443
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIsSwipe:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mFinishAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

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

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 149
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    .line 152
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged, changes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->isDensityChangeOrScreenSizeChange(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->hasThemeChanged(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->loadResources()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 161
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 168
    iget v2, v0, Lcom/miui/home/recents/GestureBackArrowView;->mBackWidth:I

    int-to-float v2, v2

    iget v3, v0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    mul-float/2addr v2, v3

    .line 169
    iget v3, v0, Lcom/miui/home/recents/GestureBackArrowView;->mPosition:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v3, :cond_2

    if-eq v3, v4, :cond_0

    move v2, v5

    move v3, v2

    move v7, v3

    move v9, v7

    move v10, v9

    move v11, v10

    goto :goto_2

    .line 180
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 181
    iget v7, v0, Lcom/miui/home/recents/GestureBackArrowView;->mBackWidth:I

    int-to-float v7, v7

    iget v8, v0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    mul-float/2addr v7, v8

    iget v8, v0, Lcom/miui/home/recents/GestureBackArrowView;->mStartX:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    sub-int v7, v3, v7

    float-to-int v9, v8

    sub-int v9, v3, v9

    .line 183
    iget v10, v0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowWidth:I

    int-to-float v11, v10

    iget v12, v0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v2

    div-float/2addr v11, v6

    add-float/2addr v11, v8

    float-to-int v11, v11

    sub-int v11, v3, v11

    int-to-float v10, v10

    mul-float/2addr v10, v12

    sub-float v10, v2, v10

    div-float/2addr v10, v6

    add-float/2addr v10, v8

    float-to-int v10, v10

    sub-int v10, v3, v10

    .line 185
    iget v13, v0, Lcom/miui/home/recents/GestureBackArrowView;->mIconWidth:I

    int-to-float v14, v13

    mul-float/2addr v14, v12

    cmpg-float v14, v2, v14

    if-gez v14, :cond_1

    goto :goto_0

    :cond_1
    int-to-float v14, v13

    mul-float/2addr v14, v12

    add-float/2addr v2, v14

    div-float/2addr v2, v6

    :goto_0
    add-float/2addr v8, v2

    float-to-int v2, v8

    sub-int/2addr v3, v2

    int-to-float v2, v3

    int-to-float v8, v13

    mul-float/2addr v8, v12

    add-float/2addr v2, v8

    float-to-int v2, v2

    goto :goto_2

    .line 171
    :cond_2
    iget v3, v0, Lcom/miui/home/recents/GestureBackArrowView;->mStartX:F

    float-to-int v7, v3

    add-float v8, v2, v3

    float-to-int v9, v8

    .line 173
    iget v8, v0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowWidth:I

    int-to-float v10, v8

    iget v11, v0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v10, v11

    sub-float v10, v2, v10

    div-float/2addr v10, v6

    add-float/2addr v10, v3

    float-to-int v10, v10

    int-to-float v8, v8

    mul-float/2addr v8, v11

    add-float/2addr v8, v2

    div-float/2addr v8, v6

    add-float/2addr v8, v3

    float-to-int v8, v8

    .line 175
    iget v12, v0, Lcom/miui/home/recents/GestureBackArrowView;->mIconWidth:I

    int-to-float v13, v12

    mul-float/2addr v13, v11

    cmpg-float v13, v2, v13

    if-gez v13, :cond_3

    goto :goto_1

    :cond_3
    int-to-float v13, v12

    mul-float/2addr v13, v11

    add-float/2addr v2, v13

    div-float/2addr v2, v6

    :goto_1
    add-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v3, v2

    int-to-float v12, v12

    mul-float/2addr v12, v11

    sub-float/2addr v3, v12

    float-to-int v3, v3

    move v11, v10

    move v10, v8

    .line 193
    :goto_2
    iget-object v8, v0, Lcom/miui/home/recents/GestureBackArrowView;->mBackDstRect:Landroid/graphics/Rect;

    iget v12, v0, Lcom/miui/home/recents/GestureBackArrowView;->mCurrentY:F

    iget v13, v0, Lcom/miui/home/recents/GestureBackArrowView;->mExpectBackHeight:F

    div-float v14, v13, v6

    sub-float v14, v12, v14

    float-to-int v14, v14

    div-float/2addr v13, v6

    add-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v8, v7, v14, v9, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 195
    iget-object v7, v0, Lcom/miui/home/recents/GestureBackArrowView;->mBackground:Landroid/graphics/Bitmap;

    iget-object v8, v0, Lcom/miui/home/recents/GestureBackArrowView;->mBackDstRect:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/miui/home/recents/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    invoke-virtual {v1, v7, v12, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 196
    iget-object v7, v0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    sget-object v8, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-eq v7, v8, :cond_5

    sget-object v9, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-ne v7, v9, :cond_4

    goto :goto_3

    .line 203
    :cond_4
    iget-boolean v4, v0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowShown:Z

    if-eqz v4, :cond_6

    const/16 v4, 0x32

    .line 204
    invoke-direct {v0, v5, v4}, Lcom/miui/home/recents/GestureBackArrowView;->startArrowAnimating(ZI)V

    .line 205
    iput-boolean v5, v0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowShown:Z

    goto :goto_4

    .line 198
    :cond_5
    :goto_3
    iget-boolean v5, v0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowShown:Z

    if-nez v5, :cond_6

    .line 199
    iput-boolean v4, v0, Lcom/miui/home/recents/GestureBackArrowView;->mIconNeedDraw:Z

    const/16 v5, 0x64

    .line 200
    invoke-direct {v0, v4, v5}, Lcom/miui/home/recents/GestureBackArrowView;->startArrowAnimating(ZI)V

    .line 201
    iput-boolean v4, v0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowShown:Z

    .line 209
    :cond_6
    :goto_4
    iget-boolean v4, v0, Lcom/miui/home/recents/GestureBackArrowView;->mIconNeedDraw:Z

    if-eqz v4, :cond_8

    iget v4, v0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    float-to-double v13, v4

    const-wide v15, 0x3fb999999999999aL    # 0.1

    cmpl-double v5, v13, v15

    if-lez v5, :cond_8

    .line 210
    iget-object v5, v0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-ne v5, v8, :cond_7

    .line 211
    iget-object v2, v0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowDstRect:Landroid/graphics/Rect;

    iget v3, v0, Lcom/miui/home/recents/GestureBackArrowView;->mCurrentY:F

    iget v4, v0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowHeight:I

    int-to-float v5, v4

    iget v7, v0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v5, v7

    div-float/2addr v5, v6

    sub-float v5, v3, v5

    float-to-int v5, v5

    int-to-float v4, v4

    mul-float/2addr v4, v7

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v11, v5, v10, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 213
    iget-object v2, v0, Lcom/miui/home/recents/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowDstRect:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v12, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 214
    :cond_7
    iget-object v5, v0, Lcom/miui/home/recents/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_8

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_8

    .line 215
    iget v4, v0, Lcom/miui/home/recents/GestureBackArrowView;->mCurrentY:F

    iget v7, v0, Lcom/miui/home/recents/GestureBackArrowView;->mIconHeight:I

    int-to-float v8, v7

    iget v9, v0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v8, v9

    div-float/2addr v8, v6

    sub-float v8, v4, v8

    float-to-int v8, v8

    int-to-float v7, v7

    mul-float/2addr v7, v9

    div-float/2addr v7, v6

    add-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v5, v3, v8, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 217
    iget-object v0, v0, Lcom/miui/home/recents/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    :goto_5
    return-void
.end method

.method onSwipeProgress(F)V
    .locals 1

    .line 361
    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mOffsetX:F

    .line 362
    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->skipChangeScaleOnAcitonMove()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 364
    :cond_0
    sget-object v0, Lcom/android/systemui/fsgesture/BackGestureUtils;->INSTANCE:Lcom/android/systemui/fsgesture/BackGestureUtils;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fsgesture/BackGestureUtils;->convertOffset(F)F

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method onSwipeStart(FFF)V
    .locals 0

    .line 337
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/GestureBackArrowView;->setStartLocation(FFF)V

    .line 338
    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->initDrawState()V

    const/4 p1, 0x1

    .line 339
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureBackArrowView;->setIsSwipe(Z)V

    return-void
.end method

.method onSwipeStop(FLandroid/animation/Animator$AnimatorListener;)V
    .locals 2

    const/4 v0, 0x0

    .line 374
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setIsSwipe(Z)V

    .line 375
    iget-object v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 379
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 382
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 384
    iput v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr p1, v1

    .line 385
    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    aput p1, v1, v0

    const/4 p1, 0x1

    const/4 v0, 0x0

    aput v0, v1, p1

    .line 386
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mFinishAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    .line 387
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 388
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mFinishAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView;->QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 389
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mFinishAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/recents/GestureBackArrowView$5;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/GestureBackArrowView$5;-><init>(Lcom/miui/home/recents/GestureBackArrowView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p2, :cond_3

    .line 401
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mFinishAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 403
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mFinishAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 404
    sget-object p1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    return-void
.end method

.method reset()V
    .locals 3

    const/4 v0, 0x0

    .line 408
    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    const/high16 v1, -0x3b860000    # -1000.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 409
    invoke-direct {p0, v1, v0, v2}, Lcom/miui/home/recents/GestureBackArrowView;->setStartLocation(FFF)V

    .line 410
    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->initDrawState()V

    const/4 v0, 0x0

    .line 411
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setIsSwipe(Z)V

    .line 412
    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    .line 413
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setArrowFeedBackDone(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowFeedBackDone:Z

    return-void
.end method

.method public setIsSwipe(Z)V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsSwipe isSwipe = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIsSwipe:Z

    return-void
.end method

.method setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V
    .locals 4

    .line 269
    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-ne p1, v0, :cond_1

    .line 270
    iget-object v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    if-ne v1, v2, :cond_2

    .line 271
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->loadRecentTaskIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 274
    iput-object v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    .line 276
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-eq p1, v1, :cond_5

    .line 277
    sget-object v2, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    const/16 v3, 0xc8

    if-ne v1, v2, :cond_3

    if-ne p1, v0, :cond_3

    .line 278
    iget v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    const v1, 0x3f95c28f    # 1.17f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/miui/home/recents/GestureBackArrowView;->changeScale(FFIZ)V

    .line 279
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_1

    :cond_3
    if-ne v1, v0, :cond_4

    .line 281
    iget v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/miui/home/recents/GestureBackArrowView;->changeScale(FFIZ)V

    .line 283
    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    :cond_5
    return-void
.end method
