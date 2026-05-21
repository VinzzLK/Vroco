.class public Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;
.super Ljava/lang/Object;
.source "UserGestureProxyPositionHelper.java"


# static fields
.field public static final ANIM_OPENED_ROTATION_NONE:I = -0x1

.field private static final GESTURE_POSITION_BOTTOM:I = 0x1

.field private static final GESTURE_POSITION_LEFT:I = 0x2

.field private static final GESTURE_POSITION_RIGHT:I = 0x3

.field private static final GESTURE_STUB_NONE:I = -0x1

.field private static final MSG_LANDSCAPE_BREAKE_GESTURE_PROXY_DELAY:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "UserGestureProxyPositionHelper"

.field private static mAnimOpenedRotation:I = 0x0

.field private static mIsAnimationRunning:Z = false

.field private static final mMainThreadExecutor:Lcom/android/systemui/shared/recents/utilities/MainThreadExecutor;

.field private static mMaintainGestureProxyPosition:I = -0x1

.field private static final resetGestureProxyRotationRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/utilities/MainThreadExecutor;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->mMainThreadExecutor:Lcom/android/systemui/shared/recents/utilities/MainThreadExecutor;

    .line 26
    new-instance v0, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper$1;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper$1;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->resetGestureProxyRotationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 9
    sget-boolean v0, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->mIsAnimationRunning:Z

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0

    .line 9
    sput p0, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->mAnimOpenedRotation:I

    return p0
.end method

.method static synthetic access$202(I)I
    .locals 0

    .line 9
    sput p0, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->mMaintainGestureProxyPosition:I

    return p0
.end method

.method public static getAnimOpenedRotation(ZZ)I
    .locals 0

    if-eqz p0, :cond_0

    .line 39
    sget p0, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->mAnimOpenedRotation:I

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getIsAnimationRunning()Z
    .locals 1

    .line 86
    sget-boolean v0, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->mIsAnimationRunning:Z

    return v0
.end method

.method public static getMaintainGestureProxyPosition()I
    .locals 1

    .line 73
    sget v0, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->mMaintainGestureProxyPosition:I

    return v0
.end method

.method public static isBottomPositionGesture(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isLandscapeDisplay(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isLeftOrRightPositionGesture(I)Z
    .locals 1

    .line 103
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->isLeftPositionGesture(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->isRightPositionGesture(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isLeftPositionGesture(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRightPositionGesture(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static postDelayClearGestureProxy(Z)V
    .locals 4

    if-eqz p0, :cond_0

    .line 50
    sget p0, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->mAnimOpenedRotation:I

    add-int/lit8 p0, p0, 0x2

    rem-int/lit8 p0, p0, 0x4

    sput p0, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->mAnimOpenedRotation:I

    .line 52
    :cond_0
    sget-object p0, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->mMainThreadExecutor:Lcom/android/systemui/shared/recents/utilities/MainThreadExecutor;

    invoke-virtual {p0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->resetGestureProxyRotationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    invoke-virtual {p0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static setIsAnimationRunning(Ljava/lang/Boolean;)V
    .locals 0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->mIsAnimationRunning:Z

    return-void
.end method

.method public static setMaintainGestureProxyPosition(I)V
    .locals 2

    .line 77
    sget-object v0, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->mMainThreadExecutor:Lcom/android/systemui/shared/recents/utilities/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->resetGestureProxyRotationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    sput p0, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->mMaintainGestureProxyPosition:I

    return-void
.end method

.method public static updateAnimOpenedRotation(I)V
    .locals 2

    .line 61
    invoke-static {}, Lcom/miui/launcher/utils/DisplayManagerGlobalUtils;->getRotation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAnimOpenedRotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserGestureProxyPositionHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sput p0, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->mAnimOpenedRotation:I

    goto :goto_1

    .line 67
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->isLandscapeDisplay(I)Z

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 v0, v0, 0x2

    .line 68
    rem-int/lit8 v0, v0, 0x4

    sput v0, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->mAnimOpenedRotation:I

    :cond_2
    :goto_1
    return-void
.end method
