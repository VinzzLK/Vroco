.class Lcom/xiaomi/onetrack/api/ah$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/api/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/ah;


# direct methods
.method private constructor <init>(Lcom/xiaomi/onetrack/api/ah;Landroid/os/Looper;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ah$a;->a:Lcom/xiaomi/onetrack/api/ah;

    .line 139
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/onetrack/api/ah;Landroid/os/Looper;Lcom/xiaomi/onetrack/api/ai;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/api/ah$a;-><init>(Lcom/xiaomi/onetrack/api/ah;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 147
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const-string v2, "BroadcastManager"

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    .line 149
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ah$a;->a:Lcom/xiaomi/onetrack/api/ah;

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/api/ah;->a(Lcom/xiaomi/onetrack/api/ah;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "screenReceiver exception: "

    .line 151
    invoke-static {v2, v1, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    :cond_2
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    .line 156
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ah$a;->a:Lcom/xiaomi/onetrack/api/ah;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/ah;->b(Lcom/xiaomi/onetrack/api/ah;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 158
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 160
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isRestrictGetNetworkInfo()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 166
    invoke-static {}, Lcom/xiaomi/onetrack/b/o;->c()Z

    move-result p1

    if-nez p1, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 167
    :goto_1
    invoke-static {v0}, Lcom/xiaomi/onetrack/b/o;->b(Z)V

    goto :goto_2

    .line 170
    :cond_4
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    move-result p1

    .line 171
    invoke-static {p1}, Lcom/xiaomi/onetrack/b/o;->b(Z)V

    .line 173
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only one of allowed NetworkInfo :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isRestrictGetNetworkInfo()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ,network status changed, isNetworkConnected: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/b/o;->c()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 175
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ah$a;->a:Lcom/xiaomi/onetrack/api/ah;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/ah;->c(Lcom/xiaomi/onetrack/api/ah;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 176
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/b;->a()Lcom/xiaomi/onetrack/a/c/b;

    move-result-object p1

    invoke-static {}, Lcom/xiaomi/onetrack/b/o;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/onetrack/a/c/b;->a(Z)V

    .line 178
    :cond_5
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ah$a;->a:Lcom/xiaomi/onetrack/api/ah;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/ah;->d(Lcom/xiaomi/onetrack/api/ah;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 179
    invoke-static {}, Lcom/xiaomi/onetrack/c/y;->a()Lcom/xiaomi/onetrack/c/y;

    move-result-object p1

    invoke-static {}, Lcom/xiaomi/onetrack/b/o;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/onetrack/c/y;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_BROADCAST_NET_RECEIVER throwable:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ah$a;->a:Lcom/xiaomi/onetrack/api/ah;

    invoke-static {p0}, Lcom/xiaomi/onetrack/api/ah;->b(Lcom/xiaomi/onetrack/api/ah;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_7
    return-void
.end method
