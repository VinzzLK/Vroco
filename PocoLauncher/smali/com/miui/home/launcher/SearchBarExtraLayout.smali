.class public Lcom/miui/home/launcher/SearchBarExtraLayout;
.super Landroid/widget/ViewAnimator;
.source "SearchBarExtraLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# instance fields
.field private mTransferLayout:Lcom/miui/home/launcher/SearchBarTransferLayout;

.field private mXiaoaiLayout:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f01003a

    .line 19
    invoke-virtual {p0, p1, p2}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    const p2, 0x7f01003d

    .line 20
    invoke-virtual {p0, p1, p2}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public isXiaoaiShow()Z
    .locals 1

    .line 37
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarExtraLayout;->mXiaoaiLayout:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->isXiaoaiShow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 25
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onFinishInflate()V

    const v0, 0x7f0a032c

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarExtraLayout;->mXiaoaiLayout:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    const v0, 0x7f0a032b

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarTransferLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarExtraLayout;->mTransferLayout:Lcom/miui/home/launcher/SearchBarTransferLayout;

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarExtraLayout;->mXiaoaiLayout:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->onWallpaperColorChanged()V

    .line 33
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarExtraLayout;->mTransferLayout:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->onWallpaperColorChanged()V

    return-void
.end method

.method public refreshStyle()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarExtraLayout;->mXiaoaiLayout:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->refreshStyle()V

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isSupportSuperXiaoai()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarExtraLayout;->mXiaoaiLayout:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f100089

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarExtraLayout;->mXiaoaiLayout:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f10008d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
