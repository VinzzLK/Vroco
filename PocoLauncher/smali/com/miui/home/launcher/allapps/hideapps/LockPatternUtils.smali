.class public Lcom/miui/home/launcher/allapps/hideapps/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# static fields
.field private static sInstance:Lcom/miui/home/launcher/allapps/hideapps/LockPatternUtils;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/home/launcher/allapps/hideapps/LockPatternUtils;
    .locals 2

    const-class v0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternUtils;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/LockPatternUtils;->sInstance:Lcom/miui/home/launcher/allapps/hideapps/LockPatternUtils;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/LockPatternUtils;

    invoke-direct {v1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternUtils;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/allapps/hideapps/LockPatternUtils;->sInstance:Lcom/miui/home/launcher/allapps/hideapps/LockPatternUtils;

    .line 16
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/LockPatternUtils;->sInstance:Lcom/miui/home/launcher/allapps/hideapps/LockPatternUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 54
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .line 56
    new-array v0, p0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 58
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;

    .line 59
    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getRow()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;->getColumn()I

    move-result v2

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x31

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method
