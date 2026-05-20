.class public Lcom/msa/sdk/tool/MLog;
.super Ljava/lang/Object;
.source "MLog.java"


# static fields
.field private static sLogLevel:I = 0x1

.field private static sMainThreadId:J

.field private static sPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sput-wide v0, Lcom/msa/sdk/tool/MLog;->sMainThreadId:J

    const-string v0, "zeus"

    .line 22
    sput-object v0, Lcom/msa/sdk/tool/MLog;->sPrefix:Ljava/lang/String;

    return-void
.end method

.method public static addAdPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AD-PLUGIN-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 106
    sget v0, Lcom/msa/sdk/tool/MLog;->sLogLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 107
    invoke-static {p0}, Lcom/msa/sdk/tool/MLog;->addAdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lcom/msa/sdk/tool/MLog;->log(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 118
    sget v0, Lcom/msa/sdk/tool/MLog;->sLogLevel:I

    if-ltz v0, :cond_0

    .line 119
    invoke-static {p0}, Lcom/msa/sdk/tool/MLog;->addAdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/msa/sdk/tool/MLog;->log(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 124
    sget v0, Lcom/msa/sdk/tool/MLog;->sLogLevel:I

    if-ltz v0, :cond_0

    .line 125
    invoke-static {p0}, Lcom/msa/sdk/tool/MLog;->addAdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/msa/sdk/tool/MLog;->getPatternedMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static getPatternedMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 211
    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "*.*.*.*"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 142
    sget v0, Lcom/msa/sdk/tool/MLog;->sLogLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 143
    invoke-static {p0}, Lcom/msa/sdk/tool/MLog;->addAdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lcom/msa/sdk/tool/MLog;->log(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit16 v0, v0, 0xbb8

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-gt v1, v0, :cond_7

    mul-int/lit16 v2, v1, 0xbb8

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    mul-int/lit16 v4, v1, 0xbb8

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 174
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_6

    const/4 v3, 0x1

    if-eq p2, v3, :cond_5

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4

    const/4 v3, 0x3

    if-eq p2, v3, :cond_3

    const/4 v3, 0x4

    if-eq p2, v3, :cond_2

    goto :goto_0

    .line 189
    :cond_2
    invoke-static {p0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    :cond_3
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :cond_4
    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :cond_5
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_6
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static setDebugOn(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x3e8

    .line 36
    sput p0, Lcom/msa/sdk/tool/MLog;->sLogLevel:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 38
    sput p0, Lcom/msa/sdk/tool/MLog;->sLogLevel:I

    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 130
    sget v0, Lcom/msa/sdk/tool/MLog;->sLogLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 131
    invoke-static {p0}, Lcom/msa/sdk/tool/MLog;->addAdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lcom/msa/sdk/tool/MLog;->log(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
