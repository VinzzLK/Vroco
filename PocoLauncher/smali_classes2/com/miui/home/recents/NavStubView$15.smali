.class Lcom/miui/home/recents/NavStubView$15;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 5849
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5852
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$5700(Lcom/miui/home/recents/NavStubView;Z)V

    .line 5853
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0, v1}, Lcom/miui/home/recents/NavStubView;->access$5800(Lcom/miui/home/recents/NavStubView;Z)V

    .line 5854
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/event/TaskLaunchedEvent;

    new-instance v1, Lcom/miui/home/recents/event/TaskLaunchedEventInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/home/recents/event/TaskLaunchedEventInfo;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    invoke-direct {v0, v1}, Lcom/miui/home/recents/event/TaskLaunchedEvent;-><init>(Lcom/miui/home/recents/event/TaskLaunchedEventInfo;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void
.end method
