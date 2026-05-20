.class public Lcom/miui/home/launcher/shortcuts/AddWidgetShortcutMenuItem;
.super Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.source "AddWidgetShortcutMenuItem.java"


# instance fields
.field private mGlobalWidgetDetailsUrl:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$GdAptLWgGvpGRHeP9yfB4A0bkiw(Lcom/miui/home/launcher/shortcuts/AddWidgetShortcutMenuItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/AddWidgetShortcutMenuItem;->lambda$getOnClickListener$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;-><init>()V

    .line 24
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10054a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setShortTitle(Ljava/lang/CharSequence;)V

    .line 26
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f0806c9

    invoke-virtual {v0, v1}, Landroid/app/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$getOnClickListener$0(Landroid/view/View;)V
    .locals 3

    .line 57
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 64
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 65
    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v1, :cond_2

    return-void

    .line 68
    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 69
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->hideShortcutMenuWithoutAnim()V

    .line 70
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_3

    .line 71
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/AddWidgetShortcutMenuItem;->mGlobalWidgetDetailsUrl:Ljava/lang/String;

    invoke-static {p1, v1, p0}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->goToGlobalWidgetDetails(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_3
    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->gotoPicker(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V

    .line 76
    :goto_0
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPairCompletePackageName()Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getAppStyle()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "\u6dfb\u52a0\u5c0f\u90e8\u4ef6"

    .line 80
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickShortcutMenuItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 56
    new-instance v0, Lcom/miui/home/launcher/shortcuts/AddWidgetShortcutMenuItem$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/shortcuts/AddWidgetShortcutMenuItem$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/shortcuts/AddWidgetShortcutMenuItem;)V

    return-object v0
.end method

.method public isValid(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 31
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/miui/home/launcher/shortcuts/AddWidgetShortcutMenuItem;->mGlobalWidgetDetailsUrl:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 36
    sget-object v2, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 41
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 42
    invoke-virtual {v2}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 46
    :cond_2
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_3

    .line 47
    invoke-static {v1, p1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->getGlobalWidgetDetailsUrl(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/AddWidgetShortcutMenuItem;->mGlobalWidgetDetailsUrl:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 50
    :cond_3
    invoke-static {v1, p1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->hasWidgets(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method
