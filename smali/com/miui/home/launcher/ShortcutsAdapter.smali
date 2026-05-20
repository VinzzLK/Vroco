.class public Lcom/miui/home/launcher/ShortcutsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ShortcutsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static PC:Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;


# instance fields
.field private mDisableSaveWhenDatasetChanged:Z

.field mDragOverItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDroppingDragViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Lcom/miui/home/launcher/DragView;",
            ">;"
        }
    .end annotation
.end field

.field mFirstDragItem:Lcom/miui/home/launcher/ShortcutInfo;

.field protected mInfo:Lcom/miui/home/launcher/FolderInfo;

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mPositionMap:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;

    invoke-direct {v0}, Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/ShortcutsAdapter;->PC:Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 67
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDroppingDragViews:Ljava/util/HashMap;

    .line 53
    iput-boolean v1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDisableSaveWhenDatasetChanged:Z

    .line 68
    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 69
    invoke-static {p1}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 70
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->buildSortingMap()V

    return-void
.end method

.method private buildSortingMap()V
    .locals 6

    .line 217
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    monitor-enter v0

    .line 218
    :try_start_0
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Lcom/miui/home/launcher/ShortcutsAdapter;->PC:Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v2, 0x0

    .line 220
    iget-object v3, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    add-int/lit8 v5, v2, 0x1

    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v5

    goto :goto_0

    .line 223
    :cond_0
    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mPositionMap:[Ljava/lang/Object;

    const-string v1, "ShortcutsAdapter"

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildSortingMap map size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mPositionMap:[Ljava/lang/Object;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-boolean v1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDisableSaveWhenDatasetChanged:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->formatToSequence()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->saveContentPosition()V

    .line 228
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private formatToSequence()Z
    .locals 4

    .line 233
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getReorderCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 235
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    iget v3, v3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-eq v3, v1, :cond_0

    const/4 v2, 0x1

    .line 238
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    iput v1, v3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private refreshFolderPreviewIcons()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->refreshPreviewIcons()V

    :cond_0
    return-void
.end method

.method private shouldHideIcon(Lcom/miui/home/launcher/IShortcutIcon;)Z
    .locals 0

    .line 371
    invoke-interface {p1}, Lcom/miui/home/launcher/IShortcutIcon;->getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-interface {p1}, Lcom/miui/home/launcher/LocatableIcon;->isIconLocating()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public add(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    monitor-enter v0

    .line 338
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 339
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->add(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    monitor-enter v0

    .line 352
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 353
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public disableSaveWhenDatasetChanged(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDisableSaveWhenDatasetChanged:Z

    return-void
.end method

.method public enableReorder(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getCount()I
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    monitor-enter v0

    .line 345
    :try_start_0
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 346
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFolderInfo()Lcom/miui/home/launcher/FolderInfo;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object p0
.end method

.method public getFolderItemIndex(Lcom/miui/home/launcher/ShortcutInfo;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">(TT;)I"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    monitor-enter v0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 132
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 138
    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getIsDragging(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getItem(I)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 6

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    monitor-enter v0

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mPositionMap:[Ljava/lang/Object;

    array-length v3, v2

    if-ge p1, v3, :cond_0

    .line 110
    aget-object v2, v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-super {p0, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :cond_0
    :try_start_2
    const-string v2, "ShortcutsAdapter"

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ArrayIndexOutOfBoundsException position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mPositionMap:[Ljava/lang/Object;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :try_start_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ShortcutsAdapter"

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArrayIndexOutOfBoundsException position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mPositionMap:[Ljava/lang/Object;

    array-length p0, p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    monitor-exit v0

    return-object v1

    .line 119
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 148
    :cond_0
    iget-wide p0, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    return-wide p0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 0

    .line 296
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastItemCellXSafe()I
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    monitor-enter v0

    const/4 v1, 0x0

    .line 312
    :try_start_0
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 314
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mPositionMap:[Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-super {p0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 316
    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 317
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getReorderCount()I
    .locals 0

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result p0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 245
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 247
    new-instance p0, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 249
    :cond_0
    instance-of p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz p2, :cond_1

    const p2, 0x7f0d0035

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2, v0, p3, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    move-result-object p2

    goto :goto_0

    .line 251
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2, p3, p1}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(Lcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p2

    .line 252
    :goto_0
    instance-of p3, p2, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p3, :cond_2

    .line 253
    move-object p3, p2

    check-cast p3, Lcom/miui/home/launcher/ShortcutIcon;

    .line 254
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setMirrorMenuListener(Landroid/view/View;)V

    .line 255
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setDragListener(Landroid/view/View;)V

    goto :goto_1

    .line 257
    :cond_2
    move-object p3, p2

    check-cast p3, Lcom/miui/home/launcher/ProgressShortcutIcon;

    .line 258
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setMirrorMenuListener(Landroid/view/View;)V

    .line 259
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setDragListener(Landroid/view/View;)V

    .line 261
    :goto_1
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ShortcutsAdapter;->shouldHideIcon(Lcom/miui/home/launcher/IShortcutIcon;)Z

    move-result p3

    const/4 v0, 0x4

    if-eqz p3, :cond_3

    .line 262
    invoke-interface {p2, v0}, Lcom/miui/home/launcher/DesktopIcon;->setVisibility(I)V

    .line 264
    :cond_3
    iget-object p3, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->isFolderAnimating()Z

    move-result p3

    if-nez p3, :cond_5

    .line 265
    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->containInDeleteAppList(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_2
    invoke-interface {p2, v1}, Lcom/miui/home/launcher/DesktopIcon;->setAlpha(F)V

    goto :goto_3

    .line 266
    :cond_5
    iget-object p3, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 267
    invoke-interface {p2, v1}, Lcom/miui/home/launcher/DesktopIcon;->setAlpha(F)V

    .line 270
    :cond_6
    :goto_3
    iget-object p3, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDroppingDragViews:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 271
    iget-object p3, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDroppingDragViews:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/launcher/DragView;

    .line 272
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragView;->isTargetAnimating()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 273
    invoke-interface {p2}, Lcom/miui/home/launcher/DesktopIcon;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/miui/home/launcher/DragView;->updateAnimateTarget(Landroid/view/View;)V

    .line 274
    invoke-interface {p2, v0}, Lcom/miui/home/launcher/DesktopIcon;->setVisibility(I)V

    .line 277
    :cond_7
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-object p3, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-wide v2, p3, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_8

    .line 278
    invoke-interface {p2}, Lcom/miui/home/launcher/DesktopIcon;->onWallpaperColorChanged()V

    .line 281
    :cond_8
    iget-object p3, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    .line 282
    invoke-interface {p2}, Lcom/miui/home/launcher/IShortcutIcon;->restoreToInitState()V

    .line 285
    :cond_9
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_a

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 286
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_4

    :cond_a
    move p0, v0

    .line 285
    :goto_4
    invoke-interface {p2, p0, v0}, Lcom/miui/home/launcher/IShortcutIcon;->setEditMode(ZZ)V

    .line 287
    invoke-static {p1}, Lcom/miui/home/launcher/hybrid/HybridController;->trackView(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 288
    invoke-interface {p2}, Lcom/miui/home/launcher/DesktopIcon;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 289
    invoke-virtual {p0}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 290
    invoke-virtual {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 292
    :cond_b
    invoke-interface {p2}, Lcom/miui/home/launcher/DesktopIcon;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChangedWithoutUpdateFolderPreviewIcons()V

    .line 86
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->refreshFolderPreviewIcons()V

    return-void
.end method

.method public notifyDataSetChangedWithoutUpdateFolderPreviewIcons()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->buildSortingMap()V

    .line 97
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method public onBinded(Z)V
    .locals 0

    return-void
.end method

.method protected onRecommendAppsEnableChanged(Z)V
    .locals 0

    return-void
.end method

.method public remove(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    monitor-enter v0

    .line 359
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 360
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public removeAllDrags()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 324
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 325
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    .line 328
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public reorderItemByIndex(II)V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 179
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int v2, p2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    add-int v4, p1, v0

    sub-int/2addr v4, v3

    .line 180
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 181
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int p1, p2, p1

    .line 183
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 p2, -0x1

    if-ne v1, p2, :cond_1

    return-void

    :cond_1
    :goto_1
    if-gt v1, v2, :cond_5

    .line 190
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p2

    if-eqz v3, :cond_3

    .line 192
    iget-object v4, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 193
    iget v4, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr v4, v0

    iput v4, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    goto :goto_2

    .line 195
    :cond_2
    iget v4, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    sub-int/2addr v4, p1

    iput v4, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    goto :goto_2

    .line 198
    :cond_3
    iget-object v4, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 199
    iget v4, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    sub-int/2addr v4, v0

    iput v4, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    goto :goto_2

    .line 201
    :cond_4
    iget v4, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr v4, p1

    iput v4, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 205
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public reorderItemByInsert(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mFirstDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v1

    .line 162
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getReorderCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 163
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    .line 164
    iput v0, v3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 165
    iget-object v4, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mFirstDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    if-ne v3, v4, :cond_1

    move v1, v0

    :cond_1
    if-ne v3, p1, :cond_2

    move v2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    .line 173
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getReorderCount()I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    .line 174
    :cond_4
    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/ShortcutsAdapter;->reorderItemByIndex(II)V

    return-void
.end method

.method public saveContentPosition()V
    .locals 1

    .line 209
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/LauncherModel;->updateFolderItems(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method
