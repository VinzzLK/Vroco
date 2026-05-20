.class Lcom/ot/pubsub/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ot/pubsub/a/d;


# direct methods
.method constructor <init>(Lcom/ot/pubsub/a/d;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/ot/pubsub/a/m;->a:Lcom/ot/pubsub/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/ot/pubsub/a/m;->a:Lcom/ot/pubsub/a/d;

    invoke-static {p0}, Lcom/ot/pubsub/a/d;->b(Lcom/ot/pubsub/a/d;)Lcom/ot/pubsub/a/c;

    move-result-object p0

    invoke-static {p0}, Lcom/ot/pubsub/g/i;->a(Lcom/ot/pubsub/a/c;)V

    return-void
.end method
