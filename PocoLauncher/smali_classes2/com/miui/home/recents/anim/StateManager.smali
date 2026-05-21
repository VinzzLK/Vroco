.class public final Lcom/miui/home/recents/anim/StateManager;
.super Ljava/lang/Object;
.source "StateManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/anim/StateManager$Companion;,
        Lcom/miui/home/recents/anim/StateManager$InstanceHelper;,
        Lcom/miui/home/recents/anim/StateManager$IdleState;,
        Lcom/miui/home/recents/anim/StateManager$HomeState;,
        Lcom/miui/home/recents/anim/StateManager$WeakLaunchWidgetRunnable;,
        Lcom/miui/home/recents/anim/StateManager$AppState;,
        Lcom/miui/home/recents/anim/StateManager$RecentState;,
        Lcom/miui/home/recents/anim/StateManager$CommonState;,
        Lcom/miui/home/recents/anim/StateManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateManager.kt\ncom/miui/home/recents/anim/StateManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1689:1\n1#2:1690\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

.field private static ENABLE_MUTI_WINDOWELEMENT:Z


# instance fields
.field private final appState:Lcom/miui/home/recents/anim/StateManager$AppState;

.field private final commonState:Lcom/miui/home/recents/anim/StateManager$CommonState;

.field private currentLauncher:Ljava/lang/Integer;

.field private currentState:Lcom/miui/home/recents/anim/State;

.field private final eventInterceptor:Lcom/miui/home/recents/anim/StateManagerEventInterceptor;

.field private final homeState:Lcom/miui/home/recents/anim/StateManager$HomeState;

.field private final idleState:Lcom/miui/home/recents/anim/StateManager$IdleState;

.field private final initialEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/miui/home/recents/anim/State;",
            ">;"
        }
    .end annotation
.end field

.field private launchIconRunnable:Ljava/lang/Runnable;

.field private launchWidgetRunnable:Ljava/lang/Runnable;

.field private final multiInitialEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/miui/home/recents/anim/State;",
            ">;"
        }
    .end annotation
.end field

.field private pendingIconViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private readyToChangeLayer:Z

.field private final recentBlurViewElement:Lcom/miui/home/recents/anim/RecentBlurViewElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/anim/RecentBlurViewElement<",
            "Lcom/miui/home/recents/anim/RecentBlurParams;",
            ">;"
        }
    .end annotation
.end field

.field private final recentState:Lcom/miui/home/recents/anim/StateManager$RecentState;

.field private final shortcutMenuLayerElement:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/anim/ShortcutMenuLayerElement<",
            "Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;",
            ">;"
        }
    .end annotation
.end field

.field private final taskViewsElement:Lcom/miui/home/recents/anim/TaskViewsElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/anim/TaskViewsElement<",
            "Lcom/miui/home/recents/anim/TaskViewsParams;",
            ">;"
        }
    .end annotation
.end field

.field private final wallpaperElement:Lcom/miui/home/recents/anim/WallpaperElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/anim/WallpaperElement<",
            "Lcom/miui/home/recents/anim/WallpaperParam;",
            ">;"
        }
    .end annotation
.end field

.field private volatile windowElement:Lcom/miui/home/recents/anim/WindowElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/anim/WindowElement<",
            "Lcom/miui/home/recents/anim/RectFParams;",
            ">;"
        }
    .end annotation
.end field

.field private final windowElementAnimListener:Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1;

