.class public Lcom/xiaomi/onetrack/g/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x7530

.field public static final b:I = 0x7530

.field public static final c:Ljava/lang/String; = "OT_SID"

.field public static final d:Ljava/lang/String; = "OT_ts"

.field public static final e:Ljava/lang/String; = "OT_net"

.field public static final f:Ljava/lang/String; = "OT_sender"

.field public static final g:Ljava/lang/String; = "OT_protocol"

.field public static final h:Ljava/lang/String; = "Connection"

.field public static final i:I = 0xea60

.field public static final j:Ljava/lang/String;

.field private static k:Ljava/lang/String; = "HttpUtil"

.field private static final l:Ljava/lang/String; = "GET"

.field private static final m:Ljava/lang/String; = "POST"

.field private static final n:Ljava/lang/String; = "&"

.field private static final o:Ljava/lang/String; = "="

.field private static final p:Ljava/lang/String; = "UTF-8"

.field private static final q:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    invoke-static {}, Lcom/xiaomi/onetrack/g/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/g/b;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/onetrack/g/d;
    .locals 8

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    .line 316
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const v3, 0xea60

    .line 317
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 318
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v3, "POST"

    .line 319
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "accept"

    const-string v4, "*/*"

    .line 320
    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "connection"

    const-string v4, "Keep-Alive"

    .line 321
    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    .line 322
    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Authorization"

    .line 323
    invoke-virtual {v2, v3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 324
    invoke-virtual {v2, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 325
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 326
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    .line 327
    :try_start_2
    array-length v4, p1

    invoke-virtual {p2, p1, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 328
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 330
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 331
    new-instance v3, Lcom/xiaomi/onetrack/g/d;

    invoke-direct {v3}, Lcom/xiaomi/onetrack/g/d;-><init>()V

    .line 332
    iput p1, v3, Lcom/xiaomi/onetrack/g/d;->d:I

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_0

    .line 334
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 338
    :goto_0
    :try_start_3
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/n;->b(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 339
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/xiaomi/onetrack/g/d;->a(Ljava/lang/String;)V

    .line 340
    iget v0, v3, Lcom/xiaomi/onetrack/g/d;->d:I

    if-ne v0, v4, :cond_1

    .line 341
    sget-object v0, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "POST \u6210\u529f publishResponse:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaomi/onetrack/g/d;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 343
    :cond_1
    sget-object v0, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "POST \u5931\u8d25 publishResponse:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaomi/onetrack/g/d;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 349
    :goto_1
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/InputStream;)V

    .line 350
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/OutputStream;)V

    .line 351
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/net/HttpURLConnection;)V

    return-object v3

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v7, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v7

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v0, p2

    move-object p2, v1

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object p2, v1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p2, v1

    move-object v0, p2

    goto :goto_2

    :catchall_3
    move-exception p0

    move-object p2, v1

    move-object v2, p2

    goto :goto_3

    :catch_3
    move-exception p1

    move-object p2, v1

    move-object v0, p2

    move-object v2, v0

    .line 347
    :goto_2
    :try_start_4
    sget-object v3, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpUtils post url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ,"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 349
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/InputStream;)V

    .line 350
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/OutputStream;)V

    .line 351
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/net/HttpURLConnection;)V

    return-object v1

    :catchall_4
    move-exception p0

    move-object v1, p2

    move-object p2, v0

    .line 349
    :goto_3
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/InputStream;)V

    .line 350
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/OutputStream;)V

    .line 351
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/net/HttpURLConnection;)V

    .line 352
    throw p0
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x1e

    new-array v0, v0, [B

    .line 53
    fill-array-data v0, :array_0

    .line 56
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    sget-object v1, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    :goto_0
    return-object v1

    :array_0
    .array-data 1
        0x6dt
        0x69t
        0x75t
        0x69t
        0x5ft
        0x73t
        0x64t
        0x6bt
        0x63t
        0x6ft
        0x6et
        0x66t
        0x69t
        0x67t
        0x5ft
        0x6at
        0x61t
        0x66t
        0x65t
        0x6at
        0x21t
        0x40t
        0x23t
        0x29t
        0x28t
        0x2at
        0x65t
        0x40t
        0x21t
        0x23t
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 126
    invoke-static {p0, v0, v1}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 357
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    move-object p2, v2

    goto :goto_0

    .line 366
    :cond_1
    :try_start_0
    invoke-static {p2, v1}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p2

    .line 367
    :goto_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const v4, 0xea60

    .line 368
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 369
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v4, "POST"

    .line 370
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    .line 371
    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Authorization"

    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bearer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 374
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 375
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    .line 376
    :try_start_2
    array-length v4, p0

    invoke-virtual {p2, p0, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 377
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 379
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 380
    sget-object v1, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postGetToken responseData statusCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 385
    :try_start_3
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/n;->b(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 386
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 390
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/InputStream;)V

    .line 391
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/OutputStream;)V

    .line 392
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/net/HttpURLConnection;)V

    return-object v4

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p0, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p2, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p0, v2

    move-object p2, p0

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object p2, v2

    move-object v3, p2

    goto :goto_2

    :catch_3
    move-exception v0

    move-object p0, v2

    move-object p2, p0

    move-object v3, p2

    .line 388
    :goto_1
    :try_start_4
    sget-object v1, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpUtils post token:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 390
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/InputStream;)V

    .line 391
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/OutputStream;)V

    .line 392
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/net/HttpURLConnection;)V

    return-object v2

    :catchall_3
    move-exception p1

    move-object v2, p0

    .line 390
    :goto_2
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/InputStream;)V

    .line 391
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/OutputStream;)V

    .line 392
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/net/HttpURLConnection;)V

    .line 393
    throw p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "POST"

    const-string v1, "GET"

    const/4 v2, 0x0

    if-nez p2, :cond_0

    move-object p2, v2

    goto :goto_0

    .line 152
    :cond_0
    :try_start_0
    invoke-static {p2, p3}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p2

    .line 153
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 154
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, p1

    .line 156
    :goto_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v3, 0x7530

    .line 157
    :try_start_1
    invoke-virtual {p3, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 158
    invoke-virtual {p3, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 159
    invoke-static {p3}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/net/HttpURLConnection;)V

    .line 160
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v4, "UTF-8"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 161
    :try_start_2
    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_2

    .line 162
    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    .line 163
    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p0, "Content-Type"

    const-string v0, "application/x-www-form-urlencoded"

    .line 164
    invoke-virtual {p3, p0, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p3, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 166
    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 167
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 168
    :try_start_3
    array-length v0, p0

    invoke-virtual {p2, p0, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 169
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    goto :goto_3

    :cond_3
    :goto_2
    move-object p2, v2

    .line 172
    :goto_3
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 173
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    :try_start_4
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/n;->b(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 175
    sget-object v3, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    const-string v7, "HttpUtils POST \u4e0a\u4f20\u6210\u529f url: %s, code: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 180
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/InputStream;)V

    .line 181
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/OutputStream;)V

    .line 182
    invoke-static {p3}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/net/HttpURLConnection;)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    move-object v0, v2

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object p2, v2

    goto :goto_5

    :catch_2
    move-exception p0

    move-object p2, v2

    move-object v0, p2

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object p2, v2

    move-object p3, p2

    goto :goto_5

    :catch_3
    move-exception p0

    move-object p2, v2

    move-object p3, p2

    move-object v0, p3

    .line 178
    :goto_4
    :try_start_5
    sget-object v1, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HttpUtils callRequest failed, url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", e: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 180
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/InputStream;)V

    .line 181
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/OutputStream;)V

    .line 182
    invoke-static {p3}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/net/HttpURLConnection;)V

    return-object v2

    :catchall_3
    move-exception p0

    move-object v2, v0

    .line 180
    :goto_5
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/InputStream;)V

    .line 181
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/OutputStream;)V

    .line 182
    invoke-static {p3}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/net/HttpURLConnection;)V

    .line 183
    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 130
    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "GET"

    .line 134
    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPost url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 72
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v5, 0x7530

    .line 73
    :try_start_1
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 74
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 75
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v5, "POST"

    .line 76
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 78
    invoke-static {v4}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/net/HttpURLConnection;)V

    const-string v5, "Content-Type"

    const-string v6, "application/octet-stream"

    .line 79
    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/xiaomi/onetrack/d/f;->a()Lcom/xiaomi/onetrack/d/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/onetrack/d/f;->b()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    const-string v6, "OT_SID"

    .line 82
    invoke-virtual {v4, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "OT_ts"

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "OT_net"

    .line 84
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/onetrack/g/c;->a(Landroid/content/Context;)Lcom/xiaomi/onetrack/OneTrack$NetType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/onetrack/OneTrack$NetType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "OT_sender"

    .line 85
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "OT_protocol"

    const-string v6, "3.0"

    .line 86
    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    :try_start_2
    array-length v6, p1

    invoke-virtual {v5, p1, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 90
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 92
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 93
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :try_start_3
    invoke-static {v6}, Lcom/xiaomi/onetrack/util/n;->b(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 95
    sget-object v8, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    const-string v9, "HttpUtils POST \u4e0a\u4f20\u6210\u529f url: %s, code: %s"

    new-array v10, v0, [Ljava/lang/Object;

    aput-object p0, v10, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance p1, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {p1, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 100
    invoke-static {v6}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/InputStream;)V

    .line 101
    invoke-static {v5}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/OutputStream;)V

    .line 102
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/net/HttpURLConnection;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v6, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v5, v3

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v5, v3

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object v4, v3

    move-object v5, v4

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v4, v3

    move-object v5, v4

    :goto_0
    move-object v6, v5

    .line 98
    :goto_1
    :try_start_4
    sget-object v7, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    const-string v8, "HttpUtils POST \u4e0a\u4f20\u5931\u8d25, url: %s, error: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 100
    invoke-static {v6}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/InputStream;)V

    .line 101
    invoke-static {v5}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/OutputStream;)V

    .line 102
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/net/HttpURLConnection;)V

    return-object v3

    :catchall_3
    move-exception p0

    move-object v3, v6

    .line 100
    :goto_2
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/InputStream;)V

    .line 101
    invoke-static {v5}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/io/OutputStream;)V

    .line 102
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/net/HttpURLConnection;)V

    .line 103
    throw p0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_1

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 222
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 223
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 224
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 231
    :cond_1
    sget-object p0, Lcom/xiaomi/onetrack/g/b;->j:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/Map;Z)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 191
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "="

    const-string v4, "&"

    const-string v5, "UTF-8"

    if-eqz v2, :cond_3

    .line 192
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 197
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v2, "null"

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_1
    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_5

    .line 204
    invoke-static {p0}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 206
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p1, "sign"

    .line 208
    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 213
    :catch_0
    sget-object p0, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    const-string p1, "format params failed"

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/net/HttpURLConnection;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->getHttpReqPropConnection()Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 118
    :cond_1
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    const-string v2, "setCustomRequestProperty->connection: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    .line 119
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 121
    sget-object v0, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomRequestProperty error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Lcom/xiaomi/onetrack/a/b/a;)Z
    .locals 14

    const-string v0, "UTF-8"

    const/4 v1, 0x1

    if-eqz p0, :cond_8

    .line 237
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/b/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_8

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/b/a;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    move-object v8, v3

    move v6, v4

    move v7, v6

    :goto_0
    const/4 v9, 0x3

    if-lt v6, v9, :cond_1

    .line 248
    :try_start_0
    sget-object v0, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    const-string v2, "redirectCount >= 3, return true"

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 303
    invoke-static {v8}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/net/HttpURLConnection;)V

    return v1

    .line 251
    :cond_1
    :try_start_1
    div-int/lit8 v10, v7, 0x64

    if-ne v10, v9, :cond_2

    add-int/lit8 v6, v6, 0x1

    const-string v2, "Location"

    .line 253
    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    sget-object v10, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "redirect url is:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_2
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 257
    :try_start_2
    invoke-virtual {v10, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v8, "GET"

    .line 258
    invoke-virtual {v10, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v8, 0x7530

    .line 259
    invoke-virtual {v10, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 260
    invoke-virtual {v10, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 261
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 262
    sget-object v8, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AdMonitor get \u8bf7\u6c42url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_ResponseCode\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    div-int/lit8 v8, v7, 0x64

    const/4 v11, 0x5

    if-eq v8, v11, :cond_3

    div-int/lit8 v8, v7, 0x64

    const/4 v11, 0x4

    if-eq v8, v11, :cond_3

    div-int/lit8 v8, v7, 0x64
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eq v8, v9, :cond_3

    .line 303
    invoke-static {v10}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/net/HttpURLConnection;)V

    return v1

    .line 267
    :cond_3
    :try_start_3
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 269
    invoke-static {v8}, Lcom/xiaomi/onetrack/util/n;->b(Ljava/io/InputStream;)[B

    move-result-object v8

    .line 270
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v8, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v11

    goto :goto_1

    :catchall_0
    move-exception v8

    .line 273
    :try_start_4
    sget-object v11, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doGetAdMonitor getErrorStream Throwable\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 276
    :cond_4
    :goto_1
    :try_start_5
    invoke-static {v5}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 277
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 279
    invoke-static {v8}, Lcom/xiaomi/onetrack/util/n;->b(Ljava/io/InputStream;)[B

    move-result-object v8

    .line 280
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v8, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v5, v11

    goto :goto_2

    :catchall_1
    move-exception v8

    .line 284
    :try_start_6
    sget-object v11, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doGetAdMonitor error getInputStream Throwable\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_5
    :goto_2
    sget-object v8, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doGetAdMonitor get \u8bf7\u6c42 errBody\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v8

    invoke-virtual {v8, p0, v7, v5, v3}, Lcom/xiaomi/onetrack/a/a;->a(Lcom/xiaomi/onetrack/a/b/a;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    div-int/lit8 v8, v7, 0x64
    :try_end_6
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eq v8, v9, :cond_6

    .line 303
    invoke-static {v10}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/net/HttpURLConnection;)V

    goto :goto_6

    :cond_6
    move-object v8, v10

    goto/16 :goto_0

    :catchall_2
    move-exception p0

    move-object v8, v10

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v8, v10

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v8, v10

    goto :goto_4

    :catchall_3
    move-exception p0

    goto :goto_7

    :catch_2
    move-exception v0

    .line 300
    :goto_3
    :try_start_7
    sget-object v1, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HttpUtils doGetAdMonitor \u4e0a\u4f20\u5f02\u5e38:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v1

    invoke-virtual {v1, p0, v7, v5, v0}, Lcom/xiaomi/onetrack/a/a;->a(Lcom/xiaomi/onetrack/a/b/a;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_3
    move-exception v0

    .line 292
    :goto_4
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v2

    invoke-virtual {v2, p0, v7, v5, v0}, Lcom/xiaomi/onetrack/a/a;->a(Lcom/xiaomi/onetrack/a/b/a;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    invoke-virtual {v0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 294
    invoke-virtual {v0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "200 OK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 295
    sget-object p0, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    const-string v0, "response code is 200, bug status line is invalid."

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 303
    invoke-static {v8}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/net/HttpURLConnection;)V

    return v1

    :cond_7
    :goto_5
    invoke-static {v8}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/net/HttpURLConnection;)V

    :goto_6
    return v4

    :goto_7
    invoke-static {v8}, Lcom/xiaomi/onetrack/util/n;->a(Ljava/net/HttpURLConnection;)V

    .line 304
    throw p0

    .line 238
    :cond_8
    :goto_8
    sget-object p0, Lcom/xiaomi/onetrack/g/b;->k:Ljava/lang/String;

    const-string v0, "doGetAdMonitor response true ,monitor or url is null"

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 138
    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "POST"

    .line 142
    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
