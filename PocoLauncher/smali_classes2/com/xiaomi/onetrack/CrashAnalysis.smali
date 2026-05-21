.class public Lcom/xiaomi/onetrack/CrashAnalysis;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;
    }
.end annotation


# static fields
.field public static final ANR_CRASH:Ljava/lang/String; = "anr"

.field public static final JAVA_CRASH:Ljava/lang/String; = "java"

.field public static final NATIVE_CRASH:Ljava/lang/String; = "native"

.field private static final a:Ljava/lang/String; = "CrashAnalysis"

.field private static final b:Ljava/lang/String; = "backtrace feature id:\n\t"

.field private static final c:Ljava/lang/String; = "error reason:\n\t"

.field private static final d:Ljava/lang/String; = "Crash time: \'"

.field private static final e:Ljava/lang/String; = ".xcrash"

.field private static final f:I = 0x240c8400

.field private static final g:I = 0x57800

.field private static final h:I = 0xa

.field private static final i:I = 0x14

.field private static final j:Ljava/lang/String; = "@[0-9a-fA-F]{1,10}"

.field private static final k:Ljava/lang/String; = "\\$[0-9a-fA-F]{1,10}@[0-9a-fA-F]{1,10}"

.field private static final l:Ljava/lang/String; = "0x[0-9a-fA-F]{1,10}"

.field private static final m:Ljava/lang/String; = "\\d+[B,KB,MB]*"

.field private static final n:Ljava/lang/String; = "((java:)|(length=)|(index=)|(Index:)|(Size:))\\d+"

.field private static final o:I = 0x14

.field private static final p:Z = false

.field private static volatile s:Lcom/xiaomi/onetrack/CrashAnalysis;


# instance fields
.field private final q:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

.field private final r:Lcom/xiaomi/onetrack/api/c;

