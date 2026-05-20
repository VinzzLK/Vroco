.class public Lcom/miui/home/launcher/ThirdApplicationConfig;
.super Ljava/lang/Object;
.source "ThirdApplicationConfig.java"


# instance fields
.field protected mDeleteTip:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mMetaDate:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    .line 30
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ThirdApplicationConfig;->setDeleteTip(Ljava/lang/String;)V

    return-void
.end method

.method private setDeleteTip(Ljava/lang/String;)V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "app_description_title"

    .line 97
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const-string v2, "app_description_content"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 100
    new-instance v2, Landroid/util/Pair;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v0, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 101
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mDeleteTip:Landroid/util/Pair;

    :cond_0
    return-void
.end method


# virtual methods
.method public getDeleteTip(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 65
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_4

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/uninstall/UninstallController;->isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const-string v1, "app_uninstall_description_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const-string v2, "app_uninstall_description_content"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getGlobalHideAppItem()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const-string v2, "app_remove_icon_description_title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 75
    iget-object v2, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const-string v3, "app_remove_icon_description_content"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 76
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    move v0, v2

    goto :goto_1

    .line 77
    :cond_2
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100291

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f100442

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    .line 79
    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Landroid/util/Pair;

    const v2, 0x7f100443

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mDeleteTip:Landroid/util/Pair;

    return-object v1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 86
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 87
    new-instance v2, Landroid/util/Pair;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 88
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v0, v5}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mDeleteTip:Landroid/util/Pair;

    .line 92
    :cond_4
    iget-object p0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mDeleteTip:Landroid/util/Pair;

    return-object p0
.end method

.method public getGlobalHideAppItem()Z
    .locals 2

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "global_app_hide_enable"

    .line 42
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public getHiddenAppNotificationsItem()Z
    .locals 2

    .line 58
    iget-object p0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "disable_notifications_when_app_hide"

    .line 59
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public getHideAppItem()Z
    .locals 2

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "app_hide_enable"

    .line 35
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public getProhibitHiddenActivities()[Ljava/lang/String;
    .locals 2

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "prohibit_hide_activities"

    .line 49
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, ";"

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method
