.class public Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;
.super Ljava/lang/Object;
.source "SoscSplitScreenController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoscSplitStateController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsEnable:Z

.field private mIsFold:Z

.field private mIsPad:Z

.field private mPreState:I

.field private mPreloadBoundsLandLeftOrTopFold_1_1:Landroid/graphics/Rect;

.field private mPreloadBoundsLandLeftOrTopPad_1_1:Landroid/graphics/Rect;

.field private mPreloadBoundsLandLeftOrTopPad_1_2:Landroid/graphics/Rect;

.field private mPreloadBoundsLandLeftOrTopPad_2_1:Landroid/graphics/Rect;

.field private mPreloadBoundsLandRightOrBottomFold_1_1:Landroid/graphics/Rect;

.field private mPreloadBoundsLandRightOrBottomPad_1_1:Landroid/graphics/Rect;

.field private mPreloadBoundsLandRightOrBottomPad_1_2:Landroid/graphics/Rect;

.field private mPreloadBoundsLandRightOrBottomPad_2_1:Landroid/graphics/Rect;

.field private mPreloadBoundsPortLeftOrTopFold_1_1:Landroid/graphics/Rect;

.field private mPreloadBoundsPortLeftOrTopPad_1_1:Landroid/graphics/Rect;

.field private mPreloadBoundsPortRightOrBottomFold_1_1:Landroid/graphics/Rect;

.field private mPreloadBoundsPortRightOrBottomPad_1_1:Landroid/graphics/Rect;

.field private mPreloadLargeBoundsLandLeftOrTopFold_1_1:Landroid/graphics/Rect;

.field private mPreloadLargeBoundsLandRightOrBottomFold_1_1:Landroid/graphics/Rect;

.field private mPreloadLargeBoundsPortLeftOrTopFold_1_1:Landroid/graphics/Rect;

.field private mPreloadLargeBoundsPortRightOrBottomFold_1_1:Landroid/graphics/Rect;

.field private mPreloadMinimizedSize:I

.field private final mSoscEnableObserver:Landroid/database/ContentObserver;

.field private mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

.field protected final mSoscSplitScreenListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSoscSplitScreenObserver:Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;

.field private mState:I


