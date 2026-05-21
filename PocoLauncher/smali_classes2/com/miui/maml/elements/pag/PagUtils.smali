.class public Lcom/miui/maml/elements/pag/PagUtils;
.super Ljava/lang/Object;
.source "PagUtils.java"


# static fields
.field public static final HYPER_OS_2_VERSION_CODE:I = 0x2

.field public static final HYPER_OS_VERSION_CODE:I

.field public static final PAG_LIB_FILE:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Ljava/io/File;

    const-string v1, "/system_ext/framework/pag-hyperos-release.jar"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/pag/PagUtils;->PAG_LIB_FILE:Ljava/io/File;

    .line 27
    invoke-static {}, Lcom/miui/maml/elements/pag/PagUtils;->getHyperOsVersionCode()I

    move-result v0

    sput v0, Lcom/miui/maml/elements/pag/PagUtils;->HYPER_OS_VERSION_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ProgressToFrame(DI)I
    .locals 8

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 44
    invoke-static {p0, p1, v1, v2}, Lcom/miui/maml/elements/pag/PagUtils;->fmod(DD)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double v7, v3, v5

    if-gtz v7, :cond_1

    cmpl-double p0, p0, v5

    if-eqz p0, :cond_1

    add-double/2addr v3, v1

    :cond_1
    int-to-double p0, p2

    mul-double/2addr v3, p0

    .line 50
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    if-ne p0, p2, :cond_2

    add-int/lit8 p0, p2, -0x1

    :cond_2
    return p0
.end method

.method private static fmod(DD)D
    .locals 2

    div-double v0, p0, p2

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v0, v0

    mul-double/2addr v0, p2

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method public static getHyperOsVersionCode()I
    .locals 2

    const-string v0, "ro.mi.os.version.code"

    const-string v1, ""

    .line 16
    invoke-static {v0, v1}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static supportPagFeature()Z
    .locals 2

    .line 30
    sget v0, Lcom/miui/maml/elements/pag/PagUtils;->HYPER_OS_VERSION_CODE:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/miui/maml/elements/pag/PagUtils;->PAG_LIB_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
