.class Lcom/miui/home/recents/TouchInteractionService$3;
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
.method constructor <init>(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/miui/home/recents/TouchInteractionService$3;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 319
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "action_pendding_intent_click_circle_search"

    .line 323
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "TouchInteractionService"

    const-string p2, "Action click circleSearch:"

    .line 324
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService$3;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    .line 326
    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->access$100(Lcom/miui/home/recents/TouchInteractionService;)I

    move-result p0

    const/16 p2, 0x9

    .line 325
    invoke-static {p1, p0, p2}, Lcom/miui/home/recents/cts/CircleToSearchHelper;->invokeCircleToSearch(Landroid/content/Context;II)Z

    :cond_1
    :goto_0
    return-void
.end method
