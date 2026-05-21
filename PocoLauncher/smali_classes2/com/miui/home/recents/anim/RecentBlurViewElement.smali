.class public final Lcom/miui/home/recents/anim/RecentBlurViewElement;
.super Ljava/lang/Object;
.source "RecentBlurViewElement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/anim/RecentBlurViewElement$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecentBlurViewElement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentBlurViewElement.kt\ncom/miui/home/recents/anim/RecentBlurViewElement\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,171:1\n1#2:172\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/anim/RecentBlurViewElement$Companion;

.field private static final dampingRatio:F

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/miui/home/recents/anim/RecentBlurViewElement<",
            "Lcom/miui/home/recents/anim/RecentBlurParams;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final response:F


# instance fields
.field private blurView:Lcom/miui/home/launcher/BlurView;

.field private final mAnimListener:Lcom/miui/home/recents/anim/RecentBlurViewElement$mAnimListener$1;

.field private mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

.field private params:Lcom/miui/home/recents/anim/RecentBlurParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/anim/RecentBlurViewElement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/RecentBlurViewElement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->Companion:Lcom/miui/home/recents/anim/RecentBlurViewElement$Companion;

    .line 64
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/home/recents/anim/RecentBlurViewElement$Companion$instance$2;->INSTANCE:Lcom/miui/home/recents/anim/RecentBlurViewElement$Companion$instance$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->instance$delegate:Lkotlin/Lazy;

    const v0, 0x3f666666    # 0.9f

    .line 67
    sput v0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->dampingRatio:F

    const v0, 0x3e99999a    # 0.3f

    .line 68
    sput v0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->response:F

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/miui/home/recents/anim/RecentBlurViewElement$mAnimListener$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/anim/RecentBlurViewElement$mAnimListener$1;-><init>(Lcom/miui/home/recents/anim/RecentBlurViewElement;)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->mAnimListener:Lcom/miui/home/recents/anim/RecentBlurViewElement$mAnimListener$1;

    .line 94
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsWindow()Lcom/miui/home/launcher/RecentsWindowFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->getBlurView()Lcom/miui/home/launcher/BlurView;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->blurView:Lcom/miui/home/launcher/BlurView;

    .line 96
    sget v1, Lcom/miui/home/recents/anim/RecentBlurViewElement;->response:F

    invoke-direct {p0, v1}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->getStiffness(F)F

    move-result v1

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v3, Lcom/miui/home/recents/anim/SpringBundle$Builder;

    invoke-direct {v3}, Lcom/miui/home/recents/anim/SpringBundle$Builder;-><init>()V

    const-string v4, "Radius"

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setType(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v3

    .line 100
    sget v4, Lcom/miui/home/recents/anim/RecentBlurViewElement;->dampingRatio:F

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setDampingRatio(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setStiffness(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v3

    const v5, 0x3d4ccccd    # 0.05f

    .line 101
    invoke-virtual {v3, v5}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->build()Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v3, Lcom/miui/home/recents/anim/SpringBundle$Builder;

    invoke-direct {v3}, Lcom/miui/home/recents/anim/SpringBundle$Builder;-><init>()V

    const-string v5, "dimming"

    invoke-virtual {v3, v5}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setType(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v3

    .line 105
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setDampingRatio(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setStiffness(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v1

    const v3, 0x3a83126f    # 0.001f

    .line 106
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->build()Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v1

    .line 103
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/HyperSpringAnimation;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    .line 111
    invoke-virtual {v1, v0}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setUpdateListener(Lcom/miui/home/recents/anim/HyperSpringAnimation$OnUpdateListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/anim/RecentBlurViewElement;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 61
    sget-object v0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$updateTargetParams(Lcom/miui/home/recents/anim/RecentBlurViewElement;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->updateTargetParams(Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method private final getStiffness(F)F
    .locals 0

    .line 168
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result p0

    mul-float/2addr p1, p0

    .line 169
    invoke-static {p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->calculateStiffFromResponse(F)F

    move-result p0

    return p0
.end method

.method private final updateDynamicParam(FF)V
    .locals 2

    .line 158
    invoke-direct {p0, p2}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->getStiffness(F)F

    move-result p2

    .line 159
    iget-object p0, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string v0, "Radius"

    .line 160
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setDampingRation(Ljava/lang/String;F)V

    const-string v1, "dimming"

    .line 161
    invoke-virtual {p0, v1, p1}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setDampingRation(Ljava/lang/String;F)V

    .line 162
    invoke-virtual {p0, v0, p2}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setStiffness(Ljava/lang/String;F)V

    .line 163
    invoke-virtual {p0, v1, p2}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setStiffness(Ljava/lang/String;F)V

    return-void
.end method

.method private final updateTargetParams(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->blurView:Lcom/miui/home/launcher/BlurView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BlurView;->setBlurRadius(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 153
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BlurView;->setDimming(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public animTo(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.anim.RecentBlurParams"

    .line 125
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/anim/RecentBlurParams;

    iput-object p1, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->params:Lcom/miui/home/recents/anim/RecentBlurParams;

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "animTo: params = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->params:Lcom/miui/home/recents/anim/RecentBlurParams;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecentBlurViewElement"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p1, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->params:Lcom/miui/home/recents/anim/RecentBlurParams;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RecentBlurParams;->getDampingRatio()F

    move-result p1

    goto :goto_0

    :cond_0
    sget p1, Lcom/miui/home/recents/anim/RecentBlurViewElement;->dampingRatio:F

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->params:Lcom/miui/home/recents/anim/RecentBlurParams;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RecentBlurParams;->getResponse()F

    move-result v1

    goto :goto_1

    :cond_1
    sget v1, Lcom/miui/home/recents/anim/RecentBlurViewElement;->response:F

    .line 129
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->updateDynamicParam(FF)V

    .line 130
    iget-object p1, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->params:Lcom/miui/home/recents/anim/RecentBlurParams;

    const-string v1, "dimming"

    const-string v2, "Radius"

    if-eqz p1, :cond_2

    .line 131
    iget-object v3, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    .line 132
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RecentBlurParams;->getBlurRadius()F

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    .line 133
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RecentBlurParams;->getDimming()F

    move-result p1

    invoke-virtual {v3, v1, p1}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    .line 137
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_6

    .line 138
    iget-object p1, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->blurView:Lcom/miui/home/launcher/BlurView;

    if-eqz p1, :cond_3

    .line 139
    iget-object v3, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    .line 140
    invoke-virtual {p1}, Lcom/miui/home/launcher/BlurView;->getCurrentBlur()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setStartValue(Ljava/lang/String;F)V

    .line 141
    invoke-virtual {p1}, Lcom/miui/home/launcher/BlurView;->getCurrentDimming()F

    move-result p1

    invoke-virtual {v3, v1, p1}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setStartValue(Ljava/lang/String;F)V

    .line 145
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animTo, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->blurView:Lcom/miui/home/launcher/BlurView;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/home/launcher/BlurView;->getCurrentBlur()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->params:Lcom/miui/home/recents/anim/RecentBlurParams;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RecentBlurParams;->getBlurRadius()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p0, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->start()V

    :cond_6
    return-void
.end method

.method public final bindView(Lcom/miui/home/launcher/BlurView;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->blurView:Lcom/miui/home/launcher/BlurView;

    return-void
.end method

.method public setTo(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->cancel()V

    :cond_0
    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.anim.RecentBlurParams"

    .line 118
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/anim/RecentBlurParams;

    iput-object p1, p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->params:Lcom/miui/home/recents/anim/RecentBlurParams;

    .line 120
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RecentBlurParams;->getBlurRadius()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RecentBlurParams;->getDimming()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->updateTargetParams(Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method
