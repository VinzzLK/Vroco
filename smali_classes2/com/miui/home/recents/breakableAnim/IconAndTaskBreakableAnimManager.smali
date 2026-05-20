.class public Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;
.super Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;
.source "IconAndTaskBreakableAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/recents/breakableAnim/BreakableAnimManager<",
        "Lcom/miui/home/recents/util/RectFSpringAnim;",
        "Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final sIgnoreTransViews:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static sTaskBreakableAnimManger:Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;


# instance fields
.field private mInitPosRelativeToAncestor:[F

.field private mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

.field private mPosRelativeToAncestor:[F


# direct methods
.method public static synthetic $r8$lambda$m0AGahwA0ZZ1moRhYbOZkFc0LyE(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->lambda$static$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 21
    sget-object v0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->sIgnoreTransViews:Ljava/util/function/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;-><init>()V

    .line 19
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 47
    iput-object v1, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mInitPosRelativeToAncestor:[F

    new-array v0, v0, [F

    .line 48
    iput-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mPosRelativeToAncestor:[F

    return-void
.end method

.method public static getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;
    .locals 1

    .line 28
    sget-object v0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->sTaskBreakableAnimManger:Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    invoke-direct {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;-><init>()V

    sput-object v0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->sTaskBreakableAnimManger:Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    .line 31
    :cond_0
    sget-object v0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->sTaskBreakableAnimManger:Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    return-object v0
.end method

.method private static synthetic lambda$static$0(Landroid/view/View;)Z
    .locals 0

    .line 21
    instance-of p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;

    return p0
.end method


# virtual methods
.method protected addBreakableListener(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    const/4 p0, 0x0

    .line 89
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setMoveToTargetRectWhenAnimEnd(Z)V

    .line 90
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected bridge synthetic addBreakableListener(Ljava/lang/Object;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->addBreakableListener(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public cancelAnim()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRequestCancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object p0, p0, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    :cond_0
    return-void
.end method

.method public getCurrentAnimParam()Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;
    .locals 3

    .line 103
    iget-object p0, p0, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/recents/util/RectFSpringAnim;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;

    .line 105
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRadius()F

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentAlpha()F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;-><init>(Landroid/graphics/RectF;FF)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getCurrentAnimParam()Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getCurrentAnimParam()Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;

    move-result-object p0

    return-object p0
.end method

.method public isAnimChainOn()Z
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onInitFromLastAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 96
    iget-object p0, p2, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;->mRectF:Landroid/graphics/RectF;

    iget p2, p2, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;->mTaskRadius:F

    invoke-virtual {p1, p0, p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartRectAndRadius(Landroid/graphics/RectF;F)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onInitFromLastAnimParam(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    check-cast p2, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;

    check-cast p3, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->onInitFromLastAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;)V

    return-void
.end method

.method public releaseAnim()V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->cancelAnim()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    return-void
.end method
