.class public final Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$2$1$1;
.super Ljava/lang/Object;
.source "StateManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/StateManager$HomeState;->launchIconView$lambda-4$lambda-3(Lcom/miui/home/recents/anim/StateManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/anim/StateManager;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/anim/StateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$2$1$1;->this$0:Lcom/miui/home/recents/anim/StateManager;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchIconView callback, current= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$2$1$1;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->getLauncherTargetView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimStateManager"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$2$1$1;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager;->getLaunchIconRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 531
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$2$1$1;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/anim/StateManager;->setLaunchIconRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
