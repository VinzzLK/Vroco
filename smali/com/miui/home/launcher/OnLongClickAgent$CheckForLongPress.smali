.class Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;
.super Ljava/lang/Object;
.source "OnLongClickAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/OnLongClickAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/OnLongClickAgent;

.field private zOriginalVersionTag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/OnLongClickAgent;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberVersionTag()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$400(Lcom/miui/home/launcher/OnLongClickAgent;)Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;->getVersionTag()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->zOriginalVersionTag:Ljava/lang/Object;

    return-void
.end method

.method public run()V
    .locals 6

    .line 129
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager;->isClosingAnimRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "OnLongClickAgent"

    const-string v2, "run:  sendmessage MSG_LONG_CLICK"

    .line 130
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {p0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$100(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$200(Lcom/miui/home/launcher/OnLongClickAgent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    .line 133
    invoke-static {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$300(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->zOriginalVersionTag:Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    .line 134
    invoke-static {v2}, Lcom/miui/home/launcher/OnLongClickAgent;->access$400(Lcom/miui/home/launcher/OnLongClickAgent;)Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;->getVersionTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_2

    .line 135
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentClosingAnimRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isExitAnimRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$100(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$500(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$500(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v2}, Lcom/miui/home/launcher/OnLongClickAgent;->access$300(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 141
    :cond_1
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/common/messages/LongClickMessage;

    iget-object v3, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v3}, Lcom/miui/home/launcher/OnLongClickAgent;->access$300(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v4}, Lcom/miui/home/launcher/OnLongClickAgent;->access$600(Lcom/miui/home/launcher/OnLongClickAgent;)F

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v5}, Lcom/miui/home/launcher/OnLongClickAgent;->access$700(Lcom/miui/home/launcher/OnLongClickAgent;)F

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/home/launcher/common/messages/LongClickMessage;-><init>(Landroid/view/View;FF)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/miui/home/launcher/OnLongClickAgent;->access$802(Lcom/miui/home/launcher/OnLongClickAgent;Z)Z

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/OnLongClickAgent;->access$202(Lcom/miui/home/launcher/OnLongClickAgent;Z)Z

    .line 144
    iget-object p0, p0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {p0, v2}, Lcom/miui/home/launcher/OnLongClickAgent;->access$902(Lcom/miui/home/launcher/OnLongClickAgent;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
