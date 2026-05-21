.class Lcom/ot/pubsub/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ot/pubsub/a/d;


# direct methods
.method constructor <init>(Lcom/ot/pubsub/a/d;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/ot/pubsub/a/e;->a:Lcom/ot/pubsub/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 84
    invoke-static {}, Lcom/ot/pubsub/util/j;->a()V

    .line 85
    invoke-static {}, Lcom/ot/pubsub/e/a;->a()V

    .line 86
    invoke-static {}, Lcom/ot/pubsub/b/a;->a()Lcom/ot/pubsub/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ot/pubsub/a/e;->a:Lcom/ot/pubsub/a/d;

    invoke-static {v1}, Lcom/ot/pubsub/a/d;->a(Lcom/ot/pubsub/a/d;)Lcom/ot/pubsub/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ot/pubsub/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ot/pubsub/b/a;->a(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/ot/pubsub/g/a;->a()V

    .line 88
    invoke-static {}, Lcom/ot/pubsub/util/t;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ot/pubsub/util/t;->c(J)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/ot/pubsub/a/e;->a:Lcom/ot/pubsub/a/d;

    invoke-static {v0}, Lcom/ot/pubsub/a/d;->a(Lcom/ot/pubsub/a/d;)Lcom/ot/pubsub/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ot/pubsub/Configuration;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    invoke-static {}, Lcom/ot/pubsub/g/b;->a()Lcom/ot/pubsub/g/b;

    move-result-object v0

    iget-object p0, p0, Lcom/ot/pubsub/a/e;->a:Lcom/ot/pubsub/a/d;

    invoke-static {p0}, Lcom/ot/pubsub/a/d;->a(Lcom/ot/pubsub/a/d;)Lcom/ot/pubsub/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ot/pubsub/Configuration;->getInstanceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ot/pubsub/g/b;->a(Ljava/lang/String;)V

    .line 94
    :cond_1
    invoke-static {}, Lcom/ot/pubsub/j/d;->a()Lcom/ot/pubsub/j/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ot/pubsub/j/d;->c()V

    const/4 p0, 0x0

    .line 95
    invoke-static {p0}, Lcom/ot/pubsub/g/i;->b(Z)V

    return-void
.end method
