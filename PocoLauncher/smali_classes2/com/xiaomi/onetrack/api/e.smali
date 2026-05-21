.class Lcom/xiaomi/onetrack/api/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/c;Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/e;->b:Lcom/xiaomi/onetrack/api/c;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "B"

    const-string v1, "H"

    const-string v2, "BaseOneTrackImp"

    .line 326
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/e;->b:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v3}, Lcom/xiaomi/onetrack/api/c;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 329
    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/e;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 330
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 331
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 332
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 336
    :cond_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 337
    new-instance v7, Lcom/xiaomi/onetrack/api/an;

    invoke-direct {v7, v6}, Lcom/xiaomi/onetrack/api/an;-><init>(Lorg/json/JSONObject;)V

    .line 338
    iget-object v6, p0, Lcom/xiaomi/onetrack/api/e;->b:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v7}, Lcom/xiaomi/onetrack/api/an;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/xiaomi/onetrack/api/c;->c(Lcom/xiaomi/onetrack/api/c;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 342
    :cond_2
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 343
    iget-object v6, p0, Lcom/xiaomi/onetrack/api/e;->b:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v7}, Lcom/xiaomi/onetrack/api/an;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/xiaomi/onetrack/api/c;->b(Lcom/xiaomi/onetrack/api/c;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 344
    iget-object v8, p0, Lcom/xiaomi/onetrack/api/e;->b:Lcom/xiaomi/onetrack/api/c;

    iget-object v9, v8, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/Configuration;

    iget-object v8, v8, Lcom/xiaomi/onetrack/api/c;->g:Lcom/xiaomi/onetrack/util/w;

    invoke-static {v7, v5, v9, v6, v8}, Lcom/xiaomi/onetrack/api/am;->a(Lcom/xiaomi/onetrack/api/an;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/w;)Ljava/lang/String;

    move-result-object v5

    .line 346
    iget-object v6, p0, Lcom/xiaomi/onetrack/api/e;->b:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v6}, Lcom/xiaomi/onetrack/api/c;->j()Lcom/xiaomi/onetrack/api/ao;

    move-result-object v6

    invoke-virtual {v7}, Lcom/xiaomi/onetrack/api/an;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lcom/xiaomi/onetrack/api/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string v5, "h5 json is empty or has no \"H\" or \"B\" "

    .line 333
    invoke-static {v2, v5}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackEventFromH5 error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
