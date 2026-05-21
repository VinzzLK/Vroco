.class Lcom/ot/pubsub/a/k;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/ot/pubsub/a/d;


# direct methods
.method constructor <init>(Lcom/ot/pubsub/a/d;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/ot/pubsub/a/k;->a:Lcom/ot/pubsub/a/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 213
    new-instance p2, Lcom/ot/pubsub/a/l;

    invoke-direct {p2, p0, p1}, Lcom/ot/pubsub/a/l;-><init>(Lcom/ot/pubsub/a/k;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/ot/pubsub/e/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
