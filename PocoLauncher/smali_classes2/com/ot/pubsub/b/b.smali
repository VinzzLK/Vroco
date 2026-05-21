.class Lcom/ot/pubsub/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ot/pubsub/b/a;


# direct methods
.method constructor <init>(Lcom/ot/pubsub/b/a;Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/ot/pubsub/b/b;->b:Lcom/ot/pubsub/b/a;

    iput-object p2, p0, Lcom/ot/pubsub/b/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/ot/pubsub/b/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/ot/pubsub/b/b;->b:Lcom/ot/pubsub/b/a;

    iget-object p0, p0, Lcom/ot/pubsub/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/ot/pubsub/b/a;->c(Ljava/lang/String;)V

    return-void
.end method
