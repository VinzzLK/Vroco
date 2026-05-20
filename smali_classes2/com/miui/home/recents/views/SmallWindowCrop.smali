.class public Lcom/miui/home/recents/views/SmallWindowCrop;
.super Landroid/widget/LinearLayout;
.source "SmallWindowCrop.java"


# static fields
.field private static final DEFAULT_FREEFORM_COLOR:[F

.field private static final DEFAULT_FREEFORM_RECT:[I

.field private static final TAG:Ljava/lang/String;

.field private static final VIEW_COLOR:I

.field private static final VIEW_COLOR_LIGHT:I


# instance fields
.field public freeformLeash:Landroid/view/SurfaceControl;

.field private mAnimCancel:Z

.field private mChangeProgress:F

.field private final mChangeStateAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

.field private final mCircleAdapter:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

.field private mCircleAlpha:F

.field private final mCircleAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mCircleIconAlpha:F

.field private mCircleIconProgress:F

.field private final mCircleIconRect:Landroid/graphics/RectF;

.field private mCircleMaxWidth:I

.field private mCircleMinWidth:I

.field private mCircleRadius:F

.field private final mCircleRect:Landroid/graphics/RectF;

.field private final mCircleUpdate:Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;

.field private final mCurrentApp:Landroid/graphics/RectF;

.field private mFreeformAlpha:F

.field private mFreeformColor:[F

.field private mFreeformMiniScale:F

.field private mFreeformStroke:F

.field private mHoldColor:I

.field private final mHoldIconRect:Landroid/graphics/RectF;

.field private mHoldRadius:F

.field private final mHoldRect:Landroid/graphics/RectF;

.field private mIcon:Landroid/view/View;

.field private final mIconAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mIconMaxWidth:I

.field private mIconMinWidth:I

.field private final mInitCircleRectF:Landroid/graphics/RectF;

.field private mInitColor:I

.field private final mInitIconRectF:Landroid/graphics/RectF;

.field private mInitStroke:F

.field private mIsAllowFinish:Z

.field private mIsInit:Z

.field public mIsLandscape:Z

.field private mIsReceiveReady:Z

.field private mIsRotateScreen:Z

.field private mLastIsHold:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mNavStubView:Lcom/miui/home/recents/NavStubView;

.field private final mReceiveCallbackTimeOut:Ljava/lang/Runnable;

.field private final mReceiveSwitchCallbackTimeOut:Ljava/lang/Runnable;

.field private final mReleaseRect:Landroid/graphics/RectF;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSmallViewContent:Landroid/view/ViewGroup;

.field private mStatus:I

.field private final mTargetRect:Landroid/graphics/RectF;

.field private needUpdateByBinder:Z

.field public releaseInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public static synthetic $r8$lambda$-g6trVJf-fJsv8bjxRpNcgd-W3c(Lcom/miui/home/recents/views/SmallWindowCrop;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$3mrm11IcUoM9b1PDOZlXIc_zq_k(Lcom/miui/home/recents/views/SmallWindowCrop;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->lambda$startChangeAnim$3(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$6QKtiBZV4fDqlaZ-sZ1oMa5ASCw(Lcom/miui/home/recents/views/SmallWindowCrop;Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/home/recents/views/SmallWindowCrop;->lambda$new$0(Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S-93JsqJm_2esCC10sYanKmPKKY(Lcom/miui/home/recents/views/SmallWindowCrop;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->lambda$new$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/miui/home/recents/views/SmallWindowCrop;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/views/SmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v0, "#33FFFFFF"

    .line 58
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/miui/home/recents/views/SmallWindowCrop;->VIEW_COLOR:I

    const-string v0, "#26000000"

    .line 59
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/miui/home/recents/views/SmallWindowCrop;->VIEW_COLOR_LIGHT:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 65
    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/home/recents/views/SmallWindowCrop;->DEFAULT_FREEFORM_COLOR:[F

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 66
    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/home/recents/views/SmallWindowCrop;->DEFAULT_FREEFORM_RECT:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f40c0c1
        0x3f40c0c1
        0x3f40c0c1
    .end array-data

    :array_1
    .array-data 4
        0x307
        0x6d
        0x73f
        0x72d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 70
    new-instance p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIconAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 72
    new-instance p1, Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-direct {p1}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mChangeStateAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    const/4 p1, -0x1

    .line 83
    iput p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    .line 107
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitIconRectF:Landroid/graphics/RectF;

    .line 108
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitCircleRectF:Landroid/graphics/RectF;

    .line 109
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleRect:Landroid/graphics/RectF;

    .line 110
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mHoldRect:Landroid/graphics/RectF;

    .line 111
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleIconRect:Landroid/graphics/RectF;

    .line 112
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mHoldIconRect:Landroid/graphics/RectF;

    .line 113
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mReleaseRect:Landroid/graphics/RectF;

    .line 114
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mTargetRect:Landroid/graphics/RectF;

    .line 115
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCurrentApp:Landroid/graphics/RectF;

    .line 117
    new-instance p1, Lcom/miui/home/recents/views/SmallWindowCrop$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/SmallWindowCrop$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/views/SmallWindowCrop;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleUpdate:Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;

    .line 132
    new-instance p1, Lcom/miui/home/recents/views/SmallWindowCrop$1;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/SmallWindowCrop$1;-><init>(Lcom/miui/home/recents/views/SmallWindowCrop;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleAdapter:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    .line 142
    new-instance p1, Lcom/miui/home/recents/views/SmallWindowCrop$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/SmallWindowCrop$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/views/SmallWindowCrop;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mReceiveCallbackTimeOut:Ljava/lang/Runnable;

    .line 147
    new-instance p1, Lcom/miui/home/recents/views/SmallWindowCrop$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/SmallWindowCrop$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/views/SmallWindowCrop;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mReceiveSwitchCallbackTimeOut:Ljava/lang/Runnable;

    .line 154
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->closeForceDarkAllowed(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/SmallWindowCrop;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/miui/home/recents/views/SmallWindowCrop;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private cancelAnim(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 685
    iput-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mAnimCancel:Z

    .line 686
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIconAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIconAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mChangeStateAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 693
    iget-object p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mChangeStateAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    :cond_2
    return-void
.end method

.method private convert(FI)I
    .locals 2

    .line 752
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 754
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 755
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 756
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    .line 757
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v0, v1, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private convert(IF[F)I
    .locals 2

    if-eqz p3, :cond_1

    .line 741
    array-length p0, p3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p2, p0

    float-to-int p1, p2

    const/4 p2, 0x0

    .line 745
    aget p2, p3, p2

    mul-float/2addr p2, p0

    float-to-int p2, p2

    const/4 v0, 0x1

    .line 746
    aget v0, p3, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    const/4 v1, 0x2

    .line 747
    aget p3, p3, v1

    mul-float/2addr p3, p0

    float-to-int p0, p3

    .line 748
    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method private convertRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    .line 703
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isLandNotFold()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    goto :goto_1

    .line 707
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 708
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mScreenHeight:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mScreenHeight:I

    int-to-float p0, p0

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, v3

    .line 709
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    add-float/2addr p1, v2

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 711
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mScreenWidth:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    .line 712
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v3, v1

    iget p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mScreenWidth:I

    int-to-float p0, p0

    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p0, v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    add-float/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private dpToPxFromRes(I)I
    .locals 0

    .line 677
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getActiveCoef()F
    .locals 0

    .line 634
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isLandNotFold()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3f0ccccd    # 0.55f

    goto :goto_0

    :cond_0
    const p0, 0x3eb9db23    # 0.363f

    :goto_0
    return p0
.end method

.method private getCirclePer(FF)F
    .locals 2

    .line 645
    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mScreenWidth:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-double v0, v0

    float-to-double p1, p2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    .line 646
    iget p2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mScreenHeight:I

    int-to-float p2, p2

    invoke-direct {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->getHoldCoef()F

    move-result v0

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mScreenHeight:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->getActiveCoef()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->perFromVal(FFF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private getDisplayRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    .line 597
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 598
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/recents/views/SmallWindowCrop;->mix(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 599
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/recents/views/SmallWindowCrop;->mix(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 600
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/recents/views/SmallWindowCrop;->mix(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 601
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/SmallWindowCrop;->mix(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 602
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->convertRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method private getFreeformRect([I)Landroid/graphics/RectF;
    .locals 9

    if-eqz p1, :cond_1

    .line 723
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 727
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    const/4 v5, 0x2

    aget v5, p1, v5

    const/4 v6, 0x3

    aget p1, p1, v6

    invoke-direct {v0, v2, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 728
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 729
    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 730
    const-class v2, Landroid/graphics/Rect;

    const-class v5, Landroid/graphics/Rect;

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v6, v1

    new-array v7, v3, [Ljava/lang/Object;

    iget p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mFreeformMiniScale:F

    .line 735
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v7, v1

    const-string v4, "scale"

    move-object v3, v0

    .line 730
    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    invoke-virtual {v0, p1, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 737
    new-instance p0, Landroid/graphics/RectF;

    iget p1, v0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0

    .line 724
    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/home/recents/views/SmallWindowCrop;->TAG:Ljava/lang/String;

    const-string p1, "getFreeformDisplay: rect is error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0
.end method

.method private getHoldCoef()F
    .locals 0

    .line 630
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isLandNotFold()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    const p0, 0x3f4ccccd    # 0.8f

    :goto_0
    return p0
.end method

.method private getIconRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    .line 788
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleMinWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleMaxWidth:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/recents/views/SmallWindowCrop;->perFromVal(FFF)F

    move-result v0

    .line 789
    iget v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIconMinWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIconMaxWidth:I

    int-to-float v2, v2

    invoke-direct {p0, v1, v2, v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->mix(FFF)F

    move-result v0

    .line 790
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-direct {p0, v0, v0, v1, p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->getRect(FFFF)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method private getIconRotation()F
    .locals 1

    .line 794
    iget-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsLandscape:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 797
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->transformSurfaceRotationToViewRotation(I)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getRect(FFFF)Landroid/graphics/RectF;
    .locals 1

    .line 698
    new-instance p0, Landroid/graphics/RectF;

    sub-float p1, p3, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 699
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0, p1, v0, p3, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method private getTargetCircle(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;
    .locals 6

    sub-float/2addr p3, p2

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    .line 607
    iget p3, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mScreenWidth:I

    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mScreenHeight:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p3, p3

    const v0, 0x3da3d70a    # 0.08f

    mul-float/2addr p3, v0

    .line 608
    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mScreenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mScreenHeight:I

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    div-float v0, p3, v0

    iget v2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mScreenWidth:I

    int-to-float v3, v2

    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-double v1, v2

    .line 609
    iget v3, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mScreenHeight:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr p3, v1

    iget v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mScreenHeight:I

    int-to-float v1, v1

    mul-float/2addr p3, v1

    .line 610
    iget v1, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, p4

    sub-float/2addr v1, v0

    .line 611
    iget p1, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr p3, p4

    add-float/2addr p1, p3

    .line 612
    invoke-direct {p0, p2, p2, v1, p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->getRect(FFFF)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method private initView()V
    .locals 3

    .line 391
    sget-object v0, Lcom/miui/home/recents/views/SmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v1, "initView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 392
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->cancelAnim(Z)V

    .line 393
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mSmallViewContent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitCircleRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/SmallWindowCrop;->updateViewUi(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 394
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitIconRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/SmallWindowCrop;->updateViewUi(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 395
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIcon:Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->getIconRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 396
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mSmallViewContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080664

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 397
    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleMinWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitColor:I

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/SmallWindowCrop;->updateBackground(FI)V

    const/4 v0, 0x0

    .line 398
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private isClickInsideViewGroup(FF)Z
    .locals 5

    .line 658
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mSmallViewContent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 662
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    aget v0, v2, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 665
    iget-object v4, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mSmallViewContent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    .line 666
    iget-object p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mSmallViewContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    add-int/2addr p0, v2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    int-to-float v0, v4

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    int-to-float p1, v2

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method private isToHoldState(FFF)Z
    .locals 0

    .line 616
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/SmallWindowCrop;->getCirclePer(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    const/4 p2, 0x1

    if-ltz p1, :cond_0

    iget p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    if-eq p0, p2, :cond_1

    .line 617
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenDensity()F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    cmpg-float p0, p3, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method

.method private synthetic lambda$new$0(Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V
    .locals 0

    .line 118
    iget-boolean p5, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mAnimCancel:Z

    if-eqz p5, :cond_0

    return-void

    .line 121
    :cond_0
    iput p2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleIconProgress:F

    .line 122
    iget-object p2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 123
    iget-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleIconRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleRect:Landroid/graphics/RectF;

    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/SmallWindowCrop;->getIconRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 124
    iput p3, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleRadius:F

    .line 125
    iput p4, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleAlpha:F

    .line 126
    iput p4, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleIconAlpha:F

    .line 127
    iget-boolean p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->needUpdateByBinder:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    iget p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mChangeProgress:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->updateUI()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 143
    sget-object v0, Lcom/miui/home/recents/views/SmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v1, "onReadyForEnterMini time out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->releaseInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->onReadyForEnterMini(I)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    .line 148
    sget-object v0, Lcom/miui/home/recents/views/SmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v1, "mReceiveSwitchCallbackTimeOut time out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->finish()V

    return-void
.end method

.method private synthetic lambda$startChangeAnim$3(F)V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mChangeProgress:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 483
    iget v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 484
    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->updateTaskCropBySmallWindow()V

    .line 486
    :cond_1
    iput p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mChangeProgress:F

    :cond_2
    :goto_0
    return-void
.end method

.method private mix(FFF)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p3

    mul-float/2addr p1, p0

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method private mixColor(IIF)I
    .locals 6

    if-eq p1, p2, :cond_1

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 767
    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 768
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 769
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 770
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 771
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 772
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 773
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 774
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 775
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    int-to-float v0, v0

    int-to-float v3, v3

    .line 776
    invoke-direct {p0, v0, v3, p3}, Lcom/miui/home/recents/views/SmallWindowCrop;->mix(FFF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v1, v1

    int-to-float v3, v4

    .line 777
    invoke-direct {p0, v1, v3, p3}, Lcom/miui/home/recents/views/SmallWindowCrop;->mix(FFF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v2

    int-to-float v3, v5

    .line 778
    invoke-direct {p0, v2, v3, p3}, Lcom/miui/home/recents/views/SmallWindowCrop;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    int-to-float p1, p1

    int-to-float p2, p2

    .line 779
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/SmallWindowCrop;->mix(FFF)F

    move-result p0

    float-to-int p0, p0

    .line 780
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method private perFromVal(FFF)F
    .locals 1

    const/4 v0, 0x0

    .line 621
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->perFromVal(FFFZ)F

    move-result p0

    return p0
.end method

.method private perFromVal(FFFZ)F
    .locals 0

    sub-float/2addr p1, p2

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 626
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :cond_0
    return p1
.end method

.method private startAnim(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V
    .locals 9

    move-object v7, p1

    move-object/from16 v8, p7

    const/4 v0, 0x0

    move-object v1, p0

    .line 449
    iput-boolean v0, v1, Lcom/miui/home/recents/views/SmallWindowCrop;->mAnimCancel:Z

    .line 450
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    sget-object v5, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CIRCLE_SMALL_VIEW:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-object v0, p1

    move-object v1, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateAllAnimValues(Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 455
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v5, p4

    move v6, p5

    .line 454
    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->reset(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 456
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CIRCLE_SMALL_VIEW:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    move-object v0, p6

    .line 457
    invoke-virtual {p1, p6}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    if-eqz v8, :cond_1

    .line 459
    invoke-virtual {p1, v8}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 461
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInMainThread()V

    :goto_0
    return-void
.end method

.method private startChangeAnim(Z)V
    .locals 2

    .line 472
    iget-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mLastIsHold:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 473
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mLastIsHold:Z

    .line 474
    iget-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mChangeStateAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 475
    iget-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mChangeStateAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 477
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mChangeStateAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    const v0, 0x3f733333    # 0.95f

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setDampingResponse(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 478
    iget-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mChangeStateAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mChangeProgress:F

    iget-boolean v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mLastIsHold:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setStartEnd(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 479
    iget-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mChangeStateAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v0, Lcom/miui/home/recents/views/SmallWindowCrop$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/views/SmallWindowCrop$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/views/SmallWindowCrop;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 488
    iget-object p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mChangeStateAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    return-void
.end method

.method private startSmallWindow(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/os/Bundle;
    .locals 4

    .line 512
    sget-object v0, Lcom/miui/home/recents/views/SmallWindowCrop;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSmallWindow: taskInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 514
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    .line 517
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isSupportStartSmallWithPosition()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsLandscape:Z

    if-nez v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 522
    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->startSmallFreeformFromRecent(Landroid/app/ActivityManager$RunningTaskInfo;I)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v3, "startSmallWindow: result is null"

    .line 524
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->hasShellFeature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    invoke-direct {p0, v1, p1, p2}, Lcom/miui/home/recents/views/SmallWindowCrop;->startSmallWindowAtLeastUAndOnShellFeature(ILandroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_1

    .line 528
    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->startSmallWindowBeforeUOrNotOnShellFeature(ILandroid/graphics/RectF;)V

    :cond_3
    :goto_1
    return-object v2
.end method

.method private startSmallWindowAtLeastUAndOnShellFeature(ILandroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 8

    :try_start_0
    const-string p0, "android.util.MiuiMultiWindowUtils"

    .line 537
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v1, "startSmallFreeformForRecent"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const-class v6, Landroid/graphics/Rect;

    const/4 v7, 0x2

    aput-object v6, v3, v7

    new-array v2, v2, [Ljava/lang/Object;

    iget p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 540
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v4

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v7

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    new-instance p1, Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    float-to-int p3, p3

    iget v4, p2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, p2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    invoke-direct {p1, p3, v4, v5, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object p1, v2, v7

    .line 536
    invoke-static {p0, v0, v1, v3, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 543
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private startSmallWindowBeforeUOrNotOnShellFeature(ILandroid/graphics/RectF;)V
    .locals 10

    const-string v0, "startSmallFreeform"

    const-string v1, "android.util.MiuiMultiWindowUtils"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_0

    .line 551
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    const-class v8, Landroid/graphics/Rect;

    aput-object v8, v7, v2

    aput-object v5, v7, v4

    new-array v6, v6, [Ljava/lang/Object;

    .line 553
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v6, v3

    new-instance p0, Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v8, p2, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iget v9, p2, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    invoke-direct {p0, v3, v8, v9, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object p0, v6, v2

    .line 554
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v4

    .line 550
    invoke-static {v1, v5, v0, v7, v6}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 556
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 561
    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v5, v2

    new-array v4, v4, [Ljava/lang/Object;

    .line 563
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v4, v3

    new-instance p0, Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v6, p2, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v7, p2, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    invoke-direct {p0, v3, v6, v7, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object p0, v4, v2

    .line 560
    invoke-static {p1, v1, v0, v5, v4}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 566
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateBackground(FI)V
    .locals 0

    .line 650
    iget-object p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mSmallViewContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p0, :cond_0

    .line 652
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 653
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_0
    return-void
.end method

.method private updateCircleAnim(F)V
    .locals 11

    const/4 v0, 0x0

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x1

    .line 429
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/home/recents/views/SmallWindowCrop;->perFromVal(FFFZ)F

    move-result v8

    .line 430
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitCircleRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleMinWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleMaxWidth:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->getTargetCircle(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    move-result-object v6

    .line 431
    iget-object v4, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v5, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleRect:Landroid/graphics/RectF;

    iget v7, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleAlpha:F

    iget-object v9, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleUpdate:Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;

    iget-object v10, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleAdapter:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/miui/home/recents/views/SmallWindowCrop;->startAnim(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    return-void
.end method

.method private updateSmallWindowParams(FLandroid/graphics/RectF;F)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCurrentApp:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 412
    iget-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsRotateScreen:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mFreeformStroke:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mFreeformStroke:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 413
    :goto_0
    iget v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitStroke:F

    invoke-direct {p0, v1, v0, p3}, Lcom/miui/home/recents/views/SmallWindowCrop;->mix(FFF)F

    move-result v0

    .line 414
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isHorizontalClip()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v2}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_1

    .line 415
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v2}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    :goto_1
    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    .line 416
    iput p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mHoldRadius:F

    .line 417
    iget-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mHoldRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v0

    iget v3, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v0

    iget v4, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v0

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 419
    iget-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mHoldIconRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-direct {v0, v1, v2, v3, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 420
    iget p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitColor:I

    iget p2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mFreeformAlpha:F

    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mFreeformColor:[F

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->convert(IF[F)I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/SmallWindowCrop;->mixColor(IIF)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mHoldColor:I

    return-void
.end method

.method private updateUI()V
    .locals 7

    .line 496
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mHoldRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/SmallWindowCrop;->getDisplayRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 497
    iget-object v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleIconRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mHoldIconRect:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/recents/views/SmallWindowCrop;->getDisplayRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 498
    iget v2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleRadius:F

    iget v3, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mHoldRadius:F

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/recents/views/SmallWindowCrop;->mix(FF)F

    move-result v2

    .line 499
    iget v3, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleIconAlpha:F

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {p0, v3, v4}, Lcom/miui/home/recents/views/SmallWindowCrop;->mix(FF)F

    move-result v3

    .line 500
    iget v4, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleIconProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_0

    sub-float/2addr v5, v4

    .line 502
    iget v3, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleIconAlpha:F

    mul-float/2addr v3, v5

    .line 504
    :cond_0
    iget-object v4, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mSmallViewContent:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->updateViewUi(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 505
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIcon:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/SmallWindowCrop;->updateViewUi(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 506
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIcon:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 508
    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mHoldColor:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleAlpha:F

    iget v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitColor:I

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/SmallWindowCrop;->convert(FI)I

    move-result v0

    .line 507
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->updateBackground(FI)V

    return-void
.end method

.method private updateView(FFI)V
    .locals 0

    .line 402
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/SmallWindowCrop;->getCirclePer(FF)F

    move-result p1

    .line 403
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->updateCircleAnim(F)V

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 404
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->startChangeAnim(Z)V

    return-void
.end method

.method private updateViewUi(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    .line 586
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 587
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 588
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 589
    iget v0, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    .line 590
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p2, Landroid/graphics/RectF;->right:F

    .line 591
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    .line 592
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 589
    invoke-virtual {p0, v0, v1, v2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 593
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public def(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 384
    sget-object p0, Lcom/miui/home/recents/views/SmallWindowCrop;->TAG:Ljava/lang/String;

    const-string p1, "def: bundle is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    .line 387
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    :cond_2
    :goto_0
    return-object p3
.end method

.method public exitTopWindowCrop()V
    .locals 2

    .line 248
    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsInit:Z

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcom/miui/home/recents/views/SmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v1, "exitTopWindowCrop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 251
    iput v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    const/4 v0, 0x0

    .line 252
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->updateCircleAnim(F)V

    const/4 v0, 0x0

    .line 253
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->startChangeAnim(Z)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .line 304
    sget-object v0, Lcom/miui/home/recents/views/SmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsAllowFinish:Z

    .line 306
    iget-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsReceiveReady:Z

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mReceiveSwitchCallbackTimeOut:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 308
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/AppToSmallWindowFinishEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/event/AppToSmallWindowFinishEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    const/4 v0, 0x0

    .line 309
    iput-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsReceiveReady:Z

    .line 310
    iput-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsAllowFinish:Z

    .line 311
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->resetValue()V

    :cond_0
    return-void
.end method

.method public getCurrentApp()Landroid/graphics/RectF;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCurrentApp:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getTargetAppAlpha(Z)F
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public getTargetRatio(F)F
    .locals 0

    const p0, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, p0

    return p1
.end method

.method public initTopWindowCrop(ZII)V
    .locals 2

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsInit:Z

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsAllowFinish:Z

    .line 174
    iput-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsReceiveReady:Z

    const/4 v0, -0x1

    .line 175
    iput v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    .line 176
    iput-boolean p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsLandscape:Z

    .line 177
    iput p2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mScreenWidth:I

    .line 178
    iput p3, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mScreenHeight:I

    .line 179
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    .line 180
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 181
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/miui/home/recents/views/SmallWindowCrop;->VIEW_COLOR_LIGHT:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/miui/home/recents/views/SmallWindowCrop;->VIEW_COLOR:I

    :goto_0
    iput p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitColor:I

    const p1, 0x7f0706a8

    .line 182
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->dpToPxFromRes(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitStroke:F

    .line 183
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isLandNotFold()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0706aa

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->dpToPxFromRes(I)I

    move-result p1

    goto :goto_1

    :cond_1
    const p1, 0x7f0706ab

    .line 184
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->dpToPxFromRes(I)I

    move-result p1

    :goto_1
    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mFreeformStroke:F

    .line 185
    iget-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->getCalculator()Lcom/miui/home/recents/GestureHomeCalculator;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    .line 187
    invoke-virtual {p1}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskRadius()F

    move-result p1

    iget p2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitStroke:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mHoldRadius:F

    .line 189
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isLandNotFold()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f0706b9

    goto :goto_3

    :cond_4
    const p1, 0x7f0706bb

    :goto_3
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->dpToPxFromRes(I)I

    move-result p1

    .line 191
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isLandNotFold()Z

    move-result p2

    if-eqz p2, :cond_5

    const p2, 0x7f0706ba

    goto :goto_4

    :cond_5
    const p2, 0x7f0706bc

    :goto_4
    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/SmallWindowCrop;->dpToPxFromRes(I)I

    move-result p2

    const p3, 0x7f0706c4

    .line 193
    invoke-direct {p0, p3}, Lcom/miui/home/recents/views/SmallWindowCrop;->dpToPxFromRes(I)I

    move-result p3

    iput p3, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleMinWidth:I

    const p3, 0x7f0706b6

    .line 194
    invoke-direct {p0, p3}, Lcom/miui/home/recents/views/SmallWindowCrop;->dpToPxFromRes(I)I

    move-result p3

    iput p3, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleMaxWidth:I

    const p3, 0x7f0706b8

    .line 195
    invoke-direct {p0, p3}, Lcom/miui/home/recents/views/SmallWindowCrop;->dpToPxFromRes(I)I

    move-result p3

    iput p3, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIconMinWidth:I

    const p3, 0x7f0706b7

    .line 196
    invoke-direct {p0, p3}, Lcom/miui/home/recents/views/SmallWindowCrop;->dpToPxFromRes(I)I

    move-result p3

    iput p3, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIconMaxWidth:I

    .line 197
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isLandNotFold()Z

    move-result p3

    if-nez p3, :cond_6

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result p3

    add-int/2addr p2, p3

    .line 198
    :cond_6
    iget p3, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mScreenWidth:I

    sub-int/2addr p3, p1

    .line 199
    iget-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitCircleRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleMinWidth:I

    int-to-float v1, v0

    int-to-float v0, v0

    int-to-float p3, p3

    int-to-float p2, p2

    invoke-direct {p0, v1, v0, p3, p2}, Lcom/miui/home/recents/views/SmallWindowCrop;->getRect(FFFF)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 200
    iget-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget p2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIconMinWidth:I

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 201
    iget-object p2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    iget p3, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIconMinWidth:I

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 202
    iget-object p3, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitIconRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIconMinWidth:I

    int-to-float v1, v0

    int-to-float v0, v0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/miui/home/recents/views/SmallWindowCrop;->getRect(FFFF)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 203
    invoke-direct {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->initView()V

    return-void
.end method

.method public isClickInAnim(FF)Z
    .locals 2

    .line 379
    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/SmallWindowCrop;->isClickInsideViewGroup(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExitInHold()Z
    .locals 1

    .line 368
    iget p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHorizontalClip()Z
    .locals 2

    .line 372
    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mReleaseRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mTargetRect:Landroid/graphics/RectF;

    invoke-static {v0, p0}, Lcom/miui/home/recents/util/Utilities;->isHorizontalClip(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public isInHoldState()Z
    .locals 2

    .line 356
    iget-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsInit:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInit()Z
    .locals 0

    .line 352
    iget-boolean p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsInit:Z

    return p0
.end method

.method public isLandNotFold()Z
    .locals 0

    .line 348
    iget-boolean p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsLandscape:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScreenOff()Z
    .locals 0

    .line 784
    iget-object p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isLock()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public mix(FF)F
    .locals 1

    .line 364
    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mChangeProgress:F

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->mix(FFF)F

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 159
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a02ab

    .line 160
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mSmallViewContent:Landroid/view/ViewGroup;

    const v0, 0x7f0a02ac

    .line 161
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIcon:Landroid/view/View;

    return-void
.end method

.method public onReadyForEnterMini(I)V
    .locals 2

    .line 266
    sget-object v0, Lcom/miui/home/recents/views/SmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v1, "onReadyForEnterMini"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mReceiveCallbackTimeOut:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 268
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isExitInHold()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsReceiveReady:Z

    .line 272
    iget-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsAllowFinish:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->releaseInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsRotateScreen:Z

    if-nez p1, :cond_1

    .line 273
    sget-object p1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/event/AppToSmallWindowFinishEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/event/AppToSmallWindowFinishEvent;-><init>()V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    const/4 p1, 0x0

    .line 274
    iput-boolean p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsReceiveReady:Z

    .line 275
    iput-boolean p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsAllowFinish:Z

    .line 276
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->resetValue()V

    :cond_1
    return-void
.end method

.method public resetTopWindowCrop()V
    .locals 1

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsInit:Z

    const/4 v0, -0x1

    .line 211
    iput v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    .line 212
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->resetValue()V

    return-void
.end method

.method public resetValue()V
    .locals 2

    .line 572
    sget-object v0, Lcom/miui/home/recents/views/SmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v1, "resetValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 573
    iput-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->needUpdateByBinder:Z

    .line 574
    iput-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsInit:Z

    .line 575
    iput-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mLastIsHold:Z

    .line 576
    iput-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsLandscape:Z

    .line 577
    iput-boolean v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsRotateScreen:Z

    const/4 v0, 0x0

    .line 578
    iput v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mChangeProgress:F

    .line 579
    iput v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleIconProgress:F

    const/4 v1, -0x1

    .line 580
    iput v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    const/4 v1, 0x1

    .line 581
    invoke-direct {p0, v1}, Lcom/miui/home/recents/views/SmallWindowCrop;->cancelAnim(Z)V

    .line 582
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public setTargetParams(Landroid/os/Bundle;Z)Landroid/graphics/RectF;
    .locals 4

    const-string v0, "leash"

    const/4 v1, 0x0

    .line 323
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/recents/views/SmallWindowCrop;->def(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->freeformLeash:Landroid/view/SurfaceControl;

    .line 324
    sget-object v0, Lcom/miui/home/recents/views/SmallWindowCrop;->DEFAULT_FREEFORM_COLOR:[F

    const-string v1, "strokeColors"

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->def(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mFreeformColor:[F

    const/high16 v0, 0x3e800000    # 0.25f

    .line 325
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "miniScale"

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->def(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mFreeformMiniScale:F

    .line 326
    iput-boolean p2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsRotateScreen:Z

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 327
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "strokeAlpha"

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->def(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mFreeformAlpha:F

    if-eqz p2, :cond_1

    const p2, 0x7f0706aa

    .line 328
    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/SmallWindowCrop;->dpToPxFromRes(I)I

    move-result p2

    int-to-float p2, p2

    goto :goto_1

    :cond_1
    const/high16 p2, 0x43180000    # 152.0f

    .line 329
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string v0, "strokeThickness"

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/recents/views/SmallWindowCrop;->def(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :goto_1
    iput p2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mFreeformStroke:F

    const p2, 0x7f0706a9

    .line 330
    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/SmallWindowCrop;->dpToPxFromRes(I)I

    move-result p2

    int-to-float p2, p2

    .line 331
    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mScreenWidth:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    .line 332
    iget-object v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCurrentApp:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    iget-object v3, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCurrentApp:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v1, v3

    .line 333
    invoke-direct {p0, v1, v2, v0, p2}, Lcom/miui/home/recents/views/SmallWindowCrop;->getRect(FFFF)Landroid/graphics/RectF;

    move-result-object p2

    .line 334
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mTargetRect:Landroid/graphics/RectF;

    iget-boolean v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsRotateScreen:Z

    if-eqz v1, :cond_2

    goto :goto_2

    .line 335
    :cond_2
    sget-object p2, Lcom/miui/home/recents/views/SmallWindowCrop;->DEFAULT_FREEFORM_RECT:[I

    const-string v1, "bounds"

    invoke-virtual {p0, p1, v1, p2}, Lcom/miui/home/recents/views/SmallWindowCrop;->def(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->getFreeformRect([I)Landroid/graphics/RectF;

    move-result-object p2

    .line 334
    :goto_2
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 336
    iget-object p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mTargetRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public startSmallWindow(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/os/Bundle;
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCurrentApp:Landroid/graphics/RectF;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->startSmallWindow(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 260
    iget-object p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mReceiveCallbackTimeOut:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/BackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-object p1
.end method

.method public startStrokeSwitch()V
    .locals 10

    .line 281
    sget-object v0, Lcom/miui/home/recents/views/SmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v1, "startStrokeSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isScreenOff()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isScreenOff"

    .line 283
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/AppToSmallWindowFinishEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/event/AppToSmallWindowFinishEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 287
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->resetValue()V

    goto :goto_0

    .line 288
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsRotateScreen:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->freeformLeash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mReceiveSwitchCallbackTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/common/BackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    .line 291
    sget-object v1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEvent;

    new-instance v9, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;

    iget-object v5, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->freeformLeash:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mFreeformColor:[F

    iget v7, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mFreeformAlpha:F

    iget v8, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mFreeformStroke:F

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;-><init>(Lcom/miui/home/recents/views/SmallWindowCrop;Landroid/view/SurfaceControl;[FFF)V

    invoke-direct {v2, v9}, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEvent;-><init>(Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    const/4 v1, 0x0

    .line 294
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const-string p0, "strokeSwitch: setAlpha complete"

    .line 295
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->finish()V

    :goto_0
    return-void
.end method

.method public startTopWindow(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 216
    sget-object v0, Lcom/miui/home/recents/views/SmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v1, "startTopWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iput-object p2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->releaseInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 218
    iget-object p2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mReleaseRect:Landroid/graphics/RectF;

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 p1, 0x3

    .line 219
    iput p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    const/4 p1, 0x0

    .line 220
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->cancelAnim(Z)V

    return-void
.end method

.method public updateConfiguration()V
    .locals 3

    .line 224
    sget-object v0, Lcom/miui/home/recents/views/SmallWindowCrop;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConfiguration: mLastCropStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; isInit() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isInit()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/home/recents/views/SmallWindowCrop;->VIEW_COLOR_LIGHT:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/miui/home/recents/views/SmallWindowCrop;->VIEW_COLOR:I

    :goto_0
    iput v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitColor:I

    return-void
.end method

.method public updateParams(FLandroid/graphics/RectF;F)V
    .locals 2

    .line 316
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isInit()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 317
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/SmallWindowCrop;->updateSmallWindowParams(FLandroid/graphics/RectF;F)V

    .line 318
    invoke-direct {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->updateUI()V

    :cond_1
    return-void
.end method

.method public updateState(FFFZ)I
    .locals 3

    .line 229
    iget v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 231
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleIconRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mInitIconRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v0, 0x0

    .line 232
    iput v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleAlpha:F

    .line 233
    iput v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleIconAlpha:F

    .line 234
    iget-object v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mCircleRadius:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 235
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 237
    :cond_0
    iput-boolean p4, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->needUpdateByBinder:Z

    .line 238
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/SmallWindowCrop;->isToHoldState(FFF)Z

    move-result p3

    .line 239
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/SmallWindowCrop;->updateView(FFI)V

    .line 240
    iget p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    if-ne p3, p1, :cond_1

    return v1

    .line 243
    :cond_1
    iput p3, p0, Lcom/miui/home/recents/views/SmallWindowCrop;->mStatus:I

    return p3
.end method
