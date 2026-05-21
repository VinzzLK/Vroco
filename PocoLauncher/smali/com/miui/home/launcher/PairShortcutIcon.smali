.class public Lcom/miui/home/launcher/PairShortcutIcon;
.super Lcom/miui/home/launcher/ShortcutIcon;
.source "PairShortcutIcon.java"


# direct methods
.method public static synthetic $r8$lambda$tYDbC6gnw3pDe1a5eapOtR2DAE8(Lcom/miui/home/launcher/PairShortcutIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/PairShortcutIcon;->showFirstTipMenuItem()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static create(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/PairShortcutIcon;
    .locals 1

    .line 17
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/PairShortcutIcon;

    return-object p0
.end method

.method private showFirstTipMenuItem()V
    .locals 3

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInMultiSelecting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return-void

    .line 56
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->isFirstShowPairIcon()Z

    move-result v1

    if-nez v1, :cond_3

    .line 57
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->showShortcutTip(Landroid/view/View;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIsFirstShowPairIcon()V

    :cond_3
    return-void
.end method

.method private updatePairIconBg()V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    .line 36
    instance-of v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;

    if-eqz v0, :cond_0

    .line 37
    check-cast p0, Lcom/miui/home/launcher/PairShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->updatePairIconDrawable()V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindGroupShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/PairShortcutInfo;Landroid/view/ViewGroup;)V
    .locals 0

    .line 22
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/PairShortcutIcon;->setTag(Lcom/miui/home/launcher/ItemInfo;)V

    .line 23
    invoke-virtual {p2, p0, p3}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/IShortcutIcon;Landroid/view/ViewGroup;)V

    .line 24
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/miui/home/launcher/PairShortcutInfo;->getPairIconAsync(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IconCache;)V

    .line 25
    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic getHeightDiffBetweenImageAndImageView()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getHeightDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getScreenId()J
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getViewCellX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewCellY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellY()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanY()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getWidthDiffBetweenImageAndImageView()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getWidthDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 44
    new-instance v0, Lcom/miui/home/launcher/PairShortcutIcon$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/PairShortcutIcon$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/PairShortcutIcon;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onWallpaperColorChanged()V

    .line 31
    invoke-direct {p0}, Lcom/miui/home/launcher/PairShortcutIcon;->updatePairIconBg()V

    return-void
.end method

.method public bridge synthetic setAnimTargetAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->setAnimTargetAlpha(F)V

    return-void
.end method

.method public bridge synthetic setTag(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/IShortcutIcon;->setTag(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method
