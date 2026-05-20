.class public Lcom/miui/home/recents/util/RectFSpringAnim;
.super Ljava/lang/Object;
.source "RectFSpringAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/util/RectFSpringAnim$ICurrentRectCalculator;,
        Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;,
        Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;,
        Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;,
        Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mAlphaBundle:Lcom/miui/home/recents/anim/SpringBundle;

.field private mAlphaVelocity:F

.field private mAlreadyModifyStartRect:Z

.field private mAnimAcreageSize:F

.field private final mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mAnimsStarted:Z

.field private mCancelAnimType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field private final mCenterXBundle:Lcom/miui/home/recents/anim/SpringBundle;

.field private mCenterXMinVisibleChange:F

.field private final mCenterYBundle:Lcom/miui/home/recents/anim/SpringBundle;

.field private mCenterYMinVisibleChange:F

.field private mCurrentAlpha:F

.field private mCurrentCenterX:F

.field private mCurrentCenterY:F

.field private mCurrentHeight:F

.field private mCurrentRadiusRatio:F

.field private mCurrentRatio:F

.field private final mCurrentRect:Landroid/graphics/RectF;

.field private mCurrentRectCalculator:Lcom/miui/home/recents/util/RectFSpringAnim$ICurrentRectCalculator;

.field private mCurrentWidth:F

.field private final mDefaultRect:Landroid/graphics/RectF;

.field private mEndAlpha:F

.field private mEndRadiusRatio:F

.field private final mFirstEndRect:Landroid/graphics/RectF;

.field private final mHeightBundle:Lcom/miui/home/recents/anim/SpringBundle;

.field private mHeightMinVisibleChange:F

.field private mHeightVelocity:F

.field private mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

.field private mIconXSpan:I

.field private mIconYSpan:I

.field private mIsConnectRemote:Z

.field private mIsCopyNextState:Z

.field private mIsFromRecent:Z

.field private mIsOpenAnim:Z

.field private volatile mIsSplitLaunchAnimation:Z

.field private mLastAminType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field private mLeftVelocity:F

.field private mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

.field private mMoveToTargetRectWhenAnimEnd:Z

.field private final mOnUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousRect:Landroid/graphics/RectF;

.field private mProgressCalculateType:I

.field private final mRadiusRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

.field private mRadiusRatioMinVisibleChange:F

.field private mRadiusRatioVelocity:F

.field private final mRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

.field private mRatioMinVisibleChange:F

.field private mRatioVelocity:F

.field private final mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRequestCancel:Z

.field private volatile mRequestEnd:Z

.field private mSkipCallExecuteFinish:Z

.field private mStartAlpha:F

.field private mStartRadiusRatio:F

.field private final mStartRect:Landroid/graphics/RectF;

.field private mTargetAcreageSize:F

.field private mTargetRect:Landroid/graphics/RectF;

.field private mTopVelocity:F

.field private final mWidthBundle:Lcom/miui/home/recents/anim/SpringBundle;

.field private mWidthMinVisibleChange:F

.field private mWidthVelocity:F


# direct methods
.method public static synthetic $r8$lambda$1jLVOl0VA6C0jU6hDBVSfUb3Zq4(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/home/recents/util/RectFSpringAnim;->lambda$updateAllAnimValues$3(Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UdHhFylbzOtXP3Qg_4Gll1n2oOc(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->endDirectly()V

    return-void
.end method

.method public static synthetic $r8$lambda$kS9m2Wvr_kulcehGPM1qdUlR2_4(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->lambda$updateEndRectF$2(Landroid/graphics/RectF;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tWuKCiAGsMWWqUKXv7XTOnYI3Sk(Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->lambda$initListener$0(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u5r278GbukIF6cIzI2ua6B78l3g(Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->lambda$initListener$1(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectFSpringAnim_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mFirstEndRect:Landroid/graphics/RectF;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mDefaultRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 69
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartAlpha:F

    .line 70
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    .line 82
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mPreviousRect:Landroid/graphics/RectF;

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 86
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x1

    .line 97
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconXSpan:I

    .line 98
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconYSpan:I

    .line 100
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    const-string v2, "centerX"

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 101
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    const-string v2, "centerY"

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 102
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    const-string v2, "Width"

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 103
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    const-string v2, "Height"

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 104
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    const-string v2, "Ratio"

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 105
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    const-string v2, "RadiusRatio"

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 106
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    const-string v2, "Alpha"

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 109
    new-instance v1, Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/HyperSpringAnimation;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const v1, 0x3dcccccd    # 0.1f

    .line 122
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXMinVisibleChange:F

    .line 123
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    .line 124
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    .line 125
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightMinVisibleChange:F

    const v1, 0x3a83126f    # 0.001f

    .line 126
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusRatioMinVisibleChange:F

    .line 127
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioMinVisibleChange:F

    .line 128
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    const/16 v0, 0x3e9

    .line 132
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsConnectRemote:Z

    .line 139
    iput-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCancelAnimType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 142
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->initSpringList()V

    .line 143
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->initListener()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V
    .locals 3

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectFSpringAnim_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mFirstEndRect:Landroid/graphics/RectF;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mDefaultRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 69
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartAlpha:F

    .line 70
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    .line 82
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mPreviousRect:Landroid/graphics/RectF;

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 86
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x1

    .line 97
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconXSpan:I

    .line 98
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconYSpan:I

    .line 100
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    const-string v2, "centerX"

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 101
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    const-string v2, "centerY"

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 102
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    const-string v2, "Width"

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 103
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    const-string v2, "Height"

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 104
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    const-string v2, "Ratio"

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 105
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    const-string v2, "RadiusRatio"

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 106
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    const-string v2, "Alpha"

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 109
    new-instance v1, Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/HyperSpringAnimation;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const v1, 0x3dcccccd    # 0.1f

    .line 122
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXMinVisibleChange:F

    .line 123
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    .line 124
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    .line 125
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightMinVisibleChange:F

    const v1, 0x3a83126f    # 0.001f

    .line 126
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusRatioMinVisibleChange:F

    .line 127
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioMinVisibleChange:F

    .line 128
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    const/16 v0, 0x3e9

    .line 132
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsConnectRemote:Z

    .line 139
    iput-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCancelAnimType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 174
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->initSpringList()V

    .line 175
    invoke-virtual/range {p0 .. p6}, Lcom/miui/home/recents/util/RectFSpringAnim;->reset(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 176
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->initListener()V

    return-void
.end method

.method private calculateStiffFromResponse(F)F
    .locals 2

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/high16 p1, 0x43480000    # 200.0f

    :cond_0
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    float-to-double p0, p1

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p0

    .line 762
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private changeAnimStart(Z)V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeAnimStart start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    return-void
.end method

.method private copyCurrentAnimState(Landroid/graphics/RectF;FF)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 9

    .line 448
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    const-string v1, "copyCurrentAnimState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    iget v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndRadiusRatio:F

    iget v8, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    move-object v2, v0

    move-object v3, p1

    move v5, p2

    move v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 451
    invoke-virtual {v0, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 453
    iget-object p1, v0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p2}, Lcom/miui/home/recents/anim/SpringBundle;->getDamping()F

    move-result p2

    iget-object p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p3}, Lcom/miui/home/recents/anim/SpringBundle;->getStiffness()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/recents/anim/SpringBundle;->setDampingAndStiffness(FF)V

    .line 454
    iget-object p1, v0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p2}, Lcom/miui/home/recents/anim/SpringBundle;->getDamping()F

    move-result p2

    iget-object p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p3}, Lcom/miui/home/recents/anim/SpringBundle;->getStiffness()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/recents/anim/SpringBundle;->setDampingAndStiffness(FF)V

    .line 455
    iget-object p1, v0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p2}, Lcom/miui/home/recents/anim/SpringBundle;->getDamping()F

    move-result p2

    iget-object p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p3}, Lcom/miui/home/recents/anim/SpringBundle;->getStiffness()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/recents/anim/SpringBundle;->setDampingAndStiffness(FF)V

    .line 456
    iget-object p1, v0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p2}, Lcom/miui/home/recents/anim/SpringBundle;->getDamping()F

    move-result p2

    iget-object p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p3}, Lcom/miui/home/recents/anim/SpringBundle;->getStiffness()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/recents/anim/SpringBundle;->setDampingAndStiffness(FF)V

    .line 457
    iget-object p1, v0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p2}, Lcom/miui/home/recents/anim/SpringBundle;->getDamping()F

    move-result p2

    iget-object p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p3}, Lcom/miui/home/recents/anim/SpringBundle;->getStiffness()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/recents/anim/SpringBundle;->setDampingAndStiffness(FF)V

    .line 458
    iget-object p1, v0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p2}, Lcom/miui/home/recents/anim/SpringBundle;->getDamping()F

    move-result p2

    iget-object p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p3}, Lcom/miui/home/recents/anim/SpringBundle;->getStiffness()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/recents/anim/SpringBundle;->setDampingAndStiffness(FF)V

    .line 459
    iget-object p1, v0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p2}, Lcom/miui/home/recents/anim/SpringBundle;->getDamping()F

    move-result p2

    iget-object p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p3}, Lcom/miui/home/recents/anim/SpringBundle;->getStiffness()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/recents/anim/SpringBundle;->setDampingAndStiffness(FF)V

    .line 460
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    iput p0, v0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    return-object v0
.end method

