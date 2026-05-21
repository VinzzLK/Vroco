.class public Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;
.super Ljava/lang/Object;
.source "AllShortcutMenuItems.java"


# instance fields
.field private mAddWidgetShortcutMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAppShortcutMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderShortcutMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemShortcutMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetShortcutMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mAppShortcutMenuItems:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mSystemShortcutMenuItems:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mFolderShortcutMenuItems:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mWidgetShortcutMenuItems:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mAddWidgetShortcutMenuItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAddWidgetShortcutMenuItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mAddWidgetShortcutMenuItems:Ljava/util/List;

    return-object p0
.end method

.method public getAllShortcutMenuItemsSize()I
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mAppShortcutMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mAddWidgetShortcutMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mSystemShortcutMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mFolderShortcutMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mWidgetShortcutMenuItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getAppShortcutMenuItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mAppShortcutMenuItems:Ljava/util/List;

    return-object p0
.end method

.method public getFolderShortcutMenuItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mFolderShortcutMenuItems:Ljava/util/List;

    return-object p0
.end method

.method public getSystemShortcutMenuItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mSystemShortcutMenuItems:Ljava/util/List;

    return-object p0
.end method

.method public getWidgetShortcutMenuItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mWidgetShortcutMenuItems:Ljava/util/List;

    return-object p0
.end method

.method public setAddWidgetShortcutMenuItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mAddWidgetShortcutMenuItems:Ljava/util/List;

    return-void
.end method

.method public setAppShortcutMenuItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mAppShortcutMenuItems:Ljava/util/List;

    return-void
.end method

.method public setFolderShortcutMenuItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mFolderShortcutMenuItems:Ljava/util/List;

    return-void
.end method

.method public setSystemShortcutMenuItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mSystemShortcutMenuItems:Ljava/util/List;

    return-void
.end method

.method public setWidgetShortcutMenuItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mWidgetShortcutMenuItems:Ljava/util/List;

    return-void
.end method