.field private windowElementOldList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/anim/WindowElement<",
            "Lcom/miui/home/recents/anim/RectFParams;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1sIl4xutw-vPSKmDZfC9McjLxLE(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/anim/StateManager;->onAnimParamsReady$lambda-1(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5gxV-JhKQV_oJxWi43CVGOPP4ww(Lcom/miui/home/recents/anim/StateManager;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/anim/StateManager;->cancelAnim$lambda-19(Lcom/miui/home/recents/anim/StateManager;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C-kZp_X93nanDwYsUFIjH_GwEtM(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->sendEventActually$lambda-0(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GV_HEIEoFFyCDw9A-HiVEOpDW2E(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->cancelOldList$lambda-20(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O4YhbtZTdLoaGJGaa-FVnjWy9q8(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/miui/home/recents/anim/StateManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->onLauncherStartActivity$lambda-16(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/miui/home/recents/anim/StateManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RpD1dW1LSXV6eiEkVisQGJJYqpA(Lcom/miui/home/recents/anim/StateManager;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/anim/StateManager;->cancelAnim$lambda-18(Lcom/miui/home/recents/anim/StateManager;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tm2jrmCdsR_LzM6nNEwhM1F1VoU(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/anim/StateManager;->onAnimParamsReadyAtFrontOfQueue$lambda-2(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h5rh8oy_Up7R9RSmU-WseYmI0yg(Lcom/miui/home/recents/anim/WindowElement;Lcom/miui/home/recents/anim/StateManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->isOldElementReuseful$lambda-15(Lcom/miui/home/recents/anim/WindowElement;Lcom/miui/home/recents/anim/StateManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o9WqWLeB18ceSRTwtpiDlZBcWCA(Lcom/miui/home/recents/anim/WindowElement;Lcom/miui/home/recents/anim/StateManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->setToOld$lambda-17(Lcom/miui/home/recents/anim/WindowElement;Lcom/miui/home/recents/anim/StateManager;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/anim/StateManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/StateManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/miui/home/recents/anim/StateManager;->ENABLE_MUTI_WINDOWELEMENT:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/miui/home/recents/anim/StateManager$IdleState;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/anim/StateManager$IdleState;-><init>(Lcom/miui/home/recents/anim/StateManager;)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->idleState:Lcom/miui/home/recents/anim/StateManager$IdleState;

    .line 57
    new-instance v1, Lcom/miui/home/recents/anim/StateManager$HomeState;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/anim/StateManager$HomeState;-><init>(Lcom/miui/home/recents/anim/StateManager;)V

    iput-object v1, p0, Lcom/miui/home/recents/anim/StateManager;->homeState:Lcom/miui/home/recents/anim/StateManager$HomeState;

    .line 58
    new-instance v2, Lcom/miui/home/recents/anim/StateManager$AppState;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/anim/StateManager$AppState;-><init>(Lcom/miui/home/recents/anim/StateManager;)V

    iput-object v2, p0, Lcom/miui/home/recents/anim/StateManager;->appState:Lcom/miui/home/recents/anim/StateManager$AppState;

    .line 59
    new-instance v3, Lcom/miui/home/recents/anim/StateManager$RecentState;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/anim/StateManager$RecentState;-><init>(Lcom/miui/home/recents/anim/StateManager;)V

    iput-object v3, p0, Lcom/miui/home/recents/anim/StateManager;->recentState:Lcom/miui/home/recents/anim/StateManager$RecentState;

    .line 60
    new-instance v4, Lcom/miui/home/recents/anim/StateManager$CommonState;

    invoke-direct {v4, p0}, Lcom/miui/home/recents/anim/StateManager$CommonState;-><init>(Lcom/miui/home/recents/anim/StateManager;)V

    iput-object v4, p0, Lcom/miui/home/recents/anim/StateManager;->commonState:Lcom/miui/home/recents/anim/StateManager$CommonState;

    .line 62
    iput-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->currentState:Lcom/miui/home/recents/anim/State;

    .line 64
    sget-object v0, Lcom/miui/home/recents/anim/WallpaperElement;->Companion:Lcom/miui/home/recents/anim/WallpaperElement$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WallpaperElement$Companion;->getInstance()Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->wallpaperElement:Lcom/miui/home/recents/anim/WallpaperElement;

    .line 65
    sget-object v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$Companion;->getInstance()Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->shortcutMenuLayerElement:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    .line 66
    sget-object v0, Lcom/miui/home/recents/anim/RecentBlurViewElement;->Companion:Lcom/miui/home/recents/anim/RecentBlurViewElement$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RecentBlurViewElement$Companion;->getInstance()Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->recentBlurViewElement:Lcom/miui/home/recents/anim/RecentBlurViewElement;

    .line 67
    sget-object v0, Lcom/miui/home/recents/anim/TaskViewsElement;->Companion:Lcom/miui/home/recents/anim/TaskViewsElement$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/TaskViewsElement$Companion;->getInstance()Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->taskViewsElement:Lcom/miui/home/recents/anim/TaskViewsElement;

    .line 68
    new-instance v0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;

    invoke-direct {v0}, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->eventInterceptor:Lcom/miui/home/recents/anim/StateManagerEventInterceptor;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElementOldList:Ljava/util/ArrayList;

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v4, 0x1771

    .line 239
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x1772

    .line 240
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x1773

    .line 241
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x3eb

    .line 242
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x1b67

    .line 243
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x232b

    .line 244
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1b5d

    .line 246
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1b5e

    .line 247
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1b66

    .line 248
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1839

    .line 249
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x183a

    .line 250
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1b59

    .line 251
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1b5f

    .line 252
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x3e9

    .line 254
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x3ea

    .line 255
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x17d5

    .line 256
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x7dd

    .line 257
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x7e3

    .line 258
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x17d6

    .line 259
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x17d7

    .line 261
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x17d8

    .line 262
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x17d9

    .line 263
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iput-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->initialEventMap:Ljava/util/HashMap;

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x1b6a

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1b62

    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iput-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->multiInitialEventMap:Ljava/util/HashMap;

    .line 1345
    new-instance v0, Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1;-><init>(Lcom/miui/home/recents/anim/StateManager;)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElementAnimListener:Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/anim/StateManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$animToFullScreen(Lcom/miui/home/recents/anim/StateManager;Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->animToFullScreen(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getAppState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$AppState;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->appState:Lcom/miui/home/recents/anim/StateManager$AppState;

    return-object p0
.end method

.method public static final synthetic access$getCurrentLauncher$p(Lcom/miui/home/recents/anim/StateManager;)Ljava/lang/Integer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->currentLauncher:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getCurrentState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/State;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->currentState:Lcom/miui/home/recents/anim/State;

    return-object p0
.end method

.method public static final synthetic access$getENABLE_MUTI_WINDOWELEMENT$cp()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/miui/home/recents/anim/StateManager;->ENABLE_MUTI_WINDOWELEMENT:Z

    return v0
.end method

.method public static final synthetic access$getHomeState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$HomeState;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->homeState:Lcom/miui/home/recents/anim/StateManager$HomeState;

    return-object p0
.end method

.method public static final synthetic access$getIdleState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$IdleState;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->idleState:Lcom/miui/home/recents/anim/StateManager$IdleState;

    return-object p0
.end method

.method public static final synthetic access$getInitialEventMap$p(Lcom/miui/home/recents/anim/StateManager;)Ljava/util/HashMap;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->initialEventMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getMultiInitialEventMap$p(Lcom/miui/home/recents/anim/StateManager;)Ljava/util/HashMap;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->multiInitialEventMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->recentBlurViewElement:Lcom/miui/home/recents/anim/RecentBlurViewElement;

    return-object p0
.end method

.method public static final synthetic access$getRecentState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$RecentState;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->recentState:Lcom/miui/home/recents/anim/StateManager$RecentState;

    return-object p0
.end method

.method public static final synthetic access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->shortcutMenuLayerElement:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    return-object p0
.end method

.method public static final synthetic access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->taskViewsElement:Lcom/miui/home/recents/anim/TaskViewsElement;

    return-object p0
.end method

.method public static final synthetic access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->wallpaperElement:Lcom/miui/home/recents/anim/WallpaperElement;

    return-object p0
.end method

.method public static final synthetic access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    return-object p0
.end method

.method public static final synthetic access$getWindowElementOldList$p(Lcom/miui/home/recents/anim/StateManager;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElementOldList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->gotoState(Lcom/miui/home/recents/anim/State;)V

    return-void
.end method

.method public static final synthetic access$homeClickEnd(Lcom/miui/home/recents/anim/StateManager;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/home/recents/anim/StateManager;->homeClickEnd()V

    return-void
.end method

.method public static final synthetic access$homeClickStart(Lcom/miui/home/recents/anim/StateManager;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/home/recents/anim/StateManager;->homeClickStart()V

    return-void
.end method

.method public static final synthetic access$notifyActivityWillStartFromHome(Lcom/miui/home/recents/anim/StateManager;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/home/recents/anim/StateManager;->notifyActivityWillStartFromHome()V

    return-void
.end method

.method public static final synthetic access$setWindowElement$p(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/WindowElement;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    return-void
.end method

.method private final animToFullScreen(Landroid/view/View;)V
    .locals 13

    .line 1106
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->isDifferentRotation()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1108
    invoke-static {v2, v1}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->getAnimOpenedRotation(ZZ)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 1113
    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->updateAnimOpenedRotation(I)V

    .line 1115
    :cond_1
    instance-of v0, p1, Lcom/miui/home/recents/views/TaskView;

    .line 1117
    sget-object v3, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->INSTANCE:Lcom/miui/home/recents/anim/WindowAnimParamsProvider;

    xor-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    move-object v6, v5

    goto :goto_2

    .line 1120
    :cond_2
    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v7, :cond_3

    invoke-virtual {v7, p1}, Lcom/miui/home/recents/anim/WindowElement;->getIconRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    goto :goto_1

    :cond_3
    move-object v7, v5

    :goto_1
    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1117
    :goto_2
    invoke-virtual {v3, v4, p1, v6}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getRecentOpeningWindowParams(ZLandroid/view/View;Landroid/graphics/RectF;)Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v3

    if-eqz v0, :cond_5

    .line 1123
    iget-object v4, p0, Lcom/miui/home/recents/anim/StateManager;->taskViewsElement:Lcom/miui/home/recents/anim/TaskViewsElement;

    new-instance v12, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/16 v7, 0xb

    const/4 v8, 0x0

    if-eqz v0, :cond_4

    move-object v5, p1

    check-cast v5, Lcom/miui/home/recents/views/TaskView;

    :cond_4
    move-object v9, v5

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v4, v12}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    .line 1125
    :cond_5
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/anim/WindowElement;->animTo(Ljava/lang/Object;)V

    .line 1126
    :cond_6
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->onRecentAnimToFullScreen()V

    .line 1127
    :cond_7
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToRecents(Z)V

    .line 1128
    :cond_8
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToApp(Z)V

    .line 1130
    :cond_9
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->shortcutMenuLayerElement:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    sget-object v3, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 1131
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->wallpaperElement:Lcom/miui/home/recents/anim/WallpaperElement;

    sget-object v3, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/anim/WallpaperElement;->animTo(Ljava/lang/Object;)V

    .line 1132
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->recentBlurViewElement:Lcom/miui/home/recents/anim/RecentBlurViewElement;

    sget-object v3, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    .line 1134
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "noStartActivityAppOpen"

    const-string v3, "gesture"

    .line 1133
    invoke-static {p1, v0, v3}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WindowElement;->isReusefulAnimRunning()Z

    move-result p1

    if-ne p1, v2, :cond_a

    move p1, v2

    goto :goto_3

    :cond_a
    move p1, v1

    :goto_3
    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 1139
    :cond_b
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0, v2, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->changeBackVisible(ZZ)V

    :cond_c
    return-void
.end method

.method public static synthetic cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 1663
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/anim/StateManager;->cancelAll(Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    return-void
.end method

.method public static synthetic cancelAnim$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1543
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/anim/StateManager;->cancelAnim(Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    return-void
.end method

.method private static final cancelAnim$lambda-18(Lcom/miui/home/recents/anim/StateManager;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$tempElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1559
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->setToOld(Lcom/miui/home/recents/anim/WindowElement;)V

    if-eqz p2, :cond_0

    .line 1560
    invoke-interface {p2}, Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;->onFinish()V

    :cond_0
    return-void
.end method

.method private static final cancelAnim$lambda-19(Lcom/miui/home/recents/anim/StateManager;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$tempElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1564
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->setToOld(Lcom/miui/home/recents/anim/WindowElement;)V

    if-eqz p2, :cond_0

    .line 1565
    invoke-interface {p2}, Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;->onFinish()V

    :cond_0
    return-void
.end method

.method private static final cancelOldList$lambda-20(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1675
    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager;->windowElementOldList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1676
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElementOldList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 1677
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "tempList.iterator()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1678
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1679
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v2, p1

    .line 1680
    invoke-static/range {v1 .. v8}, Lcom/miui/home/recents/anim/WindowElement;->cancelAnim$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic createWindowElement$default(Lcom/miui/home/recents/anim/StateManager;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1402
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement(Z)V

    return-void
.end method

.method private final gotoState(Lcom/miui/home/recents/anim/State;)V
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "go to state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->currentState:Lcom/miui/home/recents/anim/State;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager;->currentState:Lcom/miui/home/recents/anim/State;

    :cond_0
    return-void
.end method

.method private final handleAllElementParams(Lcom/miui/home/recents/anim/AllElementParams;)V
    .locals 4

    .line 209
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/AllElementParams;->getWindowParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 210
    iget-object v2, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    move v3, v1

    :cond_0
    if-eqz v3, :cond_3

    .line 211
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/AllElementParams;->getInitShortcutParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/miui/home/recents/anim/StateManager;->shortcutMenuLayerElement:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->setTo(Ljava/lang/Object;)V

    .line 212
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/AllElementParams;->getInitWallpaperParam()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/miui/home/recents/anim/StateManager;->wallpaperElement:Lcom/miui/home/recents/anim/WallpaperElement;

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/anim/WallpaperElement;->setTo(Ljava/lang/Object;)V

    .line 213
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/AllElementParams;->getInitRecentBlurParam()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/miui/home/recents/anim/StateManager;->recentBlurViewElement:Lcom/miui/home/recents/anim/RecentBlurViewElement;

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->setTo(Ljava/lang/Object;)V

    .line 215
    :cond_3
    iget-object v2, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/AllElementParams;->getWindowEmptyRunnable()Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->getMNotHandleAnimRunnable()Ljava/lang/Runnable;

    move-result-object v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/AllElementParams;->getWindowEmptyRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 216
    :cond_5
    iget-object v2, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v0}, Lcom/miui/home/recents/anim/WindowElement;->animTo(Ljava/lang/Object;)V

    goto :goto_1

    .line 218
    :cond_6
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/AllElementParams;->getWindowEmptyRunnable()Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 219
    :cond_7
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager;->idleState:Lcom/miui/home/recents/anim/StateManager$IdleState;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->gotoState(Lcom/miui/home/recents/anim/State;)V

    return-void

    .line 223
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/AllElementParams;->getShortcutParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/miui/home/recents/anim/StateManager;->shortcutMenuLayerElement:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    invoke-virtual {v2, v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 224
    :cond_9
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/AllElementParams;->getWallpaperParam()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/miui/home/recents/anim/StateManager;->wallpaperElement:Lcom/miui/home/recents/anim/WallpaperElement;

    invoke-virtual {v2, v0}, Lcom/miui/home/recents/anim/WallpaperElement;->animTo(Ljava/lang/Object;)V

    .line 225
    :cond_a
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/AllElementParams;->getTaskViewsParams()Lcom/miui/home/recents/anim/TaskViewsParams;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/miui/home/recents/anim/StateManager;->taskViewsElement:Lcom/miui/home/recents/anim/TaskViewsElement;

    invoke-virtual {v2, v0}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    .line 226
    :cond_b
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/AllElementParams;->getRecentBlurParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/miui/home/recents/anim/StateManager;->recentBlurViewElement:Lcom/miui/home/recents/anim/RecentBlurViewElement;

    invoke-virtual {v2, v0}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    .line 227
    :cond_c
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/AllElementParams;->getNextState()Lcom/miui/home/recents/anim/StateType;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 228
    sget-object v0, Lcom/miui/home/recents/anim/StateManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v1, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    .line 232
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager;->idleState:Lcom/miui/home/recents/anim/StateManager$IdleState;

    goto :goto_2

    .line 231
    :cond_d
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager;->recentState:Lcom/miui/home/recents/anim/StateManager$RecentState;

    goto :goto_2

    .line 230
    :cond_e
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager;->homeState:Lcom/miui/home/recents/anim/StateManager$HomeState;

    goto :goto_2

    .line 229
    :cond_f
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager;->appState:Lcom/miui/home/recents/anim/StateManager$AppState;

    .line 234
    :goto_2
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->gotoState(Lcom/miui/home/recents/anim/State;)V

    :cond_10
    return-void
.end method

.method private final handleEventActually(Lcom/miui/home/recents/event/Event;)V
    .locals 3

    .line 116
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->isInitialEvent(Lcom/miui/home/recents/event/Event;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->initialEventMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/anim/State;

    .line 118
    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager;->currentState:Lcom/miui/home/recents/anim/State;

    iget-object v2, p0, Lcom/miui/home/recents/anim/StateManager;->idleState:Lcom/miui/home/recents/anim/StateManager$IdleState;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager;->currentState:Lcom/miui/home/recents/anim/State;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-direct {p0, v0}, Lcom/miui/home/recents/anim/StateManager;->gotoState(Lcom/miui/home/recents/anim/State;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->currentState:Lcom/miui/home/recents/anim/State;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/anim/State;->handleEvent(Lcom/miui/home/recents/event/Event;)V

    .line 123
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->commonState:Lcom/miui/home/recents/anim/StateManager$CommonState;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager$CommonState;->handleEvent(Lcom/miui/home/recents/event/Event;)V

    return-void
.end method

.method private final homeClickEnd()V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->eventInterceptor:Lcom/miui/home/recents/anim/StateManagerEventInterceptor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->setHomeClickRunning(Z)V

    .line 613
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->eventInterceptor:Lcom/miui/home/recents/anim/StateManagerEventInterceptor;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->getResetHomeClickRunningStateRunable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final homeClickStart()V
    .locals 3

    .line 606
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->eventInterceptor:Lcom/miui/home/recents/anim/StateManagerEventInterceptor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->setHomeClickRunning(Z)V

    .line 607
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/anim/StateManager;->eventInterceptor:Lcom/miui/home/recents/anim/StateManagerEventInterceptor;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->getResetHomeClickRunningStateRunable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 608
    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->eventInterceptor:Lcom/miui/home/recents/anim/StateManagerEventInterceptor;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->getResetHomeClickRunningStateRunable()Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final isOldElementReuseful$lambda-15(Lcom/miui/home/recents/anim/WindowElement;Lcom/miui/home/recents/anim/StateManager;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1418
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    const/16 v7, 0x16

    const/4 v8, 0x0

    const-string v2, "cannot reuse"

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/miui/home/recents/anim/WindowElement;->cancelAnim$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    .line 1419
    :cond_0
    iget-object p1, p1, Lcom/miui/home/recents/anim/StateManager;->windowElementOldList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private final notifyActivityWillStartFromHome()V
    .locals 5

    const-string p0, "AnimStateManager"

    :try_start_0
    const-string v0, "notifyActivityWillStartFromHome: "

    .line 574
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/WindowManager;

    .line 578
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "notifyActivityWillStartFromHome"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    .line 576
    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 575
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to notifyActivityWillStartFromHome"

    .line 583
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static synthetic onAnimParamsReady$default(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 150
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/anim/StateManager;->onAnimParamsReady(Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final onAnimParamsReady$lambda-1(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->handleAllElementParams(Lcom/miui/home/recents/anim/AllElementParams;)V

    if-eqz p2, :cond_0

    .line 158
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static final onAnimParamsReadyAtFrontOfQueue$lambda-2(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->handleAllElementParams(Lcom/miui/home/recents/anim/AllElementParams;)V

    if-eqz p2, :cond_0

    .line 171
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static final onLauncherStartActivity$lambda-16(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/miui/home/recents/anim/StateManager;)V
    .locals 2

    const-string v0, "$sameOldElement"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1431
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->resetWindowElement()V

    .line 1432
    :cond_0
    iget-object v0, p1, Lcom/miui/home/recents/anim/StateManager;->windowElementOldList:Ljava/util/ArrayList;

    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 1433
    iput-boolean v0, p1, Lcom/miui/home/recents/anim/StateManager;->readyToChangeLayer:Z

    .line 1434
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/recents/anim/WindowElement;

    iput-object p0, p1, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    return-void
.end method

.method private final sendEventActually(Lcom/miui/home/recents/event/Event;)V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currentState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager;->currentState:Lcom/miui/home/recents/anim/State;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/State;->getStateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " windowElement = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->handleEventActually(Lcom/miui/home/recents/event/Event;)V

    goto :goto_0

    .line 109
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/Event;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static final sendEventActually$lambda-0(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/Event;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->handleEventActually(Lcom/miui/home/recents/event/Event;)V

    return-void
.end method

.method private static final setToOld$lambda-17(Lcom/miui/home/recents/anim/WindowElement;Lcom/miui/home/recents/anim/StateManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 1519
    iget-object v0, p1, Lcom/miui/home/recents/anim/StateManager;->windowElementOldList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1520
    iget-object p1, p1, Lcom/miui/home/recents/anim/StateManager;->windowElementOldList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final bindLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindLauncher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cur "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager;->currentLauncher:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->currentLauncher:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->hashCode()I

    move-result v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 180
    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/anim/StateManager;->unbindLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->shortcutMenuLayerElement:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->bindView(Lcom/miui/home/launcher/ShortcutMenuLayer;)V

    .line 183
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->wallpaperElement:Lcom/miui/home/recents/anim/WallpaperElement;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/anim/WallpaperElement;->bindView(Lcom/miui/home/launcher/Workspace;)V

    .line 184
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->taskViewsElement:Lcom/miui/home/recents/anim/TaskViewsElement;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/anim/TaskViewsElement;->bindRecentsView(Lcom/miui/home/recents/views/RecentsView;)V

    .line 185
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->recentBlurViewElement:Lcom/miui/home/recents/anim/RecentBlurViewElement;

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getBackgroundBlurView()Lcom/miui/home/launcher/BlurView;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->bindView(Lcom/miui/home/launcher/BlurView;)V

    .line 186
    invoke-virtual {p1}, Landroid/app/Activity;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager;->currentLauncher:Ljava/lang/Integer;

    return-void
.end method

.method public final cancelAll(Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V
    .locals 10

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AnimStateManager"

    const-string v1, "cancel ALl"

    .line 1664
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->cancelOldList(Ljava/lang/String;)V

    .line 1666
    iget-object v2, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-static/range {v2 .. v9}, Lcom/miui/home/recents/anim/WindowElement;->cancelAnim$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final cancelAndCreateWindowElement(Ljava/lang/String;Z)V
    .locals 9

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1398
    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/miui/home/recents/anim/WindowElement;->cancelAnim$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    .line 1399
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement(Z)V

    return-void
.end method

.method public final cancelAnim(Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V
    .locals 10

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1546
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1547
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->mainAnimNoFinishClear()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1548
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->shouldCancelSurfaceAndView()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p2, :cond_1

    goto :goto_2

    .line 1557
    :cond_1
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1558
    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    new-instance v4, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0, p3}, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/anim/StateManager;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3a

    const/4 v9, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v9}, Lcom/miui/home/recents/anim/WindowElement;->cancelSurfaceAnimOnly$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    goto :goto_1

    .line 1563
    :cond_2
    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v0, p3}, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/anim/StateManager;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v9}, Lcom/miui/home/recents/anim/WindowElement;->cancelSurfaceAnimOnly$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    .line 1549
    :cond_4
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1550
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1a

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/miui/home/recents/anim/WindowElement;->cancelAnim$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    :cond_5
    return-void

    .line 1553
    :cond_6
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/miui/home/recents/anim/WindowElement;->cancelAnim$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    :cond_7
    if-eqz p3, :cond_8

    .line 1554
    invoke-interface {p3}, Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;->onFinish()V

    :cond_8
    return-void
.end method

.method public final cancelOldList(Ljava/lang/String;)V
    .locals 2

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1670
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElementOldList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1673
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final changeWindowElementLayers()V
    .locals 1

    .line 1606
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElementOldList:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->changeToBelowBlurView()V

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->changeToAboveBlurView()V

    :cond_1
    const/4 v0, 0x0

    .line 1608
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/StateManager;->readyToChangeLayer:Z

    return-void
.end method

.method public final createWindowElement(Lcom/miui/home/recents/event/WidgetClickEventInfo;)V
    .locals 3

    const-string v0, "requestTransitionInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWindowElement, info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1409
    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement$default(Lcom/miui/home/recents/anim/StateManager;ZILjava/lang/Object;)V

    .line 1410
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->getFillInIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1411
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->getIntent()Landroid/content/IntentSender;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/IntentSender;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 1410
    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowElement;->setNotifyPackage(Ljava/lang/String;)V

    .line 1412
    :cond_4
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->requestRemoteTransition(Lcom/miui/home/recents/event/WidgetClickEventInfo;)V

    :cond_5
    return-void
.end method

.method public final createWindowElement(Z)V
    .locals 2

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWindowElement, half="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    new-instance v0, Lcom/miui/home/recents/anim/WindowElement;

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager;->windowElementAnimListener:Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1;

    invoke-direct {v0, v1, p1}, Lcom/miui/home/recents/anim/WindowElement;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;Z)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    .line 1405
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->setIsAnimationRunning(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final getCurRemoteSyncId()I
    .locals 1

    .line 1494
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1495
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.anim.FastLaunchWindowElement<com.miui.home.recents.anim.RectFParams>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->getMCurRemoteSyncId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getCurrentWindowElement()Lcom/miui/home/recents/anim/WindowElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/home/recents/anim/WindowElement<",
            "Lcom/miui/home/recents/anim/RectFParams;",
            ">;"
        }
    .end annotation

    .line 1383
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    return-object p0
.end method

.method public final getFastLaunchRunningTaskPkgName()Ljava/lang/String;
    .locals 1

    .line 1508
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1509
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.anim.FastLaunchWindowElement<com.miui.home.recents.anim.RectFParams>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->getFastLaunchRunningTaskPkgName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFastUserId()I
    .locals 1

    .line 1641
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.anim.FastLaunchWindowElement<com.miui.home.recents.anim.RectFParams>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->getUserId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getLaunchIconRunnable()Ljava/lang/Runnable;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->launchIconRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getLaunchWidgetRunnable()Ljava/lang/Runnable;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->launchWidgetRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getNotifyPackage()Ljava/lang/String;
    .locals 0

    .line 1450
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getNotifyPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getPendingIconViewWeakRef()Ljava/lang/ref/WeakReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->pendingIconViewWeakRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public final getReadyToChangeLayer()Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/StateManager;->readyToChangeLayer:Z

    return p0
.end method

.method public final getRunningTaskId()I
    .locals 1

    .line 1501
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1502
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.anim.FastLaunchWindowElement<com.miui.home.recents.anim.RectFParams>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->getRunningTaskId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getSourceStackBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1487
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1488
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.anim.FastLaunchWindowElement<com.miui.home.recents.anim.RectFParams>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 1490
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final hasRecentInit()Z
    .locals 2

    .line 1454
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1457
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->hasRecentInit()Z

    move-result p0

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public final hasSameElementInOldList(Landroid/view/View;)Lcom/miui/home/recents/anim/WindowElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/miui/home/recents/anim/WindowElement<",
            "Lcom/miui/home/recents/anim/RectFParams;",
            ">;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1589
    sget-boolean v0, Lcom/miui/home/recents/anim/StateManager;->ENABLE_MUTI_WINDOWELEMENT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1595
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElementOldList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "windowElementOldList.iterator()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1596
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1597
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v0, :cond_2

    .line 1598
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getLauncherTargetView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_3
    return-object v1
.end method

.method public final hasValidSurface()Ljava/lang/Boolean;
    .locals 2

    .line 1475
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->hasValidSurface()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final hasWindowElement()Z
    .locals 0

    .line 1686
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final initWindowElement()V
    .locals 3

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowElementChanged. initWindowElement windowElement= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1393
    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement$default(Lcom/miui/home/recents/anim/StateManager;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final isBlockForSplitScreen()Z
    .locals 2

    .line 1465
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isSplitScreenRunning()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public final isClosingAnimRunning()Z
    .locals 2

    .line 1629
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isClosingAnimRunning()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public final isClosingToRecentsAnimRunning()Z
    .locals 2

    .line 1652
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isClosingToRecentsAnimRunning()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public final isCurrentAnimLessThanTragetRectApparent()Z
    .locals 2

    .line 1656
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isCurrentAnimLessThanTargetRectApparent()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public final isFastLaunch()Z
    .locals 1

    .line 1461
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    instance-of v0, v0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.anim.FastLaunchWindowElement<com.miui.home.recents.anim.RectFParams>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->useFastLaunch()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFastLaunchOpenAnimRunning()Z
    .locals 1

    .line 1660
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->isOpenFromHomeAnimRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInitialEvent(Lcom/miui/home/recents/event/Event;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->initialEventMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isMultiInitialEvent(Lcom/miui/home/recents/event/Event;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->multiInitialEventMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isOldElementReuseful(Lcom/miui/home/recents/anim/WindowElement;Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/recents/anim/WindowElement<",
            "Lcom/miui/home/recents/anim/RectFParams;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1416
    sget-object v0, Lcom/miui/home/recents/anim/FastLaunchUtils;->Companion:Lcom/miui/home/recents/anim/FastLaunchUtils$Companion;

    invoke-virtual {v0, p2, p3, p4}, Lcom/miui/home/recents/anim/FastLaunchUtils$Companion;->isSupportFastLaunch(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    instance-of p2, p1, Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    if-nez p2, :cond_0

    .line 1417
    sget-object p2, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance p3, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda6;

    invoke-direct {p3, p1, p0}, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/recents/anim/WindowElement;Lcom/miui/home/recents/anim/StateManager;)V

    invoke-virtual {p2, p3}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isOpenAnimRunning()Z
    .locals 2

    .line 1633
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isOpenAnimRunning()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public final isOpenFromHome()Z
    .locals 1

    .line 1479
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isOpenFromHomeAnimRunning()Z
    .locals 2

    .line 1648
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isOpenFromHomeAnimRunning()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public final isRecentOpeningAnimRunning()Z
    .locals 2

    .line 1617
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->getCurrentWindowElement()Lcom/miui/home/recents/anim/WindowElement;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isRecentOpenAnimRunning()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public final isReusefulOpeningAnimRunning()Z
    .locals 2

    .line 1613
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->getCurrentWindowElement()Lcom/miui/home/recents/anim/WindowElement;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isReusefulOpeningAnimRunning()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public final isWaitFinishMainAnim()Z
    .locals 0

    .line 1625
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->getCurrentWindowElement()Lcom/miui/home/recents/anim/WindowElement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isWaitFinishMainAnim()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isWaitViewDrawCommitWhenAppToRecentAnimEnd()Z
    .locals 0

    .line 1621
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->getCurrentWindowElement()Lcom/miui/home/recents/anim/WindowElement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isWaitViewDrawCommitWhenAppToRecentAnimEnd()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isWindowElementEmpty()Z
    .locals 0

    .line 1483
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notHasHome()Z
    .locals 3

    .line 1571
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1572
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->isFastOpeningAnimRunning()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isReusefulOpeningAnimRunning()Z

    move-result p0

    if-ne p0, v1, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1

    .line 1574
    :cond_4
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isReusefulOpeningAnimRunning()Z

    move-result p0

    if-ne p0, v1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    return v1
.end method

.method public final onAnimParamsReady(Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimParamsReady windowElement = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->handleAllElementParams(Lcom/miui/home/recents/anim/AllElementParams;)V

    if-eqz p2, :cond_1

    .line 154
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 156
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onAnimParamsReadyAtFrontOfQueue(Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AnimStateManager"

    const-string v1, "onAnimParamsReadyAtFrontOfQueue"

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->handleAllElementParams(Lcom/miui/home/recents/anim/AllElementParams;)V

    if-eqz p2, :cond_1

    .line 167
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 169
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->executeAtFrontOfQueue(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onLauncherStartActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1427
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p0, p3}, Lcom/miui/home/recents/anim/StateManager;->hasSameElementInOldList(Landroid/view/View;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLauncherStartActivity sameOldElement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", click View="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isOldElementReuseful="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/miui/home/recents/anim/StateManager;->isOldElementReuseful(Lcom/miui/home/recents/anim/WindowElement;Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimStateManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/miui/home/recents/anim/StateManager;->isOldElementReuseful(Lcom/miui/home/recents/anim/WindowElement;Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1430
    sget-object v1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v3, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0, p0}, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/miui/home/recents/anim/StateManager;)V

    invoke-virtual {v1, v3}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1437
    :cond_0
    sget-object v0, Lcom/miui/home/recents/anim/FastLaunchUtils;->Companion:Lcom/miui/home/recents/anim/FastLaunchUtils$Companion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/home/recents/anim/FastLaunchUtils$Companion;->isSupportFastLaunch(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1438
    new-instance v0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager;->windowElementAnimListener:Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1440
    invoke-static {p0, v0, v1, v3}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement$default(Lcom/miui/home/recents/anim/StateManager;ZILjava/lang/Object;)V

    .line 1443
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->setIsAnimationRunning(Ljava/lang/Boolean;)V

    .line 1444
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, ""

    :cond_3
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowElement;->setNotifyPackage(Ljava/lang/String;)V

    .line 1445
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLauncherStartActivity create windowElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/anim/WindowElement;->requestRemoteTransition(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public final resetState()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->idleState:Lcom/miui/home/recents/anim/StateManager$IdleState;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/anim/StateManager;->gotoState(Lcom/miui/home/recents/anim/State;)V

    return-void
.end method

.method public final sendEvent(Lcom/miui/home/recents/event/Event;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->eventInterceptor:Lcom/miui/home/recents/anim/StateManagerEventInterceptor;

    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->checkAllowSendSerialEvent(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->sendEventActually(Lcom/miui/home/recents/event/Event;)V

    return-void
.end method

.method public final setAnimEndEnable()V
    .locals 0

    .line 1470
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->setAnimEndEnable()V

    :cond_0
    return-void
.end method

.method public final setLaunchIconRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager;->launchIconRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public final setLaunchWidgetRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager;->launchWidgetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public final setPendingIconViewWeakRef(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager;->pendingIconViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setToOld(Lcom/miui/home/recents/anim/WindowElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/recents/anim/WindowElement<",
            "Lcom/miui/home/recents/anim/RectFParams;",
            ">;)V"
        }
    .end annotation

    .line 1515
    sget-boolean v0, Lcom/miui/home/recents/anim/StateManager;->ENABLE_MUTI_WINDOWELEMENT:Z

    if-nez v0, :cond_0

    return-void

    .line 1518
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p0}, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda7;-><init>(Lcom/miui/home/recents/anim/WindowElement;Lcom/miui/home/recents/anim/StateManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final shouldCancelSurfaceAndView()Z
    .locals 9

    .line 1525
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getLauncherTargetView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v0, v0, Lcom/miui/home/launcher/PairShortcutInfo;

    .line 1526
    iget-object v2, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->getLauncherTargetView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    instance-of v2, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 1527
    iget-object v3, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/WindowElement;->isHalf()Z

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v5

    .line 1528
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cancelAnim: ENABLE_MUTI_WINDOWELEMENT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/miui/home/recents/anim/StateManager;->ENABLE_MUTI_WINDOWELEMENT:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isPairShortcut = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mDisableStateManagerListener="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    iget-object v7, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/miui/home/recents/anim/WindowElement;->getMDisableStateManagerListener()Z

    move-result v7

    if-ne v7, v4, :cond_3

    move v7, v4

    goto :goto_3

    :cond_3
    move v7, v5

    .line 1528
    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", windowElement?.getNotifyPackage() != null ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    iget-object v7, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/miui/home/recents/anim/WindowElement;->getNotifyPackage()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object v7, v1

    :goto_4
    if-eqz v7, :cond_5

    move v7, v4

    goto :goto_5

    :cond_5
    move v7, v5

    .line 1528
    :goto_5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", CLOSE_TO_DRAG="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    iget-object v7, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v7

    goto :goto_6

    :cond_6
    move-object v7, v1

    :goto_6
    sget-object v8, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_DRAG:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne v7, v8, :cond_7

    move v7, v4

    goto :goto_7

    :cond_7
    move v7, v5

    .line 1528
    :goto_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isWidget= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isHalf="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AnimStateManager"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    sget-boolean v6, Lcom/miui/home/recents/anim/StateManager;->ENABLE_MUTI_WINDOWELEMENT:Z

    if-eqz v6, :cond_10

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getMDisableStateManagerListener()Z

    move-result v0

    if-ne v0, v4, :cond_8

    move v0, v4

    goto :goto_8

    :cond_8
    move v0, v5

    :goto_8
    if-nez v0, :cond_10

    .line 1534
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getNotifyPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_9
    move-object v0, v1

    :goto_9
    if-nez v0, :cond_10

    .line 1535
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    goto :goto_a

    :cond_a
    move-object v0, v1

    :goto_a
    if-eq v0, v8, :cond_10

    .line 1536
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v1

    :cond_b
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq v1, v0, :cond_10

    if-nez v2, :cond_10

    if-nez v3, :cond_10

    .line 1539
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    instance-of v0, v0, Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->hasValidSurface()Z

    move-result v0

    if-ne v0, v4, :cond_c

    move v0, v4

    goto :goto_b

    :cond_c
    move v0, v5

    :goto_b
    if-eqz v0, :cond_10

    .line 1540
    :cond_d
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p0

    if-ne p0, v4, :cond_e

    move p0, v4

    goto :goto_c

    :cond_e
    move p0, v5

    :goto_c
    if-nez p0, :cond_f

    goto :goto_d

    :cond_f
    move v4, v5

    :cond_10
    :goto_d
    return v4
.end method

.method public final strokeSwitch(Lcom/miui/home/recents/views/SmallWindowCrop;Landroid/view/SurfaceControl;[FFF)Z
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "leash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "color"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager;->windowElement:Lcom/miui/home/recents/anim/WindowElement;

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/recents/anim/WindowElement;->strokeSwitch(Lcom/miui/home/recents/views/SmallWindowCrop;Landroid/view/SurfaceControl;[FFF)Z

    move-result p1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0
.end method

.method public final unbindLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unbindLauncher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cur "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager;->currentLauncher:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p1}, Landroid/app/Activity;->hashCode()I

    move-result p1

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager;->currentLauncher:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager;->shortcutMenuLayerElement:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->bindView(Lcom/miui/home/launcher/ShortcutMenuLayer;)V

    .line 193
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager;->wallpaperElement:Lcom/miui/home/recents/anim/WallpaperElement;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/WallpaperElement;->bindView(Lcom/miui/home/launcher/Workspace;)V

    .line 194
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager;->taskViewsElement:Lcom/miui/home/recents/anim/TaskViewsElement;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/TaskViewsElement;->bindRecentsView(Lcom/miui/home/recents/views/RecentsView;)V

    .line 195
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager;->recentBlurViewElement:Lcom/miui/home/recents/anim/RecentBlurViewElement;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->bindView(Lcom/miui/home/launcher/BlurView;)V

    .line 197
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager;->launchWidgetRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    sget-object v1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v1}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    :cond_3
    iput-object v0, p0, Lcom/miui/home/recents/anim/StateManager;->launchWidgetRunnable:Ljava/lang/Runnable;

    return-void
.end method
