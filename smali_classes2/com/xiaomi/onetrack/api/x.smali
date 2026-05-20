.class Lcom/xiaomi/onetrack/api/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/c;)V
    .locals 0

    .line 982
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/x;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, ""

    const-string v1, "onetrack_cta_status"

    const/4 v2, 0x1

    .line 986
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/x;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v3}, Lcom/xiaomi/onetrack/api/c;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 989
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/x;->a:Lcom/xiaomi/onetrack/api/c;

    iget-object v3, v3, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v3}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tr"

    invoke-static {v3, v1, v4, v0, v2}, Lcom/xiaomi/onetrack/h/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 991
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/x;->a:Lcom/xiaomi/onetrack/api/c;

    iget-object v4, v3, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/Configuration;

    iget-object v3, v3, Lcom/xiaomi/onetrack/api/c;->g:Lcom/xiaomi/onetrack/util/w;

    invoke-static {v4, v3}, Lcom/xiaomi/onetrack/api/am;->a(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/w;)Ljava/lang/String;

    move-result-object v3

    .line 992
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/x;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v4}, Lcom/xiaomi/onetrack/api/c;->j()Lcom/xiaomi/onetrack/api/ao;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Lcom/xiaomi/onetrack/api/ao;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 994
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cta event error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BaseOneTrackImp"

    invoke-static {v5, v4}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    instance-of v3, v3, Lorg/json/JSONException;

    if-eqz v3, :cond_1

    .line 996
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/x;->a:Lcom/xiaomi/onetrack/api/c;

    iget-object v3, v3, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v3}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bu"

    invoke-static {v3, v1, v4, v0, v2}, Lcom/xiaomi/onetrack/h/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 998
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/x;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/c;->j()Lcom/xiaomi/onetrack/api/ao;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/x;->a:Lcom/xiaomi/onetrack/api/c;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/Configuration;

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/c;->g:Lcom/xiaomi/onetrack/util/w;

    const-string v4, "onetrack_cta_status"

    const-string v5, "bu"

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/ao;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
