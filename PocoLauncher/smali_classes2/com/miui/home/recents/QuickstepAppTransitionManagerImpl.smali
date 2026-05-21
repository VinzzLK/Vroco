.class public abstract Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;
.super Lcom/miui/home/recents/LauncherAppTransitionManager;
.source "QuickstepAppTransitionManagerImpl.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;
    }
.end annotation


# static fields
.field public static TRANSLUCENT_PACKAGE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityOptions:Landroid/app/ActivityOptions;

.field private mCloseFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

.field private mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

.field mContext:Landroid/content/Context;

.field private final mDragLayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/DragLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

.field mIconLaunchFinishRunnable:Ljava/lang/Runnable;

.field mIsDoAnimationFinish:Z

.field private mIsRegisterRemoteTransition:Z

.field private final mIsRtl:Z

.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchingViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedResetContentView:Z

.field private mNoIconRadius:F

.field private mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

.field private mOpenWidgetFromAssistantTransition:Landroid/window/IRemoteTransition;

.field private mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

.field private mRemoteAnimationAdapterCompat:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

.field private mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

.field private mRemoteTransition:Landroid/window/IRemoteTransition;

.field private mRemoteTransitionCompat:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

.field mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

.field mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

.field private mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

.field private mWidgetRemoteTransitionCompat:Lcom/android/systemui/shared/system/RemoteTransitionCompat;


