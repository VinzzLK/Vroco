.class final Lcom/miui/home/recents/anim/StateManager$WeakLaunchWidgetRunnable;
.super Ljava/lang/Object;
.source "StateManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeakLaunchWidgetRunnable"
.end annotation


# instance fields
.field private final appStateWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/recents/anim/StateManager$AppState;",
            ">;"
        }
    .end annotation
.end field

.field private final infoWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/recents/event/WidgetClickEventInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/recents/event/WidgetClickEventInfo;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/recents/anim/StateManager$AppState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "infoWeakReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appStateWeakReference"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$WeakLaunchWidgetRunnable;->infoWeakReference:Ljava/lang/ref/WeakReference;

    .line 589
    iput-object p2, p0, Lcom/miui/home/recents/anim/StateManager$WeakLaunchWidgetRunnable;->appStateWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 592
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$WeakLaunchWidgetRunnable;->infoWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/event/WidgetClickEventInfo;

    .line 593
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$WeakLaunchWidgetRunnable;->appStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/anim/StateManager$AppState;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 595
    sget-object v1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager;->resetState()V

    .line 596
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement(Lcom/miui/home/recents/event/WidgetClickEventInfo;)V

    .line 597
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    .line 598
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$homeClickEnd(Lcom/miui/home/recents/anim/StateManager;)V

    goto :goto_0

    :cond_0
    const-string p0, "AnimStateManager"

    const-string v0, "info or appState is null"

    .line 600
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
