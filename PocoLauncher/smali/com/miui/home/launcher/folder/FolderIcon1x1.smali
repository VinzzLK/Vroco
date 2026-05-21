.class public final Lcom/miui/home/launcher/folder/FolderIcon1x1;
.super Lcom/miui/home/launcher/FolderIcon;
.source "FolderIcon1x1.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFolderIcon1x1.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderIcon1x1.kt\ncom/miui/home/launcher/folder/FolderIcon1x1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,433:1\n13543#2,2:434\n*S KotlinDebug\n*F\n+ 1 FolderIcon1x1.kt\ncom/miui/home/launcher/folder/FolderIcon1x1\n*L\n431#1:434,2\n*E\n"
.end annotation


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mDragOverAnimator:Landroid/animation/ValueAnimator;

.field private mFolderCover:Landroid/widget/ImageView;

.field private mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

.field private mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

.field private final mLock:Ljava/lang/Object;

.field private mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

.field private final sTmpCanvas:Landroid/graphics/Canvas;


# direct methods
.method public static synthetic $r8$lambda$NEYzbYOVVkTI8mk-2TIZ4lKcWfU(Lcom/miui/home/launcher/folder/FolderIcon1x1;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->updateFolderIconBg$lambda-3(Lcom/miui/home/launcher/folder/FolderIcon1x1;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RhT4olgAEdDtRfKJjjY0Ypm-ink(Lcom/miui/home/launcher/folder/FolderIcon1x1;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getPreviewPosition$lambda-5(Lcom/miui/home/launcher/folder/FolderIcon1x1;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Sc05Z4Ao4EqWqUIRRZxPUjKF61Y(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->updateFolderIconBg$lambda-2(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rGX5Zv4_u69WJXfJXyC6dCoP9go(Lcom/miui/home/launcher/folder/FolderIcon1x1;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->onFinishInflate$lambda-1(Lcom/miui/home/launcher/folder/FolderIcon1x1;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sbL6hKJZCQMtUm3MG4l64RSKEw4(Lcom/miui/home/launcher/folder/FolderIcon1x1;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->onFinishInflate$lambda-0(Lcom/miui/home/launcher/folder/FolderIcon1x1;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/FolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    .line 32
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    .line 36
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 37
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    .line 38
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mLock:Ljava/lang/Object;

    .line 379
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 41
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 43
    sget-object p1, Lcom/miui/home/launcher/ItemIcon;->sLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayerPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public static final synthetic access$getMAlphaAnimator$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic access$getMFolderCover$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Landroid/widget/ImageView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mFolderCover:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic access$getMIconImageView$p$s1362198307(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Lcom/miui/home/launcher/LauncherIconImageView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    return-object p0
.end method

.method public static final synthetic access$getMIsDragingEnter$p$s1362198307(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderIcon;->mIsDragingEnter:Z

    return p0
.end method

.method private final calAnimScale()F
    .locals 1

    .line 419
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v0

    add-int/2addr p0, v0

    int-to-float p0, p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    sget v0, Lcom/miui/home/launcher/FolderIcon;->DEFAULT_DRAG_OVER_ANIM_SCALE:F

    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p0

    return p0
.end method

.method private static final getPreviewPosition$lambda-5(Lcom/miui/home/launcher/folder/FolderIcon1x1;Landroid/view/View;)Z
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_1

    .line 263
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getScreenContent()Landroid/widget/FrameLayout;

    move-result-object p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static final onFinishInflate$lambda-0(Lcom/miui/home/launcher/folder/FolderIcon1x1;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mFolderCover:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const-string v2, "mFolderCover"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 62
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mFolderCover:Landroid/widget/ImageView;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private static final onFinishInflate$lambda-1(Lcom/miui/home/launcher/folder/FolderIcon1x1;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->setAlpha(F)V

    .line 76
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mFolderCover:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string p0, "mFolderCover"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private final setPreviewAlpha(I)V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mImageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    .line 362
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mFolderCover:Landroid/widget/ImageView;

    if-nez p0, :cond_1

    const-string p0, "mFolderCover"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private static final updateFolderIconBg$lambda-2(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultMiuiIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object p0, p0, Lcom/miui/launcher/views/LauncherRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0802c6

    goto :goto_0

    :cond_0
    const v0, 0x7f0802c5

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    .line 105
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->getFolderIconLight(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->getFolderIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static final updateFolderIconBg$lambda-3(Lcom/miui/home/launcher/folder/FolderIcon1x1;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    .line 113
    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 115
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ItemIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected clearAnimIconsImgData()V
    .locals 3

    .line 431
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getFolderPreviewIconView()[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 13543
    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 431
    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->clearData()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInThumbnailView()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "mImageView"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInScreenPreview()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isUseDefaultFolderIcon(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0802c6

    goto :goto_0

    :cond_1
    const v4, 0x7f0802c5

    :goto_0
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v4, 0xff

    .line 320
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 321
    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_2
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInThumbnailView()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInScreenPreview()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v1}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 324
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 325
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_6
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 327
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInThumbnailView()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleContainer:Lcom/miui/home/launcher/ItemIconTitleContainer;

    if-ne p2, v0, :cond_8

    return v4

    .line 331
    :cond_8
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInThumbnailView()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    if-ne p2, v0, :cond_d

    .line 332
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    const-string v1, "mPreviewContainer"

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_9
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    .line 333
    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez v5, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_a
    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    .line 334
    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez v5, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_b
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 335
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->setPreviewAlpha(I)V

    .line 336
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ItemIcon;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    .line 337
    iget-object p2, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p2, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    move-object v3, p2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 338
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->setPreviewAlpha(I)V

    goto :goto_2

    .line 340
    :cond_d
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ItemIcon;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    :goto_2
    return p1
.end method

.method public final drawOutLine(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 424
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ItemIcon;->setDrawOutline(Z)V

    .line 425
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    .line 426
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->setDrawOutline(Z)V

    .line 427
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method protected dropIconIntoFolderIcon(Lcom/miui/home/launcher/DragObject;Z)V
    .locals 7

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    .line 177
    iget v1, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 179
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget-object v1, v1, v3

    if-eqz p2, :cond_2

    .line 184
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p2

    .line 185
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v3

    int-to-float v3, v3

    .line 186
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 187
    invoke-virtual {p2, v5}, Lcom/miui/home/launcher/DragView;->setTargetScale(F)V

    .line 188
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 189
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragView;->setFakeTargetMode()V

    .line 190
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragView;->setFadeoutAnimationMode()V

    :cond_1
    const/4 v0, 0x0

    .line 192
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 193
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 194
    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 195
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragView;->setNeedFadeOutIfNoParent()V

    .line 197
    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 198
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.miui.home.launcher.ShortcutInfo"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 199
    iget p1, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    if-eq p1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p1

    .line 197
    invoke-virtual {p2, v0, v4, p1}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 201
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    return-void
.end method

.method public getBackAnimPreviewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 382
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 383
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 384
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 386
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 387
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 388
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 389
    iget-object v4, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    const-string v6, "mPreviewContainer"

    if-nez v5, :cond_0

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_0
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 390
    iget-object v7, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez v8, :cond_1

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v1

    :cond_1
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v5

    .line 391
    invoke-virtual {v2, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 392
    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez v4, :cond_2

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 393
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 394
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 395
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_3
    return-object v1
.end method

.method public getCover()Landroid/widget/ImageView;
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mFolderCover:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string p0, "mFolderCover"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method protected getDragEnterAnimatorValues()[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 209
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->calAnimScale()F

    move-result p0

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method protected getDragExitAnimatorValues()[F
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 215
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->calAnimScale()F

    move-result p0

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p0

    return-object v0
.end method

.method public getFolderBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getFolderPreviewIconView()[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    return-object p0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-super {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->getHitRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getIconColumCount()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getMirrorMenuListener()Lcom/miui/home/library/mirror/MirrorMenuListener;
    .locals 0

    invoke-super {p0}, Lcom/miui/home/library/mirror/MirrorContextView;->getMirrorMenuListener()Lcom/miui/home/library/mirror/MirrorMenuListener;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewArray()[Landroid/widget/ImageView;
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    return-object p0
.end method

.method public bridge synthetic getPreviewContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getPreviewContainer()Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewContainer()Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p0, :cond_0

    const-string p0, "mPreviewContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public getPreviewContainerSnapshot()Landroid/graphics/Bitmap;
    .locals 1

    .line 314
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p0, :cond_0

    const-string p0, "mPreviewContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewCount()I
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    array-length p0, p0

    return p0
.end method

.method public getPreviewHeight()F
    .locals 1

    .line 271
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getPreviewIconHeight()F

    move-result p0

    const/4 v0, 0x3

    int-to-float v0, v0

    mul-float/2addr p0, v0

    return p0
.end method

.method public getPreviewIconHeight()F
    .locals 1

    .line 282
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 283
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    :goto_0
    return p0
.end method

.method public bridge synthetic getPreviewItems()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewPosition(Landroid/graphics/Rect;)F
    .locals 11

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 259
    aget v1, v0, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 261
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    const/4 v1, 0x0

    const-string v4, "mPreviewContainer"

    if-nez v0, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v0

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 260
    new-instance v10, Lcom/miui/home/launcher/folder/FolderIcon1x1$$ExternalSyntheticLambda3;

    invoke-direct {v10, p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;)V

    invoke-static/range {v5 .. v10}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZLjava/util/function/Predicate;)F

    move-result v0

    .line 264
    iget-object v5, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v5, v5, v3

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    iget-object v6, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v6, v6, v2

    invoke-static {v6}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v6

    iget-object v7, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v3, v7, v3

    iget-object v7, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez v7, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v1

    :cond_1
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    add-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 265
    iget-object v7, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v2, v7, v2

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p0, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    add-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 264
    invoke-virtual {p1, v5, v6, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    return v0
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

.method public getVisionRect(Landroid/graphics/Rect;)V
    .locals 7

    .line 246
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x0

    .line 247
    aput v2, v0, v3

    .line 249
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    const/4 v2, 0x0

    const-string v4, "mPreviewContainer"

    if-nez v0, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    .line 250
    :cond_0
    iget-object v5, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    .line 248
    invoke-static {v0, p0, v5, v1, v3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    if-eqz p1, :cond_3

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v0, v0, v3

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    iget-object v5, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v5, v5, v1

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    .line 253
    iget-object v6, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v3, v6, v3

    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez v6, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_1
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 254
    iget-object v6, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v1, v6, v1

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p0, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 252
    invoke-virtual {p1, v0, v5, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    return-void
.end method

.method public invalidatePreviews()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 131
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public loadItemIcons(Z)V
    .locals 4

    .line 136
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p1, :cond_0

    const-string p1, "mPreviewContainer"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const-string v1, "mInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    const-string v2, "mIconCache"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderPreviewSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const-string v3, "mFolderPreviewSerialExecutor"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;)V

    .line 137
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method public onBackAnimStart()V
    .locals 1

    .line 366
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p0, :cond_0

    const-string p0, "mPreviewContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onBackAnimStop()V
    .locals 1

    .line 372
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p0, :cond_0

    const-string p0, "mPreviewContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 4

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->isDropable(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 150
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    move v1, v0

    :cond_0
    if-eqz v1, :cond_1

    return-void

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getDragEnterAnimatorValues()[F

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 154
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIsDragingEnter:Z

    .line 155
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 156
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    const/4 v2, 0x2

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOpenFolder:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 162
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getDragExitAnimatorValues()[F

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsDragingEnter:Z

    .line 164
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 165
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 166
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 167
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOpenFolder:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDropCompleted()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const v0, 0x7f0a02de

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.preview_icons_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    const/4 v1, 0x0

    const-string v2, "mPreviewContainer"

    if-nez v0, :cond_0

    .line 48
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->getItemViews()[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    .line 49
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onFinishInflate()V

    .line 50
    iget-object v0, p0, Lcom/miui/launcher/views/LauncherRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultMiuiIcon()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    iget-object v3, p0, Lcom/miui/launcher/views/LauncherRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0802c6

    goto :goto_0

    :cond_1
    const v4, 0x7f0802c5

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    .line 54
    :cond_2
    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/FolderIcon;->getFolderIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 51
    :goto_1
    iput-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    .line 56
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    const/high16 v4, 0x10e0000

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/home/launcher/folder/FolderIcon1x1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$2;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$2;-><init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x5

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/home/launcher/folder/FolderIcon1x1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$4;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$4;-><init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const-string v0, "folder_icon_cover.png"

    .line 86
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "folder_icon_cover_01.png"

    .line 88
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    :cond_3
    const v3, 0x7f0a0117

    .line 90
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mFolderCover:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 92
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    const v0, 0x7f080215

    .line 94
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    const v0, 0x7f0a01fd

    .line 96
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type com.miui.home.launcher.LauncherIconImageView"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/launcher/LauncherIconImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    .line 97
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v1, p0

    :goto_3
    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->calculateItemIconSize()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onIconRemoved()V
    .locals 4

    .line 402
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 404
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 405
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v2

    .line 406
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/FolderIcon;->onIconRemoved(Lcom/miui/home/launcher/ShortcutInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected refreshBackground()V
    .locals 4

    const/4 v0, 0x1

    .line 346
    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 347
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultMiuiIcon()Z

    move-result v0

    const-string v1, "mImageView"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0802c6

    goto :goto_0

    :cond_1
    const v1, 0x7f0802c5

    :goto_0
    invoke-static {p0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 350
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    const-string/jumbo v3, "{\n                    ge\u2026nCache)\n                }"

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->getFolderIconLight(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 350
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->getFolderIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 352
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    :goto_1
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez p0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v2, p0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public resetBackAnim()V
    .locals 1

    .line 376
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p0, :cond_0

    const-string p0, "mPreviewContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic setClipGridViewChild(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimListener;->setClipGridViewChild(Z)V

    return-void
.end method

.method protected setHitRect(Landroid/graphics/Rect;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.miui.home.launcher.hotseats.FlexboxItemContainer"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    .line 229
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 230
    iget-object v2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    .line 231
    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    add-int/2addr v3, v0

    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    add-int/2addr v3, p0

    .line 232
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 228
    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 236
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    .line 238
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p0

    sub-int/2addr v2, p0

    .line 239
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 235
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic setIgnoreAnimationForOnce(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIgnoreAnimationForOnce(Z)V

    return-void
.end method

.method public showPreview(Z)V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    const/4 v1, 0x0

    const-string v2, "mPreviewContainer"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->getFolderPreviewAlpha(Z)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 276
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 278
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->invalidateBindElementWhenLauncherInEditMode()V

    return-void
.end method

.method public updateBackAnim(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateFolderIconBg()V
    .locals 2

    .line 101
    new-instance v0, Lcom/miui/home/launcher/folder/FolderIcon1x1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;)V

    new-instance v1, Lcom/miui/home/launcher/folder/FolderIcon1x1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/FolderIcon;->getIconAsync(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 2

    .line 412
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->updateSizeOnIconSizeChanged()V

    .line 413
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mPreviewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 414
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez v0, :cond_1

    const-string v0, "mImageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 415
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mFolderCover:Landroid/widget/ImageView;

    if-nez p0, :cond_2

    const-string p0, "mFolderCover"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method