# direct methods
.method public static synthetic $r8$lambda$aVM2AffIYbESIZ7qsiEpWGvdOT0(I)[Landroid/view/RemoteAnimationTarget;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->lambda$onStartingSplitLegacy$3(I)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kdM2XL1pfpdLGHUyVQ319oN66FQ(I)[Landroid/view/RemoteAnimationTarget;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->lambda$onGoingToRecentsLegacy$1(I)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$l5_S6gof5Mi293RI4lPKvHsLRao(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->lambda$onStartingSplitLegacy$2(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$s-rdMrnJQV-cE1KcyY_heZXy-aQ(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->lambda$onGoingToRecentsLegacy$0(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    return p0
.end method

.method protected constructor <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mState:I

    .line 40
    iput v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreState:I

    .line 41
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_1_2:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_1_2:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_1_1:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_1_1:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_2_1:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_2_1:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortLeftOrTopPad_1_1:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortRightOrBottomPad_1_1:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopFold_1_1:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomFold_1_1:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortLeftOrTopFold_1_1:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortRightOrBottomFold_1_1:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadLargeBoundsLandLeftOrTopFold_1_1:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadLargeBoundsLandRightOrBottomFold_1_1:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadLargeBoundsPortLeftOrTopFold_1_1:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadLargeBoundsPortRightOrBottomFold_1_1:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$1;-><init>(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscEnableObserver:Landroid/database/ContentObserver;

    .line 282
    new-instance v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$2;-><init>(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenObserver:Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mIsEnable:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mIsEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;)Z
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSoscEnable()Z

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;
    .locals 1

    .line 67
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    return-object v0
.end method

.method private isSoscEnable()Z
    .locals 2

    .line 101
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wmshell.sosc_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIntFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private static synthetic lambda$onGoingToRecentsLegacy$0(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 1

    .line 534
    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onGoingToRecentsLegacy$1(I)[Landroid/view/RemoteAnimationTarget;
    .locals 0

    .line 536
    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method

.method private static synthetic lambda$onStartingSplitLegacy$2(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 1

    .line 561
    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onStartingSplitLegacy$3(I)[Landroid/view/RemoteAnimationTarget;
    .locals 0

    .line 563
    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method

.method private unregisterSoScSplitScreenListener()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenObserver:Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->unregisterSoScSplitScreenListener(Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string v0, "Failed call unregisterSoScSplitScreenListener"

    .line 232
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public addSoscSplitScreenListener(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public exitSplitScreen(I)V
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    .line 360
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->exitSplitScreen(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string p1, "Failed call exitSoscSplitScreen"

    .line 362
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getPreloadBoundsLandLeftOrTopFold_1_1()Landroid/graphics/Rect;
    .locals 1

    .line 187
    sget-boolean v0, Lcom/android/systemui/shared/recents/utilities/Utilities;->sIsLargeScreenMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadLargeBoundsLandLeftOrTopFold_1_1:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    return-object v0

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopFold_1_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsLandLeftOrTopPad_1_1()Landroid/graphics/Rect;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_1_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsLandLeftOrTopPad_1_2()Landroid/graphics/Rect;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_1_2:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsLandLeftOrTopPad_2_1()Landroid/graphics/Rect;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_2_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsLandRightOrBottomFold_1_1()Landroid/graphics/Rect;
    .locals 1

    .line 194
    sget-boolean v0, Lcom/android/systemui/shared/recents/utilities/Utilities;->sIsLargeScreenMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadLargeBoundsLandRightOrBottomFold_1_1:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    return-object v0

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomFold_1_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsLandRightOrBottomPad_1_1()Landroid/graphics/Rect;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_1_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsLandRightOrBottomPad_1_2()Landroid/graphics/Rect;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_1_2:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsLandRightOrBottomPad_2_1()Landroid/graphics/Rect;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_2_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsPortLeftOrTopFold_1_1()Landroid/graphics/Rect;
    .locals 1

    .line 201
    sget-boolean v0, Lcom/android/systemui/shared/recents/utilities/Utilities;->sIsLargeScreenMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadLargeBoundsPortLeftOrTopFold_1_1:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    return-object v0

    .line 204
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortLeftOrTopFold_1_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsPortLeftOrTopPad_1_1()Landroid/graphics/Rect;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortLeftOrTopPad_1_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsPortRightOrBottomFold_1_1()Landroid/graphics/Rect;
    .locals 1

    .line 208
    sget-boolean v0, Lcom/android/systemui/shared/recents/utilities/Utilities;->sIsLargeScreenMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadLargeBoundsPortRightOrBottomFold_1_1:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    return-object v0

    .line 211
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortRightOrBottomFold_1_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsPortRightOrBottomPad_1_1()Landroid/graphics/Rect;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortRightOrBottomPad_1_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadMinimizedSize()I
    .locals 0

    .line 151
    iget p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadMinimizedSize:I

    return p0
.end method

.method public getSoScSplitInfo()Landroid/os/Bundle;
    .locals 2

    .line 589
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 593
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->getSoScSplitInfo()Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string v1, "Failed call getSoScSplitInfo"

    .line 595
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getState()I
    .locals 0

    .line 334
    iget p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mState:I

    return p0
.end method

.method public initSoscSplitScreen(Lcom/android/wm/shell/sosc/ISoScSplitScreen;Landroid/content/Context;ZZZLcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    .line 77
    iput-object p2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mContext:Landroid/content/Context;

    .line 78
    iput-boolean p3, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mIsPad:Z

    .line 79
    iput-boolean p4, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mIsFold:Z

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->registerSoScSplitScreenListener()V

    .line 81
    invoke-virtual {p0, p5}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->updatePreloadBounds(Z)V

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSoscEnable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mIsEnable:Z

    .line 83
    iget-object p1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "wmshell.sosc_enable"

    .line 84
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscEnableObserver:Landroid/database/ContentObserver;

    const/4 p4, 0x0

    .line 83
    invoke-virtual {p1, p2, p4, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initSoscSplitScreen: mIsEnable = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mIsEnable:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SoscSplitStateController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;

    .line 88
    invoke-interface {p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;->onInitSoscSplitScreen()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isHalfSplitMode()Z
    .locals 1

    .line 325
    iget p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mState:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isNormalMode()Z
    .locals 1

    .line 321
    iget p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mState:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPreHalfSplitMode()Z
    .locals 1

    .line 367
    iget p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreState:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isSplitMode()Z
    .locals 1

    .line 330
    iget p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportSosc()Z
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mIsEnable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onGestureEnd(I)V
    .locals 2

    const-string v0, "SoscSplitStateController"

    .line 613
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    .line 617
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->onGestureEnd(I)V

    .line 618
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGestureEnd = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed call onGestureEnd"

    .line 620
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onGestureStart(I)V
    .locals 2

    const-string v0, "SoscSplitStateController"

    .line 601
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    .line 605
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->onGestureStart(I)V

    .line 606
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGestureStart: touchRange = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed call onGestureStart"

    .line 608
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onGoingToRecentsLegacy([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 532
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$$ExternalSyntheticLambda4;

    .line 533
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$$ExternalSyntheticLambda0;

    .line 535
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$$ExternalSyntheticLambda2;

    .line 536
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/RemoteAnimationTarget;

    .line 537
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 541
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string p1, "Failed call onGoingToRecentsLegacy"

    .line 544
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected onPreSoScStateChangedInner(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v9, p4

    const-string v1, "SoscSplitStateController"

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyPreSoScStateChanged, preState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reszing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p5

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", rootBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p1

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", lotBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\uff0c robBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p3

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isMinimized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p6

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", minimizedPosition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p7

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", minimizedSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iput v9, v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreState:I

    .line 259
    iget-object v7, v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    monitor-enter v7

    .line 260
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v17, v7

    move/from16 v7, p7

    move/from16 v8, p8

    .line 261
    :try_start_1
    invoke-interface/range {v0 .. v8}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;->onPreSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V

    move/from16 v8, p8

    move-object/from16 v7, v17

    goto :goto_0

    :cond_0
    move-object/from16 v17, v7

    .line 263
    monitor-exit v17

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v17, v7

    :goto_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method protected onSoscStateChangedInner(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v10, p4

    const-string v1, "SoscSplitStateController"

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySoscStateChanged, state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", rootBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p1

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", lotBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", robBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p3

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", lotTopTaskInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p5

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", robTopTaskInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p6

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isMinimized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p7

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", minimizedPosition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", minimizedSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p9

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iput v10, v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mState:I

    .line 274
    iput v10, v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreState:I

    .line 275
    iget-object v6, v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    monitor-enter v6

    .line 276
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v17, v6

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 277
    :try_start_1
    invoke-interface/range {v0 .. v9}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;->onSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V

    move/from16 v9, p7

    move/from16 v8, p8

    move/from16 v7, p9

    move-object/from16 v6, v17

    goto :goto_0

    :cond_0
    move-object/from16 v17, v6

    .line 279
    monitor-exit v17

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v17, v6

    :goto_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public onStartingSplitLegacy([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 559
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$$ExternalSyntheticLambda3;

    .line 560
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$$ExternalSyntheticLambda0;

    .line 562
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$$ExternalSyntheticLambda1;

    .line 563
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/RemoteAnimationTarget;

    .line 564
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 568
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string p1, "Failed call onStartingSplitLegacy"

    .line 571
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected registerSoScSplitScreenListener()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenObserver:Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->registerSoScSplitScreenListener(Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string v0, "Failed call registerSoScSplitScreenListener"

    .line 221
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public removeSoscSplitScreenListener(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 245
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeTaskFromSplit(I)V
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    .line 345
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->removeTaskFromSplit(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string p1, "Failed call removeTaskFromSplit"

    .line 347
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSplitRatio(F)V
    .locals 2

    const-string v0, "SoscSplitStateController"

    .line 577
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-eqz p0, :cond_1

    sget-boolean v1, Lcom/android/systemui/shared/recents/utilities/Utilities;->sIsLargeScreenMode:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->setSplitRatio(F)V

    .line 582
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSplitRatio: ratio = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed call setSplitRatio"

    .line 584
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public snapSplitToNextRatio(I)V
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    .line 378
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->snapSplitToNextRatio(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string p1, "Failed call snapSplitToNextRatio"

    .line 380
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    .line 422
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string p1, "Failed call startIntent"

    .line 424
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V
    .locals 9

    const-string v0, "SoscSplitStateController"

    move-object v1, p0

    .line 465
    iget-object v1, v1, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez v1, :cond_0

    return-void

    .line 469
    :cond_0
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->getWrapped()Landroid/view/RemoteAnimationAdapter;

    move-result-object v8

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startIntentAndTaskWithLegacyTransition: pendingIntent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed call startIntentAndTaskWithLegacyTransition"

    .line 472
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startIntentsWithLegacyTransition(Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/os/Bundle;IFLcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V
    .locals 8

    .line 496
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string p0, "SoscSplitStateController"

    if-nez p7, :cond_1

    const/4 p7, 0x0

    goto :goto_0

    .line 500
    :cond_1
    :try_start_0
    invoke-virtual {p7}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->getWrapped()Landroid/view/RemoteAnimationAdapter;

    move-result-object p7

    :goto_0
    move-object v7, p7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startIntentsWithLegacyTransition(Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    .line 501
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "startIntentsWithLegacyTransition: pendingIntent1 = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", pendingIntent2 = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Failed call startIntentsWithLegacyTransition"

    .line 503
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 6

    .line 404
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 408
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string p1, "Failed call startShortcut"

    .line 410
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V
    .locals 8

    .line 481
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez v0, :cond_0

    return-void

    .line 485
    :cond_0
    :try_start_0
    invoke-virtual {p7}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->getWrapped()Landroid/view/RemoteAnimationAdapter;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string p1, "Failed call startShortcutAndTaskWithLegacyTransition"

    .line 487
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startSmallFreeformFromRecent(Landroid/app/ActivityManager$RunningTaskInfo;I)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public startSplitWithIntents(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V
    .locals 1

    .line 511
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "SoscSplitStateController"

    if-nez p4, :cond_1

    const/4 p4, 0x0

    goto :goto_0

    .line 515
    :cond_1
    :try_start_0
    invoke-virtual {p4}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getWrapped()Landroid/window/RemoteTransition;

    move-result-object p4

    :goto_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startSplitWithIntentsForMiui(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/window/RemoteTransition;)V

    .line 516
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "startSplitWithIntents: pendingIntent1 = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", pendingIntent2 = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Failed call startSplitWithIntents"

    .line 518
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public startTask(IILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "SoscSplitStateController"

    .line 389
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    .line 393
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startTask(IILandroid/os/Bundle;)V

    .line 394
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "startTask: taskId = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed call startTask"

    .line 396
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V
    .locals 9

    const-string v0, "SoscSplitStateController"

    move-object v1, p0

    .line 449
    iget-object v1, v1, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez v1, :cond_0

    return-void

    .line 453
    :cond_0
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getWrapped()Landroid/window/RemoteTransition;

    move-result-object v8

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;)V

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTasks: taskId1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", taskId2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed call startTasks"

    .line 456
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V
    .locals 9

    const-string v0, "SoscSplitStateController"

    move-object v1, p0

    .line 433
    iget-object v1, v1, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez v1, :cond_0

    return-void

    .line 437
    :cond_0
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->getWrapped()Landroid/view/RemoteAnimationAdapter;

    move-result-object v8

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTasksWithLegacyTransition: taskId1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", taskId2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed call startTasksWithLegacyTransition"

    .line 440
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateDividerFixedState(Z)V
    .locals 2

    const-string v0, "SoscSplitStateController"

    .line 626
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    .line 630
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->updateDividerFixedState(Z)V

    .line 631
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDividerFixedState: isFixed = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed call updateDividerFixedState"

    .line 633
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updatePreloadBounds(Z)V
    .locals 3

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getSoScSplitInfo()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SoscSplitStateController"

    if-nez p1, :cond_0

    const-string/jumbo p0, "updatePreloadBounds: bundle is null"

    .line 107
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "PreloadMinimizedSize"

    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadMinimizedSize:I

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreloadMinimizedSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadMinimizedSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mIsPad:Z

    if-eqz v1, :cond_1

    const-string v1, "PadPreloadLandLeftOrTopBounds1_2"

    .line 113
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_1_2:Landroid/graphics/Rect;

    const-string v1, "PadPreloadLandRightOrBottomBounds1_2"

    .line 114
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_1_2:Landroid/graphics/Rect;

    const-string v1, "PadPreloadLandLeftOrTopBounds1_1"

    .line 115
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_1_1:Landroid/graphics/Rect;

    const-string v1, "PadPreloadLandRightOrBottomBounds1_1"

    .line 116
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_1_1:Landroid/graphics/Rect;

    const-string v1, "PadPreloadLandLeftOrTopBounds2_1"

    .line 117
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_2_1:Landroid/graphics/Rect;

    const-string v1, "PadPreloadLandRightOrBottomBounds2_1"

    .line 118
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_2_1:Landroid/graphics/Rect;

    const-string v1, "PadPreloadPortLeftOrTopBounds1_1"

    .line 119
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortLeftOrTopPad_1_1:Landroid/graphics/Rect;

    const-string v1, "PadPreloadPortRightOrBottomBounds1_1"

    .line 120
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortRightOrBottomPad_1_1:Landroid/graphics/Rect;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePreloadBounds: mPreloadBoundsLandLeftOrTopPad_1_2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_1_2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreloadBoundsLandRightOrBottomPad_1_2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_1_2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreloadBoundsLandLeftOrTopPad_1_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_1_1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreloadBoundsLandRightOrBottomPad_1_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_1_1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreloadBoundsLandLeftOrTopPad_2_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_2_1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreloadBoundsLandRightOrBottomPad_2_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_2_1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0cmPreloadBoundsPortLeftOrTopPad_1_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortLeftOrTopPad_1_1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreloadBoundsPortRightOrBottomPad_1_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortRightOrBottomPad_1_1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mIsFold:Z

    if-eqz v1, :cond_2

    const-string v1, "FoldPreloadLandLeftOrTopBounds1_1"

    .line 131
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopFold_1_1:Landroid/graphics/Rect;

    const-string v1, "FoldPreloadLandRightOrBottomBounds1_1"

    .line 132
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomFold_1_1:Landroid/graphics/Rect;

    const-string v1, "FoldPreloadPortLeftOrTopBounds1_1"

    .line 133
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortLeftOrTopFold_1_1:Landroid/graphics/Rect;

    const-string v1, "FoldPreloadPortRightOrBottomBounds1_1"

    .line 134
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortRightOrBottomFold_1_1:Landroid/graphics/Rect;

    const-string v1, "FoldPreloadLandLeftOrTopLargeBounds1_1"

    .line 135
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadLargeBoundsLandLeftOrTopFold_1_1:Landroid/graphics/Rect;

    const-string v1, "FoldPreloadLandRightOrBottomLargeBounds1_1"

    .line 136
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadLargeBoundsLandRightOrBottomFold_1_1:Landroid/graphics/Rect;

    const-string v1, "FoldPreloadPortLeftOrTopLargeBounds1_1"

    .line 137
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadLargeBoundsPortLeftOrTopFold_1_1:Landroid/graphics/Rect;

    const-string v1, "FoldPreloadPortRightOrBottomLargeBounds1_1"

    .line 138
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadLargeBoundsPortRightOrBottomFold_1_1:Landroid/graphics/Rect;

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePreloadBounds: mPreloadBoundsLandLeftOrTopFold_1_1 = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopFold_1_1:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreloadBoundsLandRightOrBottomFold_1_1 = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomFold_1_1:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreloadBoundsPortLeftOrTopFold_1_1 = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortLeftOrTopFold_1_1:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreloadBoundsPortRightOrBottomFold_1_1 = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortRightOrBottomFold_1_1:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreloadLargeBoundsLandLeftOrTopFold_1_1 = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadLargeBoundsLandLeftOrTopFold_1_1:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreloadLargeBoundsLandRightOrBottomFold_1_1 = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadLargeBoundsLandRightOrBottomFold_1_1:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreloadLargeBoundsPortLeftOrTopFold_1_1 = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadLargeBoundsPortLeftOrTopFold_1_1:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreloadLargeBoundsPortRightOrBottomFold_1_1 = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadLargeBoundsPortRightOrBottomFold_1_1:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
