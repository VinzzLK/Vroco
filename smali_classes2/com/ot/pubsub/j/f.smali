.class Lcom/ot/pubsub/j/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ot/pubsub/j/e;


# direct methods
.method constructor <init>(Lcom/ot/pubsub/j/e;Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/ot/pubsub/j/f;->b:Lcom/ot/pubsub/j/e;

    iput-object p2, p0, Lcom/ot/pubsub/j/f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/ot/pubsub/j/f;->a:Ljava/lang/String;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 232
    iget-object p0, p0, Lcom/ot/pubsub/j/f;->b:Lcom/ot/pubsub/j/e;

    iget-object p0, p0, Lcom/ot/pubsub/j/e;->a:Lcom/ot/pubsub/j/d;

    invoke-static {p0}, Lcom/ot/pubsub/j/d;->a(Lcom/ot/pubsub/j/d;)V

    .line 233
    invoke-static {}, Lcom/ot/pubsub/j/d;->a()Lcom/ot/pubsub/j/d;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/ot/pubsub/j/d;->a(Z)V

    .line 234
    invoke-static {}, Lcom/ot/pubsub/j/d;->a()Lcom/ot/pubsub/j/d;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ot/pubsub/j/d;->a(IZ)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/ot/pubsub/j/f;->a:Ljava/lang/String;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object p0, p0, Lcom/ot/pubsub/j/f;->b:Lcom/ot/pubsub/j/e;

    iget-object p0, p0, Lcom/ot/pubsub/j/e;->a:Lcom/ot/pubsub/j/d;

    invoke-static {p0}, Lcom/ot/pubsub/j/d;->b(Lcom/ot/pubsub/j/d;)V

    .line 237
    invoke-static {}, Lcom/ot/pubsub/j/d;->a()Lcom/ot/pubsub/j/d;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/ot/pubsub/j/d;->a(Z)V

    .line 238
    invoke-static {}, Lcom/ot/pubsub/j/d;->a()Lcom/ot/pubsub/j/d;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Lcom/ot/pubsub/j/d;->a(IZ)V

    :cond_1
    :goto_0
    return-void
.end method
