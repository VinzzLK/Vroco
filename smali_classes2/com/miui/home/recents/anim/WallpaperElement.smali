.class public final Lcom/miui/home/recents/anim/WallpaperElement;
.super Ljava/lang/Object;
.source "WallpaperElement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/anim/WallpaperElement$Companion;
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


# static fields
.field public static final Companion:Lcom/miui/home/recents/anim/WallpaperElement$Companion;

.field private static final UPDATE_ZOOM_METHOD:Ljava/lang/reflect/Method;

.field private static final ZOOM_ENABLED:Z

.field private static final dampingRatio:F

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/miui/home/recents/anim/WallpaperElement<",
            "Lcom/miui/home/recents/anim/WallpaperParam;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final response:F


# instance fields
.field private final HOME_WALLPAPER_SCALE_BASE:Ljava/lang/String;

.field private final mAnimListener:Lcom/miui/home/recents/anim/WallpaperElement$mAnimListener$1;

.field private mHandler:Landroid/os/Handler;

.field private mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private final mWallpaperScaleObserver:Landroid/database/ContentObserver;

.field private mWorkspace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/miui/home/recents/anim/WallpaperElement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/WallpaperElement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/anim/WallpaperElement;->Companion:Lcom/miui/home/recents/anim/WallpaperElement$Companion;

    .line 63
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v3, Lcom/miui/home/recents/anim/WallpaperElement$Companion$instance$2;->INSTANCE:Lcom/miui/home/recents/anim/WallpaperElement$Companion$instance$2;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    sput-object v2, Lcom/miui/home/recents/anim/WallpaperElement;->instance$delegate:Lkotlin/Lazy;

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMiuiLiteOrMiddleVersion()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    sput-boolean v2, Lcom/miui/home/recents/anim/WallpaperElement;->ZOOM_ENABLED:Z

    if-eqz v2, :cond_0

    .line 68
    invoke-static {v0}, Lcom/miui/home/recents/anim/WallpaperElement$Companion;->access$findUpdateZoomMethod(Lcom/miui/home/recents/anim/WallpaperElement$Companion;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    sput-object v1, Lcom/miui/home/recents/anim/WallpaperElement;->UPDATE_ZOOM_METHOD:Ljava/lang/reflect/Method;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 70
    sput v0, Lcom/miui/home/recents/anim/WallpaperElement;->dampingRatio:F

    const v0, 0x3f19999a    # 0.6f

    .line 71
    sput v0, Lcom/miui/home/recents/anim/WallpaperElement;->response:F

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-class v1, Landroid/app/WallpaperManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/miui/home/recents/anim/WallpaperElement;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 85
    new-instance v0, Lcom/miui/home/recents/anim/WallpaperElement$mAnimListener$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/anim/WallpaperElement$mAnimListener$1;-><init>(Lcom/miui/home/recents/anim/WallpaperElement;)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/WallpaperElement;->mAnimListener:Lcom/miui/home/recents/anim/WallpaperElement$mAnimListener$1;

    const-string v1, "home_wallpaper_scale_base"

    .line 164
    iput-object v1, p0, Lcom/miui/home/recents/anim/WallpaperElement;->HOME_WALLPAPER_SCALE_BASE:Ljava/lang/String;

    .line 171
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/home/recents/anim/WallpaperElement;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance v2, Lcom/miui/home/recents/anim/WallpaperElement$mWallpaperScaleObserver$1;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/recents/anim/WallpaperElement$mWallpaperScaleObserver$1;-><init>(Lcom/miui/home/recents/anim/WallpaperElement;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/recents/anim/WallpaperElement;->mWallpaperScaleObserver:Landroid/database/ContentObserver;

    .line 94
    sget v1, Lcom/miui/home/recents/anim/WallpaperElement;->response:F

    invoke-direct {p0, v1}, Lcom/miui/home/recents/anim/WallpaperElement;->getStiffness(F)F

    move-result v1

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v3, Lcom/miui/home/recents/anim/SpringBundle$Builder;

    invoke-direct {v3}, Lcom/miui/home/recents/anim/SpringBundle$Builder;-><init>()V

    const-string v4, "zoom"

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setType(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v3

    .line 98
    sget v5, Lcom/miui/home/recents/anim/WallpaperElement;->dampingRatio:F

    invoke-virtual {v3, v5}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setDampingRatio(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v3

    .line 99
    invoke-virtual {v3, v1}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setStiffness(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v1

    const v3, 0x3b03126f    # 0.002f

    .line 100
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/SpringBundle$Builder;->build()Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v1

    .line 96
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-direct {p0}, Lcom/miui/home/recents/anim/WallpaperElement;->updateDefaultScale()V

    .line 105
    invoke-direct {p0}, Lcom/miui/home/recents/anim/WallpaperElement;->registerHomeWallpaperScaleBaseObserver()V

    .line 106
    new-instance v1, Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-direct {v1, v2}, Lcom/miui/home/recents/anim/HyperSpringAnimation;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/miui/home/recents/anim/WallpaperElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    .line 107
    invoke-virtual {v1, v0}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setUpdateListener(Lcom/miui/home/recents/anim/HyperSpringAnimation$OnUpdateListener;)V

    .line 108
    iget-object p0, p0, Lcom/miui/home/recents/anim/WallpaperElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p0, v4}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object p0

    sget-object v0, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getDefaultScale()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentValue:F

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/anim/WallpaperElement;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 61
    sget-object v0, Lcom/miui/home/recents/anim/WallpaperElement;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$updateDefaultScale(Lcom/miui/home/recents/anim/WallpaperElement;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/miui/home/recents/anim/WallpaperElement;->updateDefaultScale()V

    return-void
.end method

.method public static final synthetic access$updateTargetParams(Lcom/miui/home/recents/anim/WallpaperElement;F)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/WallpaperElement;->updateTargetParams(F)V

    return-void
.end method

.method private final getDefaultScaleFromSetting(Landroid/content/Context;)F
    .locals 4

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/anim/WallpaperElement;->HOME_WALLPAPER_SCALE_BASE:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHomeWallpaperScaleFloat: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "WallpaperElement"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x3f99999a    # 1.2f

    cmpl-float v3, p0, p1

    if-ltz v3, :cond_0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    cmpg-float p1, p0, v0

    if-gtz p1, :cond_1

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    return p0
.end method

.method private final getStiffness(F)F
    .locals 0

    .line 112
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result p0

    mul-float/2addr p1, p0

    .line 113
    invoke-static {p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->calculateStiffFromResponse(F)F

    move-result p0

    return p0
.end method

.method private final registerHomeWallpaperScaleBaseObserver()V
    .locals 3

    .line 166
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/miui/home/recents/anim/WallpaperElement;->HOME_WALLPAPER_SCALE_BASE:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 168
    iget-object p0, p0, Lcom/miui/home/recents/anim/WallpaperElement;->mWallpaperScaleObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 166
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private final updateDefaultScale()V
    .locals 3

    .line 179
    sget-object v0, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const-string v2, "getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/miui/home/recents/anim/WallpaperElement;->getDefaultScaleFromSetting(Landroid/content/Context;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->setDefaultScale(F)V

    return-void
.end method

.method private final updateDynamicParam(FF)V
    .locals 1

    .line 157
    invoke-direct {p0, p2}, Lcom/miui/home/recents/anim/WallpaperElement;->getStiffness(F)F

    move-result p2

    .line 158
    iget-object p0, p0, Lcom/miui/home/recents/anim/WallpaperElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string v0, "zoom"

    .line 159
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setDampingRation(Ljava/lang/String;F)V

    .line 160
    invoke-virtual {p0, v0, p2}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setStiffness(Ljava/lang/String;F)V

    return-void
.end method

.method private final updateTargetParams(F)V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/miui/home/recents/anim/WallpaperElement;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x3f600000    # -5.0f

    mul-float/2addr p1, v3

    const/high16 v3, 0x40c00000    # 6.0f

    add-float/2addr p1, v3

    .line 133
    :try_start_0
    invoke-static {v2, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p1

    invoke-static {v1, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    .line 134
    sget-object v1, Lcom/miui/home/recents/anim/WallpaperElement;->UPDATE_ZOOM_METHOD:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/anim/WallpaperElement;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WallpaperElement"

    const-string v0, "WallpaperElement updateTargetParams failed"

    .line 136
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public animTo(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.anim.WallpaperParam"

    .line 142
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/anim/WallpaperParam;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animTo   zoomOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WallpaperParam;->getZoomOut()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperElement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WallpaperParam;->getDampingRatio()F

    move-result v0

    .line 145
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WallpaperParam;->getResponse()F

    move-result v1

    .line 146
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/anim/WallpaperElement;->updateDynamicParam(FF)V

    .line 148
    iget-object v0, p0, Lcom/miui/home/recents/anim/WallpaperElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WallpaperParam;->getZoomOut()F

    move-result p1

    const-string v1, "zoom"

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setFinalPosition(Ljava/lang/String;F)V

    .line 150
    iget-object p1, p0, Lcom/miui/home/recents/anim/WallpaperElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/miui/home/recents/anim/WallpaperElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentValue:F

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->setStartValue(Ljava/lang/String;F)V

    .line 152
    iget-object p0, p0, Lcom/miui/home/recents/anim/WallpaperElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->start()V

    :cond_0
    return-void
.end method

.method public final bindView(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/miui/home/recents/anim/WallpaperElement;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-void
.end method

.method public setTo(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/miui/home/recents/anim/WallpaperElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/miui/home/recents/anim/WallpaperElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->cancel()V

    :cond_0
    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.anim.WallpaperParam"

    .line 124
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/anim/WallpaperParam;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTo   zoomOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WallpaperParam;->getZoomOut()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperElement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/miui/home/recents/anim/WallpaperElement;->mSpringAnimation:Lcom/miui/home/recents/anim/HyperSpringAnimation;

    const-string v1, "zoom"

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WallpaperParam;->getZoomOut()F

    move-result v1

    iput v1, v0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentValue:F

    .line 127
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WallpaperParam;->getZoomOut()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/WallpaperElement;->updateTargetParams(F)V

    return-void
.end method
