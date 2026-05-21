.class Lcom/xiaomi/onetrack/api/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:J

.field final synthetic i:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/c;ZLjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/f;->i:Lcom/xiaomi/onetrack/api/c;

    iput-boolean p2, p0, Lcom/xiaomi/onetrack/api/f;->a:Z

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/xiaomi/onetrack/api/f;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/onetrack/api/f;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/xiaomi/onetrack/api/f;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/xiaomi/onetrack/api/f;->g:Ljava/lang/String;

    iput-wide p9, p0, Lcom/xiaomi/onetrack/api/f;->h:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, ""

    const-string v3, "BaseOneTrackImp"

    const-string v4, "onetrack_bug_report"

    const/4 v5, 0x1

    .line 362
    :try_start_0
    iget-object v0, v1, Lcom/xiaomi/onetrack/api/f;->i:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 365
    :cond_0
    iget-object v0, v1, Lcom/xiaomi/onetrack/api/f;->i:Lcom/xiaomi/onetrack/api/c;

    iget-object v0, v0, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v6, "tr"

    invoke-static {v0, v4, v6, v2, v5}, Lcom/xiaomi/onetrack/h/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 367
    iget-boolean v0, v1, Lcom/xiaomi/onetrack/api/f;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "java"

    const-string v6, "anr"

    const-string v7, "native"

    .line 368
    filled-new-array {v0, v6, v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v6, v1, Lcom/xiaomi/onetrack/api/f;->b:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "track custom exception failed, crashType invalid!!!"

    .line 369
    invoke-static {v3, v0}, Lcom/xiaomi/onetrack/util/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, v1, Lcom/xiaomi/onetrack/api/f;->i:Lcom/xiaomi/onetrack/api/c;

    iget-object v0, v0, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v6, "ch"

    const-string v7, "r2"

    invoke-static {v0, v4, v6, v7, v5}, Lcom/xiaomi/onetrack/h/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 375
    :cond_1
    iget-object v0, v1, Lcom/xiaomi/onetrack/api/f;->i:Lcom/xiaomi/onetrack/api/c;

    iget-object v6, v1, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/Map;

    invoke-static {v0, v6}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/c;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v15

    .line 376
    iget-object v0, v1, Lcom/xiaomi/onetrack/api/f;->i:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/c;->j()Lcom/xiaomi/onetrack/api/ao;

    move-result-object v0

    iget-object v7, v1, Lcom/xiaomi/onetrack/api/f;->d:Ljava/lang/String;

    iget-object v8, v1, Lcom/xiaomi/onetrack/api/f;->e:Ljava/lang/String;

    iget-object v9, v1, Lcom/xiaomi/onetrack/api/f;->b:Ljava/lang/String;

    iget-object v10, v1, Lcom/xiaomi/onetrack/api/f;->f:Ljava/lang/String;

    iget-object v11, v1, Lcom/xiaomi/onetrack/api/f;->g:Ljava/lang/String;

    iget-wide v12, v1, Lcom/xiaomi/onetrack/api/f;->h:J

    iget-object v6, v1, Lcom/xiaomi/onetrack/api/f;->i:Lcom/xiaomi/onetrack/api/c;

    iget-object v14, v6, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/Configuration;

    iget-object v6, v6, Lcom/xiaomi/onetrack/api/c;->g:Lcom/xiaomi/onetrack/util/w;

    iget-boolean v5, v1, Lcom/xiaomi/onetrack/api/f;->a:Z

    move-object/from16 v16, v6

    move/from16 v17, v5

    .line 377
    invoke-static/range {v7 .. v17}, Lcom/xiaomi/onetrack/api/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/xiaomi/onetrack/Configuration;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/w;Z)Ljava/lang/String;

    move-result-object v5

    .line 376
    invoke-interface {v0, v4, v5}, Lcom/xiaomi/onetrack/api/ao;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 379
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trackException error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    instance-of v0, v0, Lorg/json/JSONException;

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, v1, Lcom/xiaomi/onetrack/api/f;->i:Lcom/xiaomi/onetrack/api/c;

    iget-object v0, v0, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "bu"

    const/4 v5, 0x1

    invoke-static {v0, v4, v3, v2, v5}, Lcom/xiaomi/onetrack/h/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 383
    iget-object v0, v1, Lcom/xiaomi/onetrack/api/f;->i:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/c;->j()Lcom/xiaomi/onetrack/api/ao;

    move-result-object v0

    iget-object v1, v1, Lcom/xiaomi/onetrack/api/f;->i:Lcom/xiaomi/onetrack/api/c;

    iget-object v2, v1, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/Configuration;

    iget-object v3, v1, Lcom/xiaomi/onetrack/api/c;->g:Lcom/xiaomi/onetrack/util/w;

    const-string v4, "onetrack_bug_report"

    const-string v5, "bu"

    const-string v6, ""

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/ao;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