.method private endDirectly()V
    .locals 3

    .line 917
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 918
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestEnd:Z

    .line 919
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    const-string v2, "endDirectly mRequestEnd end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->setEndRequested(Z)V

    :cond_0
    return-void
.end method

.method private static getAcreageProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)F
    .locals 2

    .line 1186
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    mul-float/2addr v0, p2

    .line 1187
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr p2, p1

    sub-float p1, v0, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez p2, :cond_0

    .line 1189
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    mul-float/2addr p2, p0

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr p0, p1

    sub-float/2addr v1, p0

    :cond_0
    return v1
.end method

.method private getInitVelocity(Ljava/lang/String;)F
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/SpringBundle;->getVelocity()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getModifyResponse(F)F
    .locals 0

    .line 825
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result p0

    mul-float/2addr p1, p0

    return p1
.end method

.method private getProgress()F
    .locals 2

    .line 1167
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    invoke-static {v0, v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getWidthProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;F)F

    move-result p0

    return p0

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-static {v0, v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getAcreageProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method private getPropertyVelocity(Ljava/lang/String;)F
    .locals 4

    .line 527
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getSpringBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 531
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsCopyNextState:Z

    if-eqz v1, :cond_1

    .line 532
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/SpringBundle;->getPropertyVelocity()F

    move-result v0

    .line 533
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPropertyVelocity new, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 535
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/SpringBundle;->getVelocity()F

    move-result v0

    .line 536
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPropertyVelocity old, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/high16 v1, 0x4f000000

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    return v0

    .line 541
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getInitVelocity(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private getRadius(Landroid/graphics/RectF;F)F
    .locals 0

    .line 486
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRectFDiagonal(Landroid/graphics/RectF;)F

    move-result p0

    mul-float/2addr p0, p2

    return p0
.end method

.method private getRadiusRadio(Landroid/graphics/RectF;F)F
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRectFDiagonal(Landroid/graphics/RectF;)F

    move-result p0

    div-float/2addr p2, p0

    return p2
.end method

.method public static getRealProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;I)F
    .locals 1

    const/16 v0, 0x3e9

    if-ne p3, v0, :cond_0

    .line 1175
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-static {p2, p1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getWidthProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;F)F

    move-result p0

    return p0

    .line 1177
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getAcreageProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method private getRectFDiagonal(Landroid/graphics/RectF;)F
    .locals 0

    .line 491
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    .line 492
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 493
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private static getWidthProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;F)F
    .locals 5

    .line 1196
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    .line 1197
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v1, p0, v0

    .line 1198
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, p2, v0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    cmpl-float v2, p2, p0

    if-lez v2, :cond_1

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move p0, v3

    goto :goto_2

    :cond_1
    cmpg-float v2, p2, v0

    if-gez v2, :cond_2

    cmpg-float v2, p2, p0

    if-gez v2, :cond_2

    cmpl-float p0, p0, v0

    if-lez p0, :cond_3

    goto :goto_0

    :cond_2
    cmpl-float p0, v1, v3

    if-eqz p0, :cond_3

    .line 1205
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    sub-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr p0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p0, v4

    :goto_2
    cmpl-float p1, p0, v4

    if-lez p1, :cond_4

    goto :goto_3

    :cond_4
    move v4, p0

    :goto_3
    cmpg-float p0, v4, v3

    if-gez p0, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    :goto_4
    return v3
.end method

