.class public Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$SizeAdaptShortcutMenuItem;
.super Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.source "SystemShortcutMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeAdaptShortcutMenuItem"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$Bmgjc1nf4qsiSmyqDraeDs50cS0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$SizeAdaptShortcutMenuItem;->lambda$getOnClickListener$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 644
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;-><init>()V

    .line 645
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f1004da

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setShortTitle(Ljava/lang/CharSequence;)V

    .line 646
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setShortTitleId(I)V

    .line 647
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f0806d9

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static synthetic lambda$getOnClickListener$0(Landroid/view/View;)V
    .locals 5

    .line 669
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 673
    instance-of v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-nez v1, :cond_1

    return-void

    .line 675
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 676
    iget-object v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    if-nez v2, :cond_2

    return-void

    .line 678
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    .line 680
    :cond_3
    iget-wide v3, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 682
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->hideShortcutMenuWithoutAnim()V

    .line 684
    iget-object p0, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    const/4 v1, 0x1

    invoke-virtual {v2, v0, p0, v1}, Lcom/miui/home/launcher/Workspace;->checkAppWidgetResizeFrameWhenDropOnOriginScreen(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/LauncherWidgetView;Z)V

    return-void
.end method

.method private supportSizeAdapt(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 661
    instance-of p0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 662
    :cond_0
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 663
    iget-object p0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->supportSizeAdapt()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 668
    sget-object p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$SizeAdaptShortcutMenuItem$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$SizeAdaptShortcutMenuItem$$ExternalSyntheticLambda0;

    return-object p0
.end method

.method public isValid(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 652
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 653
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$SizeAdaptShortcutMenuItem;->supportSizeAdapt(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 654
    invoke-static {p1, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 655
    invoke-static {p1, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 656
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result p0

    if-nez p0, :cond_0

    .line 657
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
