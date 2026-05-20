.class Lcom/xiaomi/onetrack/api/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/c;)V
    .locals 0

    .line 1007
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/y;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1010
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/y;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/c;->j()Lcom/xiaomi/onetrack/api/ao;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/c/j;->a(Lcom/xiaomi/onetrack/api/ao;)V

    return-void
.end method
