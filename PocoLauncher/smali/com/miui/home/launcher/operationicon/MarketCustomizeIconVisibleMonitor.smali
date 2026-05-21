.class public final Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor;
.super Ljava/lang/Object;
.source "MarketCustomizeIconVisibleMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor;->Companion:Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor$Companion;

    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor$Companion$instance$2;->INSTANCE:Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor$Companion$instance$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 6
    sget-object v0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final isAppExposeState(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 40
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

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


# virtual methods
.method public final onLauncherResume(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->onLauncherResume()V

    .line 16
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor;->isAppExposeState(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 17
    sget-object p0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->Companion:Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->onLauncherExpose(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method public final onOverlayChanged(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor;->isAppExposeState(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 35
    sget-object p0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->Companion:Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->onLauncherExpose(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method public final onWorkspaceScreenChanged(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconVisibleMonitor;->isAppExposeState(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 26
    sget-object p0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->Companion:Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->onLauncherExpose(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method
