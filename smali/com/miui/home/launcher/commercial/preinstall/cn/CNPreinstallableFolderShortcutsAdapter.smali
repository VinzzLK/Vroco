.class public Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;
.super Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;
.source "CNPreinstallableFolderShortcutsAdapter.java"


# static fields
.field private static sVisibleContentCapacity:I = 0x7fffffff


# instance fields
.field private mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;


# direct methods
.method public static synthetic $r8$lambda$wy-sLuzmK6wm35Hg-fIS67iXIfE(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->lambda$loadDrawable$0(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 24
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    .line 25
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->setRecommendFolderAdapter(Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;)V

    return-void
.end method

.method private static synthetic lambda$loadDrawable$0(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 37
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    .line 38
    invoke-virtual {p1, p2, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public createShortcutIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v0, 0x7f0d016d

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0
.end method

.method protected getMaxShowingCount()I
    .locals 0

    .line 30
    sget p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->sVisibleContentCapacity:I

    return p0
.end method

.method public getShowingPreinstallList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/RemoteShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mShowingPreinstallList:Ljava/util/List;

    return-object p0
.end method

.method protected loadDrawable(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 35
    instance-of v0, p1, Lcom/miui/home/launcher/RemoteShortcutInfo;

    if-eqz v0, :cond_0

    .line 36
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/RemoteShortcutInfo;

    new-instance v1, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->loadIcon(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public onBinded(Z)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->onBinded(Z)V

    .line 51
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->handleView()V

    return-void
.end method

.method protected onRecommendAppsEnableChanged(Z)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->onRecommendAppsEnableChanged(Z)V

    if-nez p1, :cond_0

    .line 72
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->clear()V

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/RemoteShortcutInfo;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 55
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->clearPreinstallAds()V

    .line 57
    iget-object p2, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->clearPreinstallAds()V

    .line 61
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    return-void
.end method
