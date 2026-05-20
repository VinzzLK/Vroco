.class Lcom/ot/pubsub/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/ot/pubsub/a/d;


# direct methods
.method constructor <init>(Lcom/ot/pubsub/a/d;Z)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/ot/pubsub/a/f;->b:Lcom/ot/pubsub/a/d;

    iput-boolean p2, p0, Lcom/ot/pubsub/a/f;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/ot/pubsub/a/f;->b:Lcom/ot/pubsub/a/d;

    invoke-static {v0}, Lcom/ot/pubsub/a/d;->d(Lcom/ot/pubsub/a/d;)Lcom/ot/pubsub/util/q;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ot/pubsub/a/f;->a:Z

    invoke-virtual {v0, v1}, Lcom/ot/pubsub/util/q;->a(Z)V

    .line 332
    iget-object v0, p0, Lcom/ot/pubsub/a/f;->b:Lcom/ot/pubsub/a/d;

    invoke-static {v0}, Lcom/ot/pubsub/a/d;->a(Lcom/ot/pubsub/a/d;)Lcom/ot/pubsub/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/ot/pubsub/util/m;->a(Lcom/ot/pubsub/Configuration;)Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Lcom/ot/pubsub/a/f;->a:Z

    invoke-static {v0, p0}, Lcom/ot/pubsub/util/t;->a(Ljava/lang/String;Z)V

    return-void
.end method
