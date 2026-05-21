.class public final Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$1;
.super Ljava/lang/Object;
.source "StateManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/StateManager$HomeState;->launchIconView(Lcom/miui/home/recents/event/IconClickEventInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $info:Lcom/miui/home/recents/event/IconClickEventInfo;

.field final synthetic this$0:Lcom/miui/home/recents/anim/StateManager;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/event/IconClickEventInfo;Lcom/miui/home/recents/anim/StateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$1;->$info:Lcom/miui/home/recents/event/IconClickEventInfo;

    iput-object p2, p0, Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$1;->this$0:Lcom/miui/home/recents/anim/StateManager;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchIconView launchIconRunnable run, view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$1;->$info:Lcom/miui/home/recents/event/IconClickEventInfo;

    invoke-virtual {v1}, Lcom/miui/home/recents/event/IconClickEventInfo;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimStateManager"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$1;->this$0:Lcom/miui/home/recents/anim/StateManager;

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$1;->$info:Lcom/miui/home/recents/event/IconClickEventInfo;

    invoke-virtual {v1}, Lcom/miui/home/recents/event/IconClickEventInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$1;->$info:Lcom/miui/home/recents/event/IconClickEventInfo;

    invoke-virtual {v2}, Lcom/miui/home/recents/event/IconClickEventInfo;->getTag()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$1;->$info:Lcom/miui/home/recents/event/IconClickEventInfo;

    invoke-virtual {v3}, Lcom/miui/home/recents/event/IconClickEventInfo;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/anim/StateManager;->onLauncherStartActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    .line 520
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$1;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getAppState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$AppState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    return-void
.end method
