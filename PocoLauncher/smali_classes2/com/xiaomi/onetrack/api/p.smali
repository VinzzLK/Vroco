.class Lcom/xiaomi/onetrack/api/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/c;Ljava/lang/String;Z)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/c;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/p;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xiaomi/onetrack/api/p;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, ""

    const-string v1, "BaseOneTrackImp"

    const-string v2, "onetrack_pa"

    const/4 v3, 0x1

    .line 703
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v4}, Lcom/xiaomi/onetrack/api/c;->i()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 706
    :cond_0
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/c;

    iget-object v4, v4, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v4}, Lcom/xiaomi/onetrack/Configuration;->isAutoTrackActivityAction()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "config.autoTrackActivityAction is false, ignore onetrack_pa resume event"

    .line 707
    invoke-static {v1, v4}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 710
    :cond_1
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/c;

    iget-object v4, v4, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v4}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tr"

    invoke-static {v4, v2, v5, v0, v3}, Lcom/xiaomi/onetrack/h/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 712
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/c;

    invoke-static {v4, v2}, Lcom/xiaomi/onetrack/api/c;->b(Lcom/xiaomi/onetrack/api/c;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 713
    iget-object v5, p0, Lcom/xiaomi/onetrack/api/p;->a:Ljava/lang/String;

    const-string v6, "onetrack_pa"

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/c;

    iget-object v7, v4, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/Configuration;

    iget-boolean v9, p0, Lcom/xiaomi/onetrack/api/p;->b:Z

    iget-object v10, v4, Lcom/xiaomi/onetrack/api/c;->g:Lcom/xiaomi/onetrack/util/w;

    invoke-static/range {v5 .. v10}, Lcom/xiaomi/onetrack/api/am;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Lorg/json/JSONObject;ZLcom/xiaomi/onetrack/util/w;)Ljava/lang/String;

    move-result-object v4

    .line 714
    iget-object v5, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v5}, Lcom/xiaomi/onetrack/api/c;->j()Lcom/xiaomi/onetrack/api/ao;

    move-result-object v5

    invoke-interface {v5, v2, v4}, Lcom/xiaomi/onetrack/api/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    sget-boolean v4, Lcom/xiaomi/onetrack/util/q;->a:Z

    if-eqz v4, :cond_2

    const-string v4, "trackPageStartAuto"

    .line 716
    invoke-static {v1, v4}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 719
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auto trackPageStartAuto error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    instance-of v1, v4, Lorg/json/JSONException;

    if-eqz v1, :cond_2

    .line 721
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/c;

    iget-object v1, v1, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "bu"

    invoke-static {v1, v2, v4, v0, v3}, Lcom/xiaomi/onetrack/h/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 723
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/c;->j()Lcom/xiaomi/onetrack/api/ao;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/c;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/Configuration;

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/c;->g:Lcom/xiaomi/onetrack/util/w;

    const-string v4, "onetrack_pa"

    const-string v5, "bu"

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/ao;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
