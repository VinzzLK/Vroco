.class public Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;
.super Landroid/widget/FrameLayout;
.source "UninstallDialogViewContainer.java"


# static fields
.field private static TAG:Ljava/lang/String; = "UninstallDialogViewContainer"


# instance fields
.field private mBindedShortcutInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDescription:Landroid/widget/TextView;

.field private mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

.field private mIsContainUninstall:Z

.field private mReport:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$4-23OGUong9V0Ofk7Q98nhI59vE(Landroidx/core/util/Consumer;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->lambda$inflateShortcutIcon$2(Landroidx/core/util/Consumer;Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rvbaDuZsHdonp2x9x8i016MszN0(Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;Landroid/graphics/drawable/Drawable;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->lambda$bindShortcut$0(Landroid/graphics/drawable/Drawable;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;)V

    return-void
.end method

.method public static synthetic $r8$lambda$veHfzFec2Ru-9WamMpsI-4VedBg(Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Landroid/view/LayoutInflater;Lcom/miui/home/launcher/ShortcutInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->lambda$bindShortcut$1(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Landroid/view/LayoutInflater;Lcom/miui/home/launcher/ShortcutInfo;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addIcon(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 177
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->onlyShowIconWhenDrawChild()V

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private containRelativeXSpace()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 163
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutIcon;

    .line 165
    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 166
    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 167
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/miui/launcher/utils/LauncherUtils;->hasRelativeXSpaceApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private inflateShortcutIcon(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Landroid/view/LayoutInflater;Landroidx/core/util/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;",
            "Landroid/view/LayoutInflater;",
            "Landroidx/core/util/Consumer<",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0d016a

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    new-instance v2, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda0;-><init>(Landroidx/core/util/Consumer;)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    const/4 p1, 0x0

    invoke-virtual {p2, v0, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    .line 92
    invoke-interface {p3, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$bindShortcut$0(Landroid/graphics/drawable/Drawable;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-nez v2, :cond_3

    .line 71
    :cond_1
    sget-object v2, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawable is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, 0x1

    .line 73
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setNeedToSkipUpdateIconDrawableSize(Z)V

    .line 74
    invoke-virtual {p3, v1, v0, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setUninstallDialogViewContainerIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/miui/home/launcher/ShortcutInfo;)V

    const/4 p1, 0x0

    .line 75
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/ShortcutIcon;->enableDrawTouchMask(Z)V

    .line 76
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->addIcon(Lcom/miui/home/launcher/ShortcutIcon;)V

    return-void
.end method

.method private synthetic lambda$bindShortcut$1(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Landroid/view/LayoutInflater;Lcom/miui/home/launcher/ShortcutInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 66
    new-instance v0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p4, p3}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;Landroid/graphics/drawable/Drawable;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->inflateShortcutIcon(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Landroid/view/LayoutInflater;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$inflateShortcutIcon$2(Landroidx/core/util/Consumer;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 87
    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    .line 88
    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private setTitle()V
    .locals 9

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mBindedShortcutInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x7f10052d

    const v2, 0x7f100529

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v0, v3, :cond_3

    .line 99
    iget-object v5, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIsContainUninstall:Z

    if-eqz v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    const/16 v6, 0x8

    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-boolean v5, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIsContainUninstall:Z

    if-nez v5, :cond_1

    .line 101
    iget-object v5, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0017

    new-array v3, v3, [Ljava/lang/Object;

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-virtual {v6, v7, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 104
    :cond_1
    iget-object v5, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0019

    new-array v3, v3, [Ljava/lang/Object;

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-virtual {v6, v7, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->containRelativeXSpace()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 110
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_3
    if-ne v0, v3, :cond_8

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mBindedShortcutInfos:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 115
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object v5

    const/4 v6, 0x0

    .line 117
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/miui/home/launcher/uninstall/UninstallController;->isSecondConfirmationDialog(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v5, :cond_4

    .line 118
    invoke-virtual {v5, v0}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getDeleteTip(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/util/Pair;

    move-result-object v6

    :cond_4
    if-eqz v6, :cond_5

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mTitle:Landroid/widget/TextView;

    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 124
    :cond_5
    iget-object v5, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 125
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10052f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v5, v2, v4

    .line 126
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f10052e

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 131
    :cond_6
    iget-object v6, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mContext:Landroid/content/Context;

    const v8, 0x7f10052a

    .line 132
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v4

    .line 131
    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v3, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/launcher/utils/LauncherUtils;->hasRelativeXSpaceApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 136
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 138
    :cond_7
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method private updateReportTextGravity()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mReport:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 155
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const v2, 0x800003

    if-eq v1, v2, :cond_0

    .line 156
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 157
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mReport:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindShortcut(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 59
    :cond_0
    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mBindedShortcutInfos:Ljava/util/List;

    .line 60
    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    invoke-direct {v0, p1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 62
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 63
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v3

    .line 64
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Landroid/view/LayoutInflater;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 63
    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->setTitle()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 47
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a03ba

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0138

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f0a03f8

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    .line 51
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v0, 0x7f0a0302

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mReport:Landroid/widget/TextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 148
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 149
    invoke-direct {p0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->updateReportTextGravity()V

    return-void
.end method

.method public setIsContainUninstall(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIsContainUninstall:Z

    return-void
.end method
