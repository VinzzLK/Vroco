.class public abstract Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.super Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;
.source "SystemShortcutMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$SizeAdaptShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DislikeShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditFolderShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ReplaceWidgetShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AppIconSizeShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$UninstallShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$TipMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AppDetailsShortcutMenuItem;
    }
.end annotation


# static fields
.field private static sAllFolderShortcutMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sAllSystemShortcutMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sAllWidgetShortcutMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->analyticalData(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method private static analyticalData(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 2

    .line 554
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutInfo;

    const-string/jumbo v1, "unknown"

    if-eqz v0, :cond_0

    .line 555
    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 556
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPairCompletePackageName()Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getAppStyle()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    .line 559
    :goto_0
    invoke-static {v1, p1, p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickShortcutMenuItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createAllSystemShortcutMenuItems()V
    .locals 9

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;

    .line 86
    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AppIconSizeShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AppIconSizeShortcutMenuItem;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AppDetailsShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AppDetailsShortcutMenuItem;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$UninstallShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$UninstallShortcutMenuItem;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;-><init>()V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;

    invoke-direct {v1, v3}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;-><init>(I)V

    const/4 v6, 0x4

    aput-object v1, v0, v6

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;-><init>()V

    const/4 v7, 0x5

    aput-object v1, v0, v7

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem;-><init>()V

    const/4 v8, 0x6

    aput-object v1, v0, v8

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->sAllSystemShortcutMenuItems:Ljava/util/List;

    new-array v0, v7, [Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;

    .line 95
    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DislikeShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DislikeShortcutMenuItem;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;

    invoke-direct {v1, v4}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;-><init>(I)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ReplaceWidgetShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ReplaceWidgetShortcutMenuItem;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$SizeAdaptShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$SizeAdaptShortcutMenuItem;-><init>()V

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->sAllWidgetShortcutMenuItems:Ljava/util/List;

    new-array v0, v3, [Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;

    .line 101
    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditFolderShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditFolderShortcutMenuItem;-><init>()V

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->sAllFolderShortcutMenuItems:Ljava/util/List;

    return-void
.end method

.method public static getAllFolderShortcutMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->sAllFolderShortcutMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public static getAllSystemShortcutMenuItem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->sAllSystemShortcutMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public static getAllWidgetShortcutMenuItem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->sAllWidgetShortcutMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public static resetAllSystemShortcutMenuItems()V
    .locals 2

    .line 79
    sget-object v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->sAllSystemShortcutMenuItems:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;

    .line 81
    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->resetData()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public isValid(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 66
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setUserHandle(Landroid/os/UserHandle;)V

    .line 68
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setComponentName(Landroid/content/ComponentName;)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->isValid()Z

    move-result p0

    return p0
.end method

.method protected resetData()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setUserHandle(Landroid/os/UserHandle;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setComponentName(Landroid/content/ComponentName;)V

    return-void
.end method
