.class public Lcom/xiaomi/onetrack/api/as;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/api/ao;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackLocalImp"

.field private static final b:I = 0x19000

.field private static final c:I = 0x7d000

.field private static final d:I = 0x2


# instance fields
.field private e:Lcom/xiaomi/onetrack/Configuration;

.field private f:Lcom/xiaomi/onetrack/util/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/w;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/xiaomi/onetrack/f/g;->a(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/as;->e:Lcom/xiaomi/onetrack/Configuration;

    .line 53
    iput-object p3, p0, Lcom/xiaomi/onetrack/api/as;->f:Lcom/xiaomi/onetrack/util/w;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/as;)Lcom/xiaomi/onetrack/Configuration;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/as;->e:Lcom/xiaomi/onetrack/Configuration;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    aput-object p2, p0, p1

    .line 420
    invoke-static {p3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneTrackLocalImp"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/as;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz p5, :cond_0

    .line 154
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/as;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_0
    invoke-direct {p0, v0, p1, p3, p4}, Lcom/xiaomi/onetrack/api/as;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    if-eqz p5, :cond_2

    .line 161
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/onetrack/f/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/onetrack/f/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkCloudControl error\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneTrackLocalImp"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "OneTrackLocalImp"

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 363
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 368
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bannedParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 371
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 373
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 378
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "filterParams error\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "jsonObject is null or bannedParams is empty"

    .line 364
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 171
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/onetrack/b/o;->b(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const-string v6, "OneTrackLocalImp"

    if-eqz v4, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",This appId and device in whiteList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 176
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/onetrack/b/o;->c(Ljava/lang/String;)Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    const-string v0, "This app disabled tracking data, skip it."

    .line 177
    invoke-static {v6, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 180
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/onetrack/b/o;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This appId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is oldUploadByCloudControl"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct/range {p0 .. p4}, Lcom/xiaomi/onetrack/api/as;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    return v0

    :cond_2
    const-string v4, ""

    if-nez v3, :cond_3

    move-object v8, v4

    goto :goto_0

    :cond_3
    :try_start_0
    const-string v8, "tip"

    .line 186
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 187
    :goto_0
    invoke-static {}, Lcom/xiaomi/onetrack/b/j;->a()Lcom/xiaomi/onetrack/b/j;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Lcom/xiaomi/onetrack/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 188
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "eventConfig: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_4
    move-object v11, v4

    :goto_1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "bannedParams"

    if-nez v10, :cond_7

    :try_start_1
    const-string v10, "nc"

    const/4 v12, 0x0

    .line 191
    invoke-static {v9, v2, v10, v12}, Lcom/xiaomi/onetrack/b/o;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_7

    move v12, v7

    .line 193
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_7

    .line 194
    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "needId"

    .line 195
    invoke-static {v13, v2, v14, v4}, Lcom/xiaomi/onetrack/b/o;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "needIds: %s, tip: %s"

    .line 196
    invoke-direct {v0, v14, v8, v15}, Lcom/xiaomi/onetrack/api/as;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-direct {v0, v8, v14}, Lcom/xiaomi/onetrack/api/as;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 200
    invoke-direct {v0, v13, v1, v2}, Lcom/xiaomi/onetrack/api/as;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    return v7

    .line 203
    :cond_5
    invoke-static {v13, v2, v11, v4}, Lcom/xiaomi/onetrack/b/o;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v10, v5

    goto :goto_3

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_7
    move-object v8, v4

    move v10, v7

    :goto_3
    if-nez v10, :cond_9

    if-eqz v9, :cond_9

    .line 210
    invoke-direct {v0, v9, v1, v2}, Lcom/xiaomi/onetrack/api/as;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    return v7

    .line 213
    :cond_8
    invoke-static {v9, v2, v11, v4}, Lcom/xiaomi/onetrack/b/o;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 215
    :cond_9
    invoke-static {}, Lcom/xiaomi/onetrack/b/j;->a()Lcom/xiaomi/onetrack/b/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/onetrack/b/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bannedParamsForEvent: %s, bannedParamsForApp: %s"

    .line 216
    invoke-direct {v0, v8, v1, v2}, Lcom/xiaomi/onetrack/api/as;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ","

    .line 217
    invoke-static {v1, v8, v2}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    move-object/from16 v2, p3

    .line 218
    invoke-direct {v0, v2, v1}, Lcom/xiaomi/onetrack/api/as;->a(Lorg/json/JSONObject;Ljava/util/Set;)V

    .line 219
    invoke-direct {v0, v3, v1}, Lcom/xiaomi/onetrack/api/as;->a(Lorg/json/JSONObject;Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v5

    :catch_0
    move-exception v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldUploadByCloudControl error\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method private a(Lorg/json/JSONObject;)Z
    .locals 1

    const/4 p0, 0x0

    .line 409
    :try_start_0
    sget-object v0, Lcom/xiaomi/onetrack/f/b$b;->F:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "OneTrackLocalImp"

    const-string v0, ""

    .line 411
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 11

    const-string p0, "shouldUploadByCycle "

    const-string v0, "OneTrackLocalImp"

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "cycle"

    const-string v3, ""

    .line 256
    invoke-static {p1, p2, v2, v3}, Lcom/xiaomi/onetrack/b/o;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 260
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_cycle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ","

    .line 261
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-static {}, Lcom/xiaomi/onetrack/util/ad;->d()I

    move-result v2

    .line 263
    invoke-static {}, Lcom/xiaomi/onetrack/util/ad;->c()I

    move-result v3

    .line 264
    array-length v4, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x0

    move v7, v1

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    :try_start_1
    aget-object v8, p1, v6

    .line 265
    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "w"

    .line 266
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-ne v2, v9, :cond_2

    return v1

    :cond_1
    const-string v10, "m"

    .line 270
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_2

    if-ne v3, v9, :cond_2

    return v1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    move v7, v5

    goto :goto_0

    :catch_0
    move-exception p1

    move v1, v7

    goto :goto_1

    :catch_1
    move-exception p1

    .line 278
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_exception: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v1

    :cond_3
    return v7
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const-string v0, "disable_log"

    const/4 v1, 0x0

    .line 228
    invoke-static {p1, p3, v0, v1}, Lcom/xiaomi/onetrack/b/o;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "sa"

    const-string v3, "OneTrackLocalImp"

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AppId is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", this event "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " disabled tracking data, skip it."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/as;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "r1"

    invoke-static {p1, p3, v2, p2, v4}, Lcom/xiaomi/onetrack/h/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 231
    iget-object v6, p0, Lcom/xiaomi/onetrack/api/as;->e:Lcom/xiaomi/onetrack/Configuration;

    iget-object v7, p0, Lcom/xiaomi/onetrack/api/as;->f:Lcom/xiaomi/onetrack/util/w;

    const-string v9, "sa"

    const-string v10, "r1"

    move-object v5, p0

    move-object v8, p3

    invoke-static/range {v5 .. v10}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/ao;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 235
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/xiaomi/onetrack/api/as;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    const-string v5, "r2"

    if-nez v0, :cond_1

    const-string p1, "This event should not upload by Cycle , skip it."

    .line 236
    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/as;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3, v2, v5, v4}, Lcom/xiaomi/onetrack/h/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    iget-object v7, p0, Lcom/xiaomi/onetrack/api/as;->e:Lcom/xiaomi/onetrack/Configuration;

    iget-object v8, p0, Lcom/xiaomi/onetrack/api/as;->f:Lcom/xiaomi/onetrack/util/w;

    const-string v10, "sa"

    const-string v11, "r5"

    move-object v6, p0

    move-object v9, p3

    invoke-static/range {v6 .. v11}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/ao;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 243
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/onetrack/api/as;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, " This event should not upload by sampling , skip it."

    .line 244
    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/as;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3, v2, v5, v4}, Lcom/xiaomi/onetrack/h/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 246
    iget-object v7, p0, Lcom/xiaomi/onetrack/api/as;->e:Lcom/xiaomi/onetrack/Configuration;

    iget-object v8, p0, Lcom/xiaomi/onetrack/api/as;->f:Lcom/xiaomi/onetrack/util/w;

    const-string v10, "sa"

    const-string v11, "r2"

    move-object v6, p0

    move-object v9, p3

    invoke-static/range {v6 .. v11}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/ao;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2
    return v1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 321
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p0, "\\."

    .line 325
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 326
    array-length p1, p0

    const/4 v1, 0x5

    if-lt p1, v1, :cond_1

    const-string p1, ","

    .line 327
    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x4

    .line 328
    aget-object p0, p0, p2

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isMatchId error\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneTrackLocalImp"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object/from16 v2, p4

    const-string v3, ""

    const-string v7, "OneTrackLocalImp"

    const/4 v8, 0x1

    .line 285
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/b/j;->a()Lcom/xiaomi/onetrack/b/j;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/xiaomi/onetrack/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "needIds"

    .line 286
    invoke-static {v5, p2, v6, v3}, Lcom/xiaomi/onetrack/b/o;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v2, :cond_0

    move-object v9, v3

    goto :goto_0

    :cond_0
    const-string v9, "tip"

    .line 287
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 288
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tip: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", needIds: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0, v9, v6}, Lcom/xiaomi/onetrack/api/as;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "disable_log"

    const/4 v9, 0x0

    .line 292
    invoke-static {v5, p2, v6, v9}, Lcom/xiaomi/onetrack/b/o;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "sa"

    if-eqz v6, :cond_1

    :try_start_1
    const-string v1, " This event disabled tracking data , skip it."

    .line 293
    invoke-static {v7, v1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v1, v0, Lcom/xiaomi/onetrack/api/as;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r1"

    invoke-static {v1, p2, v10, v2, v8}, Lcom/xiaomi/onetrack/h/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 295
    iget-object v2, v0, Lcom/xiaomi/onetrack/api/as;->e:Lcom/xiaomi/onetrack/Configuration;

    iget-object v3, v0, Lcom/xiaomi/onetrack/api/as;->f:Lcom/xiaomi/onetrack/util/w;

    const-string v5, "sa"

    const-string v6, "r1"

    move-object v1, p0

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/ao;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    .line 299
    :cond_1
    invoke-direct {p0, v5, p1, p2}, Lcom/xiaomi/onetrack/api/as;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v1, " This event should not upload by sampling , skip it."

    .line 300
    invoke-static {v7, v1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v1, v0, Lcom/xiaomi/onetrack/api/as;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r2"

    invoke-static {v1, p2, v10, v2, v8}, Lcom/xiaomi/onetrack/h/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 302
    iget-object v2, v0, Lcom/xiaomi/onetrack/api/as;->e:Lcom/xiaomi/onetrack/Configuration;

    iget-object v3, v0, Lcom/xiaomi/onetrack/api/as;->f:Lcom/xiaomi/onetrack/util/w;

    const-string v5, "sa"

    const-string v6, "r2"

    move-object v1, p0

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/ao;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_2
    const-string v6, "bannedParams"

    .line 306
    invoke-static {v5, p2, v6, v3}, Lcom/xiaomi/onetrack/b/o;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    :cond_3
    invoke-static {}, Lcom/xiaomi/onetrack/b/j;->a()Lcom/xiaomi/onetrack/b/j;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/xiaomi/onetrack/b/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bannedParamsForApp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", bannedParamsForEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ","

    .line 310
    invoke-static {v1, v3, v4}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    move-object v3, p3

    .line 311
    invoke-direct {p0, p3, v1}, Lcom/xiaomi/onetrack/api/as;->a(Lorg/json/JSONObject;Ljava/util/Set;)V

    .line 312
    invoke-direct {p0, v2, v1}, Lcom/xiaomi/onetrack/api/as;->a(Lorg/json/JSONObject;Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v8

    :catch_0
    move-exception v0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldEventOrNeedIdByCloudControl error\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v8
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 383
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/as;->f:Lcom/xiaomi/onetrack/util/w;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/util/w;->b()Z

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/f/b;->a(Z)Z

    move-result p0

    const/4 v0, 0x1

    const-string v1, "OneTrackLocalImp"

    if-eqz p0, :cond_0

    const-string p0, "basicModeEnable is open,notUploadBySampling return false"

    .line 385
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 388
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/b/j;->a()Lcom/xiaomi/onetrack/b/j;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/onetrack/b/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    .line 389
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object p2

    .line 391
    invoke-static {}, Lcom/xiaomi/onetrack/util/r;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gaid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oaid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    rem-int/lit8 p2, p2, 0x64

    int-to-long v2, p2

    cmp-long p2, p0, v2

    if-lez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 400
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldUploadBySampling "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",  shouldUpload="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", sample="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", val="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 339
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 343
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    :try_start_0
    const-string p0, "\\."

    .line 348
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 349
    array-length p1, p0

    const/4 v2, 0x5

    if-lt p1, v2, :cond_2

    const-string p1, ","

    .line 350
    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x4

    .line 351
    aget-object p0, p0, p2

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return v0

    :catch_0
    move-exception p0

    .line 356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isMatchId error\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneTrackLocalImp"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 106
    new-instance v0, Lcom/xiaomi/onetrack/api/au;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/api/au;-><init>(Lcom/xiaomi/onetrack/api/as;I)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "OneTrackLocalImp"

    const/4 v1, 0x0

    .line 62
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v3, "H"

    .line 63
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v4, "B"

    .line 64
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v3, v1

    goto :goto_0

    :catch_2
    move-exception v4

    move-object v2, v1

    move-object v3, v2

    .line 66
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " data JSONException e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v9, v1

    move-object v7, v2

    move-object v8, v3

    .line 69
    invoke-direct {p0, v8}, Lcom/xiaomi/onetrack/api/as;->a(Lorg/json/JSONObject;)Z

    move-result v10

    .line 70
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/as;->f:Lcom/xiaomi/onetrack/util/w;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/util/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v10, :cond_0

    const-string p0, "The privacy policy is not permitted, and the event is not basic or recommend event or custom dau event, skip it."

    .line 71
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 75
    :cond_0
    invoke-virtual {p0, p1, p2, v10}, Lcom/xiaomi/onetrack/api/as;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    iget-object p2, p0, Lcom/xiaomi/onetrack/api/as;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {p2}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "se"

    const-string v2, "r1"

    invoke-static {p2, p1, v1, v2, v0}, Lcom/xiaomi/onetrack/h/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/as;->e:Lcom/xiaomi/onetrack/Configuration;

    iget-object v5, p0, Lcom/xiaomi/onetrack/api/as;->f:Lcom/xiaomi/onetrack/util/w;

    const-string v7, "se"

    const-string v8, "r1"

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/ao;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/c/j;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/c/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/j;->a(Lcom/xiaomi/onetrack/api/ao;)V

    .line 88
    sget-boolean v1, Lcom/xiaomi/onetrack/util/q;->a:Z

    if-eqz v1, :cond_3

    const-string v1, "onetrack_bug_report"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_3
    new-instance p2, Lcom/xiaomi/onetrack/api/at;

    invoke-direct {p2, p0, v10}, Lcom/xiaomi/onetrack/api/at;-><init>(Lcom/xiaomi/onetrack/api/as;Z)V

    invoke-static {p2}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    move-object v5, p0

    move-object v6, p1

    .line 101
    invoke-direct/range {v5 .. v10}, Lcom/xiaomi/onetrack/api/as;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 125
    sget-boolean p1, Lcom/xiaomi/onetrack/api/ar;->h:Z

    if-eqz p1, :cond_0

    .line 126
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/j;->a(Lcom/xiaomi/onetrack/api/ao;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    .line 131
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isDisable()Z

    move-result p0

    const-string v0, "OneTrackLocalImp"

    const/4 v1, 0x0

    if-nez p0, :cond_5

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isUseSystemNetTrafficOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 p0, 0x1

    if-eqz p1, :cond_1

    const-string v2, "onetrack_bug_report"

    .line 136
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, p0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-nez p3, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_4

    .line 143
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const p2, 0x19000

    if-le p1, p2, :cond_4

    const-string p0, "Event size exceed limitation!"

    .line 144
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 138
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const p2, 0x7d000

    if-le p1, p2, :cond_4

    const-string p0, "ad Event size exceed limitation!"

    .line 139
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    return p0

    :cond_5
    :goto_2
    const-string p0, "Tracking data is disabled or onetrack use system net traffic only, skip it."

    .line 132
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
