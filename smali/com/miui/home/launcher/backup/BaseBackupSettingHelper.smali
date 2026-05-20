.class public Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;
.super Lcom/miui/home/launcher/common/BaseSharePreference;
.source "BaseBackupSettingHelper.java"


# instance fields
.field protected final mSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/backup/settings/BackupSettingsBase<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string v0, "backup"

    .line 39
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    .line 41
    new-instance p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsDoubleTapLock;

    invoke-direct {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsDoubleTapLock;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsAutoFill;

    invoke-direct {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsAutoFill;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsLockCells;

    invoke-direct {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsLockCells;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsMemoryInfo;

    invoke-direct {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsMemoryInfo;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsNoWord;

    invoke-direct {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsNoWord;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsOnlyWidgetNoWord;

    invoke-direct {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsOnlyWidgetNoWord;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance p0, Lcom/miui/home/launcher/backup/settings/BackupHideAppList;

    invoke-direct {p0}, Lcom/miui/home/launcher/backup/settings/BackupHideAppList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/graphics/MonochromeUtils;->isSupportMonochrome()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 49
    new-instance p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsMonochromeEnable;

    invoke-direct {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsMonochromeEnable;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsMonochromeColor;

    invoke-direct {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsMonochromeColor;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p0

    if-nez p0, :cond_1

    .line 54
    new-instance p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsAssistant;

    invoke-direct {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsAssistant;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsTaskLayoutStyle;

    invoke-direct {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsTaskLayoutStyle;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_1
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isSupportPullDownSearch()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 58
    :cond_2
    new-instance p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsPullDown;

    invoke-direct {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsPullDown;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsSlideUp;

    invoke-direct {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsSlideUp;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public backupSettings()V
    .locals 2

    const-string v0, "Launcher.Backup"

    const-string v1, "backup settings"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;

    .line 73
    invoke-virtual {v0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;->backup()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public restoreSettings()V
    .locals 2

    const-string v0, "Launcher.Backup"

    const-string v1, "restore settings"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;

    .line 66
    invoke-virtual {v0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;->restore()V

    goto :goto_0

    :cond_0
    return-void
.end method