.method private initAllAnimations()V
    .locals 8

    .line 841
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->modifyStartRectAccordingVelocity()V

    .line 843
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    .line 844
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetAcreageSize:F

    sub-float/2addr v1, v0

    .line 845
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimAcreageSize:F

    .line 847
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    .line 848
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    .line 849
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    .line 850
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentHeight:F

    .line 851
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRadiusRatio:F

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadiusRatio:F

    .line 852
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartAlpha:F

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    .line 853
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 854
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    move v7, v0

    .line 856
    :goto_1
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    iget v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXMinVisibleChange:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->initAnimParamInner(Lcom/miui/home/recents/anim/SpringBundle;FFFF)V

    .line 857
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    iget v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->initAnimParamInner(Lcom/miui/home/recents/anim/SpringBundle;FFFF)V

    .line 858
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    iget v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->initAnimParamInner(Lcom/miui/home/recents/anim/SpringBundle;FFFF)V

    .line 859
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentHeight:F

    iget v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightVelocity:F

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightMinVisibleChange:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->initAnimParamInner(Lcom/miui/home/recents/anim/SpringBundle;FFFF)V

    .line 860
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    iget v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioMinVisibleChange:F

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->initAnimParamInner(Lcom/miui/home/recents/anim/SpringBundle;FFFF)V

    .line 861
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadiusRatio:F

    iget v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusRatioVelocity:F

    iget v4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndRadiusRatio:F

    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusRatioMinVisibleChange:F

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->initAnimParamInner(Lcom/miui/home/recents/anim/SpringBundle;FFFF)V

    .line 862
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    iget v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaVelocity:F

    iget v4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    const v5, 0x3d4ccccd    # 0.05f

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->initAnimParamInner(Lcom/miui/home/recents/anim/SpringBundle;FFFF)V

    .line 864
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string v1, "SurfaceExtAlpha"

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v2

    .line 865
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {v0, v1, v6}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getValue(Ljava/lang/String;F)F

    move-result v3

    invoke-direct {p0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Ljava/lang/String;)F

    move-result v4

    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    const v6, 0x3d4ccccd    # 0.05f

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->initAnimParamInner(Lcom/miui/home/recents/anim/SpringBundle;FFFF)V

    const/4 v0, 0x1

    .line 867
    invoke-direct {p0, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->changeAnimStart(Z)V

    .line 868
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    const/4 v2, 0x0

    .line 869
    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_2

    .line 871
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    .line 872
    invoke-interface {v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;->onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private initAnimParamInner(Lcom/miui/home/recents/anim/SpringBundle;FFFF)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 881
    :cond_0
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/anim/SpringBundle;->setStartValue(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object p0

    .line 882
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/anim/SpringBundle;->setStartVelocity(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object p0

    .line 883
    invoke-virtual {p0, p4}, Lcom/miui/home/recents/anim/SpringBundle;->setFinalPosition(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object p0

    .line 884
    invoke-virtual {p0, p5}, Lcom/miui/home/recents/anim/SpringBundle;->setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle;

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    new-instance v1, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addUpdateListener(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationUpdateListener;)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    .line 202
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    new-instance v1, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addEndListener(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    return-void
.end method

.method private initSpringList()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addSpringBundle(Lcom/miui/home/recents/anim/SpringBundle;)V

    .line 181
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addSpringBundle(Lcom/miui/home/recents/anim/SpringBundle;)V

    .line 182
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addSpringBundle(Lcom/miui/home/recents/anim/SpringBundle;)V

    .line 183
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addSpringBundle(Lcom/miui/home/recents/anim/SpringBundle;)V

    .line 184
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addSpringBundle(Lcom/miui/home/recents/anim/SpringBundle;)V

    .line 185
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addSpringBundle(Lcom/miui/home/recents/anim/SpringBundle;)V

    .line 186
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addSpringBundle(Lcom/miui/home/recents/anim/SpringBundle;)V

    return-void
.end method

.method private synthetic lambda$initListener$0(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;)V
    .locals 2

    const-string v0, "centerX"

    const/4 v1, 0x0

    .line 192
    invoke-virtual {p1, v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    const-string v0, "centerY"

    .line 193
    invoke-virtual {p1, v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    const-string v0, "Width"

    .line 194
    invoke-virtual {p1, v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getValue(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    const-string v0, "Height"

    .line 195
    invoke-virtual {p1, v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getValue(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentHeight:F

    const-string v0, "Ratio"

    .line 196
    invoke-virtual {p1, v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    const-string v0, "RadiusRatio"

    .line 197
    invoke-virtual {p1, v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadiusRatio:F

    const-string v0, "Alpha"

    .line 198
    invoke-virtual {p1, v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    .line 199
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->onUpdate(Lcom/miui/home/recents/anim/IValueCallBack;)V

    return-void
.end method

.method private synthetic lambda$initListener$1(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;Z)V
    .locals 1

    .line 203
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TransitionTest MultiSpringDynamicAnimation on end. this="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 205
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->changeAnimStart(Z)V

    .line 206
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    .line 207
    invoke-interface {p2, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    .line 210
    invoke-interface {p2, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    goto :goto_1

    .line 212
    :cond_1
    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCancelAnimType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    return-void
.end method

.method private synthetic lambda$updateAllAnimValues$3(Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V
    .locals 0

    .line 936
    invoke-direct/range {p0 .. p5}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateAllAnimEndDirectly(Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    return-void
.end method

.method private synthetic lambda$updateEndRectF$2(Landroid/graphics/RectF;)V
    .locals 0

    .line 928
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectFDirectly(Landroid/graphics/RectF;)V

    return-void
.end method

.method private modifyStartRectAccordingVelocity()V
    .locals 8

    .line 829
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isAlreadyModifyStartRect()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 830
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v0, v1, v0

    .line 832
    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    div-float/2addr v4, v1

    mul-float/2addr v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 833
    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    div-float/2addr v6, v1

    mul-float/2addr v6, v0

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    .line 834
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    div-float/2addr v6, v1

    mul-float/2addr v6, v0

    div-float/2addr v6, v5

    add-float/2addr v2, v6

    .line 835
    iget-object v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget v7, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightVelocity:F

    div-float/2addr v7, v1

    mul-float/2addr v7, v0

    div-float/2addr v7, v5

    add-float/2addr v6, v7

    .line 836
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    add-float/2addr v2, v3

    add-float/2addr v6, v4

    invoke-virtual {p0, v3, v4, v2, v6}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    return-void
.end method

.method private onUpdate(Lcom/miui/home/recents/anim/IValueCallBack;)V
    .locals 9

    .line 1132
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRequestEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1142
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mPreviousRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1143
    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    iget v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    iget v7, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentHeight:F

    iget v8, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateRect(Landroid/graphics/RectF;FFFFF)V

    .line 1149
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;

    .line 1151
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRectCalculator:Lcom/miui/home/recents/util/RectFSpringAnim$ICurrentRectCalculator;

    if-eqz v1, :cond_1

    .line 1152
    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    invoke-interface {v1, v3}, Lcom/miui/home/recents/util/RectFSpringAnim$ICurrentRectCalculator;->calculate(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    goto :goto_1

    .line 1154
    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    invoke-direct {v1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    :goto_1
    move-object v3, v1

    .line 1156
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpdate: result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mCurrentAlpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getProgress()F

    move-result v4

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadiusRatio:F

    invoke-direct {p0, v1, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRadius(Landroid/graphics/RectF;F)F

    move-result v5

    iget v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    move-object v7, p1

    invoke-interface/range {v2 .. v7}, Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;->onUpdate(Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V

    goto :goto_0

    :cond_2
    return-void

    .line 1133
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdate: return, mAnimsStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRequestEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRequestEnd()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMoveToTargetRectWhenAnimEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reStartAllAnim()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->start()V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/anim/HyperSpringAnimation;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private resetAnimValue(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V
    .locals 1

    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartRect(Landroid/graphics/RectF;)V

    .line 287
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 288
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2

    .line 289
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RectFSpringAnim: mTargetRect is error   mTargetRect="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mDefaultRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 293
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mFirstEndRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 294
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resetAnimValue KEY_SURFACE_EXT_ALPHA mTargetRect = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " endAlpha="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRadiusRadio(Landroid/graphics/RectF;F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRadiusRatio:F

    .line 296
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p4}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRadiusRadio(Landroid/graphics/RectF;F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndRadiusRatio:F

    .line 297
    invoke-virtual {p0, p5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartAlpha(F)V

    .line 298
    iput p6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    return-void
.end method

.method private setAnimParam(Ljava/lang/String;FFF)V
    .locals 1

    .line 576
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->getModifyResponse(F)F

    move-result p3

    .line 577
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 579
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p0

    invoke-virtual {p1, p2, p0, p4}, Lcom/miui/home/recents/anim/SpringBundle;->setDampingAndStiffnessAndImpulse(FFF)V

    :cond_0
    return-void
.end method

.method private startAllAnim()V
    .locals 2

    .line 900
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->initAllAnimations()V

    .line 901
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->start()V

    goto :goto_0

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/anim/HyperSpringAnimation;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private updateAllAnimEndDirectly(Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V
    .locals 8

    .line 941
    invoke-static {p1}, Lcom/miui/home/recents/util/CheckDataUtils;->isInValid(Landroid/graphics/RectF;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    if-nez p1, :cond_0

    .line 943
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 946
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/home/recents/util/CheckDataUtils;->isInValid(Ljava/lang/Float;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 947
    iget p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadiusRatio:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/recents/util/CheckDataUtils;->isInValid(Ljava/lang/Float;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 948
    iget p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadiusRatio:F

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRadiusRadio(Landroid/graphics/RectF;F)F

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v0

    .line 953
    :cond_2
    :goto_0
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/home/recents/util/CheckDataUtils;->isInValid(Ljava/lang/Float;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/high16 p4, 0x3f800000    # 1.0f

    .line 957
    :cond_3
    new-instance v2, Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-direct {v2, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 958
    iget p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndRadiusRatio:F

    .line 959
    invoke-direct {p0, v2, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRadius(Landroid/graphics/RectF;F)F

    move-result v4

    .line 960
    iget v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/util/RectFSpringAnim;->resetAnimValue(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 961
    invoke-virtual {p0, p5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 962
    iget-object p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    iget-object p5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result p5

    mul-float/2addr p3, p5

    .line 963
    iget-object p5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result p5

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr p5, v1

    iput p5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetAcreageSize:F

    sub-float/2addr p5, p3

    .line 964
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimAcreageSize:F

    .line 966
    iget-object p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    .line 967
    iget-object p5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p5}, Landroid/graphics/RectF;->centerY()F

    move-result p5

    .line 968
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 969
    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 970
    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAllAnimEndDirectly, centerX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", centerY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", rectF = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", radius = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", alpha = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 981
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v0, p1, v0

    .line 983
    :cond_4
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRadiusRadio(Landroid/graphics/RectF;F)F

    move-result p1

    .line 984
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 985
    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string v3, "centerX"

    invoke-virtual {p2, v3, p3}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    .line 986
    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string p3, "centerY"

    invoke-virtual {p2, p3, p5}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    .line 987
    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string p3, "Width"

    invoke-virtual {p2, p3, v1}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    .line 988
    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string p3, "Height"

    invoke-virtual {p2, p3, v2}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    .line 989
    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string p3, "Ratio"

    invoke-virtual {p2, p3, v0}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    .line 990
    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string p3, "RadiusRatio"

    invoke-virtual {p2, p3, p1}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    .line 991
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string p2, "Alpha"

    invoke-virtual {p1, p2, p4}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    .line 992
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string p1, "SurfaceExtAlpha"

    invoke-virtual {p0, p1, p4}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    goto :goto_1

    .line 994
    :cond_5
    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    .line 995
    iput p5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    .line 996
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    .line 997
    iput v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentHeight:F

    .line 998
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 999
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadiusRatio:F

    .line 1000
    iput p4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    .line 1001
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->onUpdate(Lcom/miui/home/recents/anim/IValueCallBack;)V

    :goto_1
    return-void
.end method

.method private updateAnimMinimumVisible(Ljava/lang/String;F)V
    .locals 0

    .line 584
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 586
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/anim/SpringBundle;->setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle;

    :cond_0
    return-void
.end method

.method private updateEndRectFDirectly(Landroid/graphics/RectF;)V
    .locals 7

    .line 1006
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1007
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 1008
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 1009
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 1010
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 1011
    iget-object v4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateEndRectFDirectly, centerX = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", centerY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", rectF = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1020
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v4, p1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1022
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1023
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string v5, "centerX"

    invoke-virtual {p1, v5, v0}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    .line 1024
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string v0, "centerY"

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    .line 1025
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string v0, "Width"

    invoke-virtual {p1, v0, v2}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    .line 1026
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string v0, "Height"

    invoke-virtual {p1, v0, v3}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    .line 1027
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string p1, "Ratio"

    invoke-virtual {p0, p1, v4}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    goto :goto_1

    .line 1029
    :cond_1
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    .line 1030
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    .line 1031
    iput v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    .line 1032
    iput v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentHeight:F

    .line 1033
    iput v4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 1034
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdate mCurrentRect mCurrentRatio updateEndRectFDirectly = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->onUpdate(Lcom/miui/home/recents/anim/IValueCallBack;)V

    :goto_1
    return-void
.end method

.method private updateRect(Landroid/graphics/RectF;FFFFF)V
    .locals 2

    div-float p0, p5, p4

    cmpl-float p0, p0, p6

    if-ltz p0, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    div-float v0, p5, p6

    :goto_0
    if-ltz p0, :cond_1

    mul-float p5, p4, p6

    :cond_1
    const/4 p0, 0x0

    cmpl-float p4, v0, p0

    const/high16 p6, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    if-lez p4, :cond_2

    .line 472
    invoke-static {p6, v0}, Ljava/lang/Math;->max(FF)F

    move-result p4

    goto :goto_1

    :cond_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    :goto_1
    cmpl-float p0, p5, p0

    if-lez p0, :cond_3

    .line 473
    invoke-static {p6, p5}, Ljava/lang/Math;->max(FF)F

    move-result p0

    goto :goto_2

    :cond_3
    invoke-static {v1, p5}, Ljava/lang/Math;->min(FF)F

    move-result p0

    :goto_2
    const/high16 p5, 0x40000000    # 2.0f

    div-float p6, p4, p5

    sub-float/2addr p2, p6

    .line 475
    iput p2, p1, Landroid/graphics/RectF;->left:F

    div-float p5, p0, p5

    sub-float/2addr p3, p5

    .line 476
    iput p3, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, p4

    .line 477
    iput p2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr p3, p0

    .line 478
    iput p3, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private valFromPer(FFF)F
    .locals 0

    sub-float/2addr p3, p2

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    return p2
.end method

.method private valFromPer(F[F[F)[F
    .locals 5

    .line 636
    array-length v0, p2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 637
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 638
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aget v3, p2, v1

    aget v4, p3, v1

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->valFromPer(FFF)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 770
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    const-string v1, "addAnimatorListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V
    .locals 0

    .line 766
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 3

    .line 1084
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel mRequestCancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mLooperExecutor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    if-eqz v0, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLastAminType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCancelAnimType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v0, 0x1

    .line 1087
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    .line 1088
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setEndEnable(Z)V

    .line 1089
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->end()V

    .line 1090
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancelDirectly()V

    goto :goto_0

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancel(Z)V
    .locals 2

    .line 1070
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel mRequestCancel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLooperExecutor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1071
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setEndEnable(Z)V

    .line 1072
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    if-eqz v0, :cond_1

    .line 1073
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLastAminType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCancelAnimType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 1074
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    .line 1075
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->end()V

    .line 1076
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {p1}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1077
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancelDirectly()V

    goto :goto_0

    .line 1079
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelDirectly()V
    .locals 3

    .line 1117
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    const/4 v2, 0x0

    .line 1118
    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    .line 1121
    invoke-interface {v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;->onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public cancelWithoutEnd()V
    .locals 3

    .line 1099
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelWithoutEnd mRequestCancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mLooperExecutor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    if-eqz v0, :cond_1

    .line 1101
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLastAminType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCancelAnimType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v0, 0x1

    .line 1102
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    .line 1103
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->cancel()V

    .line 1104
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancelDirectly()V

    goto :goto_0

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearAnimatorListener()V
    .locals 0

    .line 778
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public clearCurrentRectCalculator()V
    .locals 1

    const/4 v0, 0x0

    .line 805
    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRectCalculator:Lcom/miui/home/recents/util/RectFSpringAnim$ICurrentRectCalculator;

    return-void
.end method

.method public clearOnUpdateListener()V
    .locals 0

    .line 774
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearRectFSpringAnimListener()V
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    const-string v1, "clearRectFSpringAnimListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public copyCurrentAnimNextState()Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 13

    .line 409
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    :goto_0
    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v0

    float-to-long v1, v1

    .line 415
    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string v4, "centerX"

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;->getNextValue(J)F

    move-result v7

    .line 416
    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;->getNextValue(J)F

    move-result v8

    .line 417
    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string v4, "Width"

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;->getNextValue(J)F

    move-result v9

    .line 418
    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string v4, "Height"

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;->getNextValue(J)F

    move-result v10

    .line 419
    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string v4, "Ratio"

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;->getNextValue(J)F

    move-result v11

    .line 420
    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string v4, "RadiusRatio"

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;->getNextValue(J)F

    move-result v3

    .line 421
    iget-object v4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string v5, "Alpha"

    invoke-virtual {v4, v5}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;->getNextValue(J)F

    move-result v4

    .line 422
    iget-object v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copy, get next value , centerX"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", centerY"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", width"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", height"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", ratio"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", radiusRatio"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", alpha"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", refreshRate"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", time"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    move-object v5, p0

    move-object v6, v0

    .line 434
    invoke-direct/range {v5 .. v11}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateRect(Landroid/graphics/RectF;FFFFF)V

    const/4 v1, 0x1

    .line 435
    iput-boolean v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsCopyNextState:Z

    .line 436
    invoke-direct {p0, v0, v3, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->copyCurrentAnimState(Landroid/graphics/RectF;FF)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    .line 437
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAlreadyModifyStartRect(Z)V

    return-object p0
.end method

.method public end()V
    .locals 2

    .line 909
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->endDirectly()V

    goto :goto_0

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public getAnimParamsString()Ljava/lang/String;
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectFSpringAnim{mStartRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTargetRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStartAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mEndAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCancelAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCancelAnimType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLastAminType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    :cond_0
    return-object v0
.end method

.method public getCurrentAlpha()F
    .locals 0

    .line 1048
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    return p0
.end method

.method public getCurrentRadius()F
    .locals 2

    .line 1044
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadiusRatio:F

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRadius(Landroid/graphics/RectF;F)F

    move-result p0

    return p0
.end method

.method public getCurrentRectF()Landroid/graphics/RectF;
    .locals 0

    .line 1040
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getFirstTargetRect()Landroid/graphics/RectF;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mFirstEndRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;
    .locals 0

    .line 628
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLastAminType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    return-object p0
.end method

.method public getProgressCalculateType()I
    .locals 0

    .line 405
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    return p0
.end method

.method public getSpringBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object p0

    return-object p0
.end method

.method public getStartRect()Landroid/graphics/RectF;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getTargetRect()Landroid/graphics/RectF;
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public insertSpringBundle(Ljava/lang/String;Z)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert alpha KEY_SURFACE_EXT_ALPHA needReStartAnim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isRunning()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", realEndstate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getRealEndState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v0, Lcom/miui/home/recents/anim/SpringBundle;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "SurfaceExtAlpha"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setStartValue(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 232
    invoke-virtual {p1, v2}, Lcom/miui/home/recents/anim/SpringBundle;->setFinalPosition(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object p1

    const v2, 0x3d4ccccd    # 0.05f

    .line 233
    invoke-virtual {p1, v2}, Lcom/miui/home/recents/anim/SpringBundle;->setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object p1

    .line 234
    invoke-virtual {p1, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setStartVelocity(F)Lcom/miui/home/recents/anim/SpringBundle;

    .line 241
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addSpringBundle(Lcom/miui/home/recents/anim/SpringBundle;)V

    if-nez p2, :cond_1

    .line 244
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setFinalPosition(F)Lcom/miui/home/recents/anim/SpringBundle;

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLastAminType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-nez p1, :cond_2

    .line 248
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    const-string p1, "error insertSpringBundle  mLastAminType is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 252
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 254
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getRealEndState()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 262
    :cond_3
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/SpringBundle;->getSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/SpringBundle;->getValueThreshold()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->setValueThreshold(Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 256
    invoke-direct {p0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->changeAnimStart(Z)V

    .line 257
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->reStartAllAnim()V

    goto :goto_2

    .line 259
    :cond_5
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/SpringBundle;->getSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/SpringBundle;->getValueThreshold()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->setValueThreshold(Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Object;)V

    .line 264
    :goto_2
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setEndEnable(Z)V

    return-void
.end method

.method public isAlreadyModifyStartRect()Z
    .locals 0

    .line 156
    iget-boolean p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlreadyModifyStartRect:Z

    return p0
.end method

.method public isFromRecent()Z
    .locals 0

    .line 1249
    iget-boolean p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsFromRecent:Z

    return p0
.end method

.method public isOpenAnim()Z
    .locals 0

    .line 1237
    iget-boolean p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsOpenAnim:Z

    return p0
.end method

.method public isRequestCancel()Z
    .locals 0

    .line 1229
    iget-boolean p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    return p0
.end method

.method public isRequestEnd()Z
    .locals 0

    .line 1225
    iget-boolean p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestEnd:Z

    return p0
.end method

.method public isRunning()Z
    .locals 1

    .line 1065
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStart()Z
    .locals 0

    .line 1061
    iget-boolean p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    return p0
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 792
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V
    .locals 2

    .line 796
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    const-string v1, "removeAnimatorListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSpringBundle(Ljava/lang/String;)V
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->removeSpringBundle(Ljava/lang/String;)V

    return-void
.end method

.method public reset(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset: startRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", targetRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", startRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", endRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", startAlpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", endAlpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct/range {p0 .. p6}, Lcom/miui/home/recents/util/RectFSpringAnim;->resetAnimValue(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    const/4 p1, 0x0

    .line 307
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    .line 308
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    .line 309
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    .line 310
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightVelocity:F

    .line 311
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    .line 312
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusRatioVelocity:F

    .line 313
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaVelocity:F

    .line 315
    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mPreviousRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 316
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->clearOnUpdateListener()V

    .line 317
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->clearAnimatorListener()V

    .line 318
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->clearRectFSpringAnimListener()V

    .line 320
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    .line 321
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    .line 322
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    .line 323
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentHeight:F

    .line 324
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 325
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadiusRatio:F

    .line 326
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    const/4 p1, 0x0

    .line 328
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->changeAnimStart(Z)V

    .line 329
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    .line 330
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestEnd:Z

    .line 332
    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p2}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getSpringBundleMap()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 333
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 334
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 335
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 336
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p3}, Lcom/miui/home/recents/anim/SpringBundle;->initSpringForce()V

    goto :goto_0

    :cond_1
    const p2, 0x3dcccccd    # 0.1f

    .line 340
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXMinVisibleChange:F

    .line 341
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    .line 342
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    .line 343
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightMinVisibleChange:F

    const p2, 0x3a83126f    # 0.001f

    .line 344
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusRatioMinVisibleChange:F

    .line 345
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioMinVisibleChange:F

    const/4 p2, 0x1

    .line 346
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconXSpan:I

    .line 347
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconYSpan:I

    .line 348
    iput-boolean p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    const/4 p2, 0x0

    .line 349
    iput-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    const/16 p2, 0x3e9

    .line 350
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    .line 351
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsConnectRemote:Z

    return-void
.end method

.method public setAlreadyModifyStartRect(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlreadyModifyStartRect:Z

    return-void
.end method

.method public setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 644
    iput-object v1, v0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLastAminType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 646
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->getGestureAnimMagicSpeed()F

    move-result v2

    .line 648
    iget-object v3, v0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAnimParamByType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " , magicSpeed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v3, v0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    .line 651
    iget-object v3, v0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x3

    new-array v5, v4, [F

    .line 654
    fill-array-data v5, :array_0

    new-array v6, v4, [F

    .line 655
    fill-array-data v6, :array_1

    new-array v7, v4, [F

    .line 656
    fill-array-data v7, :array_2

    new-array v8, v4, [F

    .line 657
    fill-array-data v8, :array_3

    new-array v9, v4, [F

    .line 658
    fill-array-data v9, :array_4

    .line 660
    sget-object v10, Lcom/miui/home/recents/util/RectFSpringAnim$1;->$SwitchMap$com$miui$home$recents$util$RectFSpringAnim$AnimType:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v10, v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array v5, v4, [F

    .line 729
    fill-array-data v5, :array_5

    new-array v6, v4, [F

    .line 730
    fill-array-data v6, :array_6

    new-array v7, v4, [F

    .line 731
    fill-array-data v7, :array_7

    goto/16 :goto_0

    :pswitch_1
    new-array v5, v4, [F

    .line 723
    fill-array-data v5, :array_8

    new-array v6, v4, [F

    .line 724
    fill-array-data v6, :array_9

    new-array v7, v4, [F

    .line 725
    fill-array-data v7, :array_a

    goto/16 :goto_0

    .line 716
    :pswitch_2
    invoke-virtual {v0, v12}, Lcom/miui/home/recents/util/RectFSpringAnim;->setEndEnable(Z)V

    new-array v5, v4, [F

    .line 717
    fill-array-data v5, :array_b

    new-array v6, v4, [F

    .line 718
    fill-array-data v6, :array_c

    new-array v7, v4, [F

    .line 719
    fill-array-data v7, :array_d

    goto/16 :goto_0

    .line 710
    :pswitch_3
    invoke-virtual {v0, v12}, Lcom/miui/home/recents/util/RectFSpringAnim;->setEndEnable(Z)V

    new-array v5, v4, [F

    .line 711
    fill-array-data v5, :array_e

    new-array v6, v4, [F

    .line 712
    fill-array-data v6, :array_f

    new-array v7, v4, [F

    .line 713
    fill-array-data v7, :array_10

    goto/16 :goto_0

    .line 696
    :pswitch_4
    invoke-virtual {v0, v12}, Lcom/miui/home/recents/util/RectFSpringAnim;->setEndEnable(Z)V

    .line 697
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDeviceOrSpecialDevice()Z

    move-result v5

    if-eqz v5, :cond_0

    new-array v5, v4, [F

    .line 698
    fill-array-data v5, :array_11

    new-array v6, v4, [F

    .line 699
    fill-array-data v6, :array_12

    new-array v7, v4, [F

    .line 700
    fill-array-data v7, :array_13

    goto/16 :goto_0

    :cond_0
    new-array v5, v4, [F

    const v6, 0x3f733333    # 0.95f

    aput v6, v5, v15

    const v6, 0x3ee66666    # 0.45f

    mul-float/2addr v6, v2

    aput v6, v5, v12

    aput v14, v5, v13

    new-array v7, v4, [F

    const v8, 0x3f51eb85    # 0.82f

    aput v8, v7, v15

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v11, v2, v8

    aput v11, v7, v12

    aput v14, v7, v13

    .line 703
    invoke-direct {v0, v3, v5, v7}, Lcom/miui/home/recents/util/RectFSpringAnim;->valFromPer(F[F[F)[F

    move-result-object v5

    new-array v7, v4, [F

    const v8, 0x3f666666    # 0.9f

    aput v8, v7, v15

    aput v6, v7, v12

    aput v14, v7, v13

    new-array v13, v4, [F

    aput v8, v13, v15

    aput v11, v13, v12

    const/4 v8, 0x2

    aput v14, v13, v8

    .line 704
    invoke-direct {v0, v3, v7, v13}, Lcom/miui/home/recents/util/RectFSpringAnim;->valFromPer(F[F[F)[F

    move-result-object v7

    new-array v11, v4, [F

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v15

    const/high16 v16, 0x3ec00000    # 0.375f

    mul-float v16, v16, v2

    aput v16, v11, v12

    aput v13, v11, v8

    new-array v14, v4, [F

    aput v13, v14, v15

    const v16, 0x3eb33333    # 0.35f

    mul-float v2, v2, v16

    aput v2, v14, v12

    aput v13, v14, v8

    .line 705
    invoke-direct {v0, v3, v11, v14}, Lcom/miui/home/recents/util/RectFSpringAnim;->valFromPer(F[F[F)[F

    move-result-object v2

    new-array v3, v4, [F

    aput v13, v3, v15

    aput v6, v3, v12

    const/4 v6, 0x0

    aput v6, v3, v8

    move-object v8, v3

    move-object v6, v7

    move-object v7, v2

    goto/16 :goto_0

    .line 689
    :pswitch_5
    invoke-virtual {v0, v12}, Lcom/miui/home/recents/util/RectFSpringAnim;->setEndEnable(Z)V

    new-array v5, v4, [F

    .line 690
    fill-array-data v5, :array_14

    new-array v6, v4, [F

    .line 691
    fill-array-data v6, :array_15

    new-array v7, v4, [F

    .line 692
    fill-array-data v7, :array_16

    goto/16 :goto_0

    :pswitch_6
    new-array v5, v4, [F

    .line 682
    fill-array-data v5, :array_17

    new-array v6, v4, [F

    .line 683
    fill-array-data v6, :array_18

    new-array v7, v4, [F

    .line 684
    fill-array-data v7, :array_19

    goto :goto_0

    .line 669
    :pswitch_7
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDeviceOrSpecialDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    new-array v5, v4, [F

    .line 670
    fill-array-data v5, :array_1a

    new-array v6, v4, [F

    .line 671
    fill-array-data v6, :array_1b

    new-array v7, v4, [F

    .line 672
    fill-array-data v7, :array_1c

    goto :goto_0

    :cond_1
    new-array v5, v4, [F

    const v3, 0x3f8ccccd    # 1.1f

    aput v3, v5, v15

    const v6, 0x3ea3d70a    # 0.32f

    mul-float/2addr v6, v2

    aput v6, v5, v12

    const/4 v7, 0x0

    const/4 v8, 0x2

    aput v7, v5, v8

    new-array v11, v4, [F

    aput v3, v11, v15

    aput v6, v11, v12

    aput v7, v11, v8

    new-array v13, v4, [F

    aput v3, v13, v15

    aput v6, v13, v12

    aput v7, v13, v8

    new-array v3, v4, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v3, v15

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v6

    aput v2, v3, v12

    aput v7, v3, v8

    move-object v8, v3

    move-object v6, v11

    move-object v7, v13

    goto :goto_0

    :pswitch_8
    new-array v5, v4, [F

    .line 662
    fill-array-data v5, :array_1d

    new-array v6, v4, [F

    .line 663
    fill-array-data v6, :array_1e

    new-array v7, v4, [F

    .line 664
    fill-array-data v7, :array_1f

    new-array v8, v4, [F

    .line 665
    fill-array-data v8, :array_20

    new-array v9, v4, [F

    .line 666
    fill-array-data v9, :array_21

    .line 734
    :goto_0
    aget v2, v5, v15

    aget v3, v5, v12

    const/4 v11, 0x2

    aget v13, v5, v11

    const-string v14, "centerX"

    invoke-direct {v0, v14, v2, v3, v13}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Ljava/lang/String;FFF)V

    .line 735
    aget v2, v5, v15

    aget v3, v5, v12

    aget v5, v5, v11

    const-string v13, "centerY"

    invoke-direct {v0, v13, v2, v3, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Ljava/lang/String;FFF)V

    .line 736
    aget v2, v6, v15

    aget v3, v6, v12

    aget v5, v6, v11

    const-string v13, "Width"

    invoke-direct {v0, v13, v2, v3, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Ljava/lang/String;FFF)V

    .line 737
    aget v2, v6, v15

    aget v3, v6, v12

    aget v5, v6, v11

    const-string v6, "Height"

    invoke-direct {v0, v6, v2, v3, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Ljava/lang/String;FFF)V

    .line 738
    aget v2, v7, v15

    aget v3, v7, v12

    aget v5, v7, v11

    const-string v6, "RadiusRatio"

    invoke-direct {v0, v6, v2, v3, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Ljava/lang/String;FFF)V

    .line 739
    aget v2, v7, v15

    aget v3, v7, v12

    aget v5, v7, v11

    const-string v6, "Ratio"

    invoke-direct {v0, v6, v2, v3, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Ljava/lang/String;FFF)V

    .line 740
    aget v2, v8, v15

    aget v3, v8, v12

    aget v5, v8, v11

    const-string v6, "Alpha"

    invoke-direct {v0, v6, v2, v3, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Ljava/lang/String;FFF)V

    .line 741
    aget v2, v9, v15

    aget v3, v9, v12

    aget v5, v9, v11

    const-string v6, "SurfaceExtAlpha"

    invoke-direct {v0, v6, v2, v3, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Ljava/lang/String;FFF)V

    .line 743
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v10, v1

    if-eq v1, v11, :cond_3

    if-eq v1, v4, :cond_3

    const/16 v2, 0xb

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const v1, 0x3dcccccd    # 0.1f

    .line 753
    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setMinimumVisibleChange(FFFF)V

    goto :goto_1

    :cond_2
    const v1, 0x3f333333    # 0.7f

    .line 750
    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setMinimumVisibleChange(FFFF)V

    goto :goto_1

    :cond_3
    const/high16 v1, 0x3f000000    # 0.5f

    .line 746
    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setMinimumVisibleChange(FFFF)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3eb33333    # 0.35f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3eb33333    # 0.35f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3ee66666    # 0.45f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x3f6e147b    # 0.93f
        0x3f0ccccd    # 0.55f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x3ee66666    # 0.45f
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3ecccccd    # 0.4f
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3ecccccd    # 0.4f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x3f733333    # 0.95f
        0x3ec28f5c    # 0.38f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3f666666    # 0.9f
        0x3ecccccd    # 0.4f
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecf5c29    # 0.405f
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecf5c29    # 0.405f
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecf5c29    # 0.405f
        0x0
    .end array-data

    :array_14
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3ecccccd    # 0.4f
        0x0
    .end array-data

    :array_15
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3ecccccd    # 0.4f
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x0
    .end array-data

    :array_17
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3e99999a    # 0.3f
        0x0
    .end array-data

    :array_18
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3eb33333    # 0.35f
        0x0
    .end array-data

    :array_19
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3eb33333    # 0.35f
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0x3f800000    # 1.0f
        0x3e3851ec    # 0.18f
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0x3f800000    # 1.0f
        0x3e3851ec    # 0.18f
        0x0
    .end array-data

    :array_1c
    .array-data 4
        0x3f800000    # 1.0f
        0x3e3851ec    # 0.18f
        0x0
    .end array-data

    :array_1d
    .array-data 4
        0x3f5c28f6    # 0.86f
        0x3e19999a    # 0.15f
        0x40400000    # 3.0f
    .end array-data

    :array_1e
    .array-data 4
        0x3f5c28f6    # 0.86f
        0x3e19999a    # 0.15f
        0x40400000    # 3.0f
    .end array-data

    :array_1f
    .array-data 4
        0x3f5c28f6    # 0.86f
        0x3e19999a    # 0.15f
        0x0
    .end array-data

    :array_20
    .array-data 4
        0x3f5c28f6    # 0.86f
        0x3e19999a    # 0.15f
        0x0
    .end array-data

    :array_21
    .array-data 4
        0x3f5c28f6    # 0.86f
        0x3e19999a    # 0.15f
        0x0
    .end array-data
.end method

.method public setCurrentRectCalculator(Lcom/miui/home/recents/util/RectFSpringAnim$ICurrentRectCalculator;)V
    .locals 0

    .line 801
    iput-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRectCalculator:Lcom/miui/home/recents/util/RectFSpringAnim$ICurrentRectCalculator;

    return-void
.end method

.method public setEndEnable(Z)V
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHyperSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->setEndEnable(Z)V

    return-void
.end method

.method public setIsConnectRemote(Z)V
    .locals 2

    .line 355
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsConnectRemote:Z

    .line 356
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsConnectRemote mIsConnectRemote:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsConnectRemote:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setIsFromRecent(Z)V
    .locals 0

    .line 1253
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsFromRecent:Z

    return-void
.end method

.method public setIsOpenAnim(Z)V
    .locals 0

    .line 1257
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsOpenAnim:Z

    return-void
.end method

.method public setIsSplitLaunchAnimation(Z)V
    .locals 0

    .line 602
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsSplitLaunchAnimation:Z

    return-void
.end method

.method public setMinimumVisibleChange(FFFF)V
    .locals 0

    .line 809
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXMinVisibleChange:F

    .line 810
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    .line 811
    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    .line 812
    iput p4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightMinVisibleChange:F

    const-string p2, "centerX"

    .line 813
    invoke-direct {p0, p2, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateAnimMinimumVisible(Ljava/lang/String;F)V

    .line 814
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    const-string p2, "centerY"

    invoke-direct {p0, p2, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateAnimMinimumVisible(Ljava/lang/String;F)V

    .line 815
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    const-string p2, "Width"

    invoke-direct {p0, p2, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateAnimMinimumVisible(Ljava/lang/String;F)V

    .line 816
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightMinVisibleChange:F

    const-string p2, "Height"

    invoke-direct {p0, p2, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateAnimMinimumVisible(Ljava/lang/String;F)V

    return-void
.end method

.method public setMoveToTargetRectWhenAnimEnd(Z)V
    .locals 0

    .line 1057
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    return-void
.end method

.method public setSkipCallExecuteFinish(Z)V
    .locals 0

    .line 594
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mSkipCallExecuteFinish:Z

    return-void
.end method

.method public setStartAlpha(F)V
    .locals 0

    .line 397
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartAlpha:F

    return-void
.end method

.method public setStartRect(Landroid/graphics/RectF;)V
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStartRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 382
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 383
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    .line 384
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectFSpringAnim: mStartRect is error   mStartRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mDefaultRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_1
    return-void
.end method

.method public setStartRectAndRadius(Landroid/graphics/RectF;F)V
    .locals 0

    .line 392
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartRect(Landroid/graphics/RectF;)V

    .line 393
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRadiusRadio(Landroid/graphics/RectF;F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRadiusRatio:F

    return-void
.end method

.method public setVelocity(FFFFF)V
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVelocity leftVelocity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", topVelocity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", widthVelocity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", heightVelocity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", ratioVelocity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    .line 560
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    .line 561
    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    .line 562
    iput p4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightVelocity:F

    .line 563
    iput p5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    return-void
.end method

.method public setVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "centerX"

    .line 503
    invoke-direct {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    const-string v0, "centerY"

    .line 504
    invoke-direct {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    const-string v0, "Width"

    .line 505
    invoke-direct {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    const-string v0, "Height"

    .line 506
    invoke-direct {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightVelocity:F

    const-string v0, "Ratio"

    .line 507
    invoke-direct {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    .line 508
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsCopyNextState:Z

    if-eqz v0, :cond_0

    const-string v0, "RadiusRatio"

    .line 509
    invoke-direct {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusRatioVelocity:F

    const-string v0, "Alpha"

    .line 510
    invoke-direct {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaVelocity:F

    .line 512
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVelocity, mLeftVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mTopVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mWidthVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mHeightVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mHeightVelocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mRatioVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mIsCopyNextState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsCopyNextState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRadiusRatioVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusRatioVelocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAlphaVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaVelocity:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public startInGestureThread()V
    .locals 2

    .line 888
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    const-string v1, "startInGestureThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    .line 890
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startAllAnim()V

    return-void
.end method

.method public startInMainThread()V
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->TAG:Ljava/lang/String;

    const-string v1, "startInMainThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    .line 896
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startAllAnim()V

    return-void
.end method

.method public updateAllAnimValues(Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V
    .locals 9

    .line 933
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v8, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda6;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    invoke-virtual {v0, v8}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 934
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p5}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateAllAnimEndDirectly(Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    :goto_1
    return-void
.end method

.method public updateEndRectF(Landroid/graphics/RectF;)V
    .locals 2

    .line 925
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 926
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectFDirectly(Landroid/graphics/RectF;)V

    :goto_1
    return-void
.end method
