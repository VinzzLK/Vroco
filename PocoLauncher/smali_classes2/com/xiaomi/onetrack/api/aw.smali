.class Lcom/xiaomi/onetrack/api/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/av;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/av;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/aw;->a:Lcom/xiaomi/onetrack/api/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 51
    invoke-static {}, Lcom/xiaomi/onetrack/util/p;->a()Lcom/xiaomi/onetrack/util/p;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/Boolean;)V

    .line 52
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isRestrictGetNetworkInfo()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 53
    invoke-static {}, Lcom/xiaomi/onetrack/api/ah;->a()Lcom/xiaomi/onetrack/api/ah;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/ah;->f()V

    :cond_0
    return-void
.end method
