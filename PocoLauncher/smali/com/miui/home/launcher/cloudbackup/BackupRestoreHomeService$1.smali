.class Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;
.super Lcom/miui/home/launcher/cloudbackup/IBackupRestoreHome$Stub;
.source "BackupRestoreHomeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;->this$0:Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;

    invoke-direct {p0}, Lcom/miui/home/launcher/cloudbackup/IBackupRestoreHome$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public backupHome()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;->this$0:Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 66
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 70
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->backupSettings()V

    .line 71
    iget-object v2, p0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;->this$0:Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;

    invoke-static {v2}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 73
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 74
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :try_start_1
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getAllModes()[Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, v4, v7

    .line 77
    invoke-virtual {v8, v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->backupDatabaseFile(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 79
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 83
    :cond_2
    invoke-static {v2}, Lcom/miui/home/launcher/LauncherCategory;->backupDatabase(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 85
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_3
    new-instance v4, Ljava/io/File;

    const-string v5, "foo"

    invoke-static {v2, v5}, Lcom/miui/launcher/utils/LauncherUtils;->getSharedPrefsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v6, v5, :cond_6

    aget-object v7, v4, v6

    .line 90
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "launcher_sharedpreference_private.xml"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    .line 93
    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "miui_auto_install.xml"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v7, "Launcher.Backup"

    const-string v8, "ignore icloudBack miui_auto_install prefs"

    .line 94
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 97
    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f6

    invoke-static {v8, v9}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 98
    invoke-static {v7}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->createFileInfoBundle(Ljava/io/File;)Landroid/os/Bundle;

    move-result-object v8

    .line 99
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v8, p0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;->this$0:Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;

    const-string v9, "backupHome"

    invoke-static {v8, v7, v9}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->access$000(Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;Ljava/io/File;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 102
    :cond_6
    invoke-static {v2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->backupMaMls(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :try_start_2
    monitor-exit v0

    return-object v3

    :catch_0
    move-exception p0

    const-string v2, "Launcher.Backup"

    const-string v3, " ErrnoException when backup home files"

    .line 109
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Landroid/system/ErrnoException;->printStackTrace()V

    .line 111
    monitor-exit v0

    return-object v1

    :catch_1
    move-exception p0

    const-string v2, "Launcher.Backup"

    const-string v3, "IOException when backup home files"

    .line 106
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 113
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_7
    :goto_3
    const-string p0, "Launcher.Backup"

    const-string v0, "launcherProvider is unready"

    .line 67
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public restoreHome(Ljava/util/List;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;->this$0:Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "Launcher.Backup"

    const-string p1, "launcherProvider is null"

    .line 120
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;->this$0:Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;

    invoke-static {v2}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 124
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v3, 0x1

    .line 126
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Launcher.Backup"

    const-string v5, "restoreHome : clear up widgets"

    .line 127
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {v2}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->unbindAllWidgets(Landroid/content/Context;)V

    .line 131
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getAllModes()[Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 132
    invoke-virtual {v7, v2, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->restoreDatabaseFile(Landroid/content/Context;Ljava/util/List;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 135
    :cond_2
    invoke-static {v2, p1}, Lcom/miui/home/launcher/LauncherCategory;->restoreDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 137
    invoke-static {v2, p1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->restoreMaMls(Landroid/content/Context;Ljava/util/List;)V

    .line 139
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "restore_icons"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_3

    const-string p0, "Launcher.Backup"

    const-string p1, "failed to create icon folder"

    .line 141
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 144
    :cond_3
    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 145
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .line 146
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v5, v7}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V

    goto :goto_1

    .line 149
    :cond_4
    new-instance p2, Ljava/io/File;

    const-string v4, "foo"

    invoke-static {v2, v4}, Lcom/miui/launcher/utils/LauncherUtils;->getSharedPrefsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 151
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->deleteFile(Ljava/io/File;)V

    .line 153
    :cond_5
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_6

    const-string p0, "Launcher.Backup"

    const-string p1, "failed to create sp folder"

    .line 154
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v1

    .line 157
    :cond_6
    :try_start_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 158
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "xml"

    .line 159
    invoke-static {v5}, Lmiuix/core/util/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 160
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v4, v6}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V

    const-string v5, "Launcher.Backup"

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restore file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v5, p0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;->this$0:Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;

    const-string v6, "restoreHome"

    invoke-static {v5, v2, v4, v6}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->access$100(Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2

    .line 165
    :cond_8
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1ed

    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 167
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->setAllModeIsCloudBackUpOrReplacement(Z)V

    .line 168
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setRecordedCellCount(Z)V

    .line 170
    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object p0

    const-string p1, "service_deliver_is_replaced"

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->restoreSettings()V

    .line 172
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    :try_start_5
    const-string p1, "Launcher.Backup"

    const-string p2, " ErrnoException when restore home files"

    .line 176
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Landroid/system/ErrnoException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception p0

    const-string p1, "Launcher.Backup"

    const-string p2, "IOException when restore home file"

    .line 174
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    :goto_3
    monitor-exit v0

    return v3

    :goto_4
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method