# direct methods
.method public static synthetic $r8$lambda$D-7gFi06TDBOHG6tK3_GEOxbBfU()V
    .locals 0

    invoke-static {}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$registerRemoteTransitions$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$FykqbTkMvF5Bs7oDEdzaizpOs2A(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RemoteAnimationProvider;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$setRemoteAnimationProvider$1(Lcom/miui/home/recents/util/RemoteAnimationProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ffA1QAZy5tnghHl5nxdCdkLmQwE(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$openAnimUpdate$2(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$rElIjWt3op-WcRlGqemOS8S6H9s(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$resetContentView$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$we-kqlNn7lVHOlwiZ0Lj9Wpctto()V
    .locals 0

    invoke-static {}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$getWallpaperOpenRunner$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$yTG0E4xH4MDOTedG6h5nSuR5vgo(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$onFocusNotifyStartActivityFinish$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->TRANSLUCENT_PACKAGE:Ljava/util/ArrayList;

    const-string v1, "com.android.quicksearchbox"

    .line 429
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 200
    invoke-direct {p0}, Lcom/miui/home/recents/LauncherAppTransitionManager;-><init>()V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 147
    iput v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNoIconRadius:F

    .line 162
    new-instance v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteTransition:Landroid/window/IRemoteTransition;

    .line 179
    new-instance v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenWidgetFromAssistantTransition:Landroid/window/IRemoteTransition;

    const/4 v0, 0x0

    .line 305
    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsDoAnimationFinish:Z

    .line 201
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 204
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mDragLayer:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mDragLayer:Ljava/lang/ref/WeakReference;

    .line 208
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    .line 209
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsRtl:Z

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 212
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    # VrocoLauncher fix: registerRemoteAnimations/Transitions require system permission.
    # As a user app, these calls throw SecurityException. Wrap in try-catch so the
    # launcher starts normally and falls back to getActivityLaunchOptions() animation.

    :try_start_0
    .line 214
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->registerRemoteAnimations()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_register_anim

    :try_start_1
    .line 215
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->registerRemoteTransitions()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_register_trans

    goto :end_constructor

    :catch_register_anim
    move-exception v0
    const-string v1, "VrocoLauncher"
    const-string v2, "registerRemoteAnimations skipped (user app)"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_2
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->registerRemoteTransitions()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_register_trans
    goto :end_constructor

    :catch_register_trans
    move-exception v0
    const-string v1, "VrocoLauncher"
    const-string v2, "registerRemoteTransitions skipped (user app)"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :end_constructor
    return-void
.end method

.method private getNokeyguardTransitionFilter()Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;
    .locals 1

    .line 1089
    new-instance p0, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;-><init>()V

    .line 1091
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/WindowManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/WindowManagerWrapper;->getKeyGuardVisibilityTransitFlags()I

    move-result v0

    .line 1092
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->setNotFlags(I)V

    return-object p0
.end method

.method public static getRecentTasks(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    .line 893
    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    .line 894
    invoke-virtual {v0, p0, p1}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    if-nez p0, :cond_0

    .line 896
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 898
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private hasControlRemoteAppTransitionPermission()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private invalidateAdaptiveIconDrawable(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 0

    .line 1001
    instance-of p0, p1, Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz p0, :cond_0

    .line 1002
    check-cast p1, Lcom/miui/home/launcher/IShortcutIcon;

    invoke-interface {p1}, Lcom/miui/home/launcher/DesktopIcon;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1003
    instance-of p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz p1, :cond_0

    .line 1004
    check-cast p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->superInvalidateSelf()V

    :cond_0
    return-void
.end method

.method private isInAppModeGesture()Z
    .locals 1

    .line 1068
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1069
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1070
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isInAppModeGesture()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isPairIcon(Landroid/view/View;)Z
    .locals 1

    .line 1081
    instance-of v0, p0, Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz v0, :cond_0

    .line 1082
    check-cast p0, Lcom/miui/home/launcher/IShortcutIcon;

    .line 1083
    invoke-interface {p0}, Lcom/miui/home/launcher/IShortcutIcon;->isPairIcon()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getWallpaperOpenRunner$4()V
    .locals 4

    .line 758
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isAnimRunning()Z

    move-result v0

    const-string v1, "QuickstepAppTransitionManagerImpl"

    if-eqz v0, :cond_0

    const-string v0, "run setConnectAnimRunnable isAnimRunning return"

    .line 759
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 762
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    .line 763
    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_3

    .line 764
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "run setConnectAnimRunnable"

    .line 768
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 770
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 771
    invoke-virtual {v2}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 772
    invoke-virtual {v2}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    .line 774
    :cond_2
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v2

    .line 775
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v3

    .line 774
    invoke-virtual {v2, v0, v3, v1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->connectOpeningAnim(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;Lcom/miui/home/recents/GestureStateMachine;)V

    return-void

    :cond_3
    :goto_0
    const-string v0, "run setConnectAnimRunnable anim is null or not running"

    .line 765
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$onFocusNotifyStartActivityFinish$0()V
    .locals 0

    .line 280
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->resetContentView()V

    return-void
.end method

.method private static synthetic lambda$openAnimUpdate$2(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;F)V
    .locals 0

    .line 525
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onLaunchAppWindowAlphaChange(F)V

    return-void
.end method

.method private static synthetic lambda$registerRemoteTransitions$3()V
    .locals 3

    .line 571
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    const-string v1, "QuickstepAppTransitionManagerImpl"

    const-string v2, "run stop running anim runnable"

    .line 573
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setSkipCallExecuteFinish(Z)V

    .line 576
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 578
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getRecentAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    .line 580
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setSkipCallExecuteFinish(Z)V

    .line 581
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 583
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isExitAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getExitAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    .line 585
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setSkipCallExecuteFinish(Z)V

    .line 586
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$resetContentView$5()V
    .locals 3

    .line 1054
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1057
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1058
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1060
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isInAppModeGesture()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1061
    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenFinishOpenOrCloseApp(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setRemoteAnimationProvider$1(Lcom/miui/home/recents/util/RemoteAnimationProvider;)V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 402
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    :cond_0
    return-void
.end method

.method private static modifyRectFToHome(Lcom/miui/home/recents/util/ClipAnimationHelper;Landroid/graphics/RectF;)V
    .locals 1

    .line 433
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 436
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToHome(Landroid/graphics/RectF;)V

    return-void
.end method

.method public static openAnimUpdate(Landroid/graphics/RectF;Landroid/view/View;FFFZLcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ILcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/views/FloatingIconView;Lcom/miui/home/recents/FloatingIconLayer;Landroid/graphics/Rect;IIFZZFIZZ)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move/from16 v9, p21

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz p5, :cond_0

    move/from16 v12, p4

    goto :goto_0

    :cond_0
    const v12, 0x3dcccccd    # 0.1f

    sub-float v12, v1, v12

    const v13, 0x3e4cccce    # 0.20000002f

    div-float/2addr v12, v13

    .line 467
    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    if-eqz v3, :cond_1

    .line 470
    invoke-interface/range {p6 .. p6}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->needChangeIconAlpha()Z

    move-result v13

    if-eqz v13, :cond_1

    if-eqz p22, :cond_1

    move v12, v11

    .line 474
    :cond_1
    :goto_0
    invoke-virtual {v5, v12}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v13

    invoke-virtual {v13, p0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 476
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 479
    sget-object v8, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v8}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v8

    sub-float/2addr v8, v11

    const v13, 0x3e99999a    # 0.3f

    sub-float v13, v1, v13

    invoke-static {v10, v13}, Ljava/lang/Math;->max(FF)F

    move-result v10

    mul-float/2addr v8, v10

    add-float/2addr v8, v11

    if-eqz p23, :cond_2

    move v8, v11

    .line 483
    :cond_2
    invoke-virtual {v6, v11}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setScale(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 484
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v8

    iget v10, v6, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->scale:F

    invoke-virtual {v8, v10}, Lcom/miui/home/recents/anim/ConnectAnimManager;->setCurrentHomeScale(F)V

    .line 485
    invoke-virtual {v4, v7, v5, v6, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;I)Landroid/graphics/RectF;

    if-eqz p13, :cond_8

    .line 486
    invoke-virtual/range {p13 .. p13}, Lcom/miui/home/recents/FloatingIconLayer;->isReleaseOpenFloatingIconLayer()Z

    move-result v5

    if-nez v5, :cond_8

    cmpg-float v5, v12, v11

    if-gez v5, :cond_3

    .line 488
    invoke-static {v4, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->modifyRectFToHome(Lcom/miui/home/recents/util/ClipAnimationHelper;Landroid/graphics/RectF;)V

    .line 489
    invoke-virtual/range {p11 .. p11}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v4

    move/from16 v5, p15

    move/from16 v6, p16

    .line 490
    invoke-static {v5, v6, p0}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    div-float v2, v2, p17

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 p7, p13

    move-object/from16 p8, v4

    move-object/from16 p9, v0

    move/from16 p10, p2

    move/from16 p11, v2

    move/from16 p12, v5

    .line 489
    invoke-virtual/range {p7 .. p12}, Lcom/miui/home/recents/FloatingIconLayer;->showFloatingIcon(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;FFF)V

    goto :goto_2

    .line 493
    :cond_3
    invoke-virtual/range {p13 .. p13}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_5

    .line 497
    invoke-virtual/range {p12 .. p12}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_5

    .line 498
    new-instance v6, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v6, v8}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    const/4 v6, 0x0

    .line 499
    invoke-virtual {v8, v6}, Lcom/miui/home/recents/views/FloatingIconView;->setVisibility(I)V

    :cond_5
    const/4 v6, 0x0

    .line 501
    invoke-virtual {v4, v7, v5, v6, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;I)Landroid/graphics/RectF;

    if-eqz v8, :cond_8

    if-eqz v3, :cond_8

    .line 503
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v5

    if-nez v5, :cond_6

    .line 504
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v11

    invoke-virtual/range {p14 .. p14}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-interface/range {p6 .. p6}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    neg-float v5, v5

    .line 505
    invoke-virtual {p0, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 508
    :cond_6
    invoke-static {v4, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->modifyRectFToHome(Lcom/miui/home/recents/util/ClipAnimationHelper;Landroid/graphics/RectF;)V

    .line 510
    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isPairIcon(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_7

    cmpl-float v4, v12, v11

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    move v10, v11

    :goto_1
    div-float v2, v2, p17

    .line 513
    invoke-virtual {v8, p0, v10, v1, v2}, Lcom/miui/home/recents/views/FloatingIconView;->update(Landroid/graphics/RectF;FFF)V

    :cond_8
    :goto_2
    if-nez p18, :cond_9

    if-eqz v3, :cond_9

    .line 523
    invoke-interface/range {p6 .. p6}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->needChangeIconAlpha()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p5, :cond_9

    .line 525
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, v3, v12}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;F)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method private registerRemoteAnimations()V
    .locals 9

    .line 543
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 547
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->hasControlRemoteAppTransitionPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    new-instance v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;

    invoke-direct {v1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;-><init>()V

    .line 549
    new-instance v8, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWallpaperOpenRunner(Z)Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    move-result-object v3

    const-wide/16 v4, 0xfa

    const-wide/16 v6, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;JJ)V

    iput-object v8, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationAdapterCompat:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    const/16 p0, 0xd

    const/4 v2, 0x1

    .line 551
    invoke-virtual {v1, p0, v2, v8}, Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;->addRemoteAnimation(IILcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V

    .line 554
    new-instance p0, Lcom/android/systemui/shared/recents/system/ActivityCompat;

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/recents/system/ActivityCompat;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/shared/recents/system/ActivityCompat;->registerRemoteAnimations(Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;)V

    :cond_1
    return-void
.end method

.method private resetContentView()V
    .locals 2

    .line 1049
    sget-boolean v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1053
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public breakOpenAnim()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppPairController;->breakAppPairAnimation()V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->removeEndRunnable(Ljava/lang/Runnable;)V

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->removeEndRunnable(Ljava/lang/Runnable;)V

    .line 300
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/LauncherAppTransitionManager;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    .line 301
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setMoveToTargetRectWhenAnimEnd(Z)V

    :cond_3
    return-void
.end method

.method public clearRemoteAnimationProvider()V
    .locals 1

    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    return-void
.end method

.method public doAnimationFinish()V
    .locals 2

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsDoAnimationFinish:Z

    .line 313
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppPairController;->finishAppPairAnimation()V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 319
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 320
    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 323
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 324
    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

    :cond_2
    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsDoAnimationFinish:Z

    return-void
.end method

.method public getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActivityLaunchOptions iconLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickstepAppTransitionManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/recents/LauncherAppTransitionManager;->getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method protected getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method public getRemoteAnimationProvider()Lcom/miui/home/recents/util/RemoteAnimationProvider;
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    return-object p0
.end method

.method public getWallpaperOpenRunner(Z)Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;
    .locals 3

    .line 752
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    if-nez v0, :cond_0

    .line 753
    new-instance v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/os/Handler;ZZ)V

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    .line 755
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->setCloseAnimationRunnerCompat(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)V

    .line 756
    sget-boolean p1, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz p1, :cond_0

    .line 757
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$$ExternalSyntheticLambda5;->INSTANCE:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$$ExternalSyntheticLambda5;

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->setConnectAnimRunnable(Ljava/lang/Runnable;)V

    .line 779
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    return-object p0
.end method

.method public isTaskLaunchAnimRunning()Z
    .locals 0

    .line 640
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreateWallpaperOpenAnimation(I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)Z
    .locals 6

    .line 787
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 788
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->onCreateAnimation(I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onFocusNotifyStartActivityFinish()V
    .locals 2

    .line 279
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne v0, v1, :cond_0

    .line 280
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onFsGestureStart()V
    .locals 1

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNeedResetContentView:Z

    return-void
.end method

.method public registerRemoteTransitions()V
    .locals 5

    .line 562
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    if-nez v0, :cond_0

    return-void

    .line 565
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const-string v1, "QuickstepAppTransitionManagerImpl"

    if-nez v0, :cond_1

    const-string p0, "registerRemoteTransitions: launcher is null, return"

    .line 567
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 570
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object v2

    sget-object v3, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$$ExternalSyntheticLambda4;->INSTANCE:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$$ExternalSyntheticLambda4;

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->setStopRunningAnimRunnable(Ljava/lang/Runnable;)V

    .line 589
    sget-object v2, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    .line 590
    invoke-virtual {v2}, Lcom/miui/home/recents/SystemUiProxyWrapper;->isShellTransitionInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    const-string p0, "registerRemoteTransitions: shell transitions not init, return"

    .line 591
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 594
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRemoteTransitions: mIsRegisterRemoteTransition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsRegisterRemoteTransition:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->hasControlRemoteAppTransitionPermission()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsRegisterRemoteTransition:Z

    if-nez v1, :cond_3

    .line 596
    new-instance v1, Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    iget-object v3, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-static {v3}, Lcom/android/hideapi/RemoteTransitionExpose;->newInstance(Landroid/window/IRemoteTransition;)Landroid/window/RemoteTransition;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;-><init>(Landroid/window/RemoteTransition;)V

    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteTransitionCompat:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    .line 597
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getNokeyguardTransitionFilter()Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;

    move-result-object v1

    .line 598
    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->initRequirements(Landroidx/activity/ComponentActivity;)V

    .line 599
    iget-object v3, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteTransitionCompat:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    invoke-virtual {v2, v3, v1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->registerRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;)V

    .line 601
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getNokeyguardTransitionFilter()Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;

    move-result-object v1

    .line 602
    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->initElementCloseRequirements(Landroidx/activity/ComponentActivity;)V

    .line 603
    iget-object v3, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteTransitionCompat:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    invoke-virtual {v2, v3, v1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->registerRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;)V

    .line 605
    new-instance v1, Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    iget-object v3, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenWidgetFromAssistantTransition:Landroid/window/IRemoteTransition;

    invoke-static {v3}, Lcom/android/hideapi/RemoteTransitionExpose;->newInstance(Landroid/window/IRemoteTransition;)Landroid/window/RemoteTransition;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;-><init>(Landroid/window/RemoteTransition;)V

    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWidgetRemoteTransitionCompat:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    .line 606
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getNokeyguardTransitionFilter()Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;

    move-result-object v1

    .line 607
    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->initElementOpenRequirements(Landroidx/activity/ComponentActivity;)V

    .line 608
    iget-object v3, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWidgetRemoteTransitionCompat:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    invoke-virtual {v2, v3, v1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->registerRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;)V

    .line 611
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getNokeyguardTransitionFilter()Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;

    move-result-object v1

    .line 612
    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->initSplitBackRequirements(Landroidx/activity/ComponentActivity;)V

    .line 613
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteTransitionCompat:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    invoke-virtual {v2, v0, v1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->registerRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;)V

    .line 615
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getNokeyguardTransitionFilter()Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;

    move-result-object v0

    .line 616
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->initHalfSplitBackRequirements()V

    .line 617
    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteTransitionCompat:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    invoke-virtual {v2, v1, v0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->registerRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;)V

    const/4 v0, 0x1

    .line 618
    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsRegisterRemoteTransition:Z

    :cond_3
    return-void
.end method

.method public release()V
    .locals 2

    .line 645
    invoke-super {p0}, Lcom/miui/home/recents/LauncherAppTransitionManager;->release()V

    const/4 v0, 0x0

    .line 646
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationAdapterCompat:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    .line 647
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    .line 648
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLaunchingViewRef:Ljava/lang/ref/WeakReference;

    .line 649
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 650
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    .line 651
    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz v1, :cond_0

    .line 652
    invoke-virtual {v1}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    .line 653
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mCloseFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz v1, :cond_1

    .line 656
    invoke-virtual {v1}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    .line 657
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mCloseFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    .line 659
    :cond_1
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 660
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 661
    iput-object v0, p0, Lcom/miui/home/recents/LauncherAppTransitionManager;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 662
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->releaseAnim()V

    .line 663
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    .line 664
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

    .line 665
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->unregisterRemoteTransitions()V

    return-void
.end method

.method public resetShortcutIconAlpha(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 5

    .line 1010
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 1011
    iget-boolean v3, p0, Lcom/miui/home/recents/LauncherAppTransitionManager;->mIsOpenAnimRunning:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1013
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetShortcutIconAlpha, icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isNeedResetIcon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsOpenAnimRunning="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/recents/LauncherAppTransitionManager;->mIsOpenAnimRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isOpeningTheSameIcon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "QuickstepAppTransitionManagerImpl"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    .line 1019
    invoke-interface {p1, v2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->setAnimTargetVisibility(I)V

    .line 1020
    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->invalidateAdaptiveIconDrawable(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    :cond_3
    return-void
.end method

.method public setRemoteAnimationProvider(Lcom/miui/home/recents/util/RemoteAnimationProvider;Landroid/os/CancellationSignal;)V
    .locals 1

    .line 399
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    .line 400
    new-instance v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RemoteAnimationProvider;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method

.method public unregisterRemoteTransitions()V
    .locals 2

    .line 624
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    if-nez v0, :cond_0

    return-void

    .line 627
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterRemoteTransitions: mIsRegisterRemoteTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsRegisterRemoteTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickstepAppTransitionManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsRegisterRemoteTransition:Z

    if-eqz v0, :cond_2

    .line 629
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteTransitionCompat:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    if-nez v0, :cond_1

    return-void

    .line 630
    :cond_1
    sget-object v1, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->unregisterRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    .line 631
    sget-object v0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWidgetRemoteTransitionCompat:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->unregisterRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    const/4 v0, 0x0

    .line 632
    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsRegisterRemoteTransition:Z

    const/4 v0, 0x0

    .line 633
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteTransitionCompat:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    .line 634
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWidgetRemoteTransitionCompat:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    :cond_2
    return-void
.end method
