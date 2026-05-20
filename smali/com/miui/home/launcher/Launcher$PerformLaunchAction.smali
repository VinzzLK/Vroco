.class Lcom/miui/home/launcher/Launcher$PerformLaunchAction;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformLaunchAction"
.end annotation


# instance fields
.field mIntent:Landroid/content/Intent;

.field mTag:Ljava/lang/Object;

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 6038
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6039
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->reset()V

    return-void
.end method


# virtual methods
.method public launch(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;Landroid/os/Handler;)V
    .locals 0

    .line 6043
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->set(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    .line 6044
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 6045
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 6046
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->run()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 6056
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mIntent:Landroid/content/Intent;

    .line 6057
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mTag:Ljava/lang/Object;

    .line 6058
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mView:Landroid/view/View;

    return-void
.end method

.method public run()V
    .locals 6

    .line 6063
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 6064
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/Launcher;->access$6700(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6065
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$502(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 6066
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/IconClickEvent;

    new-instance v2, Lcom/miui/home/recents/event/IconClickEventInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mTag:Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mView:Landroid/view/View;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/home/recents/event/IconClickEventInfo;-><init>(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    invoke-direct {v1, v2}, Lcom/miui/home/recents/event/IconClickEvent;-><init>(Lcom/miui/home/recents/event/IconClickEventInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 6067
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->reset()V

    goto :goto_0

    .line 6070
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->reset()V

    :cond_1
    :goto_0
    return-void
.end method

.method public set(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 6050
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mIntent:Landroid/content/Intent;

    .line 6051
    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mTag:Ljava/lang/Object;

    .line 6052
    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mView:Landroid/view/View;

    return-void
.end method
