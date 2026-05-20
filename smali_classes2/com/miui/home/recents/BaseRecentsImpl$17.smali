.class Lcom/miui/home/recents/BaseRecentsImpl$17;
.super Landroid/content/BroadcastReceiver;
.source "BaseRecentsImpl.java"


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
.method public static synthetic $r8$lambda$H57W2dvxC3DPEB3543arfy3WaVI(Lcom/miui/home/recents/BaseRecentsImpl$17;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl$17;->lambda$onReceive$0(Landroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 972
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$17;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Intent;)V
    .locals 2

    .line 981
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui.fsgesture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "isEnter"

    .line 982
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "typeFrom"

    .line 983
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 984
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$17;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->updateFsgWindowVisibilityState(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 975
    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFsgReceiver  mFsgReceiverSender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", action="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecentsImpl"

    .line 976
    invoke-static {v0, p1}, Lcom/miui/home/recents/util/LogPersistenceHelper;->asyncFileLoggerLevelDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$17;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iget-object p1, p1, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$17$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/recents/BaseRecentsImpl$17$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/BaseRecentsImpl$17;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
