.class Lcom/miui/home/recents/BaseRecentsImpl$1;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"

# interfaces
.implements Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method public static synthetic $r8$lambda$XCnE0z98lelWUZAyRAZvFSfPiMw(Lcom/miui/home/recents/BaseRecentsImpl$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl$1;->lambda$callBackGesture$0()V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$1;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$callBackGesture$0()V
    .locals 2

    .line 201
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunchOpenAnimRunning()Z

    move-result v0

    const-string v1, "RecentsImpl"

    if-nez v0, :cond_0

    const-string p0, "mBackStubCallBack, callBackGesture, open anim not running, return"

    .line 202
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "mBackStubCallBack, callBackGesture, run"

    .line 205
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$1;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$000(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->backGestureDown()Z

    .line 207
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$1;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$000(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/NavStubView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->backGestureUp()V

    return-void
.end method


# virtual methods
.method public callBackGesture()Z
    .locals 2

    const-string v0, "RecentsImpl"

    const-string v1, "mBackStubCallBack, callBackGesture"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/BaseRecentsImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public canUseBackGesture()Z
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$1;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$000(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/NavStubView;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    .line 215
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunchOpenAnimRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public injectKeyEvent(Ljava/lang/Runnable;)Z
    .locals 3

    .line 225
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "injectKeyEvent hasRecentInit="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager;->hasRecentInit()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOpenAnimRunning="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager;->isOpenFromHomeAnimRunning()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RecentsImpl"

    .line 225
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->hasRecentInit()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->isOpenFromHomeAnimRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/event/ForceStopTransitionEvent;

    const-string v2, "injectKeyEvent"

    invoke-direct {v0, v2, v1, v1, p1}, Lcom/miui/home/recents/event/ForceStopTransitionEvent;-><init>(Ljava/lang/String;ZZLjava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public isCurrentAnimLessThanTargetRectApparent()Z
    .locals 0

    .line 220
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->isCurrentAnimLessThanTragetRectApparent()Z

    move-result p0

    return p0
.end method
