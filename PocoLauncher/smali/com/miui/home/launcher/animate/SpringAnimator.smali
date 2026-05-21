.class public Lcom/miui/home/launcher/animate/SpringAnimator;
.super Ljava/lang/Object;
.source "SpringAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;,
        Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;
    }
.end annotation


# instance fields
.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mEnd:F

.field private mEndAnimationMessageHandler:Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;

.field private mMinVisibleChange:F

.field private mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/miui/home/launcher/animate/SpringAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mStart:F

.field private mStartDelayRunnable:Ljava/lang/Runnable;

.field private mUpdateListener:Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;


# direct methods
.method public static synthetic $r8$lambda$-yvkCGNyZt6O1Ip5V6lEtRVHW3s(Lcom/miui/home/launcher/animate/SpringAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/animate/SpringAnimator;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$t-gvvZwOYXNSJUGGaK2iGmAKRxQ(Lcom/miui/home/launcher/animate/SpringAnimator;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/animate/SpringAnimator;->lambda$new$0(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x38d1b717    # 1.0E-4f

    .line 20
    iput v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mMinVisibleChange:F

    .line 26
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator$1;

    const-string/jumbo v1, "value"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator$1;-><init>(Lcom/miui/home/launcher/animate/SpringAnimator;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 91
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/animate/SpringAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/animate/SpringAnimator;)V

    iput-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mStartDelayRunnable:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mMinVisibleChange:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/miui/home/launcher/animate/SpringAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/animate/SpringAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/animate/SpringAnimator;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>()V

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/animate/SpringAnimator;->setDampingResponse(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 66
    invoke-virtual {p0, p3, p4}, Lcom/miui/home/launcher/animate/SpringAnimator;->setStartEnd(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/animate/SpringAnimator;)Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mUpdateListener:Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/animate/SpringAnimator;)F
    .locals 0

    .line 17
    iget p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mStart:F

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/animate/SpringAnimator;)F
    .locals 0

    .line 17
    iget p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mEnd:F

    return p0
.end method

.method public static getSpringForce(FFF)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 1

    .line 118
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 119
    invoke-virtual {v0, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 120
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-object v0
.end method

.method private synthetic lambda$new$0(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 54
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mEndAnimationMessageHandler:Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mEndAnimationMessageHandler:Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    return-void
.end method

.method public static stiffnessConvert(F)F
    .locals 4

    float-to-double v0, p0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 114
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/high16 p0, 0x3f800000    # 1.0f

    float-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mStartDelayRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 85
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public getSpringAnimation()Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public isRunning()Z
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p0

    return p0
.end method

.method public setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)Lcom/miui/home/launcher/animate/SpringAnimator;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    return-object p0
.end method

.method public setDampingResponse(FF)Lcom/miui/home/launcher/animate/SpringAnimator;
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p2}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result p2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1, p2}, Lcom/miui/home/launcher/animate/SpringAnimator;->getSpringForce(FFF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public setMinVisibleChange(F)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mMinVisibleChange:F

    .line 78
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method public setStartEnd(FF)Lcom/miui/home/launcher/animate/SpringAnimator;
    .locals 0

    .line 125
    iput p1, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mStart:F

    .line 126
    iput p2, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mEnd:F

    return-object p0
.end method

.method public setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)Lcom/miui/home/launcher/animate/SpringAnimator;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mUpdateListener:Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;

    return-object p0
.end method

.method public skipToEnd()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 71
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public startDelay(J)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mStartDelayRunnable:Ljava/lang/Runnable;

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    return-void
.end method
