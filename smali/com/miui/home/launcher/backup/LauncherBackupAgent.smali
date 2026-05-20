.class public Lcom/miui/home/launcher/backup/LauncherBackupAgent;
.super Lmiui/app/backup/FullBackupAgent;
.source "LauncherBackupAgent.java"


# static fields
.field private static sIsRestoring:Z = false


# instance fields
.field private mHasRemovePrefs:Z

.field private mHasRemovedDB:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lmiui/app/backup/FullBackupAgent;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->mHasRemovedDB:Z

    .line 33
    iput-boolean v0, p0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->mHasRemovePrefs:Z

    return-void
.end method

.method public static isRestoring()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->sIsRestoring:Z

    return v0
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 104
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    .line 105
    invoke-super {p0, p1, p2, p3}, Lmiui/app/backup/FullBackupAgent;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 110
    invoke-super {p0}, Lmiui/app/backup/FullBackupAgent;->onCreate()V

    .line 111
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->backupSettings()V

    return-void
.end method

.method protected onOriginalAttachesRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p7

    const/4 v2, 0x1

    .line 63
    sput-boolean v2, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->sIsRestoring:Z

    .line 64
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherModel;->stopLoader()V

    :cond_0
    const-string v3, ".db"

    .line 69
    invoke-virtual {p7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->mHasRemovedDB:Z

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 70
    invoke-static {p0, v3}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    .line 71
    invoke-virtual {p0}, Lmiui/app/backup/FullBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/launcher/DeviceConfig;->removeDownloadInstallInfo(Landroid/content/Context;)V

    .line 72
    iput-boolean v2, v0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->mHasRemovedDB:Z

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lmiui/app/backup/FullBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/launcher/LauncherSettings;->getDownloadInstallInfoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "Launcher.restore"

    if-eqz v3, :cond_2

    const-string v0, "ignore download install info txt"

    .line 74
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v3, ".xml"

    .line 76
    invoke-virtual {p7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 77
    iget-boolean v3, v0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->mHasRemovePrefs:Z

    if-nez v3, :cond_5

    .line 78
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lmiui/app/backup/FullBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "foo"

    invoke-static {v5, v6}, Lcom/miui/launcher/utils/LauncherUtils;->getSharedPrefsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 80
    invoke-static {v3}, Lcom/miui/home/launcher/common/Utilities;->deleteFile(Ljava/io/File;)V

    .line 82
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "LauncherBackupAgent"

    const-string v5, "failed to create sp folder"

    .line 83
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_4
    iput-boolean v2, v0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->mHasRemovePrefs:Z

    .line 87
    :cond_5
    invoke-static {p7}, Lmiui/os/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "miui_auto_install"

    .line 88
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v0, "ignore miui_auto_install prefs"

    .line 89
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const-string v3, "launcher_sharedpreference_private"

    .line 92
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "ignore launcher_sharedpreference_private prefs"

    .line 93
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_7
    :goto_0
    invoke-super/range {p0 .. p11}, Lmiui/app/backup/FullBackupAgent;->onOriginalAttachesRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method protected onRestoreEnd(Lmiui/app/backup/BackupMeta;)I
    .locals 3

    .line 38
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->restoreSettings()V

    .line 39
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result p1

    const-string v0, "LauncherBackupAgent"

    if-eqz p1, :cond_0

    const-string p1, "onRestoreEnd : clear up widgets"

    .line 40
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0}, Lmiui/app/backup/FullBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->unbindAllWidgets(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0}, Lmiui/app/backup/FullBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryUtils;->unbindAllWidgets(Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->mHasRemovedDB:Z

    .line 45
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->setAddRecommendFolderIfNeed(Z)V

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->setAllModeIsCloudBackUpOrReplacement(Z)V

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setRecordedCellCount(Z)V

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object v1

    const-string v2, "service_deliver_is_replaced"

    invoke-virtual {v1, v2, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->tellBackupManagerNeedBeKilled(Landroid/content/Context;)V

    const-string p0, "onRestoreEnd"

    .line 51
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method
