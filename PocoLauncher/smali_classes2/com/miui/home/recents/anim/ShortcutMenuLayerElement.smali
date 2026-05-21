.class public final Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;
.super Ljava/lang/Object;
.source "ShortcutMenuLayerElement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$Companion;
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
    value = "SMAP\nShortcutMenuLayerElement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortcutMenuLayerElement.kt\ncom/miui/home/recents/anim/ShortcutMenuLayerElement\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,316:1\n1#2:317\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$Companion;

.field private static final dampingRatio:F

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/miui/home/recents/anim/ShortcutMenuLayerElement<",
            "Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final response:F


# instance fields
.field private currentScale:F

.field private final mAnimListener:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$mAnimListener$1;

.field private final mExitOverviewEndListener:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$mExitOverviewEndListener$1;

.field private mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

.field private params:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

.field private shortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$Companion;

    .line 139
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$Companion$instance$2;->INSTANCE:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$Companion$instance$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->instance$delegate:Lkotlin/Lazy;

    .line 142
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f99999a    # 1.2f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    sput v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->dampingRatio:F

    .line 143
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    const v0, 0x3eb33333    # 0.35f

    :goto_1
    sput v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->response:F

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 150
    iput v0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->currentScale:F

    .line 152
    new-instance v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$mAnimListener$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$mAnimListener$1;-><init>(Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->mAnimListener:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$mAnimListener$1;

    .line 162
    new-instance v1, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$mExitOverviewEndListener$1;

    invoke-direct {v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$mExitOverviewEndListener$1;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->mExitOverviewEndListener:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$mExitOverviewEndListener$1;

    .line 199
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->shortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    .line 201
    sget v1, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->response:F

    invoke-direct {p0, v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->getStiffness(F)F

    move-result v1

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 204
    new-instance v3, Lcom/miui/home/recents/anim/SpringBundle$Builder;

    invoke-direct {v3}, Lcom/miui/home/recents/anim/SpringBundle$Builder;-><init>()V

    const-string v4, "Alpha"

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setType(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v3

    .line 205
    sget v4, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->dampingRatio:F

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setDampingRatio(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v3

    .line 206
    invoke-virtual {v3, v1}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setStiffness(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v3

    const v5, 0x3d4ccccd    # 0.05f

    .line 207
    invoke-virtual {v3, v5}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->build()Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v3

    .line 203
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v3, Lcom/miui/home/recents/anim/SpringBundle$Builder;

    invoke-direct {v3}, Lcom/miui/home/recents/anim/SpringBundle$Builder;-><init>()V

    const-string v5, "scaleX"

    invoke-virtual {v3, v5}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setType(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v3

    .line 211
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setDampingRatio(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v3

    .line 212
    invoke-virtual {v3, v1}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setStiffness(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v3

    const v5, 0x3b03126f    # 0.002f

    .line 213
    invoke-virtual {v3, v5}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->build()Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v3

    .line 209
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v3, Lcom/miui/home/recents/anim/SpringBundle$Builder;

    invoke-direct {v3}, Lcom/miui/home/recents/anim/SpringBundle$Builder;-><init>()V

    const-string v6, "scaleY"

    invoke-virtual {v3, v6}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setType(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v3

    .line 217
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setDampingRatio(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v3

    .line 218
    invoke-virtual {v3, v1}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setStiffness(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v1

    .line 219
    invoke-virtual {v1, v5}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->build()Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v1

    .line 215
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v1, Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/HyperSpringAnimation;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    .line 224
    invoke-virtual {v1, v0}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setUpdateListener(Lcom/miui/home/recents/anim/HyperSpringAnimation$OnUpdateListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 136
    sget-object v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$updateTargetParams(Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->updateTargetParams(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method private final getStiffness(F)F
    .locals 0

    .line 313
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result p0

    mul-float/2addr p1, p0

    .line 314
    invoke-static {p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->calculateStiffFromResponse(F)F

    move-result p0

    return p0
.end method

.method private final updateDynamicParam(FF)V
    .locals 3

    .line 301
    invoke-direct {p0, p2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->getStiffness(F)F

    move-result p2

    .line 302
    iget-object p0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string v0, "Alpha"

    .line 303
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setDampingRation(Ljava/lang/String;F)V

    const-string v1, "scaleX"

    .line 304
    invoke-virtual {p0, v1, p1}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setDampingRation(Ljava/lang/String;F)V

    const-string v2, "scaleY"

    .line 305
    invoke-virtual {p0, v2, p1}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setDampingRation(Ljava/lang/String;F)V

    .line 306
    invoke-virtual {p0, v0, p2}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setStiffness(Ljava/lang/String;F)V

    .line 307
    invoke-virtual {p0, v1, p2}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setStiffness(Ljava/lang/String;F)V

    .line 308
    invoke-virtual {p0, v2, p2}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setStiffness(Ljava/lang/String;F)V

    return-void
.end method

.method private final updateTargetParams(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 4

    .line 273
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherStateManager;->isOverlayScrolling()Z

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    return-void

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->shortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_3

    .line 280
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_3
    if-eqz p2, :cond_4

    .line 281
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    :cond_4
    if-eqz p3, :cond_5

    .line 282
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_5
    if-eqz p2, :cond_6

    .line 285
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iput p3, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->currentScale:F

    :cond_6
    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 288
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/Launcher;->updateAssistant(FF)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final addExitOverviewEndListener()V
    .locals 3

    .line 175
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ShortcutMenuLayerElement"

    const-string v2, "addExitOverviewEndListener"

    .line 178
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setIsExitRecentsAnimating(Z)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    iget-object p0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->mExitOverviewEndListener:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$mExitOverviewEndListener$1;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addEndListener(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    :cond_1
    return-void
.end method

.method public animTo(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.anim.ShortcutMenuLayerParams"

    .line 244
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    iput-object p1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->params:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "animTo, params="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->params:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShortcutMenuLayerElement"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->params:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->getDampingRation()F

    move-result p1

    goto :goto_0

    :cond_0
    sget p1, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->dampingRatio:F

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->params:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->getResponse()F

    move-result v0

    goto :goto_1

    :cond_1
    sget v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->response:F

    .line 248
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->updateDynamicParam(FF)V

    .line 249
    iget-object p1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->params:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    const-string v0, "scaleY"

    const-string v1, "scaleX"

    const-string v2, "Alpha"

    if-eqz p1, :cond_3

    .line 250
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->shortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    if-eqz v3, :cond_2

    .line 251
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 253
    :cond_2
    iget-object v3, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    .line 254
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->getAlpha()F

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    .line 255
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->getScaleX()F

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    .line 256
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->getScaleY()F

    move-result p1

    invoke-virtual {v3, v0, p1}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    .line 259
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_5

    .line 260
    iget-object p1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->shortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    if-eqz p1, :cond_4

    .line 261
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setCenterPivotToView(Landroid/view/View;)V

    .line 262
    iget-object v3, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    .line 263
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setStartValue(Ljava/lang/String;F)V

    .line 264
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v2

    invoke-virtual {v3, v1, v2}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setStartValue(Ljava/lang/String;F)V

    .line 265
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result p1

    invoke-virtual {v3, v0, p1}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setStartValue(Ljava/lang/String;F)V

    .line 268
    :cond_4
    iget-object p0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->start()V

    :cond_5
    return-void
.end method

.method public final bindView(Lcom/miui/home/launcher/ShortcutMenuLayer;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->shortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    return-void
.end method

.method public final getCurrentScale()F
    .locals 0

    .line 293
    iget p0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->currentScale:F

    return p0
.end method

.method public final getLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->shortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    return-object p0
.end method

.method public final removeExitOverviewEndListener()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    iget-object v1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->mExitOverviewEndListener:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$mExitOverviewEndListener$1;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->containsEndListener(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ShortcutMenuLayerElement"

    const-string v1, "removeExitOverviewEndListener"

    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    iget-object p0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->mExitOverviewEndListener:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$mExitOverviewEndListener$1;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->removeEndListener(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;)V

    .line 189
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setIsExitRecentsAnimating(Z)V

    :cond_0
    return-void
.end method

.method public setTo(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->cancel()V

    :cond_0
    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.anim.ShortcutMenuLayerParams"

    .line 231
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    iput-object p1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->params:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTo, params="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->params:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShortcutMenuLayerElement"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->params:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    if-eqz p1, :cond_1

    .line 234
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->getScaleX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->getScaleY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->updateTargetParams(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    :cond_1
    return-void
.end method

.method public final skipAnimToEnd()V
    .locals 2

    const-string v0, "ShortcutMenuLayerElement"

    const-string v1, "skipAnimToEnd"

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object p0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->skipToEnd()V

    return-void
.end method
