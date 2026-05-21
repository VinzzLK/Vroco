.class Lcom/miui/home/launcher/Launcher$StopEditEnterAnimMessageHandler;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopEditEnterAnimMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 12011
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$StopEditEnterAnimMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 12011
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$StopEditEnterAnimMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/StopUnlockAnimMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 12014
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$StopEditEnterAnimMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 12017
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$StopEditEnterAnimMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$4800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$StopEditEnterAnimMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$StopEditEnterAnimMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isDragging:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {p1, v0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->endAnimationIfNeeded(Landroid/view/View;Z)V

    .line 12018
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$StopEditEnterAnimMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$12300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/SearchBar;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->endAnimationIfNeeded(Landroid/view/View;)V

    return-void
.end method
