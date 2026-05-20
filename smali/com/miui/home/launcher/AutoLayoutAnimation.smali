.class public Lcom/miui/home/launcher/AutoLayoutAnimation;
.super Ljava/lang/Object;
.source "AutoLayoutAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;,
        Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;,
        Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
    }
.end annotation


# static fields
.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static sDisableAutoLayoutAnimation:Z = false


# direct methods
.method public static synthetic $r8$lambda$E9Fsh5c_QTQsiLASkpWi3vLJFY0(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;FFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/AutoLayoutAnimation;->lambda$setFrame$0(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;FFF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/miui/home/launcher/AutoLayoutAnimation;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private static synthetic lambda$setFrame$0(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;FFF)V
    .locals 0

    mul-float/2addr p1, p3

    .line 139
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setTranslationX(F)V

    mul-float/2addr p2, p3

    .line 140
    invoke-interface {p0, p2}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setTranslationY(F)V

    return-void
.end method

.method public static setDisableAutoLayoutAnimation(Z)V
    .locals 0

    .line 73
    sput-boolean p0, Lcom/miui/home/launcher/AutoLayoutAnimation;->sDisableAutoLayoutAnimation:Z

    return-void
.end method

.method public static setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 169
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIIILcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;)Z

    move-result p0

    return p0
.end method

.method public static setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIIILcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;)Z
    .locals 4

    .line 77
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getLeft()I

    move-result v0

    .line 78
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTop()I

    move-result v1

    .line 79
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getRight()I

    move-result v2

    .line 80
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getBottom()I

    move-result v3

    .line 81
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->superSetFrame(IIII)Z

    move-result p1

    .line 82
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getSkipNextAutoLayoutAnimation()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 83
    invoke-interface {p0, p3}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    return p1

    .line 87
    :cond_0
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->isIgnoreAnimationForOnce()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 88
    invoke-interface {p0, p3}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIgnoreAnimationForOnce(Z)V

    return p1

    .line 92
    :cond_1
    sget-boolean p2, Lcom/miui/home/launcher/AutoLayoutAnimation;->sDisableAutoLayoutAnimation:Z

    if-nez p2, :cond_6

    .line 93
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->isEnableAutoLayoutAnimation()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getLeft()I

    move-result p2

    if-ne v0, p2, :cond_2

    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTop()I

    move-result p2

    if-eq v1, p2, :cond_6

    :cond_2
    sub-int/2addr v3, v1

    .line 94
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getBottom()I

    move-result p2

    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTop()I

    move-result p4

    sub-int/2addr p2, p4

    if-ne v3, p2, :cond_6

    sub-int/2addr v2, v0

    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getRight()I

    move-result p2

    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getLeft()I

    move-result p4

    sub-int/2addr p2, p4

    if-ne v2, p2, :cond_6

    .line 95
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_5

    if-nez p5, :cond_4

    .line 97
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getLeft()I

    move-result p2

    sub-int/2addr v0, p2

    int-to-float p2, v0

    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTranslationX()F

    move-result p4

    add-float/2addr p2, p4

    .line 98
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTop()I

    move-result p4

    sub-int/2addr v1, p4

    int-to-float p4, v1

    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTranslationY()F

    move-result p5

    add-float/2addr p4, p5

    .line 99
    invoke-interface {p0, p2}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setTranslationX(F)V

    .line 100
    invoke-interface {p0, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setTranslationY(F)V

    .line 103
    instance-of p5, p0, Landroid/view/View;

    const v0, 0x461c3c00    # 9999.0f

    const/4 v1, 0x1

    if-eqz p5, :cond_3

    new-array p2, v1, [Landroid/view/View;

    .line 104
    move-object p4, p0

    check-cast p4, Landroid/view/View;

    aput-object p4, p2, p3

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 105
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getZ()F

    move-result p2

    .line 106
    invoke-interface {p0, v0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setZ(F)V

    .line 108
    new-instance p5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v0, -0x2

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 109
    invoke-virtual {p5, v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p5

    new-array v0, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v2, Lcom/miui/home/launcher/AutoLayoutAnimation$1;

    invoke-direct {v2, p0, p2}, Lcom/miui/home/launcher/AutoLayoutAnimation$1;-><init>(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;F)V

    aput-object v2, v0, p3

    .line 110
    invoke-virtual {p5, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    .line 125
    invoke-interface {p0, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIsAutoLayoutAnimating(Z)V

    new-array p5, v1, [Landroid/view/View;

    aput-object p4, p5, p3

    .line 126
    invoke-static {p5}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p4

    invoke-interface {p4}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p4

    new-instance p5, Lmiuix/animation/controller/AnimState;

    const-string v0, "AutoLayoutAnimation"

    invoke-direct {p5, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v2, 0x0

    .line 127
    invoke-virtual {p5, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p5

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 128
    invoke-virtual {p5, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p5

    new-array v0, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object p2, v0, p3

    .line 126
    invoke-interface {p4, p5, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 131
    :cond_3
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->animator()Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object p3

    .line 132
    invoke-virtual {p3}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 133
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getZ()F

    move-result p5

    .line 134
    invoke-interface {p0, v0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setZ(F)V

    .line 135
    invoke-interface {p0, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIsAutoLayoutAnimating(Z)V

    const v0, 0x3f7ae148    # 0.98f

    const v1, 0x3eb33333    # 0.35f

    .line 136
    invoke-virtual {p3, v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setDampingResponse(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object p3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p3, v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setStartEnd(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object p3

    new-instance v0, Lcom/miui/home/launcher/AutoLayoutAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;FF)V

    .line 138
    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object p2

    new-instance p3, Lcom/miui/home/launcher/AutoLayoutAnimation$2;

    invoke-direct {p3, p0, p5}, Lcom/miui/home/launcher/AutoLayoutAnimation$2;-><init>(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;F)V

    .line 141
    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/animate/SpringAnimator;->setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object p2

    .line 155
    invoke-virtual {p2}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    goto :goto_0

    .line 158
    :cond_4
    invoke-interface {p5, p0, v0, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;->animate(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;II)V

    .line 161
    :cond_5
    :goto_0
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 162
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

    move-result-object p2

    check-cast p0, Landroid/view/View;

    invoke-interface {p2, p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;->updateAnimateTarget(Landroid/view/View;)V

    :cond_6
    return p1

    :array_0
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3eb33333    # 0.35f
    .end array-data
.end method
