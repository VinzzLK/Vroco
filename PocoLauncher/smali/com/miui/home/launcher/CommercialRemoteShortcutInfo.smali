.class public Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;
.super Lcom/miui/home/launcher/RemoteShortcutInfo;
.source "CommercialRemoteShortcutInfo.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;-><init>(I)V

    .line 11
    invoke-direct {p0}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->initCommercialRemoteShortcutInfo()V

    return-void
.end method

.method private initCommercialRemoteShortcutInfo()V
    .locals 2

    .line 15
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sRecommendLoadingTitle:Ljava/lang/String;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 16
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getDefaultProgressIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getBuddyIconView()Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBaseProgressShortcutIconView:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    return-object p0
.end method

.method public getBuddyIconView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyForParent:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_0

    .line 31
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBaseProgressShortcutIconView:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isLoading()Z
    .locals 2

    .line 21
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sRecommendLoadingTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
