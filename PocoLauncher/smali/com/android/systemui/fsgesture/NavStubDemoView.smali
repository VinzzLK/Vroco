.class public Lcom/android/systemui/fsgesture/NavStubDemoView;
.super Landroid/view/View;
.source "NavStubDemoView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private curActivity:Landroid/app/Activity;

.field private demoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

.field private demoType:Ljava/lang/String;

.field private fullyShowStep:I

.field private isFromPro:Z

.field private mAppBgView:Landroid/view/View;

.field private mAppIcon:Landroid/graphics/Bitmap;

.field private mAppNoteImg:Landroid/view/View;

.field private final mAppToHomePath:Landroid/graphics/Path;

.field private mBgView:Landroid/view/View;

.field private mBottomDec:I

.field private mCurAlpha:F

.field private mCurScale:F

.field private mCurrentY:F

.field private mDelta:F

.field private mDestPivotX:I

.field private mDestPivotY:I

.field private mDownNo:I

.field private mDownX:F

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDrawBmp:Landroid/graphics/Bitmap;

.field private mFakeBitmap:Landroid/graphics/Bitmap;

.field private mFollowTailX:F

.field private mFollowTailY:F

.field private mFrameHandler:Landroid/os/Handler;

.field private mHomeIconImg:Landroid/widget/LinearLayout;

.field private mIsAppToHome:Z

.field private mIsAppToRecents:Z

.field private mIsInFsgAnim:Z

.field private mLastDownNo:I

.field private mModeSrcIn:Landroid/graphics/Xfermode;

.field private mPaint:Landroid/graphics/Paint;

.field private mPivotLocX:I

.field private mPivotLocY:I

.field private mRecentsAnimator:Landroid/animation/ValueAnimator;

.field private mRecentsBgView:Landroid/view/View;

.field private mRecentsCardContainer:Landroid/widget/LinearLayout;

.field private mRecentsFirstCardBound:Landroid/graphics/Rect;

.field private mRecentsFirstCardIconView:Landroid/view/View;

.field private mShowHeight:I

.field private final mShowRectF:Landroid/graphics/RectF;

.field private mShowWidth:I

.field private mStateMode:I

.field private mTailCatcherTask:Ljava/lang/Runnable;

.field private mXScale:F

.field private mYScale:F

.field private swipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 250
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 182
    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurAlpha:F

    .line 196
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardBound:Landroid/graphics/Rect;

    .line 198
    new-instance p1, Lcom/android/systemui/fsgesture/NavStubDemoView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$1;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mTailCatcherTask:Ljava/lang/Runnable;

    .line 301
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mModeSrcIn:Landroid/graphics/Xfermode;

    .line 303
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRectF:Landroid/graphics/RectF;

    .line 304
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppToHomePath:Landroid/graphics/Path;

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->initInternal()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fsgesture/NavStubDemoView;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailX:F

    return p0
.end method

.method static synthetic access$016(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F
    .locals 1

    .line 49
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailX:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/fsgesture/NavStubDemoView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mHomeIconImg:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsBgView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteImg:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppBgView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/fsgesture/NavStubDemoView;)Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/fsgesture/NavStubDemoView;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/fsgesture/NavStubDemoView;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->isFromPro:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->curActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F
    .locals 0

    .line 49
    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mXScale:F

    return p1
.end method

