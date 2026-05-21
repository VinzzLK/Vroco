.class public final Lcom/miui/home/recents/anim/FastLaunchWindowElement;
.super Lcom/miui/home/recents/anim/WindowElement;
.source "FastLaunchWindowElement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/anim/FastLaunchWindowElement$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/miui/home/recents/anim/WindowElement<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/anim/FastLaunchWindowElement$Companion;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCurRemoteSyncId:I

.field private final mFastLaunchOnUpdateListener:Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;

.field private mHasRemoteOpeningCallback:Z

.field private mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

.field private mUseSurfaceShade:Z


# direct methods
.method public static synthetic $r8$lambda$6V8l58sdMYV1OoWdVWuKpYrio3k()V
    .locals 0

    invoke-static {}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->startFastLaunch$lambda-7$lambda-6()V

    return-void
.end method

.method public static synthetic $r8$lambda$h2XAFtumwRj5zmgHqGitfXCaHWU(Lcom/miui/home/recents/anim/FastLaunchWindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->openingWindowTransitionStart$lambda-1(Lcom/miui/home/recents/anim/FastLaunchWindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j25_nA2oBrnTCiVDZphEtiBV4fw(Lcom/miui/home/recents/anim/FastLaunchWindowElement;Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->mFastLaunchOnUpdateListener$lambda-0(Lcom/miui/home/recents/anim/FastLaunchWindowElement;Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m7Oq4kUgP_k-ZeDL_veiKVidXdo(Lcom/miui/home/recents/anim/FastLaunchWindowElement;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->screenShotRefresh$lambda-2(Lcom/miui/home/recents/anim/FastLaunchWindowElement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o9hUnS2ubQ1aFEYoVQEtkwXuks0(Lcom/miui/home/recents/anim/FastLaunchWindowElement;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->screenShotRefresh$lambda-3(Lcom/miui/home/recents/anim/FastLaunchWindowElement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oF0snt-Osf8eSerEtO-7rj7l6Vk(Lcom/miui/home/recents/anim/FastLaunchWindowElement;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->startFastLaunch$lambda-5(Lcom/miui/home/recents/anim/FastLaunchWindowElement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t3-7uv_8HOCr8w_1cfRfsnkfeXs(Lcom/miui/home/recents/anim/HyperRemoteTransition;Lcom/miui/home/recents/anim/FastLaunchWindowElement;Lcom/miui/home/recents/anim/AllElementParams;Lcom/miui/home/recents/FastLaunchData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->startFastLaunch$lambda-7(Lcom/miui/home/recents/anim/HyperRemoteTransition;Lcom/miui/home/recents/anim/FastLaunchWindowElement;Lcom/miui/home/recents/anim/AllElementParams;Lcom/miui/home/recents/FastLaunchData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/FastLaunchWindowElement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->Companion:Lcom/miui/home/recents/anim/FastLaunchWindowElement$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/home/recents/anim/WindowElement;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string p1, "FastLaunchWindowElement"

    .line 53
    iput-object p1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->mCurRemoteSyncId:I

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->mUseSurfaceShade:Z

    .line 67
    new-instance p1, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/anim/FastLaunchWindowElement;)V

    iput-object p1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->mFastLaunchOnUpdateListener:Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->fastLaunchInit()V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/miui/home/recents/anim/FastLaunchWindowElement;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setMCurRemoteSyncId$p(Lcom/miui/home/recents/anim/FastLaunchWindowElement;I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->mCurRemoteSyncId:I

    return-void
.end method

.method private final getActivityOptions(Landroid/view/View;Lcom/miui/home/recents/FastLaunchData;)Landroid/app/ActivityOptions;
    .locals 10

    .line 357
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->startOpenBlock()V

    const/4 v0, 0x0

    .line 358
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/anim/WindowElement;->isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result v1

    .line 359
    invoke-static {p1}, Lcom/miui/home/recents/TaskViewUtils;->getSoscLaunchPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/anim/WindowElement;->setLaunchPosition(I)V

    .line 360
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->setLauncherTargetView(Landroid/view/View;)V

    .line 361
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->getIconRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/anim/WindowElement;->setIconLoc(Landroid/graphics/Rect;)V

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x15e

    :goto_0
    move-wide v6, v2

    goto :goto_1

    .line 366
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0xe6

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x258

    goto :goto_0

    :goto_1
    const/16 v2, 0x78

    int-to-long v2, v2

    sub-long v2, v6, v2

    const/16 v4, 0x60

    int-to-long v4, v4

    sub-long/2addr v2, v4

    if-eqz p2, :cond_4

    if-nez v1, :cond_4

    .line 372
    new-instance v1, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;

    invoke-direct {v1, p0, p2}, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;-><init>(Lcom/miui/home/recents/anim/FastLaunchWindowElement;Lcom/miui/home/recents/FastLaunchData;)V

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/anim/WindowElement;->setMNativeHyperRemoteTransition(Lcom/miui/home/recents/anim/HyperRemoteTransition;)V

    .line 441
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMNativeHyperRemoteTransition()Lcom/miui/home/recents/anim/HyperRemoteTransition;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lcom/miui/home/recents/anim/HyperRemoteTransition;->setViewWeakReference(Ljava/lang/ref/WeakReference;)V

    .line 442
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMNativeHyperRemoteTransition()Lcom/miui/home/recents/anim/HyperRemoteTransition;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, p2}, Lcom/miui/home/recents/anim/HyperRemoteTransition;->setFastLaunchData(Lcom/miui/home/recents/FastLaunchData;)V

    .line 467
    :cond_4
    :goto_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportBarFollow()Z

    move-result v1

    if-eqz v1, :cond_5

    const-wide/16 v1, 0x0

    move-wide v8, v1

    goto :goto_4

    :cond_5
    move-wide v8, v2

    .line 469
    :goto_4
    new-instance v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    const/4 v5, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;JJ)V

    .line 473
    new-instance v2, Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    .line 474
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getWindowTransitionCompat()Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMNativeHyperRemoteTransition()Lcom/miui/home/recents/anim/HyperRemoteTransition;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->getOpenRemoteTransition(Landroid/window/IHyperRemoteTransition;)Landroid/window/RemoteTransition;

    move-result-object v0

    .line 473
    :cond_6
    invoke-direct {v2, v0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;-><init>(Landroid/window/RemoteTransition;)V

    .line 471
    invoke-static {v1, v2}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;Lcom/android/systemui/shared/system/RemoteTransitionCompat;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 478
    iget-object p0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivityOptions v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " openUseQuickStep="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " stack="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 479
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 477
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getRotationFromInfo(Landroid/window/ActivityStartInfo;)I
    .locals 4

    .line 772
    :try_start_0
    const-class v0, Ljava/lang/Object;

    const-string v1, "getWindowRotation"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    .line 771
    invoke-static {p1, v0, v1, v3, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 777
    iget-object p0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRotationFromInfo: rotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 771
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 780
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 781
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const-string p1, "window"

    invoke-virtual {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method private static final mFastLaunchOnUpdateListener$lambda-0(Lcom/miui/home/recents/anim/FastLaunchWindowElement;Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v0, p4

    move-object/from16 v1, p5

    const-string v2, "this$0"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "currentRect"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "vallBack"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v2, v8, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update start bound = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getRemoteAnimationTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " end bound = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getRemoteAnimationTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v2, v8, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update currentRect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "\uff0ccurrentAlpha = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " \uff0ccurrentRadius = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "\uff0ccurrentRectFParams?.showTask = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getCurrentRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/miui/home/recents/anim/RectFParams;->getShowTask()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object v7, v5

    .line 74
    :goto_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " animType = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v7

    .line 74
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " floatingIcon?.isInit()="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Lcom/miui/home/recents/FloatingIconInterface;->isInit()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 74
    :cond_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", KEY_SURFACE_EXT_ALPHA="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "SurfaceExtAlpha"

    const/high16 v7, -0x40800000    # -1.0f

    .line 82
    invoke-interface {v1, v5, v7}, Lcom/miui/home/recents/anim/IValueCallBack;->getValue(Ljava/lang/String;F)F

    move-result v10

    .line 74
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {v2, v3}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p0 .. p2}, Lcom/miui/home/recents/anim/WindowElement;->updateTaskView(Landroid/graphics/RectF;F)V

    .line 90
    invoke-virtual {v8, v0}, Lcom/miui/home/recents/anim/WindowElement;->mapAlpha(F)F

    move-result v0

    .line 91
    iget-object v2, v8, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "targetAlpha = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v15, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/miui/home/recents/FloatingIconInterface;->isInit()Z

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    move v2, v15

    :goto_3
    if-eqz v2, :cond_f

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getMFastLaunchData()Lcom/miui/home/recents/FastLaunchData;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 97
    invoke-interface {v1, v5, v7}, Lcom/miui/home/recents/anim/IValueCallBack;->getValue(Ljava/lang/String;F)F

    move-result v2

    cmpg-float v10, v2, v7

    if-nez v10, :cond_5

    move v10, v3

    goto :goto_4

    :cond_5
    move v10, v15

    :goto_4
    if-nez v10, :cond_a

    cmpg-float v10, v2, v0

    if-nez v10, :cond_6

    move v10, v3

    goto :goto_5

    :cond_6
    move v10, v15

    :goto_5
    if-eqz v10, :cond_a

    const/4 v10, 0x0

    cmpg-float v10, v2, v10

    if-nez v10, :cond_7

    move v10, v3

    goto :goto_6

    :cond_7
    move v10, v15

    :goto_6
    if-nez v10, :cond_9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v10

    if-nez v2, :cond_8

    move v2, v3

    goto :goto_7

    :cond_8
    move v2, v15

    :goto_7
    if-eqz v2, :cond_a

    .line 99
    :cond_9
    iput-boolean v15, v8, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->mUseSurfaceShade:Z

    .line 102
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 103
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIconRotationRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v2

    sget-object v13, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne v2, v13, :cond_b

    move v2, v3

    goto :goto_8

    :cond_b
    move v2, v15

    .line 108
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v13

    sget-object v14, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne v13, v14, :cond_c

    move/from16 v16, v3

    goto :goto_9

    :cond_c
    move/from16 v16, v15

    .line 109
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v13

    if-eq v13, v14, :cond_d

    move/from16 v17, v3

    goto :goto_a

    :cond_d
    move/from16 v17, v15

    .line 110
    :goto_a
    iget-boolean v14, v8, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->mUseSurfaceShade:Z

    move/from16 v13, p2

    move/from16 v18, v14

    move/from16 v14, p3

    move/from16 v20, v15

    move v15, v2

    move/from16 v19, v0

    .line 102
    invoke-interface/range {v10 .. v19}, Lcom/miui/home/recents/FloatingIconInterface;->update(Landroid/graphics/RectF;FFFZZZZF)V

    goto :goto_b

    :cond_e
    move/from16 v20, v15

    .line 114
    :goto_b
    invoke-virtual {v8, v0}, Lcom/miui/home/recents/anim/WindowElement;->updateLauncherTargetView(F)V

    goto :goto_c

    :cond_f
    move/from16 v20, v15

    .line 116
    iget-object v2, v8, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    const-string v10, "error floatingIcon is not Init"

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getCurrentRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode()Z

    move-result v2

    if-nez v2, :cond_10

    move v15, v3

    goto :goto_d

    :cond_10
    move/from16 v15, v20

    :goto_d
    if-eqz v15, :cond_12

    iget-boolean v2, v8, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->mUseSurfaceShade:Z

    if-eqz v2, :cond_12

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getMFastLaunchData()Lcom/miui/home/recents/FastLaunchData;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 121
    invoke-interface {v1, v5, v7}, Lcom/miui/home/recents/anim/IValueCallBack;->getValue(Ljava/lang/String;F)F

    move-result v1

    cmpg-float v2, v1, v7

    if-nez v2, :cond_11

    goto :goto_e

    :cond_11
    move/from16 v3, v20

    :goto_e
    if-nez v3, :cond_12

    goto :goto_f

    :cond_12
    move v1, v0

    .line 131
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0, v1}, Lcom/miui/home/recents/FloatingIconInterface;->setSurfaceAlpha(F)V

    .line 134
    :cond_13
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/recents/anim/WindowElement;->getSurfaceRotationRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v5, 0x1

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 139
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/recents/anim/WindowElement;->getSurfaceRotationRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v10

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v4, p2

    move-object v6, v7

    move-object v7, v10

    .line 132
    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/recents/anim/WindowElement;->updateElementValue(FLandroid/graphics/RectF;FFZLandroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 141
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/recents/anim/WindowElement;->getSurfaceRotationRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/miui/home/recents/anim/WindowElement;->updateCurRecet(Landroid/graphics/RectF;)V

    return-void
.end method

.method private static final openingWindowTransitionStart$lambda-1(Lcom/miui/home/recents/anim/FastLaunchWindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$targets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$helper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/anim/WindowElement;->refreshTransitionCallbackHelper([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object p2

    .line 167
    invoke-virtual {p2, p3}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->setAppTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 168
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/anim/WindowElement;->setRemoteAnimationTargetSet(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    .line 169
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->useFastLaunch()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getClipAnimationHelper()Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-result-object p1

    if-nez p1, :cond_0

    .line 171
    new-instance p1, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->setClipAnimationHelper(Lcom/miui/home/recents/util/ClipAnimationHelper;)V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getClipAnimationHelper()Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 174
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getClipAnimationHelper()Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    .line 175
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getClipAnimationHelper()Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object p3, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->INSTANCE:Lcom/miui/home/recents/anim/WindowAnimParamsProvider;

    invoke-virtual {p3}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    .line 176
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getClipAnimationHelper()Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 177
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getClipAnimationHelper()Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 178
    invoke-virtual {p3, p2, v1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getWindowTargetBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)Landroid/graphics/Rect;

    move-result-object p2

    .line 177
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 183
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->insertSurfaceAlphaAnim()V

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/anim/WindowElement;->startRemoteAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    .line 187
    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->mHasRemoteOpeningCallback:Z

    return-void
.end method

.method private static final screenShotRefresh$lambda-2(Lcom/miui/home/recents/anim/FastLaunchWindowElement;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMRunningTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->screenshotForMultiWindow(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMNeedRunningBitmap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->setMRunningBitmap(Landroid/graphics/Bitmap;)V

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenshotTask postAtFrontOfQueue taskId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMRunningTaskId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", bitmap="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final screenShotRefresh$lambda-3(Lcom/miui/home/recents/anim/FastLaunchWindowElement;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 275
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->switchToScreenshot(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMNeedRunningBitmap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->setMRunningBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method private final setFastLaunchBoundAndRotation(Lcom/miui/home/recents/FastLaunchData;Landroid/window/ActivityStartInfo;)V
    .locals 2

    .line 754
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportHorizontalInterrupt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {p2}, Landroid/window/ActivityStartInfo;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/FastLaunchData;->setBounds(Landroid/graphics/Rect;)V

    .line 756
    invoke-direct {p0, p2}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->getRotationFromInfo(Landroid/window/ActivityStartInfo;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/FastLaunchData;->setRotation(I)V

    return-void

    .line 760
    :cond_0
    invoke-virtual {p2}, Landroid/window/ActivityStartInfo;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    if-gt p0, v0, :cond_2

    invoke-virtual {p2}, Landroid/window/ActivityStartInfo;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v0

    if-le p0, v0, :cond_1

    goto :goto_0

    .line 764
    :cond_1
    invoke-virtual {p2}, Landroid/window/ActivityStartInfo;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/FastLaunchData;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 762
    :cond_2
    :goto_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 761
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/FastLaunchData;->setBounds(Landroid/graphics/Rect;)V

    .line 766
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const-string p2, "window"

    invoke-virtual {p0, p2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/FastLaunchData;->setRotation(I)V

    return-void
.end method

.method private static final startFastLaunch$lambda-5(Lcom/miui/home/recents/anim/FastLaunchWindowElement;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onFastLaunchTimeOut"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    .line 696
    invoke-static/range {v1 .. v6}, Lcom/miui/home/recents/anim/WindowElement;->forceStop$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;ILjava/lang/Object;)V

    .line 697
    iget-object p0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    const-string v0, "startFastLaunch onFastLaunchTimeOut"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final startFastLaunch$lambda-7(Lcom/miui/home/recents/anim/HyperRemoteTransition;Lcom/miui/home/recents/anim/FastLaunchWindowElement;Lcom/miui/home/recents/anim/AllElementParams;Lcom/miui/home/recents/FastLaunchData;)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "$hyperRemoteTransition"

    move-object/from16 v4, p0

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "this$0"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$fastLaunchData"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/HyperRemoteTransition;->hasCancel()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    .line 722
    invoke-static {v0, v4, v6, v5, v7}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition$default(Lcom/miui/home/recents/anim/WindowElement;ZZILjava/lang/Object;)V

    return-void

    .line 725
    :cond_0
    invoke-virtual {v0, v6}, Lcom/miui/home/recents/anim/WindowElement;->setMFinishSurface(Z)V

    if-eqz v1, :cond_1

    .line 726
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/recents/anim/AllElementParams;->getWindowParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v7

    :goto_0
    if-eqz v3, :cond_3

    sget-object v3, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v8

    .line 727
    invoke-virtual {v8}, Lcom/miui/home/recents/anim/StateManager;->getCurrentWindowElement()Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_1

    .line 743
    :cond_2
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/anim/WindowElement;->setMFastLaunchData(Lcom/miui/home/recents/FastLaunchData;)V

    .line 744
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/WindowElement;->getMNotHandleAnimRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/AllElementParams;->setWindowEmptyRunnable(Ljava/lang/Runnable;)V

    .line 745
    invoke-virtual {v3}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v2

    sget-object v3, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda6;->INSTANCE:Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda6;

    invoke-virtual {v2, v1, v3}, Lcom/miui/home/recents/anim/StateManager;->onAnimParamsReadyAtFrontOfQueue(Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 730
    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    .line 731
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startFastLaunch error allElementParams?.windowParams="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/recents/anim/AllElementParams;->getWindowParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v9

    goto :goto_2

    :cond_4
    move-object v9, v7

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", current="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v9}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v10

    .line 732
    invoke-virtual {v10}, Lcom/miui/home/recents/anim/StateManager;->getCurrentWindowElement()Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v10

    .line 731
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 729
    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-static {v0, v4, v6, v5, v7}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition$default(Lcom/miui/home/recents/anim/WindowElement;ZZILjava/lang/Object;)V

    .line 737
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishTransition, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "startFastLaunch"

    .line 735
    invoke-static {v4, v3}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-virtual {v9}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v3

    .line 740
    new-instance v4, Lcom/miui/home/recents/anim/AllElementParams;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Lcom/miui/home/recents/anim/StateType;->STATE_IDLE:Lcom/miui/home/recents/anim/StateType;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3bf

    const/16 v20, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v20}, Lcom/miui/home/recents/anim/AllElementParams;-><init>(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/TaskViewsParams;Lcom/miui/home/recents/anim/StateType;Lcom/miui/home/recents/anim/RecentBlurParams;Lcom/miui/home/recents/anim/RecentBlurParams;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3, v4, v7, v5, v7}, Lcom/miui/home/recents/anim/StateManager;->onAnimParamsReady$default(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;ILjava/lang/Object;)V

    .line 741
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/recents/FastLaunchData;->setClose()V

    :goto_3
    if-eqz v1, :cond_5

    .line 749
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/recents/anim/AllElementParams;->getWindowParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v7

    :cond_5
    invoke-virtual {v0, v7}, Lcom/miui/home/recents/anim/WindowElement;->setMOpeningRectFParams(Lcom/miui/home/recents/anim/RectFParams;)V

    return-void
.end method

.method private static final startFastLaunch$lambda-7$lambda-6()V
    .locals 1

    .line 746
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->stopOpenBlock()V

    return-void
.end method


# virtual methods
.method public animTo(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 501
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->useFastLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    invoke-super {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->animTo(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.anim.RectFParams"

    .line 504
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/anim/RectFParams;

    .line 506
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animTo, params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isRunning()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->checkTypeValid(Lcom/miui/home/recents/anim/RectFParams;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 512
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->initShortcutData(Lcom/miui/home/recents/anim/RectFParams;)V

    .line 513
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->changeLayers(Lcom/miui/home/recents/anim/RectFParams;)V

    .line 514
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->animClear(Lcom/miui/home/recents/anim/RectFParams;)V

    .line 515
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager;->getPendingIconViewWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 516
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/anim/WindowElement;->isSameElement(Ljava/lang/ref/WeakReference;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 517
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->setPendingIconViewWeakRef(Ljava/lang/ref/WeakReference;)V

    .line 520
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 526
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, v3}, Lcom/miui/home/recents/FloatingIconInterface;->allowTouch(Z)V

    goto :goto_1

    .line 521
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0, v2}, Lcom/miui/home/recents/FloatingIconInterface;->allowTouch(Z)V

    .line 522
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->hasValidSurface()Z

    move-result v0

    if-nez v0, :cond_6

    .line 523
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setEndEnable(Z)V

    .line 528
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 529
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->runningAnimUpdate(Lcom/miui/home/recents/anim/RectFParams;)V

    goto :goto_2

    .line 531
    :cond_7
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->animResetReady(Lcom/miui/home/recents/anim/RectFParams;)V

    .line 532
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->mFastLaunchOnUpdateListener:Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 533
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMCurrentRectFCalculator()Lcom/miui/home/recents/util/RectFSpringAnim$ICurrentRectCalculator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setCurrentRectCalculator(Lcom/miui/home/recents/util/RectFSpringAnim$ICurrentRectCalculator;)V

    .line 534
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->addListener(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 535
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getClipAnimationHelper()Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 536
    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_8

    .line 537
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->setClipAnimationHelper(Lcom/miui/home/recents/util/ClipAnimationHelper;)V

    .line 541
    :cond_8
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInMainThread()V

    .line 543
    :goto_2
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->undateCurrentRect(Lcom/miui/home/recents/anim/RectFParams;)V

    return-void
.end method

.method public final checkDataValid(Landroid/window/ActivityStartInfo;Lcom/miui/home/recents/FastLaunchData;)Z
    .locals 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fastLaunchData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 660
    iget-object p0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    const-string p1, "getLauncher is null"

    .line 659
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 665
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/recents/FastLaunchData;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 667
    iget-object p0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDataValid false  info="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",fastLaunchData="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 666
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 673
    :cond_1
    invoke-virtual {p1}, Landroid/window/ActivityStartInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/home/recents/FastLaunchData;->setPackageName(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p1}, Landroid/window/ActivityStartInfo;->isTranslucent()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/home/recents/FastLaunchData;->getAppTranslucentState(Z)Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 679
    iget-object p0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    .line 680
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkDataValid false  appTranslucent="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 678
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 684
    :cond_2
    invoke-virtual {p1}, Landroid/window/ActivityStartInfo;->isLaunchSuccess()Z

    move-result p1

    if-nez p1, :cond_3

    .line 686
    iget-object p0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    const-string p1, "checkDataValid false  isLaunchSuccess=false"

    .line 685
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    return v0
.end method

.method public final fastLaunchInit()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " fastlaunch window init mNativeWindowTransitionCompatListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMNativeWindowTransitionCompatListener()Lcom/miui/home/recents/anim/WindowTransitionCompatListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", windowTransitionCompat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getWindowTransitionCompat()Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    new-instance v0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->setMTransformParams(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)V

    return-void
.end method

.method public final getFastLaunchRunningTaskPkgName()Ljava/lang/String;
    .locals 2

    .line 638
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->useFastLaunch()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMFastLaunchData()Lcom/miui/home/recents/FastLaunchData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/FastLaunchData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final getMCurRemoteSyncId()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->mCurRemoteSyncId:I

    return p0
.end method

.method public final getRunningTaskId()I
    .locals 1

    .line 631
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->useFastLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMFastLaunchData()Lcom/miui/home/recents/FastLaunchData;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/FastLaunchData;->getTaskId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getSourceStackBounds()Landroid/graphics/Rect;
    .locals 3

    .line 145
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->hasValidSurface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getClipAnimationHelper()Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getClipAnimationHelper()Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMFastLaunchData()Lcom/miui/home/recents/FastLaunchData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMFastLaunchData()Lcom/miui/home/recents/FastLaunchData;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/home/recents/FastLaunchData;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 148
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMFastLaunchData()Lcom/miui/home/recents/FastLaunchData;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/FastLaunchData;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    .line 150
    :cond_3
    new-instance p0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v2

    invoke-direct {p0, v1, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public final getUserId()I
    .locals 1

    .line 651
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->useFastLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMFastLaunchData()Lcom/miui/home/recents/FastLaunchData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMFastLaunchData()Lcom/miui/home/recents/FastLaunchData;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/FastLaunchData;->getUserId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public handleFloatingIconViewWhenNewTargetViewNull(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->useFastLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    invoke-super {p0, p1, p2}, Lcom/miui/home/recents/anim/WindowElement;->handleFloatingIconViewWhenNewTargetViewNull(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    return-void

    .line 570
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/miui/home/recents/FloatingIconInterface;->isInit()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_4

    iget-boolean v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->mUseSurfaceShade:Z

    if-eqz v0, :cond_4

    .line 571
    iget-object p1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFloatingIconViewWhenNewTargetViewNull, hide oldFloatingIconViewTargetView icon, oldFloatingIconViewTargetView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0, v2}, Lcom/miui/home/recents/FloatingIconInterface;->setIsDrawIcon(Z)V

    :cond_2
    if-eqz p2, :cond_3

    .line 575
    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->showIcon()V

    :cond_3
    return-void

    .line 579
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/miui/home/recents/anim/WindowElement;->handleFloatingIconViewWhenNewTargetViewNull(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    return-void
.end method

.method public handleFloatingIconViewWhenNotHomeAnimTarget(Lcom/miui/home/recents/anim/RectFParams;)V
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->useFastLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    invoke-super {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->handleFloatingIconViewWhenNotHomeAnimTarget(Lcom/miui/home/recents/anim/RectFParams;)V

    return-void

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/miui/home/recents/FloatingIconInterface;->isInit()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->mUseSurfaceShade:Z

    if-eqz v0, :cond_3

    .line 551
    iget-object p1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    const-string v0, "handleFloatingIconViewWhenNotHomeAnimTarget, floatingIcon is showing suarfaceShade, don\'t update"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0, v2}, Lcom/miui/home/recents/FloatingIconInterface;->setIsDrawIcon(Z)V

    :cond_2
    return-void

    .line 556
    :cond_3
    invoke-super {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->handleFloatingIconViewWhenNotHomeAnimTarget(Lcom/miui/home/recents/anim/RectFParams;)V

    return-void
.end method

.method public injectRecentTransition(Lcom/miui/home/recents/event/RecentTransitionInfo;)V
    .locals 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->useFastLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    invoke-super {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->injectRecentTransition(Lcom/miui/home/recents/event/RecentTransitionInfo;)V

    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " injectRecentTransition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-super {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->injectRecentTransition(Lcom/miui/home/recents/event/RecentTransitionInfo;)V

    .line 309
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->insertSurfaceAlphaAnim()V

    .line 311
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " injectRecentTransition clipAnimationHelper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getClipAnimationHelper()Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " , info.targetSet="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/recents/event/RecentTransitionInfo;->getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 310
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final insertSurfaceAlphaAnim()V
    .locals 3

    .line 317
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->needInsertSurfaceAnim()Z

    move-result v0

    .line 318
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v1

    const-string v2, "SurfaceExtAlpha"

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getSpringBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->insertSpringBundle(Ljava/lang/String;Z)V

    .line 324
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->screenShotRefresh()V

    goto :goto_1

    .line 326
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    const-string v0, "anim has KEY_SURFACE_EXT_ALPHA"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public isFastOpeningAnimRunning()Z
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFastOpeningAnimRunning mAnim.isRunning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mAnim.lastAminType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v3

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->useFastLaunch()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p0

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isReusefulAnimRunning()Z
    .locals 3

    .line 235
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->useFastLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-super {p0}, Lcom/miui/home/recents/anim/WindowElement;->isReusefulAnimRunning()Z

    move-result p0

    return p0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isReusefulAnimRunning hasRecentInit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->hasRecentInit()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isRunning() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->hasRecentInit()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReusefulOpeningAnimRunning()Z
    .locals 3

    .line 222
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->useFastLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    invoke-super {p0}, Lcom/miui/home/recents/anim/WindowElement;->isReusefulOpeningAnimRunning()Z

    move-result p0

    return p0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReusefulOpeningAnimRunning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->isReusefulAnimRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAnim.lastAminType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->isReusefulAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p0

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isRunning()Z
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->useFastLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-super {p0}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result p0

    return p0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p0

    return p0
.end method

.method public isSplitScreenRunning()Z
    .locals 1

    .line 617
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->useFastLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    invoke-super {p0}, Lcom/miui/home/recents/anim/WindowElement;->isSplitScreenRunning()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final needInsertSurfaceAnim()Z
    .locals 2

    .line 285
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq v0, v1, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq v0, v1, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_WORLD_CIRCLE:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq v0, v1, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_FROM_FEED:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    const-string v0, "needInsertSurfaceAnim default"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 290
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    const-string v0, "needInsertSurfaceAnim false"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public openingWindowTransitionStart([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    const-string v0, "targets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    const-string v1, "openingWindowTransitionStart fastWindowElement"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/recents/anim/FastLaunchWindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRemoteTransition(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestRemoteTransition package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 249
    instance-of v1, p2, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->getUserId()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 254
    new-instance v2, Lcom/miui/home/recents/FastLaunchData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, p1, p3, v1}, Lcom/miui/home/recents/FastLaunchData;-><init>(Landroid/content/Intent;Landroid/view/View;Ljava/lang/Integer;)V

    invoke-direct {p0, p3, v2}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->getActivityOptions(Landroid/view/View;Lcom/miui/home/recents/FastLaunchData;)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 250
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;Landroid/app/ActivityOptions;)V

    :cond_2
    return-void
.end method

.method public resetIsDrawIconIfNeed(Lcom/miui/home/recents/anim/RectFParams;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p1, v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/miui/home/recents/FloatingIconInterface;->setIsDrawIcon(Z)V

    :cond_0
    return-void
.end method

.method public resetWindowElement()V
    .locals 1

    .line 790
    invoke-super {p0}, Lcom/miui/home/recents/anim/WindowElement;->resetWindowElement()V

    .line 791
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->fastLaunchInit()V

    const/4 v0, -0x1

    .line 792
    iput v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->mCurRemoteSyncId:I

    const/4 v0, 0x0

    .line 793
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->mHasRemoteOpeningCallback:Z

    return-void
.end method

.method public final screenShotRefresh()V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenShotRefresh mAnim.lastAminType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq v0, v1, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_WORLD_CIRCLE:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    new-instance v0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/anim/FastLaunchWindowElement;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void

    .line 263
    :cond_1
    :goto_0
    new-instance v0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/anim/FastLaunchWindowElement;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTo(Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 487
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->useFastLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    invoke-super {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->setTo(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.anim.RectFParams"

    .line 490
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/anim/RectFParams;

    .line 492
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " setTo params.ignoreIcon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getIgnoreIcon()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " floatingIcon.isInit() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/miui/home/recents/FloatingIconInterface;->isInit()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  needFinish="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getNeedFinishOnAnimEnd()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 494
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 491
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->setToReset(Lcom/miui/home/recents/anim/RectFParams;)V

    .line 497
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getEndAlpha()F

    move-result v4

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getEndRadius()F

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getTargetRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->getRotationRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v10

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/miui/home/recents/anim/WindowElement;->updateElementValue(FLandroid/graphics/RectF;FFZLandroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method public final startFastLaunch(Lcom/miui/home/recents/FastLaunchData;Landroid/window/ActivityStartInfo;Landroid/view/View;Lcom/miui/home/recents/anim/HyperRemoteTransition;)V
    .locals 8

    const-string v0, "fastLaunchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hyperRemoteTransition"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/anim/FastLaunchWindowElement;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 699
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->changeBackVisible(ZZ)V

    .line 701
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->mUseSurfaceShade:Z

    .line 702
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    const-string v1, "SurfaceExtAlpha"

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->removeSpringBundle(Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransitionTest startFastLaunch package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/recents/FastLaunchData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {p2}, Landroid/window/ActivityStartInfo;->getTaskId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->setMRunningTaskId(I)V

    .line 705
    invoke-virtual {p2}, Landroid/window/ActivityStartInfo;->getTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/FastLaunchData;->setTaskId(I)V

    const/4 v0, 0x0

    .line 706
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->setMFinishSurface(Z)V

    .line 707
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->setFastLaunchBoundAndRotation(Lcom/miui/home/recents/FastLaunchData;Landroid/window/ActivityStartInfo;)V

    .line 709
    invoke-virtual {p1, v0, p3}, Lcom/miui/home/recents/FastLaunchData;->getUseTranslucentState(ZLandroid/view/View;)Z

    move-result v4

    .line 711
    sget-object v1, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->INSTANCE:Lcom/miui/home/recents/anim/WindowAnimParamsProvider;

    .line 715
    invoke-virtual {p1}, Lcom/miui/home/recents/FastLaunchData;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 716
    invoke-virtual {p1}, Lcom/miui/home/recents/FastLaunchData;->getIconLoc()Landroid/graphics/Rect;

    move-result-object v6

    .line 717
    invoke-virtual {p1}, Lcom/miui/home/recents/FastLaunchData;->getRotation()I

    move-result v7

    const/4 v3, 0x0

    move-object v2, p3

    .line 711
    invoke-virtual/range {v1 .. v7}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getQuickOpeningAnimParams(Landroid/view/View;ZZLandroid/graphics/Rect;Landroid/graphics/Rect;I)Lcom/miui/home/recents/anim/AllElementParams;

    move-result-object p2

    .line 720
    sget-object p3, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda5;

    invoke-direct {v0, p4, p0, p2, p1}, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/recents/anim/HyperRemoteTransition;Lcom/miui/home/recents/anim/FastLaunchWindowElement;Lcom/miui/home/recents/anim/AllElementParams;Lcom/miui/home/recents/FastLaunchData;)V

    invoke-virtual {p3, v0}, Lcom/miui/home/library/utils/LooperExecutor;->executeAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startRecentAnimation()V
    .locals 3

    .line 332
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->useFastLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    invoke-super {p0}, Lcom/miui/home/recents/anim/WindowElement;->startRecentAnimation()V

    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecentAnimation  windowTransitionCompat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getWindowTransitionCompat()Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getWindowTransitionCompat()Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->isRecentTransitionRequested()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 337
    iget-object p0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->TAG:Ljava/lang/String;

    const-string v0, "has request recent shell"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 340
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 341
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 342
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getWindowTransitionCompat()Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->onRecentsTransitionRequest()V

    .line 344
    :cond_4
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->startRecentsAnimationForFastLaunch()Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    move-result-object v0

    .line 343
    iput-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    :cond_5
    return-void
.end method

.method public useFastLaunch()Z
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMFastLaunchData()Lcom/miui/home/recents/FastLaunchData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMFastLaunchData()Lcom/miui/home/recents/FastLaunchData;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/FastLaunchData;->isOpen()Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
