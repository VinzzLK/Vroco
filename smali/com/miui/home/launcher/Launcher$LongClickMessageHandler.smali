.class Lcom/miui/home/launcher/Launcher$LongClickMessageHandler;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongClickMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public static synthetic $r8$lambda$7bzf6Q1xXmHZgPJ74KhpsuwbC5A(Lcom/miui/home/launcher/common/messages/LongClickMessage;Landroid/view/ViewGroup;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler;->lambda$onMessageEvent$1(Lcom/miui/home/launcher/common/messages/LongClickMessage;Landroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sFgVgja4AMDNjSzVfKl0sX7Tlcg(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler;->lambda$onMessageEvent$0(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 10609
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 10609
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method private static synthetic lambda$onMessageEvent$0(Ljava/lang/Object;)Z
    .locals 0

    .line 10635
    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onMessageEvent$1(Lcom/miui/home/launcher/common/messages/LongClickMessage;Landroid/view/ViewGroup;)Z
    .locals 0

    .line 10635
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/messages/LongClickMessage;->getWho()Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/LongClickMessage;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 10612
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isElderlyManMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10615
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$10500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Background;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$10500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Background;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/LongClickMessage;->getRawX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Background;->touchedAtValidArea(F)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 10618
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 10621
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 10624
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 10627
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInLayoutPreview()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 10630
    :cond_5
    invoke-static {}, Lcom/miui/home/launcher/ScreenLoaderHelper;->getInstance()Lcom/miui/home/launcher/ScreenLoaderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenLoaderHelper;->isAllScreenLoaded()Z

    move-result v0

    if-nez v0, :cond_6

    const-string p0, "Launcher"

    const-string p1, "launcher is loading \uff0cintercept long click"

    .line 10631
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 10635
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/Launcher$LongClickMessageHandler$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/common/messages/LongClickMessage;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10637
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    const/16 v1, 0x8

    const/4 v2, 0x0

    new-instance v3, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v4, "event_long_click_in_edit"

    invoke-direct {v3, v4}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;Ljava/lang/Object;)V

    .line 10638
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$LongClickMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackLongPressToEditMode(Lcom/miui/home/launcher/Launcher;)V

    :cond_7
    :goto_0
    return-void
.end method
