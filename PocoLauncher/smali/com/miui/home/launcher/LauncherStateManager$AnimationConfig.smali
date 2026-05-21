.class public Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationConfig"
.end annotation


# instance fields
.field public duration:J

.field private mCurrentAnimation:Landroid/animation/AnimatorSet;

.field private mDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

.field private mPropertySetter:Lcom/miui/home/launcher/anim/PropertySetter;

.field private mTargetState:Lcom/miui/home/launcher/LauncherState;

.field public playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

.field public userControlled:Z


# direct methods
.method public static synthetic $r8$lambda$wfz3Bgq3cNTL3P2DtbmQRhxc4gk(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->onDetectorEnd()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 492
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 492
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Lcom/miui/home/launcher/LauncherState;
    .locals 0

    .line 492
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mTargetState:Lcom/miui/home/launcher/LauncherState;

    return-object p0
.end method

.method private onDetectorEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 568
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    return-void
.end method


# virtual methods
.method public getPropertySetter(Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)Lcom/miui/home/launcher/anim/PropertySetter;
    .locals 4

    .line 537
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mPropertySetter:Lcom/miui/home/launcher/anim/PropertySetter;

    if-nez v0, :cond_1

    .line 538
    iget-wide v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object p1, Lcom/miui/home/launcher/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/miui/home/launcher/anim/PropertySetter;

    goto :goto_0

    .line 539
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    iget-wide v1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->duration:J

    invoke-direct {v0, v1, v2, p1}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mPropertySetter:Lcom/miui/home/launcher/anim/PropertySetter;

    .line 541
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mPropertySetter:Lcom/miui/home/launcher/anim/PropertySetter;

    return-object p0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 547
    iput-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-ne v0, p1, :cond_1

    .line 550
    iput-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 506
    iput-wide v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->duration:J

    const/4 v2, 0x0

    .line 507
    iput-boolean v2, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    const/4 v2, 0x0

    .line 508
    iput-object v2, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mPropertySetter:Lcom/miui/home/launcher/anim/PropertySetter;

    .line 509
    iput-object v2, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mTargetState:Lcom/miui/home/launcher/LauncherState;

    .line 511
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v3, :cond_0

    .line 512
    invoke-virtual {v3}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 513
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnCancel()V

    goto :goto_0

    .line 514
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    .line 515
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 516
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 519
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 520
    iput-object v2, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    .line 522
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz v0, :cond_2

    .line 523
    invoke-virtual {v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->cancel()V

    .line 525
    :cond_2
    iput-object v2, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    return-void
.end method

.method public resetPlaybackController()V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 531
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnCancel()V

    :cond_0
    const/4 v0, 0x0

    .line 533
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    return-void
.end method

.method public setAnimation(Landroid/animation/AnimatorSet;Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 556
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mTargetState:Lcom/miui/home/launcher/LauncherState;

    .line 557
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setDetector(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 1

    .line 561
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz p1, :cond_0

    .line 563
    new-instance v0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
