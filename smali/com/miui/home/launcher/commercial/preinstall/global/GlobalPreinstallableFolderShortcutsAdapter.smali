.class public Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;
.super Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;
.source "GlobalPreinstallableFolderShortcutsAdapter.java"


# static fields
.field private static sVisibleContentCapacity:I


# instance fields
.field private mAllPreinstallInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/RemoteShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreinstallInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

.field private mWaitingForNewAds:Z


# direct methods
.method public static synthetic $r8$lambda$a-RgCVdJlBkeQkpOqpsr0Ot9s_0(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->lambda$loadDrawable$1(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mP9y-cvHmw4DrUlZNuox6SUSgD4(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->lambda$loadDrawable$0(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->sVisibleContentCapacity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallInfoMap:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mWaitingForNewAds:Z

    .line 43
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    .line 44
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->setPreinstallFolderAdapter(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mShowingPreinstallList:Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$loadDrawable$0(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$loadDrawable$1(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    .line 59
    invoke-virtual {p1, p2, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private requestPreinstallAds(Ljava/lang/String;)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->beforeRecommendFolderOpen()V

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->sVisibleContentCapacity:I

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 170
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->requestMorePreinstallAds(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearPreinstallAds()V
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->clearPreinstallAds()V

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 137
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChangedWithoutUpdateFolderPreviewIcons()V

    return-void
.end method

.method protected getMaxShowingCount()I
    .locals 0

    .line 49
    sget p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->sVisibleContentCapacity:I

    return p0
.end method

.method public getShowingPreinstallAd(Ljava/lang/String;)Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;
    .locals 4

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 181
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 182
    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/RemoteShortcutInfo;

    .line 183
    invoke-virtual {v2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Launcher.PreinstallableFolderShortcutsAdapterGlobal"

    const-string v0, "Load preinstall ads fail"

    .line 188
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method

.method protected loadDrawable(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 1

    .line 54
    new-instance p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/ShortcutInfo;)V

    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;)V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public onBinded(Z)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 143
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 144
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result p1

    sget v1, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->sVisibleContentCapacity:I

    const-string v2, "Launcher.PreinstallableFolderShortcutsAdapterGlobal"

    if-ge p1, v1, :cond_1

    .line 145
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget v1, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->sVisibleContentCapacity:I

    iget-object v3, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, p1, :cond_0

    .line 148
    iget-object v3, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/RemoteShortcutInfo;

    .line 149
    iget-object v4, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    .line 150
    iget-object v5, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v5}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v5

    iget-object v6, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 151
    iget-object v5, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->handleView(Ljava/util/List;)V

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "folder will show preinstall, folder=("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->printSimpleIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), count="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mShowingPreinstallList:Ljava/util/List;

    .line 156
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 158
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "folder will NOT show preinstall because no space, folder=("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->printSimpleIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChangedWithoutUpdateFolderPreviewIcons()V

    goto :goto_2

    .line 162
    :cond_2
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mWaitingForNewAds:Z

    const-string p1, "folder close"

    .line 163
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->requestPreinstallAds(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected onRecommendAppsEnableChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mWaitingForNewAds:Z

    const-string p1, "recommend apps switch on"

    .line 127
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->requestPreinstallAds(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->clearPreinstallAds()V

    :goto_0
    return-void
.end method

.method public preInstall(Lcom/miui/home/launcher/RemoteShortcutInfo;)V
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->addPreinstallAppToWorkspace(Lcom/miui/home/launcher/RemoteShortcutInfo;)V

    return-void
.end method

.method public refreshPreinstallList(Ljava/util/List;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "), ads count="

    const-string v1, "Launcher.PreinstallableFolderShortcutsAdapterGlobal"

    .line 64
    iget-boolean v2, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mWaitingForNewAds:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallAdsEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 65
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 66
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-ne v2, v4, :cond_1

    :cond_0
    return v3

    .line 69
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    iget-object v4, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 72
    iget-object v4, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 73
    iget-object v4, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChangedWithoutUpdateFolderPreviewIcons()V

    const/4 v4, 0x1

    if-eqz p1, :cond_7

    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    .line 79
    :cond_2
    :try_start_0
    new-instance v5, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$1;

    invoke-direct {v5, p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$1;-><init>(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;)V

    invoke-static {p1, v5}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterByLauncherApps(Ljava/util/List;Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;)V

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before show folder preinstall ads, after filter installed apk, folder=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/launcher/FolderInfo;->printSimpleIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    .line 90
    invoke-virtual {v7}, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 91
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallInfoMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 92
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/RemoteShortcutInfo;

    goto :goto_1

    :cond_3
    new-instance v8, Lcom/miui/home/launcher/RemoteShortcutInfo;

    const/16 v9, 0xf

    invoke-direct {v8, v9}, Lcom/miui/home/launcher/RemoteShortcutInfo;-><init>(I)V

    :goto_1
    const/4 v9, 0x0

    .line 93
    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {v7}, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setPackageName(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v7}, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->getIconUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setLocalIconUri(Landroid/net/Uri;)V

    .line 96
    invoke-virtual {v7}, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->getTitle()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v8, v9, v10}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 97
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 98
    new-instance v10, Landroid/content/ComponentName;

    invoke-virtual {v7}, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "invalidClassName"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 99
    iput-object v9, v8, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v9

    iget-wide v9, v9, Lcom/miui/home/launcher/ItemInfo;->id:J

    iput-wide v9, v8, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 101
    iget-object v9, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v8, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallInfoMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 105
    :cond_4
    invoke-interface {p1, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before show folder preinstall ads, after remove repeat and invalid ads, folder=("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->printSimpleIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-boolean p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mWaitingForNewAds:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 112
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-ne p1, v0, :cond_6

    .line 113
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->onBinded(Z)V

    .line 115
    :cond_6
    iput-boolean v3, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mWaitingForNewAds:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p0

    const-string p1, "refresh fail"

    .line 118
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_7
    :goto_2
    return v4
.end method

.method public removePreinstallAd(Ljava/lang/String;)Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;
    .locals 6

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 201
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 202
    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/RemoteShortcutInfo;

    .line 203
    invoke-virtual {v2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    .line 206
    iget-object v3, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    move-object v2, v0

    .line 210
    :goto_1
    iget-object v3, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/RemoteShortcutInfo;

    .line 211
    invoke-virtual {v4}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 212
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v0, :cond_5

    .line 218
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v3, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$2;

    invoke-direct {v3, p0, v2}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$2;-><init>(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;Lcom/miui/home/launcher/RemoteShortcutInfo;)V

    invoke-virtual {p1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "Launcher.PreinstallableFolderShortcutsAdapterGlobal"

    const-string v0, "remove preinstall ads fail"

    .line 228
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
