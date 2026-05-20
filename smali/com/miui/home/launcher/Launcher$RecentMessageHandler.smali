.class Lcom/miui/home/launcher/Launcher$RecentMessageHandler;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 11575
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 11575
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/recents/messages/ChangeLauncherStateEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 11579
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$10900(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 11580
    throw p0
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/FsGestureStartEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 11598
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$11800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11599
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$11800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherAppTransitionManager;->onFsGestureStart()V

    :cond_0
    return-void
.end method
