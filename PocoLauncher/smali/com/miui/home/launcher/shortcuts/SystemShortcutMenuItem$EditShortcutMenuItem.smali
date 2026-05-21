.class public Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;
.super Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.source "SystemShortcutMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditShortcutMenuItem"
.end annotation


# instance fields
.field private final mWidgetTag:I


# direct methods
.method public static synthetic $r8$lambda$aNsF857szzsirxC8ETwmOpFup1g(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;->lambda$getOnClickListener$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 411
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;-><init>()V

    .line 412
    iput p1, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;->mWidgetTag:I

    .line 413
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;->getSystemShortcutsEdit()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setShortTitle(Ljava/lang/CharSequence;)V

    .line 414
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;->getSystemShortcutsEditId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setShortTitleId(I)V

    .line 415
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const v0, 0x7f0806cc

    invoke-virtual {p1, v0}, Landroid/app/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getSystemShortcutsEdit()Ljava/lang/CharSequence;
    .locals 2

    .line 402
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->personalAssistantIsOpenSynShortcut()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;->mWidgetTag:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 403
    :cond_1
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    if-eqz v1, :cond_2

    const v0, 0x7f10018a

    goto :goto_1

    :cond_2
    const v0, 0x7f1004d6

    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSystemShortcutsEditId()I
    .locals 2

    .line 407
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->personalAssistantIsOpenSynShortcut()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;->mWidgetTag:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    const p0, 0x7f10018a

    goto :goto_1

    :cond_2
    const p0, 0x7f1004d6

    :goto_1
    return p0
.end method

.method private synthetic lambda$getOnClickListener$0(Landroid/view/View;)V
    .locals 2

    .line 434
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 437
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 440
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->hideShortcutMenuWithoutAnim()V

    .line 441
    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->openEditPage(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V

    const-string v1, "edit"

    .line 442
    invoke-static {v0, v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->access$000(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V

    .line 443
    instance-of v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v1, :cond_2

    .line 444
    check-cast v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getTrackShortTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickWidgetMenuItem(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 433
    new-instance v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;)V

    return-object v0
.end method

.method public isValid(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 425
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 426
    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->hasEditEntry(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    invoke-static {p0, p1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryMenuUtils;->isServiceDeliveryDowngrade(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;Lcom/miui/home/launcher/ItemInfo;)Z

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
    .locals 0

    .line 419
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;->getSystemShortcutsEdit()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setShortTitle(Ljava/lang/CharSequence;)V

    .line 420
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;->getSystemShortcutsEditId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setShortTitleId(I)V

    return-void
.end method
