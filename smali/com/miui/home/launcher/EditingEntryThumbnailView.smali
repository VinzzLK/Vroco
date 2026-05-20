.class public Lcom/miui/home/launcher/EditingEntryThumbnailView;
.super Lcom/miui/home/launcher/EditModeThumbnailView;
.source "EditingEntryThumbnailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;


# static fields
.field private static mEditingModes:[Ljava/lang/String;

.field private static mLastClickTime:J


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mEntryDrawableIds:[I

.field private final mEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFolmes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/animation/IFolme;",
            ">;"
        }
    .end annotation
.end field

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsReload:Z

.field private mIsWallpaperEffectShow:Z

.field private mIsWallpaperSettingShow:Z

.field private mIsWidgetShow:Z

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mShow:Z

.field protected final mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;


# direct methods
.method public static synthetic $r8$lambda$vOLafMigwH4DAjcRnGrCVjWaArk(Lmiuix/animation/IFolme;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->lambda$releaseFolme$0(Lmiuix/animation/IFolme;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/EditModeThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 51
    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[I

    .line 53
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    const/4 p3, 0x0

    .line 67
    iput-boolean p3, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mIsWallpaperSettingShow:Z

    .line 68
    iput-boolean p3, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mIsWallpaperEffectShow:Z

    .line 69
    iput-boolean p3, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mIsWidgetShow:Z

    .line 74
    iput-boolean p3, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mIsReload:Z

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    .line 325
    new-instance v0, Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-direct {v0}, Lcom/miui/home/launcher/ThumbnailMeasureController;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    .line 421
    iput-boolean p3, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mShow:Z

    .line 84
    iput-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    .line 86
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->initIconDrawableIds()V

    .line 91
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->initWidgetThumbnailView()V

    return-void
.end method

.method private bindTouchFolme()V
    .locals 1

    const/4 v0, 0x1

    .line 510
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getFolmes(Z)Ljava/util/ArrayList;

    return-void
.end method

.method private checkWallpaperEffectBtnIsAvailable()V
    .locals 0

    .line 445
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setIconDrawableIds()V

    .line 446
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setDrawable()V

    return-void
.end method

.method private getBottomEntryHeight()I
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ThumbnailMeasureController;->getEditingEntryBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getBottomEntryHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070750

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getEditModeThumbnailItemWallpaperEffect()I
    .locals 0

    .line 542
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->isWallpaperEffectUnavailable()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 543
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0801fc

    goto :goto_0

    :cond_0
    const p0, 0x7f0801fb

    goto :goto_0

    .line 545
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f0801f9

    goto :goto_0

    :cond_2
    const p0, 0x7f0801fa

    :goto_0
    return p0
.end method

.method private getFolmes(Z)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lmiuix/animation/IFolme;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 362
    iget-object p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    return-object p0

    .line 364
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 365
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 367
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/view/View;

    aput-object v2, v4, v0

    .line 368
    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v4

    .line 369
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->isWallpaperEffectUnavailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 370
    :cond_1
    invoke-interface {v4}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/ITouchStyle;->clearTintColor()Lmiuix/animation/ITouchStyle;

    move-result-object v3

    new-array v5, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v3, v2, v5}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 372
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_3
    iget-object p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getOutBorderLineModeId(I)I
    .locals 0

    .line 291
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHideWallpaperEffectBtn()Z

    move-result p0

    if-eqz p0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method private hideAllIconFrameSelect()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 573
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 574
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;

    .line 575
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 576
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHideWallpaperEffectBtn()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 579
    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->updateBorderLine(ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static isFastClick()Z
    .locals 4

    .line 296
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 297
    sget-wide v2, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLastClickTime:J

    sub-long v2, v0, v2

    .line 298
    sput-wide v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLastClickTime:J

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x1f4

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWallpaperEffectUnavailable()Z
    .locals 1

    .line 202
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isStaticWallpaper()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 205
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isMiuiWallpaperComponentUsing()Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private jumpThemeWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "EditingEntryThumbnailView"

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 386
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "bottomEntryHeight"

    .line 387
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getBottomEntryHeight()I

    move-result p0

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "miui.intent.action.THEME_WALLPAPER_EDITOR_PREVIEW"

    .line 388
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "entrance"

    const-string v3, "homeEdit"

    .line 389
    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const p0, 0x10808000

    .line 391
    invoke-virtual {v2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 392
    sget-boolean p0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12:Z

    if-eqz p0, :cond_1

    .line 393
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 395
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 398
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_1
    invoke-virtual {v2, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 404
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "wallpaper effect click error ==> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$releaseFolme$0(Lmiuix/animation/IFolme;)V
    .locals 0

    .line 520
    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IStateContainer;->clean()V

    return-void
.end method

.method private releaseFolme()V
    .locals 2

    const/4 v0, 0x0

    .line 516
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getFolmes(Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 517
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/EditingEntryThumbnailView$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/EditingEntryThumbnailView$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 521
    iget-object p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method private resetShowStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 584
    iput-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mIsWidgetShow:Z

    .line 585
    iput-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mIsWallpaperSettingShow:Z

    return-void
.end method


# virtual methods
.method protected adaptThumbnailItemStyle()V
    .locals 2

    const/4 v0, 0x0

    .line 225
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 226
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setIconDrawable(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dealWithViewBlur(Z)V
    .locals 5

    .line 459
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 460
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 461
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a01f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x42480000    # 50.0f

    .line 463
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v1, p1, v2, v3}, Lcom/miui/home/launcher/common/BlurUtilities;->setEditBlurWithRadius(Landroid/view/View;ZFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forceReload()V
    .locals 0

    .line 619
    invoke-static {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->resetView(Landroid/view/View;)V

    return-void
.end method

.method public hide(Z)V
    .locals 0

    .line 452
    invoke-super {p0, p1}, Lcom/miui/home/launcher/EditModeThumbnailView;->hide(Z)V

    .line 453
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->releaseFolme()V

    .line 455
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->hideAllOutLine()V

    return-void
.end method

.method public hideAllOutLine()V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLauncherMenuHelper()Lcom/miui/home/launcher/LauncherMenuHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherMenuHelper;->isLauncherMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 594
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->hideAllIconFrameSelect()V

    .line 595
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->resetShowStatus()V

    return-void
.end method

.method public hideWithGoogleAnim()V
    .locals 6

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3eb33333    # 0.35f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e3851ec    # 0.18f

    move-object v0, p0

    .line 487
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/compat/EditModeAnimController;->showEditModeAnimation(Landroid/view/View;ZFFFF)V

    const/4 v0, 0x0

    .line 488
    iput-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mShow:Z

    return-void
.end method

.method public hideWithOriginAnim()V
    .locals 1

    .line 501
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->getExitAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x4

    .line 502
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 503
    iput-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mShow:Z

    return-void
.end method

.method protected initIconDrawableIds()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    .line 96
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[I

    .line 97
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setIconDrawableIds()V

    return-void
.end method

.method protected initWidgetThumbnailView()V
    .locals 2

    const/16 v0, 0xa

    .line 101
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setScreenTransitionType(I)I

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setScrollWholeScreen(Z)V

    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ScreenView;->setScreenLayoutMode(IZ)V

    .line 104
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setFixed()V

    return-void
.end method

.method protected isScrollable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 424
    iget-boolean p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mShow:Z

    return p0
.end method

.method public launcherOnPause()V
    .locals 4

    .line 609
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mIsWidgetShow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mIsWallpaperSettingShow:Z

    if-eqz v0, :cond_1

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/EditingEntryThumbnailView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/EditingEntryThumbnailView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public launcherOnResume()V
    .locals 2

    .line 599
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->hideAllOutLine()V

    :cond_0
    const/4 v0, 0x0

    .line 602
    iput-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mIsWallpaperEffectShow:Z

    .line 603
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;-><init>(Z)V

    invoke-virtual {p0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 235
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isPause()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 244
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "com.android.thememanager"

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    goto/16 :goto_0

    .line 281
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getOutBorderLineModeId(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->updateBorderLine(ZI)V

    .line 282
    iget-object p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherMenuHelper()Lcom/miui/home/launcher/LauncherMenuHelper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/LauncherMenuHelper;->showBottomSheetMenu(Z)V

    const-string p0, "launcher_settings"

    .line 283
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditingEntryClicked(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    :cond_4
    iput-boolean v1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mIsWidgetShow:Z

    .line 275
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getOutBorderLineModeId(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->updateBorderLine(ZI)V

    const-string/jumbo p1, "widget_pick"

    .line 276
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditingEntryClicked(Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickToAddMIUIWidget(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    .line 278
    iget-object p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->gotoPicker(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 257
    :cond_5
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isStaticWallpaper()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6

    .line 258
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const p1, 0x7f10013e

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 261
    :cond_6
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isMiuiWallpaperComponentUsing()Z

    move-result v2

    if-nez v2, :cond_7

    .line 262
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const p1, 0x7f100507

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 265
    :cond_7
    iput-boolean v1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mIsWallpaperEffectShow:Z

    .line 266
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;

    invoke-direct {v3, v1}, Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;-><init>(Z)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 267
    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->updateBorderLine(ZI)V

    .line 268
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    const-string p1, "miui.intent.action.THEME_WALLPAPER_EDITOR_PREVIEW"

    const-string v1, "com.personalizedEditor.activity.WallpaperEffectDialogActivity"

    .line 270
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->jumpThemeWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "wallpaper_effect"

    .line 271
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditingEntryClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_8
    iput-boolean v1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mIsWallpaperSettingShow:Z

    .line 249
    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->updateBorderLine(ZI)V

    const-string p1, "miui.intent.action.THEME_WALLPAPER_PICKER_PAGE"

    const-string v1, "com.android.thememanager.settings.WallpaperSettingsActivity"

    .line 253
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->jumpThemeWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "wallpaper_setting"

    .line 254
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditingEntryClicked(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 626
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->releaseFolme()V

    return-void
.end method

.method public onGridConfigChanged(Lcom/miui/home/launcher/GridConfig;)V
    .locals 0

    .line 526
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->onScreenOrientationChanged(Landroid/view/View;)V

    return-void
.end method

.method protected onHideComplete()V
    .locals 1

    const/16 v0, 0x8

    .line 416
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 418
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->dealWithViewBlur(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 338
    invoke-super/range {p0 .. p5}, Lcom/miui/home/launcher/ScreenView;->onLayout(ZIIII)V

    .line 339
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    .line 341
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    const/4 p5, 0x1

    new-array v0, p5, [Landroid/view/View;

    aput-object p4, v0, p2

    .line 342
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    .line 343
    invoke-static {p4}, Lcom/miui/home/launcher/folme/FolmeUtils;->calAnimScale(Landroid/view/View;)F

    move-result p4

    new-array v1, p5, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v2, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v2, v1, p2

    invoke-interface {v0, p4, v1}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p4

    const/high16 v0, 0x3f800000    # 1.0f

    new-array p5, p5, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v1, p5, p2

    .line 344
    invoke-interface {p4, v0, p5}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p4

    const-wide/16 v0, 0x64

    .line 345
    invoke-interface {p4, v0, v1}, Lmiuix/animation/IVisibleStyle;->setShowDelay(J)Lmiuix/animation/IVisibleStyle;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 329
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    .line 331
    invoke-virtual {p2}, Lcom/miui/home/launcher/ThumbnailMeasureController;->getEditingEntryBottom()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ThumbnailMeasureController;->makeWidthMeasureSpec()I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ThumbnailMeasureController;->makeEditingEntryHeightMeasureSpec()I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->onMeasure(II)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 2

    .line 350
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setFixed()V

    .line 355
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setDrawable()V

    .line 356
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->onScreenSizeChanged(Landroid/view/View;)V

    .line 357
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/EditModeThumbnailView;->resetMarginBottom(Landroid/view/ViewGroup$LayoutParams;Lcom/miui/home/launcher/ThumbnailMeasureController;)V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 563
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V

    .line 564
    invoke-virtual {p2}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result p1

    if-nez p1, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->onScreenSizeChanged()V

    :cond_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 552
    invoke-super {p0}, Lcom/miui/home/launcher/ThumbnailView;->onWallpaperColorChanged()V

    .line 553
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setIconDrawableIds()V

    .line 554
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setDrawable()V

    .line 555
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->adaptThumbnailItemStyle()V

    .line 556
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->bindTouchFolme()V

    :cond_0
    return-void
.end method

.method public prepareToShow()V
    .locals 1

    .line 437
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->reLoadThumbnails()V

    .line 438
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->bindTouchFolme()V

    .line 439
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->checkWallpaperEffectBtnIsAvailable()V

    const/4 v0, 0x1

    .line 440
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->dealWithViewBlur(Z)V

    return-void
.end method

.method public reLoadThumbnails()V
    .locals 10

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mIsReload:Z

    if-eqz v0, :cond_8

    :cond_0
    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mIsReload:Z

    .line 135
    iget-object v1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    move v2, v0

    .line 138
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 139
    iget-object v3, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 140
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHideWallpaperEffectBtn()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    if-ne v3, v5, :cond_1

    goto/16 :goto_3

    .line 143
    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0d0177

    invoke-virtual {v4, v6, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;

    .line 144
    aget-object v6, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 145
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->setEnableAutoLayoutAnimation(Z)V

    const v6, 0x7f0a016b

    .line 149
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 150
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 152
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0702ab

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    const v6, 0x7f0a01f8

    .line 155
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/ThumbnailIcon;

    .line 156
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 158
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0702ac

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 161
    :cond_3
    invoke-virtual {v6, v0}, Lcom/miui/home/launcher/ThumbnailIcon;->enableDrawMaskOnPressed(Z)V

    .line 162
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setIconDrawable(Landroid/view/View;)V

    const v6, 0x7f0a0110

    .line 163
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 164
    sget-object v7, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    aget-object v3, v7, v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x7f06004d

    goto :goto_1

    :cond_4
    const v7, 0x7f06004e

    :goto_1
    invoke-static {v3, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    invoke-static {p0, v4, v5}, Lcom/miui/home/launcher/WallpaperUtils;->onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    if-ne v2, v5, :cond_6

    .line 168
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->isWallpaperEffectUnavailable()Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x3e99999a    # 0.3f

    .line 169
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_2

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    .line 171
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 174
    :cond_6
    :goto_2
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 176
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setFixed()V

    :cond_8
    return-void
.end method

.method public setDrawable()V
    .locals 4

    const/4 v0, 0x0

    .line 182
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 183
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;

    .line 184
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const v2, 0x7f0a0110

    .line 186
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 187
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->isWallpaperEffectUnavailable()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x3e99999a    # 0.3f

    .line 188
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 190
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 193
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setIconDrawable(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected setFixed()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHideWallpaperEffectBtn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHideWallpaperEffectBtn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 127
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setFixedGap(I)V

    return-void
.end method

.method public setIconDrawable(Landroid/view/View;)V
    .locals 2

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f0a01f8

    .line 218
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 219
    iget-object v1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[I

    aget v0, v1, v0

    .line 220
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setIconDrawableIds()V
    .locals 5

    .line 530
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0801fd

    goto :goto_0

    :cond_0
    const v0, 0x7f0801fe

    .line 531
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0801f7

    goto :goto_1

    :cond_1
    const v1, 0x7f0801f8

    .line 532
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0801f5

    goto :goto_2

    :cond_2
    const v2, 0x7f0801f6

    .line 533
    :goto_2
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getEditModeThumbnailItemWallpaperEffect()I

    move-result v3

    .line 534
    iget-object p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[I

    const/4 v4, 0x2

    aput v0, p0, v4

    const/4 v0, 0x0

    .line 535
    aput v1, p0, v0

    const/4 v0, 0x3

    .line 536
    aput v2, p0, v0

    const/4 v0, 0x1

    .line 537
    aput v3, p0, v0

    return-void
.end method

.method public setIsReload(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mIsReload:Z

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 213
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/BaseActivity;->addOnGridConfigChangeListener(Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;)V

    return-void
.end method

.method public showWithGoogleAnim()V
    .locals 7

    const/4 v0, 0x0

    .line 480
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setVisibility(I)V

    const/4 v2, 0x1

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v1, p0

    .line 481
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/compat/EditModeAnimController;->showEditModeAnimation(Landroid/view/View;ZFFFF)V

    const/4 v0, 0x1

    .line 482
    iput-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mShow:Z

    return-void
.end method

.method public showWithOriginAnim()V
    .locals 1

    .line 493
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->getEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    .line 494
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 495
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v0, 0x1

    .line 496
    iput-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mShow:Z

    return-void
.end method

.method public updateBorderLine(ZI)V
    .locals 2

    .line 304
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    return-void

    .line 305
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 306
    instance-of v0, p2, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 308
    check-cast p2, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;

    sget-object v1, Lcom/miui/home/launcher/anim/BackgroundType;->SELECT:Lcom/miui/home/launcher/anim/BackgroundType;

    invoke-virtual {p2, v1, v0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->updateBackgroundType(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    goto :goto_0

    .line 310
    :cond_1
    check-cast p2, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;

    sget-object v1, Lcom/miui/home/launcher/anim/BackgroundType;->NORMAL:Lcom/miui/home/launcher/anim/BackgroundType;

    invoke-virtual {p2, v1, v0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->updateBackgroundType(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    .line 313
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    if-eqz p1, :cond_3

    .line 314
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_3

    .line 315
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->launcherOnPause()V

    :cond_3
    return-void
.end method

.method public updateEditModeThumbnailViewBlurMode(Z)V
    .locals 5

    .line 470
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mShow:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 471
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 472
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a01f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v2, 0xa

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    .line 473
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public wallpaperEffectIsShow()Z
    .locals 0

    .line 615
    iget-boolean p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mIsWallpaperEffectShow:Z

    return p0
.end method
