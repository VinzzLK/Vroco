.class public Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;
.super Ljava/lang/Object;
.source "ConfigableGadget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/ConfigableGadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackupManager"
.end annotation


# instance fields
.field private final STATE_BACKUP:I

.field private final STATE_NORMAL:I

.field private final mGadgetId:I

.field private mState:I


# direct methods
.method public static synthetic $r8$lambda$UJStpOL0Ggzeva3LoJyWs8PjmEQ(Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;Ljava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->lambda$prepareBackup$1(Ljava/lang/Runnable;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fN3b90xK55LH87uWaxen6vYCkwQ(Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;Landroid/content/Context;JLcom/miui/home/launcher/gadget/GadgetInfo;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->lambda$prepareBackup$0(Landroid/content/Context;JLcom/miui/home/launcher/gadget/GadgetInfo;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->STATE_NORMAL:I

    const/4 v1, 0x1

    .line 125
    iput v1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->STATE_BACKUP:I

    .line 126
    iput v0, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mState:I

    .line 129
    iput p1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mGadgetId:I

    return-void
.end method

.method private synthetic lambda$prepareBackup$0(Landroid/content/Context;JLcom/miui/home/launcher/gadget/GadgetInfo;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    .line 233
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    .line 234
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 237
    invoke-static {p3}, Lcom/miui/home/launcher/gadget/DualClockUtils;->isDualClockFile(Ljava/io/File;)Z

    move-result p0

    invoke-virtual {p4, p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->setIsDualClock(Z)V

    .line 238
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 242
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p5

    .line 243
    invoke-virtual {p5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    invoke-virtual {p5}, Ljava/io/File;->mkdirs()Z

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getPathInTheme()Ljava/lang/String;

    move-result-object p5

    .line 248
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p5

    const-string v1, "autoChange"

    const/4 v2, 0x0

    if-eqz p5, :cond_2

    .line 252
    new-instance p5, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p5, v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(Landroid/net/Uri;)V

    .line 253
    invoke-virtual {p5, v1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getBoolean(Ljava/lang/String;)Z

    move-result p5

    goto :goto_0

    :cond_2
    move p5, v2

    .line 255
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getPathInHome(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 256
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 258
    new-instance v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(Landroid/net/Uri;)V

    const-string v3, "enableTime"

    .line 259
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    const-string v4, "disableTime"

    .line 260
    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    if-eqz v3, :cond_4

    if-nez v4, :cond_3

    goto :goto_1

    .line 265
    :cond_3
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    if-eqz v0, :cond_5

    .line 267
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-gtz v0, :cond_5

    .line 268
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    .line 262
    :cond_4
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "startTime == null || endTime == null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    move v0, v2

    .line 270
    :goto_2
    invoke-static {}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canAutoChange:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hasValidFileInHome:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " dst:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_6

    if-eqz v0, :cond_6

    .line 273
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getPathInHome(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/home/launcher/common/Utilities;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    :cond_6
    if-nez v2, :cond_a

    .line 276
    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->shouldUseDualClock()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 277
    invoke-virtual {p4}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/gadget/DualClockUtils;->isDualClockExits(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 278
    invoke-virtual {p4}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/DualClockUtils;->getDualClockFile(I)Ljava/io/File;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/miui/home/launcher/gadget/DualClockUtils;->replaceToDualClock(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_4

    .line 280
    :cond_7
    instance-of p1, p4, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;

    if-eqz p1, :cond_9

    .line 281
    move-object p1, p4

    check-cast p1, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;->getContentUri()Landroid/net/Uri;

    move-result-object p5

    if-eqz p5, :cond_8

    .line 282
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSystemGadgetTheme()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/miui/home/launcher/common/Utilities;->extract(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z

    goto :goto_3

    .line 284
    :cond_8
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;->getContentPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSystemGadgetTheme()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/miui/home/launcher/common/Utilities;->extract(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    .line 287
    :cond_9
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSystemGadgetTheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSystemGadgetTheme()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/miui/home/launcher/common/Utilities;->extract(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 289
    :goto_3
    invoke-static {p3}, Lcom/miui/home/launcher/gadget/DualClockUtils;->isDualClockFile(Ljava/io/File;)Z

    move-result p0

    invoke-virtual {p4, p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->setIsDualClock(Z)V

    .line 293
    :cond_a
    :goto_4
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0x184

    .line 296
    :try_start_0
    invoke-static {p2, p0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 298
    invoke-static {}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, " ErrnoException when prepareBackup home files"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Landroid/system/ErrnoException;->printStackTrace()V

    .line 301
    :goto_5
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 304
    :cond_b
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$prepareBackup$1(Ljava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x0

    .line 306
    iput v0, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mState:I

    .line 307
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    .line 308
    invoke-static {}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p2, "prepare back up failed"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 311
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getBackupDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getTypeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_bak"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 201
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_READABLE:I

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 202
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackupName(J)Ljava/lang/String;
    .locals 1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupNamePrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackupNamePrefix()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 172
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSizeDescript()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s_%s_"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackupPath(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 186
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupName(J)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "%s/%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEntryName()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 193
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSizeDescript()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s_%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPathInHome(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 213
    invoke-static {p1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getGadgetDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getEntryName()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "%s/%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPathInTheme()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "/data/system/theme/"

    aput-object v2, v0, v1

    .line 209
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getEntryName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s/%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSizeDescript()Ljava/lang/String;
    .locals 3

    .line 136
    iget v0, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mGadgetId:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const-string p0, "3x4"

    return-object p0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget p0, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mGadgetId:I

    .line 147
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Unknown gadget id %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "1x4"

    return-object p0

    :cond_2
    const-string p0, "2x4"

    return-object p0

    :cond_3
    const-string p0, "1x2"

    return-object p0
.end method

.method public getSystemGadgetTheme()Ljava/lang/String;
    .locals 3

    .line 220
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 222
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSizeDescript()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    aput-object v0, v1, p0

    const-string p0, "/system/media/theme/.data/content/%s_%s/%s.mrc"

    .line 221
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 3

    .line 153
    iget v0, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mGadgetId:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget p0, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mGadgetId:I

    .line 162
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Unknown gadget id %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const-string p0, "clock"

    return-object p0
.end method

.method public prepareBackup(Landroid/content/Context;JLcom/miui/home/launcher/gadget/GadgetInfo;Ljava/lang/Runnable;)V
    .locals 7

    .line 226
    iget v0, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 227
    invoke-static {}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "prepareBackup is running"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 231
    :cond_0
    iput v1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mState:I

    .line 232
    new-instance v6, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager$$ExternalSyntheticLambda1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;Landroid/content/Context;JLcom/miui/home/launcher/gadget/GadgetInfo;)V

    new-instance p1, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    invoke-static {v6, p1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