.method static synthetic access$1902(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F
    .locals 0

    .line 49
    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mYScale:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/fsgesture/NavStubDemoView;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    return p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F
    .locals 0

    .line 49
    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurAlpha:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mBgView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$216(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F
    .locals 1

    .line 49
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F
    .locals 0

    .line 49
    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/fsgesture/NavStubDemoView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    return p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/fsgesture/NavStubDemoView;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->swipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/fsgesture/NavStubDemoView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->finalization()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardIconView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mBottomDec:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/fsgesture/NavStubDemoView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/fsgesture/NavStubDemoView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/fsgesture/NavStubDemoView;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurrentY:F

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/fsgesture/NavStubDemoView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/os/Handler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private finalization()V
    .locals 3

    const/4 v0, 0x0

    .line 699
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToRecents:Z

    .line 700
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsInFsgAnim:Z

    const/4 v1, 0x1

    .line 701
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 702
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToHome:Z

    .line 703
    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 704
    iput v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurAlpha:F

    const/4 v1, 0x0

    .line 705
    iput v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    .line 706
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const v1, 0x10001

    .line 707
    iput v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    .line 708
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    .line 709
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mHomeIconImg:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 710
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsBgView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 711
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppBgView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteImg:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 714
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 715
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 716
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 717
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 720
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 721
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private initInternal()V
    .locals 5

    .line 257
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 259
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 260
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    .line 261
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    const v0, 0x10001

    .line 262
    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    .line 264
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 265
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x2

    new-array v2, v0, [F

    .line 267
    fill-array-data v2, :array_0

    const-string v3, "scale"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v0, [I

    .line 268
    fill-array-data v3, :array_1

    const-string v4, "alpha"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    aput-object v3, v0, v1

    .line 269
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    .line 270
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/fsgesture/NavStubDemoView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$2;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 283
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/home/gesturedemo/R$drawable;->app_note:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    .line 284
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 285
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 286
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v1, v4, v4, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    .line 287
    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 290
    sget-boolean v1, Lmiuix/os/Build;->IS_FOLDABLE:Z

    if-nez v1, :cond_0

    .line 291
    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 295
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/home/gesturedemo/R$drawable;->anim_icon:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppIcon:Landroid/graphics/Bitmap;

    return-void

    :array_0
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f866666    # 1.05f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private linearToCubic(FFFF)F
    .locals 2

    cmpl-float p0, p4, p2

    if-nez p0, :cond_0

    return p1

    :cond_0
    sub-float/2addr p1, p2

    sub-float p0, p4, p2

    div-float/2addr p1, p0

    const/4 p0, 0x0

    cmpl-float p2, p4, p0

    if-eqz p2, :cond_1

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    float-to-double p0, p0

    float-to-double v0, p4

    .line 738
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-double/2addr p2, p0

    double-to-float p0, p2

    :cond_1
    return p0
.end method

.method private startCancelAnim()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 582
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 584
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 586
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 587
    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 588
    new-instance v3, Lcom/android/systemui/fsgesture/NavStubDemoView$8;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/fsgesture/NavStubDemoView$8;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;II)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 598
    new-instance v1, Lcom/android/systemui/fsgesture/NavStubDemoView$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$9;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x12c

    .line 613
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 614
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startRecentTaskAnim()V
    .locals 12

    const/4 v0, 0x1

    .line 622
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToRecents:Z

    .line 623
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 624
    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    const/4 v5, 0x0

    aput v4, v3, v5

    aput v1, v3, v0

    const-string v4, "scale"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v4, v2, [I

    .line 625
    iget v6, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    iget v7, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v4, v5

    iget-object v6, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardBound:Landroid/graphics/Rect;

    .line 626
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    float-to-int v1, v6

    aput v1, v4, v0

    const-string v1, "bottomDec"

    .line 625
    invoke-static {v1, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v4, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v4, v5

    aput-object v1, v4, v0

    .line 627
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 628
    new-instance v3, Lcom/android/systemui/fsgesture/NavStubDemoView$10;

    invoke-direct {v3, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$10;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 657
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 659
    iget v8, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 660
    iget v10, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 661
    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardBound:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    int-to-float v9, v3

    .line 662
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    div-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardBound:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    int-to-float v11, v3

    .line 664
    new-instance v3, Lcom/android/systemui/fsgesture/NavStubDemoView$11;

    move-object v6, v3

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/fsgesture/NavStubDemoView$11;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;IFIF)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0x12c

    .line 676
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v6, v2, [F

    .line 678
    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 679
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 680
    new-instance v7, Lcom/android/systemui/fsgesture/NavStubDemoView$12;

    invoke-direct {v7, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$12;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 688
    invoke-virtual {v6, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 690
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v5

    aput-object v6, v2, v0

    .line 691
    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 692
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startToHomeAnim()V
    .locals 13

    const/4 v0, 0x1

    .line 482
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToHome:Z

    .line 483
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 484
    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 485
    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    .line 486
    iget v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 487
    iget v6, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v7, v4

    sub-float/2addr v6, v7

    float-to-int v6, v6

    .line 489
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 490
    new-instance v8, Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    invoke-direct {v8, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$3;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v8, 0x2

    new-array v9, v8, [F

    .line 528
    iget v10, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    const/4 v11, 0x0

    aput v10, v9, v11

    aput v3, v9, v0

    const-string/jumbo v3, "xScale"

    invoke-static {v3, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v9, v8, [I

    aput v5, v9, v11

    .line 529
    iget v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDestPivotX:I

    aput v5, v9, v0

    const-string/jumbo v5, "xPivot"

    invoke-static {v5, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v9, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v9, v11

    aput-object v5, v9, v0

    .line 530
    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 531
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x3fc00000    # 1.5f

    invoke-direct {v5, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 532
    new-instance v5, Lcom/android/systemui/fsgesture/NavStubDemoView$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$4;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v9, 0x12c

    .line 539
    invoke-virtual {v3, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v5, v8, [F

    .line 541
    iget v12, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    aput v12, v5, v11

    aput v1, v5, v0

    const-string/jumbo v1, "yScale"

    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v5, v8, [I

    aput v6, v5, v11

    .line 542
    iget v6, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDestPivotY:I

    aput v6, v5, v0

    const-string/jumbo v6, "yPivot"

    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v6, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v6, v11

    aput-object v5, v6, v0

    .line 543
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 544
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 545
    new-instance v4, Lcom/android/systemui/fsgesture/NavStubDemoView$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$5;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 552
    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v4, v8, [F

    .line 554
    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 555
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 556
    new-instance v2, Lcom/android/systemui/fsgesture/NavStubDemoView$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$6;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v5, 0xd2

    .line 562
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x28

    .line 563
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-array v2, v8, [F

    .line 565
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 566
    new-instance v5, Lcom/android/systemui/fsgesture/NavStubDemoView$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$7;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 575
    invoke-virtual {v2, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p0, 0x4

    new-array p0, p0, [Landroid/animation/Animator;

    aput-object v2, p0, v11

    aput-object v1, p0, v0

    aput-object v3, p0, v8

    const/4 v0, 0x3

    aput-object v4, p0, v0

    .line 577
    invoke-virtual {v7, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 578
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 308
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 309
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 310
    iget-boolean v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToHome:Z

    const/4 v9, 0x0

    if-nez v1, :cond_1

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 312
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 313
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 314
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 316
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    int-to-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 317
    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    iget v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v1, Landroid/graphics/RectF;->top:F

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 318
    iput v2, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, v5

    add-float/2addr v2, v4

    .line 319
    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, v5

    .line 320
    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 321
    iget-boolean v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToRecents:Z

    if-eqz v2, :cond_0

    .line 322
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mBottomDec:I

    int-to-float v1, v1

    add-float/2addr v4, v1

    float-to-int v1, v4

    .line 325
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 326
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 327
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 328
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    int-to-float v7, v1

    const/4 v6, 0x0

    move-object v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v10

    .line 329
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v8, 0x42c80000    # 100.0f

    iget-object v11, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v7, v8

    move-object v8, v11

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 331
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mModeSrcIn:Landroid/graphics/Xfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 332
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v9, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 334
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 336
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 338
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 339
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 340
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mXScale:F

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mYScale:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 341
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 345
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 346
    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    iget v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iput v4, v1, Landroid/graphics/RectF;->top:F

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 347
    iput v2, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, v5

    add-float/2addr v4, v2

    .line 348
    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 350
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppToHomePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 351
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppToHomePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRectF:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 352
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppToHomePath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 354
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurAlpha:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 355
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppIcon:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRectF:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v9, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 356
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 357
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v9, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 358
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 365
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsInFsgAnim:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 368
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 369
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownNo:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownNo:I

    .line 371
    :cond_1
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownNo:I

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mLastDownNo:I

    if-ne v0, v3, :cond_2

    return v1

    .line 374
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 375
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownNo:I

    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mLastDownNo:I

    .line 379
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurrentY:F

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v3, 0x10001

    const/4 v4, 0x2

    if-eqz v0, :cond_13

    const v5, 0x10002

    if-eq v0, v2, :cond_7

    if-eq v0, v4, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto/16 :goto_2

    .line 457
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->finalization()V

    goto/16 :goto_2

    .line 394
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownX:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDelta:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 395
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurrentY:F

    int-to-float v0, v0

    const/4 v4, 0x0

    const/high16 v6, 0x40400000    # 3.0f

    invoke-direct {p0, v2, v0, v4, v6}, Lcom/android/systemui/fsgesture/NavStubDemoView;->linearToCubic(FFFF)F

    move-result v0

    const/high16 v2, 0x43de0000    # 444.0f

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 397
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    if-ne v0, v3, :cond_6

    .line 398
    iput v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    .line 401
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mTailCatcherTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 403
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 404
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteImg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mHomeIconImg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardIconView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 411
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurrentY:F

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    int-to-float v2, v2

    invoke-direct {p0, v1, v2, v4, v6}, Lcom/android/systemui/fsgesture/NavStubDemoView;->linearToCubic(FFFF)F

    move-result v1

    const v2, 0x3ec51eb8    # 0.385f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    .line 412
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2

    .line 415
    :cond_7
    iput-boolean v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsInFsgAnim:Z

    .line 416
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 418
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    if-ne v0, v5, :cond_8

    move v3, v2

    goto :goto_0

    :cond_8
    move v3, v1

    :goto_0
    const v5, 0x10003

    if-ne v0, v5, :cond_9

    move v1, v2

    :cond_9
    if-nez v3, :cond_b

    if-eqz v1, :cond_a

    goto :goto_1

    .line 453
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->finalization()V

    goto/16 :goto_2

    .line 421
    :cond_b
    :goto_1
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    int-to-float v1, v0

    iget v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    sub-float/2addr v1, v5

    const/high16 v6, 0x41a00000    # 20.0f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_c

    .line 423
    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 424
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startCancelAnim()V

    goto/16 :goto_2

    :cond_c
    int-to-float v0, v0

    sub-float/2addr v0, v5

    const/high16 v1, -0x3e600000    # -20.0f

    cmpg-float v0, v0, v1

    const-string v1, "DEMO_FULLY_SHOW"

    if-gez v0, :cond_f

    .line 426
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->fullyShowStep:I

    if-ne v0, v2, :cond_d

    .line 427
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startToHomeAnim()V

    goto :goto_2

    .line 428
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    const-string v1, "DEMO_TO_HOME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 429
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startToHomeAnim()V

    goto :goto_2

    .line 432
    :cond_e
    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 433
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startCancelAnim()V

    goto :goto_2

    :cond_f
    if-eqz v3, :cond_10

    .line 438
    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 439
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startCancelAnim()V

    goto :goto_2

    .line 441
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->fullyShowStep:I

    if-ne v0, v4, :cond_11

    .line 442
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startRecentTaskAnim()V

    goto :goto_2

    .line 443
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    const-string v1, "DEMO_TO_RECENTTASK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 444
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startRecentTaskAnim()V

    goto :goto_2

    .line 447
    :cond_12
    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 448
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startCancelAnim()V

    goto :goto_2

    .line 382
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->swipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownX:F

    .line 385
    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    sub-float/2addr v5, v0

    iput v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDelta:F

    .line 386
    div-int/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    int-to-float v0, v2

    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailX:F

    .line 387
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    .line 388
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDragBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    .line 389
    iput-boolean v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToHome:Z

    .line 390
    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    .line 461
    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAppBgView(Landroid/view/View;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppBgView:Landroid/view/View;

    return-void
.end method

.method public setAppNoteImg(Landroid/view/View;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteImg:Landroid/view/View;

    return-void
.end method

.method public setBgView(Landroid/view/View;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mBgView:Landroid/view/View;

    return-void
.end method

.method public setCurActivity(Landroid/app/Activity;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->curActivity:Landroid/app/Activity;

    return-void
.end method

.method public setDemoTitleView(Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    return-void
.end method

.method public setDemoType(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    return-void
.end method

.method public setDestPivot(II)V
    .locals 0

    .line 477
    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDestPivotX:I

    .line 478
    iput p2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDestPivotY:I

    return-void
.end method

.method public setFullyShowStep(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->fullyShowStep:I

    return-void
.end method

.method public setHomeIconImg(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mHomeIconImg:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setIsFromPro(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->isFromPro:Z

    return-void
.end method

.method public setRecentsBgView(Landroid/view/View;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsBgView:Landroid/view/View;

    return-void
.end method

.method public setRecentsCardContainer(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setRecentsFirstCardBound(Landroid/graphics/Rect;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardBound:Landroid/graphics/Rect;

    return-void
.end method

.method public setRecentsFirstCardIconView(Landroid/view/View;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardIconView:Landroid/view/View;

    return-void
.end method

.method public setSwipeView(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->swipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    return-void
.end method
