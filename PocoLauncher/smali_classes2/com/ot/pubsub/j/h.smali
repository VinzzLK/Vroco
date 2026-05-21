.class Lcom/ot/pubsub/j/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ot/pubsub/j/g;


# direct methods
.method constructor <init>(Lcom/ot/pubsub/j/g;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/ot/pubsub/j/h;->a:Lcom/ot/pubsub/j/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "UploaderEngine"

    .line 305
    iget-object v1, p0, Lcom/ot/pubsub/j/h;->a:Lcom/ot/pubsub/j/g;

    iget-object v1, v1, Lcom/ot/pubsub/j/g;->a:Lcom/ot/pubsub/j/d;

    invoke-virtual {v1}, Lcom/ot/pubsub/j/d;->e()V

    .line 307
    :try_start_0
    invoke-static {}, Lcom/ot/pubsub/util/k;->a()Z

    move-result v1

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadTimer netReceiver, \u7f51\u7edc\u662f\u5426\u53ef\u7528="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 311
    invoke-static {}, Lcom/ot/pubsub/j/d;->a()Lcom/ot/pubsub/j/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ot/pubsub/j/d;->a(Z)V

    .line 312
    invoke-static {}, Lcom/ot/pubsub/j/d;->a()Lcom/ot/pubsub/j/d;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/ot/pubsub/j/d;->a(IZ)V

    .line 313
    invoke-static {}, Lcom/ot/pubsub/j/d;->a()Lcom/ot/pubsub/j/d;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/ot/pubsub/j/d;->a(IZ)V

    .line 314
    invoke-static {}, Lcom/ot/pubsub/j/d;->a()Lcom/ot/pubsub/j/d;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/ot/pubsub/j/d;->a(IZ)V

    .line 315
    iget-object p0, p0, Lcom/ot/pubsub/j/h;->a:Lcom/ot/pubsub/j/g;

    iget-object p0, p0, Lcom/ot/pubsub/j/g;->a:Lcom/ot/pubsub/j/d;

    invoke-static {p0}, Lcom/ot/pubsub/j/d;->b(Lcom/ot/pubsub/j/d;)V

    goto :goto_0

    .line 317
    :cond_0
    iget-object p0, p0, Lcom/ot/pubsub/j/h;->a:Lcom/ot/pubsub/j/g;

    iget-object p0, p0, Lcom/ot/pubsub/j/g;->a:Lcom/ot/pubsub/j/d;

    invoke-static {p0}, Lcom/ot/pubsub/j/d;->a(Lcom/ot/pubsub/j/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netReceiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
