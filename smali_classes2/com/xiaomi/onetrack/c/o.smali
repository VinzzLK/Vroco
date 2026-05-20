.class Lcom/xiaomi/onetrack/c/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/xiaomi/onetrack/c/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/o;->e:Lcom/xiaomi/onetrack/c/m;

    iput-object p2, p0, Lcom/xiaomi/onetrack/c/o;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/onetrack/c/o;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/onetrack/c/o;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/onetrack/c/o;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/o;->e:Lcom/xiaomi/onetrack/c/m;

    iget-object v1, p0, Lcom/xiaomi/onetrack/c/o;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/onetrack/c/o;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/onetrack/c/o;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/xiaomi/onetrack/c/o;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/xiaomi/onetrack/c/m;->a(Lcom/xiaomi/onetrack/c/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
