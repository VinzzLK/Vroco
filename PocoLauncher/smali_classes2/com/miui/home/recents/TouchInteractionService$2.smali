.class Lcom/miui/home/recents/TouchInteractionService$2;
.super Landroid/content/BroadcastReceiver;
.source "TouchInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/TouchInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/TouchInteractionService;


# direct methods
.method public static synthetic $r8$lambda$AbJGJDyMNeb04kl5727Sd2cio50(Lcom/miui/home/recents/TouchInteractionService$2;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/TouchInteractionService$2;->lambda$onReceive$0(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/miui/home/recents/TouchInteractionService$2;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Context;)V
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService$2;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->access$600(Lcom/miui/home/recents/TouchInteractionService;)V

    .line 279
    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->clearRecentsTaskLoadPlan()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 276
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 277
    sget-object p2, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {p2}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/miui/home/recents/TouchInteractionService$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/TouchInteractionService$2$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/TouchInteractionService$2;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p0, "TouchInteractionService"

    const-string p1, "onReceive    ACTION_USER_UNLOCKED"

    .line 281
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
