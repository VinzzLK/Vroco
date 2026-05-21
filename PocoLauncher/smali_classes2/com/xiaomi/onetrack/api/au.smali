.class Lcom/xiaomi/onetrack/api/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaomi/onetrack/api/as;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/as;I)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/au;->b:Lcom/xiaomi/onetrack/api/as;

    iput p2, p0, Lcom/xiaomi/onetrack/api/au;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 109
    invoke-static {}, Lcom/xiaomi/onetrack/c/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget p0, p0, Lcom/xiaomi/onetrack/api/au;->a:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 114
    invoke-static {}, Lcom/xiaomi/onetrack/c/y;->a()Lcom/xiaomi/onetrack/c/y;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/onetrack/c/y;->a(IZ)V

    .line 115
    invoke-static {}, Lcom/xiaomi/onetrack/c/y;->a()Lcom/xiaomi/onetrack/c/y;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Lcom/xiaomi/onetrack/c/y;->a(IZ)V

    .line 116
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/b;->a()Lcom/xiaomi/onetrack/a/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/c/b;->b()V

    :cond_1
    return-void
.end method
