.class public Lcom/miui/maml/util/MamlLog;
.super Ljava/lang/Object;
.source "MamlLog.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 31
    invoke-static {}, Lcom/miui/maml/util/MamlLog;->getLogLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v1, v0, :cond_0

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 49
    invoke-static {}, Lcom/miui/maml/util/MamlLog;->getLogLevel()I

    move-result v0

    const/4 v1, 0x6

    if-lt v1, v0, :cond_0

    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 55
    invoke-static {}, Lcom/miui/maml/util/MamlLog;->getLogLevel()I

    move-result v0

    const/4 v1, 0x6

    if-lt v1, v0, :cond_0

    .line 56
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static getLogLevel()I
    .locals 5

    const-string v0, "log.tag.MAML_LOG_LEVEL"

    const-string v1, "WARN"

    .line 10
    invoke-static {v0, v1}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "VERBOSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    const/4 v0, 0x5

    return v0

    :pswitch_0
    return v3

    :pswitch_1
    const/4 v0, 0x6

    return v0

    :pswitch_2
    return v2

    :pswitch_3
    const/4 v0, 0x4

    return v0

    :sswitch_data_0
    .sparse-switch
        0x225cae -> :sswitch_3
        0x3de9e33 -> :sswitch_2
        0x3f2d9e8 -> :sswitch_1
        0x3fb90562 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 37
    invoke-static {}, Lcom/miui/maml/util/MamlLog;->getLogLevel()I

    move-result v0

    const/4 v1, 0x4

    if-lt v1, v0, :cond_0

    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 43
    invoke-static {}, Lcom/miui/maml/util/MamlLog;->getLogLevel()I

    move-result v0

    const/4 v1, 0x5

    if-lt v1, v0, :cond_0

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