.field private t:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/c;)V
    .locals 9

    const-string v0, "CrashAnalysis"

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "xcrash.XCrash$InitParameters"

    .line 76
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Class;

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "setNativeDumpAllThreads"

    .line 79
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v4, v5, v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "setLogDir"

    .line 80
    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->getCrashPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v5, v7}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "setNativeDumpMap"

    .line 81
    invoke-direct {p0, v4, v5, v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "setNativeDumpFds"

    .line 82
    invoke-direct {p0, v4, v5, v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "setJavaDumpAllThreads"

    .line 83
    invoke-direct {p0, v4, v5, v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->g()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "isMiTv:true"

    .line 85
    invoke-static {v0, v5}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "setAnrCheckProcessState"

    .line 86
    invoke-direct {p0, v4, v5, v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v5, "isMiTv:false"

    .line 88
    invoke-static {v0, v5}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v5, "xcrash.XCrash"

    .line 90
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "init"

    new-array v7, v1, [Ljava/lang/Class;

    .line 91
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    aput-object p1, v7, v3

    aput-object v4, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "XCrash init success"

    .line 93
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v4, "XCrash init failed: "

    .line 96
    invoke-static {v0, v4, p1}, Lcom/xiaomi/onetrack/util/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    :goto_1
    iput-object p2, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->r:Lcom/xiaomi/onetrack/api/c;

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    .line 100
    new-instance p2, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    const-string v0, "java"

    invoke-direct {p2, p0, v0}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V

    aput-object p2, p1, v3

    new-instance p2, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    const-string v0, "anr"

    invoke-direct {p2, p0, v0}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V

    aput-object p2, p1, v2

    new-instance p2, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    const-string v0, "native"

    invoke-direct {p2, p0, v0}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V

    aput-object p2, p1, v1

    iput-object p1, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->q:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    .line 106
    invoke-direct {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->a()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)J
    .locals 2

    .line 34
    invoke-static {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->d(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/CrashAnalysis;)Lcom/xiaomi/onetrack/api/c;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->r:Lcom/xiaomi/onetrack/api/c;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/CrashAnalysis;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 2

    const-string v0, "CrashAnalysis"

    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->e()V

    goto :goto_0

    :cond_0
    const-string p0, "no crash file found"

    .line 132
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "processCrash error: "

    .line 135
    invoke-static {v0, v1, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(J)V
    .locals 4

    .line 306
    invoke-static {}, Lcom/xiaomi/onetrack/util/ad;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    add-long/2addr v0, p1

    .line 308
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/ab;->c(J)V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 8

    const-string v0, "CrashAnalysis"

    .line 117
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/onetrack/f/a;->a(Landroid/content/Context;)V

    const-string v1, "xcrash.XCrash"

    .line 118
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "initHooker"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 119
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->getCrashPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "registerHook succeeded"

    .line 121
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "registerHook failed: "

    .line 123
    invoke-static {v0, v1, p0}, Lcom/xiaomi/onetrack/util/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 261
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 262
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p3, p2, v3

    .line 263
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b()J
    .locals 11

    .line 282
    invoke-static {}, Lcom/xiaomi/onetrack/util/ab;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const-wide/16 v2, 0xa

    const-string v4, "CrashAnalysis"

    if-nez p0, :cond_0

    const-string p0, "no ticket data found, return max count"

    .line 284
    invoke-static {v4, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2

    .line 287
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/ad;->b()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    .line 289
    div-long v9, v0, v7

    cmp-long p0, v9, v5

    if-eqz p0, :cond_1

    const-string p0, "no today\'s ticket, return max count"

    .line 290
    invoke-static {v4, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2

    :cond_1
    mul-long/2addr v5, v7

    sub-long/2addr v0, v5

    .line 294
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "today\'s remain ticket is "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/CrashAnalysis;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "uncategoried"

    if-nez v0, :cond_2

    :try_start_0
    const-string v0, "anr"

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const-string p1, " tid=1 "

    .line 162
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_2

    const-string v0, "\n  at "

    .line 163
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_2

    const/16 v0, 0xa

    add-int/lit8 v3, p1, 0x6

    .line 164
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v2, :cond_2

    add-int/lit8 p1, p1, 0x2

    .line 165
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "error reason:\n\t"

    .line 168
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    add-int/lit8 v0, v0, 0xf

    const-string p1, "\n\n"

    .line 170
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_2

    .line 171
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v0, "native"

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 175
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    :goto_0
    move-object v1, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getErrorReasonString error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CrashAnalysis"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v1
.end method

.method private c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->getCrashPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "CrashAnalysis"

    const-string v0, "this path does not denote a directory, or if an I/O error occurs."

    .line 320
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 324
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 325
    new-instance v1, Lcom/xiaomi/onetrack/CrashAnalysis$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/CrashAnalysis$1;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 332
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/16 v1, 0x14

    if-le p0, v1, :cond_2

    add-int/lit8 v1, p0, -0x14

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 336
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-static {v3}, Lcom/xiaomi/onetrack/util/l;->a(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_1
    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 228
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 231
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "CrashAnalysis"

    const-string v2, "getDynamicCommonProperty error\uff1a"

    .line 234
    invoke-static {v1, v2, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method public static calculateJavaDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "\\t"

    const-string v1, ""

    .line 478
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\n"

    .line 479
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    array-length v2, p0

    const/16 v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 484
    aget-object v5, p0, v4

    const-string v6, "((java:)|(length=)|(index=)|(Index:)|(Size:))\\d+"

    const-string v7, "$1XX"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\$[0-9a-fA-F]{1,10}@[0-9a-fA-F]{1,10}|@[0-9a-fA-F]{1,10}|0x[0-9a-fA-F]{1,10}"

    const-string v7, "XX"

    .line 485
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\d+[B,KB,MB]*"

    .line 486
    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v2, :cond_2

    .line 490
    aget-object v1, p0, v3

    const-string v4, "..."

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, p0, v3

    const-string v4, "more"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 493
    :cond_1
    aget-object v1, p0, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 496
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;)J
    .locals 5

    .line 242
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "Crash time: \'"

    .line 246
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    add-int/lit8 v0, v0, 0xd

    const-string v4, "\'\n"

    .line 248
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 249
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCrashTimeStamp error: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CrashAnalysis"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-wide v1
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 192
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "anr"

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "\n\n"

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, " tid=1 "

    .line 197
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_1

    .line 199
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 201
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 202
    invoke-static {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->calculateJavaDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_0
    const-string p1, "backtrace feature id:\n\t"

    .line 206
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_1

    add-int/lit8 p1, p1, 0x17

    .line 208
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 209
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculateFeatureId error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CrashAnalysis"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v1
.end method

.method private d()Z
    .locals 24

    move-object/from16 v0, p0

    .line 354
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->c()Ljava/util/List;

    move-result-object v1

    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->b()J

    move-result-wide v2

    if-eqz v1, :cond_9

    .line 357
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 359
    invoke-static {}, Lcom/xiaomi/onetrack/util/ab;->b()J

    move-result-wide v7

    cmp-long v9, v7, v5

    const-wide/32 v10, 0x240c8400

    if-lez v9, :cond_0

    sub-long v7, v5, v10

    .line 368
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v12, 0x0

    move-wide v14, v12

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/io/File;

    .line 369
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v17

    sub-long v19, v5, v10

    cmp-long v16, v17, v19

    const-string v10, "CrashAnalysis"

    if-ltz v16, :cond_6

    cmp-long v11, v17, v5

    if-lez v11, :cond_1

    goto :goto_2

    :cond_1
    cmp-long v11, v17, v7

    if-gtz v11, :cond_3

    const-string v4, "found already reported crash file, ignore"

    .line 377
    invoke-static {v10, v4}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v16, v1

    goto :goto_3

    :cond_3
    cmp-long v11, v2, v12

    if-lez v11, :cond_2

    .line 382
    iget-object v11, v0, Lcom/xiaomi/onetrack/CrashAnalysis;->q:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_2

    move-object/from16 v16, v1

    aget-object v1, v11, v13

    .line 383
    invoke-virtual {v1, v4}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a(Ljava/io/File;)Z

    move-result v1

    const/16 v21, 0x1

    if-eqz v1, :cond_5

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find crash file:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v22, 0x1

    sub-long v2, v2, v22

    cmp-long v1, v14, v17

    if-gez v1, :cond_4

    move-wide/from16 v14, v17

    :cond_4
    move/from16 v9, v21

    :cond_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    goto :goto_1

    :cond_6
    :goto_2
    move-object/from16 v16, v1

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "remove obsolete crash files: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/l;->a(Ljava/io/File;)V

    :goto_3
    move-object/from16 v1, v16

    const-wide/32 v10, 0x240c8400

    const-wide/16 v12, 0x0

    goto/16 :goto_0

    :cond_7
    move-wide v10, v12

    cmp-long v1, v14, v10

    if-lez v1, :cond_8

    .line 396
    invoke-static {v14, v15}, Lcom/xiaomi/onetrack/util/ab;->b(J)V

    :cond_8
    move v4, v9

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_a

    .line 401
    invoke-direct {v0, v2, v3}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(J)V

    :cond_a
    return v4
.end method

.method private e()V
    .locals 3

    .line 408
    iget-object p0, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->q:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 409
    invoke-virtual {v2}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getCrashPath()Ljava/lang/String;
    .locals 1

    .line 270
    invoke-static {}, Lcom/xiaomi/onetrack/util/l;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/api/c;)Lcom/xiaomi/onetrack/CrashAnalysis;
    .locals 2

    .line 64
    sget-object v0, Lcom/xiaomi/onetrack/CrashAnalysis;->s:Lcom/xiaomi/onetrack/CrashAnalysis;

    if-nez v0, :cond_1

    .line 65
    const-class v0, Lcom/xiaomi/onetrack/CrashAnalysis;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/CrashAnalysis;->s:Lcom/xiaomi/onetrack/CrashAnalysis;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/xiaomi/onetrack/CrashAnalysis;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/CrashAnalysis;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/c;)V

    sput-object v1, Lcom/xiaomi/onetrack/CrashAnalysis;->s:Lcom/xiaomi/onetrack/CrashAnalysis;

    .line 69
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 71
    :cond_1
    :goto_0
    sget-object p0, Lcom/xiaomi/onetrack/CrashAnalysis;->s:Lcom/xiaomi/onetrack/CrashAnalysis;

    return-object p0
.end method


# virtual methods
.method public isSupport()Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->t:Z

    return p0
.end method
