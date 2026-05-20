.class Lcom/xiaomi/onetrack/api/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/c;Z)V
    .locals 0

    .line 1102
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/aa;->b:Lcom/xiaomi/onetrack/api/c;

    iput-boolean p2, p0, Lcom/xiaomi/onetrack/api/aa;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1105
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aa;->b:Lcom/xiaomi/onetrack/api/c;

    iget-object v0, v0, Lcom/xiaomi/onetrack/api/c;->g:Lcom/xiaomi/onetrack/util/w;

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/aa;->a:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/w;->a(Z)V

    .line 1106
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aa;->b:Lcom/xiaomi/onetrack/api/c;

    iget-object v0, v0, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/s;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/api/aa;->a:Z

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;Z)V

    return-void
.end method
