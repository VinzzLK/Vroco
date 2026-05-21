.class public Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditFolderShortcutMenuItem;
.super Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.source "SystemShortcutMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditFolderShortcutMenuItem"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$6K7DAz5s-8Zd3XjckVuvVzZYxm4(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditFolderShortcutMenuItem;->lambda$getOnClickListener$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 563
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;-><init>()V

    .line 564
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->personalAssistantIsOpenSynShortcut()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f10018a

    goto :goto_0

    :cond_0
    const v1, 0x7f10018b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setShortTitle(Ljava/lang/CharSequence;)V

    .line 565
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f0806cc

    invoke-virtual {v0, v1}, Landroid/app/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static synthetic lambda$getOnClickListener$0(Landroid/view/View;)V
    .locals 2

    .line 583
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 589
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->hideShortcutMenuWithoutAnim()V

    .line 590
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->endDragViewContainerBlurAnim()V

    .line 591
    instance-of v1, v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v1, :cond_2

    .line 592
    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->show(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 582
    sget-object p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditFolderShortcutMenuItem$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditFolderShortcutMenuItem$$ExternalSyntheticLambda0;

    return-object p0
.end method

.method public isValid(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    .line 570
    instance-of p0, p1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz p0, :cond_0

    .line 571
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateTitle(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 575
    instance-of p1, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez p1, :cond_1

    .line 576
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->personalAssistantIsOpenSynShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f10018a

    goto :goto_0

    :cond_0
    const v0, 0x7f10018b

    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setShortTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
