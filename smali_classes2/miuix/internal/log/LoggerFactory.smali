.class public Lmiuix/internal/log/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field private static final IS_DEBUGGABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Lmiuix/internal/log/LiteSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lmiuix/internal/log/LoggerFactory;->IS_DEBUGGABLE:Z

    return-void
.end method

.method public static getFileLogger(Landroid/content/Context;)Lmiuix/internal/log/Logger;
    .locals 2

    .line 40
    invoke-static {p0}, Lmiuix/internal/log/util/Config;->getDefaultCacheLogDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 41
    sget-object v1, Lmiuix/internal/log/util/Config;->LOG_NAME:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lmiuix/internal/log/LoggerFactory;->getFileLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lmiuix/internal/log/Logger;

    move-result-object p0

    return-object p0
.end method

.method public static getFileLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lmiuix/internal/log/Logger;
    .locals 5

    .line 50
    new-instance v0, Lmiuix/internal/log/Logger;

    invoke-direct {v0, p2}, Lmiuix/internal/log/Logger;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v1, Lmiuix/internal/log/appender/FileAppender;

    invoke-direct {v1}, Lmiuix/internal/log/appender/FileAppender;-><init>()V

    .line 52
    new-instance v2, Lmiuix/internal/log/format/SimpleFormatter;

    invoke-direct {v2}, Lmiuix/internal/log/format/SimpleFormatter;-><init>()V

    invoke-virtual {v1, v2}, Lmiuix/internal/log/appender/FileAppender;->setFormatter(Lmiuix/internal/log/format/Formatter;)V

    .line 53
    new-instance v2, Lmiuix/internal/log/appender/rolling/FileRolloverStrategy;

    invoke-direct {v2}, Lmiuix/internal/log/appender/rolling/FileRolloverStrategy;-><init>()V

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v4, 0x80

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 59
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 62
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v3, "LoggerFactory"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 64
    :goto_0
    invoke-static {p0}, Lmiuix/internal/log/LoggerFactory;->obtainMaxBackup(Landroid/os/Bundle;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lmiuix/internal/log/appender/rolling/FileRolloverStrategy;->setMaxBackupIndex(I)V

    .line 65
    invoke-static {p0}, Lmiuix/internal/log/LoggerFactory;->obtainMaxFileSize(Landroid/os/Bundle;)I

    move-result p0

    invoke-virtual {v2, p0}, Lmiuix/internal/log/appender/rolling/FileRolloverStrategy;->setMaxFileSize(I)V

    .line 66
    new-instance p0, Lmiuix/internal/log/appender/rolling/RollingFileManager;

    invoke-direct {p0, p1, p2}, Lmiuix/internal/log/appender/rolling/RollingFileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v2}, Lmiuix/internal/log/appender/rolling/RollingFileManager;->setRolloverStrategy(Lmiuix/internal/log/appender/rolling/RolloverStrategy;)V

    .line 68
    invoke-virtual {v1, p0}, Lmiuix/internal/log/appender/FileAppender;->setFileManager(Lmiuix/internal/log/appender/FileManager;)V

    .line 69
    invoke-virtual {v0, v1}, Lmiuix/internal/log/Logger;->addAppender(Lmiuix/internal/log/appender/Appender;)V

    .line 71
    sget-boolean p0, Lmiuix/internal/log/LoggerFactory;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_0

    .line 72
    sget-object p0, Lmiuix/internal/log/Level;->VERBOSE:Lmiuix/internal/log/Level;

    invoke-virtual {v0, p0}, Lmiuix/internal/log/Logger;->setLevel(Lmiuix/internal/log/Level;)V

    goto :goto_1

    .line 74
    :cond_0
    sget-object p0, Lmiuix/internal/log/Level;->INFO:Lmiuix/internal/log/Level;

    invoke-virtual {v0, p0}, Lmiuix/internal/log/Logger;->setLevel(Lmiuix/internal/log/Level;)V

    :goto_1
    return-object v0
.end method

.method private static obtainMaxBackup(Landroid/os/Bundle;)I
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "maxBackup"

    .line 99
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 101
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const-string p0, "LoggerFactory"

    const-string v0, "Log config error:maxBackup must be int type and smaller than 20"

    .line 104
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method private static obtainMaxFileSize(Landroid/os/Bundle;)I
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "maxFileMbSize"

    .line 83
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 85
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    .line 86
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/lit16 p0, p0, 0x400

    mul-int/lit16 p0, p0, 0x400

    goto :goto_0

    :cond_0
    const-string p0, "LoggerFactory"

    const-string v0, "Log config error:maxFileMbSize must be int type and smaller than 10"

    .line 90
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/high16 p0, 0x100000

    :goto_0
    return p0
.end method
