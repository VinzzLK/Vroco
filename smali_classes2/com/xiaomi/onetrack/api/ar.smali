.class public Lcom/xiaomi/onetrack/api/ar;
.super Lcom/xiaomi/onetrack/api/c;


# static fields
.field public static volatile h:Z = true

.field private static final i:Ljava/lang/String; = "OneTrackImp"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/api/c;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 3

    .line 44
    invoke-static {}, Lcom/xiaomi/onetrack/util/r;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/xiaomi/onetrack/util/p;->a()Lcom/xiaomi/onetrack/util/p;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/Boolean;)V

    .line 46
    new-instance p1, Lcom/xiaomi/onetrack/api/av;

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/Configuration;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/c;->g:Lcom/xiaomi/onetrack/util/w;

    invoke-direct {p1, v0, v1}, Lcom/xiaomi/onetrack/api/av;-><init>(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/w;)V

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/c;->a:Lcom/xiaomi/onetrack/api/ao;

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/p;->a()Lcom/xiaomi/onetrack/util/p;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/Boolean;)V

    .line 49
    new-instance v0, Lcom/xiaomi/onetrack/api/as;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/Configuration;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/c;->g:Lcom/xiaomi/onetrack/util/w;

    invoke-direct {v0, p1, v1, v2}, Lcom/xiaomi/onetrack/api/as;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/w;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/c;->a:Lcom/xiaomi/onetrack/api/ao;

    .line 51
    :goto_0
    invoke-static {}, Lcom/xiaomi/onetrack/api/ah;->a()Lcom/xiaomi/onetrack/api/ah;

    move-result-object p1

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/c;->a:Lcom/xiaomi/onetrack/api/ao;

    invoke-virtual {p1, p0}, Lcom/xiaomi/onetrack/api/ah;->a(Lcom/xiaomi/onetrack/api/ao;)V

    return-void
.end method

.method protected a()Z
    .locals 1

    .line 56
    invoke-static {}, Lcom/xiaomi/onetrack/util/r;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/c;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
