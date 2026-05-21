.class public Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;
.super Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.source "SystemShortcutMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteShortcutMenuItem"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$9U0vyoaOImAwF3srUORJwLtGNJg(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;->lambda$getOnClickListener$0(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fc3TOGOOPuU26aBYY2qigjM2DDE(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;->lambda$getOnClickListener$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 320
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;-><init>()V

    .line 321
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;->getSystemShortcutsIconRemove()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setShortTitle(Ljava/lang/CharSequence;)V

    .line 322
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;->getSystemShortcutsRemove()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setShortTitleId(I)V

    .line 323
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f0806d4

    invoke-virtual {v0, v1}, Landroid/app/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getSystemShortcutsIconRemove()Ljava/lang/CharSequence;
    .locals 1

    .line 311
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->personalAssistantIsOpenSynShortcut()Z

    move-result p0

    .line 312
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-eqz p0, :cond_0

    const p0, 0x7f1004d7

    goto :goto_0

    :cond_0
    const p0, 0x7f1004d9

    :goto_0
    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSystemShortcutsRemove()I
    .locals 0

    .line 316
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->personalAssistantIsOpenSynShortcut()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1004d7

    goto :goto_0

    :cond_0
    const p0, 0x7f1004d9

    :goto_0
    return p0
.end method

.method private getUnInstallShortcutInfo(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 0

    .line 327
    instance-of p0, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 328
    check-cast p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 329
    invoke-static {p0, p2}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 330
    invoke-virtual {p2, p0, p1}, Lcom/miui/home/launcher/Launcher;->getFirstAppInfo(Ljava/lang/String;Z)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$getOnClickListener$0(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 386
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method private synthetic lambda$getOnClickListener$1(Landroid/view/View;)V
    .locals 5

    .line 366
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 369
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 372
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;->getUnInstallShortcutInfo(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 374
    invoke-direct {p0, v1, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;->unInstallApp(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    return-void

    .line 378
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->hideShortcutMenuWithoutAnim()V

    .line 379
    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 380
    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1, v2}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteWithBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Z)V

    goto :goto_0

    .line 381
    :cond_3
    instance-of v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-boolean v3, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 382
    iput v3, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->deleteWidgetWay:I

    const/4 v3, 0x0

    .line 383
    invoke-static {p1, v1, v3, v2}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteMiuiWidgetWithBoomAnim(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;[IZ)V

    goto :goto_0

    .line 385
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const-string v1, "remove"

    .line 389
    invoke-static {v0, v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->access$000(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V

    .line 390
    instance-of v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v1, :cond_5

    .line 391
    check-cast v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getTrackShortTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickWidgetMenuItem(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private unInstallApp(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->hideShortcutMenuWithoutAnim()V

    .line 339
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->showDialog(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    const-string/jumbo p0, "uninstall"

    .line 340
    invoke-static {p1, p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->access$000(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 365
    new-instance v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;)V

    return-object v0
.end method

.method public isValid(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 346
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    .line 347
    invoke-static {p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    invoke-static {p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 349
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result p0

    if-nez p0, :cond_0

    .line 350
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

    .line 354
    instance-of p1, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_0

    .line 355
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const v0, 0x7f1004d7

    invoke-virtual {p1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setShortTitle(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 356
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setShortTitleId(I)V

    goto :goto_0

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;->getSystemShortcutsIconRemove()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setShortTitle(Ljava/lang/CharSequence;)V

    .line 359
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;->getSystemShortcutsRemove()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setShortTitleId(I)V

    :goto_0
    return-void
.end method
