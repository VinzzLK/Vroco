.class Lcom/xiaomi/onetrack/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/f/b;

.field final synthetic b:Z

.field final synthetic c:Lcom/xiaomi/onetrack/c/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/d;Lcom/xiaomi/onetrack/f/b;Z)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/g;->c:Lcom/xiaomi/onetrack/c/d;

    iput-object p2, p0, Lcom/xiaomi/onetrack/c/g;->a:Lcom/xiaomi/onetrack/f/b;

    iput-boolean p3, p0, Lcom/xiaomi/onetrack/c/g;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "EventManager"

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/c/g;->c:Lcom/xiaomi/onetrack/c/d;

    iget-object v2, p0, Lcom/xiaomi/onetrack/c/g;->a:Lcom/xiaomi/onetrack/f/b;

    iget-boolean v3, p0, Lcom/xiaomi/onetrack/c/g;->b:Z

    invoke-static {v1, v2, v3}, Lcom/xiaomi/onetrack/c/d;->a(Lcom/xiaomi/onetrack/c/d;Lcom/xiaomi/onetrack/f/b;Z)Z

    .line 122
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/c/g;->b:Z

    if-eqz v1, :cond_0

    .line 123
    invoke-static {}, Lcom/xiaomi/onetrack/a/c;->a()Lcom/xiaomi/onetrack/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/c/g;->a:Lcom/xiaomi/onetrack/f/b;

    invoke-virtual {v1, v2}, Lcom/xiaomi/onetrack/a/c;->a(Lcom/xiaomi/onetrack/f/b;)V

    .line 125
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/b;->a()Lcom/xiaomi/onetrack/a/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/a/c/b;->b()V

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/c/g;->a:Lcom/xiaomi/onetrack/f/b;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/c/g;->a:Lcom/xiaomi/onetrack/f/b;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/f/b;->g()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/g;->a:Lcom/xiaomi/onetrack/f/b;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/f/b;->f()I

    move-result p0

    .line 128
    invoke-static {}, Lcom/xiaomi/onetrack/c/y;->a()Lcom/xiaomi/onetrack/c/y;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/xiaomi/onetrack/c/y;->a(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "EventManager.addEvent exception: "

    .line 130
    invoke-static {v0, v1, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
