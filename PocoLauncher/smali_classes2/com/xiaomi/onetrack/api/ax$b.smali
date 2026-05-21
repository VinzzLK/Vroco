.class Lcom/xiaomi/onetrack/api/ax$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/api/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/ax;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/ax;Landroid/os/Looper;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ax$b;->a:Lcom/xiaomi/onetrack/api/ax;

    .line 251
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 256
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 257
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 258
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ax$b;->a:Lcom/xiaomi/onetrack/api/ax;

    invoke-static {p0}, Lcom/xiaomi/onetrack/api/ax;->h(Lcom/xiaomi/onetrack/api/ax;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 260
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ax$b;->a:Lcom/xiaomi/onetrack/api/ax;

    invoke-static {p0}, Lcom/xiaomi/onetrack/api/ax;->i(Lcom/xiaomi/onetrack/api/ax;)V

    :cond_1
    :goto_0
    return-void
.end method
