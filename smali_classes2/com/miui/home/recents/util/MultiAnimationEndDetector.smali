.class public Lcom/miui/home/recents/util/MultiAnimationEndDetector;
.super Ljava/lang/Object;
.source "MultiAnimationEndDetector.java"


# instance fields
.field mEndRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mIsStartDetect:Z

.field mRectFSpringAnims:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/recents/util/RectFSpringAnim;",
            ">;"
        }
    .end annotation
.end field

.field mSpringAnims:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mValueAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$sYuqS10unoEZsFVU-PIf1M2mdbg(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->lambda$cancel$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mEndRunnables:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mRectFSpringAnims:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mSpringAnims:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mValueAnimators:Ljava/util/List;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mIsStartDetect:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Ljava/lang/Object;)Z
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->isLaseEndAnim(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->performEndRunnable()V

    return-void
.end method

.method private isLaseEndAnim(Ljava/lang/Object;)Z
    .locals 3

    .line 30
    iget-boolean v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mIsStartDetect:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mRectFSpringAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eq p1, v2, :cond_1

    .line 34
    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mSpringAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eq p1, v2, :cond_3

    .line 39
    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 44
    :cond_4
    iget-object p0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mValueAnimators:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-eq p1, v0, :cond_5

    .line 45
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$cancel$0()V
    .locals 2

    .line 148
    iget-object p0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mSpringAnims:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 149
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private performEndRunnable()V
    .locals 2

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mEndRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 81
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 84
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addAnimation(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    instance-of v0, p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_1

    .line 92
    check-cast p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 93
    new-instance v0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;-><init>(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 104
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mRectFSpringAnims:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    iget-object p0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mRectFSpringAnims:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_1
    instance-of v0, p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_2

    .line 108
    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 109
    new-instance v0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector$2;-><init>(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 118
    iget-object p0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mSpringAnims:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_2
    instance-of v0, p1, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 120
    check-cast p1, Landroid/animation/ValueAnimator;

    .line 121
    new-instance v0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector$3;-><init>(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 130
    iget-object p0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mValueAnimators:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public addEndRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 62
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mEndRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mEndRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancel()V
    .locals 3

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mIsStartDetect:Z

    .line 140
    invoke-direct {p0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->performEndRunnable()V

    .line 142
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mRectFSpringAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 143
    invoke-virtual {v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isStart()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    goto :goto_0

    .line 147
    :cond_1
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/util/MultiAnimationEndDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 155
    iget-object p0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mValueAnimators:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 156
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mRectFSpringAnims:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 54
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public removeEndRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 70
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mEndRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startDetect()V
    .locals 1

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mIsStartDetect:Z

    return-void
.end method
