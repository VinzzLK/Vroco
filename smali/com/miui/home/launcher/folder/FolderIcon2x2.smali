.class public Lcom/miui/home/launcher/folder/FolderIcon2x2;
.super Lcom/miui/home/launcher/FolderIcon;
.source "FolderIcon2x2.kt"

# interfaces
.implements Lcom/miui/home/launcher/folder/ListenerInfo;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFolderIcon2x2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderIcon2x2.kt\ncom/miui/home/launcher/folder/FolderIcon2x2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,512:1\n1860#2,3:513\n1860#2,3:524\n37#3:516\n36#3,3:517\n37#3:520\n36#3,3:521\n13543#4,2:527\n*S KotlinDebug\n*F\n+ 1 FolderIcon2x2.kt\ncom/miui/home/launcher/folder/FolderIcon2x2\n*L\n91#1:513,3\n433#1:524,3\n276#1:516\n276#1:517,3\n280#1:520\n280#1:521,3\n510#1:527,2\n*E\n"
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

.field private mDefaultFolderBackground:Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

.field protected mFolderCover:Landroid/widget/ImageView;

.field private mIconColumCount:I

.field protected mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

.field private mItemsMaxCount:I

.field private mLargeIconNum:I

.field private mPreViewLastRefreshTime:J

.field protected mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

.field protected mPreviewIconsContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

.field private mScreenRefreshRate:I

.field private final sTmpCanvas:Landroid/graphics/Canvas;


# direct methods
.method public static synthetic $r8$lambda$6AJAWsrO3PcAErAmPqM2n9am_P4(Lcom/miui/home/launcher/folder/FolderIcon2x2;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->updateFolderIconBg$lambda-1(Lcom/miui/home/launcher/folder/FolderIcon2x2;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UdNPa_WM79IcJYyyZG5zGKwGJZ8(Lcom/miui/home/launcher/folder/FolderIcon2x2;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->dropIconIntoFolderIcon$lambda-5(Lcom/miui/home/launcher/folder/FolderIcon2x2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XY6vrwFWTFFjcV2hhfxGGopMA64(Lcom/miui/home/launcher/folder/FolderIcon2x2;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getPreviewPosition$lambda-6(Lcom/miui/home/launcher/folder/FolderIcon2x2;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eP8KeMIpuPFPX8qyj9F7HGGQ57k(Lcom/miui/home/launcher/folder/FolderIcon2x2;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->updateFolderIconBg$lambda-2(Lcom/miui/home/launcher/folder/FolderIcon2x2;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/FolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 31
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mScreenRefreshRate:I

    const/4 p1, 0x3

    .line 32
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLargeIconNum:I

    const/4 p1, 0x7

    .line 33
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mItemsMaxCount:I

    const/4 p1, 0x2

    .line 35
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIconColumCount:I

    .line 391
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 39
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 41
    sget-object p1, Lcom/miui/home/launcher/ItemIcon;->sLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayerPaint(Landroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->enableDrawTouchMask(Z)V

    return-void
.end method

.method private final adjustsAllIconContainerNotClipChildren()V
    .locals 3

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 83
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 84
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 85
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 87
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :goto_2
    return-void
.end method

.method private static final dropIconIntoFolderIcon$lambda-5(Lcom/miui/home/launcher/folder/FolderIcon2x2;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreViewLastRefreshTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mScreenRefreshRate:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreViewLastRefreshTime:J

    return-void
.end method

.method private static final getPreviewPosition$lambda-6(Lcom/miui/home/launcher/folder/FolderIcon2x2;Landroid/view/View;)Z
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_1

    .line 237
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

.method private final setPreviewAlpha(I)V
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    .line 262
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMFolderCover()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private static final updateFolderIconBg$lambda-1(Lcom/miui/home/launcher/folder/FolderIcon2x2;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mDefaultFolderBackground:Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    .line 101
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mDefaultFolderBackground:Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/FolderIcon;->getFolderBgGridFourLight(Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mDefaultFolderBackground:Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/FolderIcon;->getFolderBgGridFourIcon(Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final updateFolderIconBg$lambda-2(Lcom/miui/home/launcher/folder/FolderIcon2x2;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 108
    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    if-eqz v1, :cond_0

    .line 109
    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 110
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ItemIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 113
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->setFolderIconPlaceholderDrawableMatchingWallpaperColor()V

    return-void
.end method


# virtual methods
.method public addItemOnclickListener()V
    .locals 6

    .line 91
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1861
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 92
    iget v5, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLargeIconNum:I

    if-ge v2, v5, :cond_1

    move-object v5, p0

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3, v5}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setViewClickListener(Lcom/miui/home/launcher/folder/ListenerInfo;)V

    .line 94
    iget v5, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLargeIconNum:I

    if-ge v2, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    move v2, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected clearAnimIconsImgData()V
    .locals 3

    .line 510
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getFolderPreviewIconView()[Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 13543
    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 510
    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->clearData()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final createOrRemoveView()V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getItemsMaxCount()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    .line 134
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMRealPvChildCount()I

    move-result v1

    sub-int v1, v0, v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 138
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getPreviewIconView()Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->addPreView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-gez v1, :cond_3

    .line 141
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMRealPvChildCount()I

    move-result v1

    sub-int v1, v0, v1

    if-gez v1, :cond_3

    .line 142
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->removeLastPreView()V

    goto :goto_1

    .line 145
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->addItemOnclickListener()V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInThumbnailView()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInScreenPreview()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->isDraggingEnter()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isUseDefaultFolderIcon(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    new-instance v0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;-><init>(Landroid/content/Context;Z)V

    .line 328
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultMiuiIcon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 331
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v2

    const-string/jumbo v3, "{\n                    ge\u2026awable)\n                }"

    if-eqz v2, :cond_2

    .line 332
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/FolderIcon;->getFolderBgGridFourLight(Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 331
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/FolderIcon;->getFolderBgGridFourIcon(Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 333
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInThumbnailView()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInScreenPreview()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->isDraggingEnter()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v1}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 340
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "mImageView.drawable"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->setDrawableAlpha(Landroid/graphics/drawable/Drawable;F)V

    .line 342
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInThumbnailView()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleContainer:Lcom/miui/home/launcher/ItemIconTitleContainer;

    if-ne p2, v0, :cond_5

    return v1

    .line 346
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInThumbnailView()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    if-ne p2, v0, :cond_6

    .line 347
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    .line 348
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    .line 349
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 350
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->setPreviewAlpha(I)V

    .line 351
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ItemIcon;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    .line 352
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 353
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->setPreviewAlpha(I)V

    goto :goto_2

    .line 355
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ItemIcon;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    :goto_2
    return p1
.end method

.method protected dropIconIntoFolderIcon(Lcom/miui/home/launcher/DragObject;Z)V
    .locals 7

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->isPreViewContainerOverload()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 171
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getPreviewIconView()Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    move-result-object v2

    .line 172
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->addPreView(Landroid/view/View;)V

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 176
    invoke-virtual {v3}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getLastVisibleView()Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 179
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getPreAddItemInfo(Z)Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;

    move-result-object v1

    :cond_4
    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 180
    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->getWidth()I

    move-result v1

    goto :goto_2

    :cond_5
    move v1, v3

    .line 181
    :goto_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v5

    .line 182
    invoke-virtual {v5}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p2, :cond_8

    .line 186
    invoke-virtual {v5}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Lcom/miui/home/launcher/IShortcutIcon;

    invoke-virtual {v5, p2}, Lcom/miui/home/launcher/DragView;->setFlagBigFolderAnimStyle(Z)V

    .line 187
    invoke-virtual {v5}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p2

    .line 189
    instance-of p2, p2, Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz p2, :cond_6

    .line 190
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result p2

    int-to-float p2, p2

    int-to-float v1, v1

    div-float v6, v1, p2

    .line 194
    :cond_6
    invoke-virtual {v5, v6}, Lcom/miui/home/launcher/DragView;->setTargetScale(F)V

    if-eqz v0, :cond_7

    .line 197
    invoke-virtual {v5}, Lcom/miui/home/launcher/DragView;->setFakeTargetMode()V

    .line 198
    invoke-virtual {v5}, Lcom/miui/home/launcher/DragView;->setFadeoutAnimationMode()V

    :cond_7
    const/4 p2, 0x0

    .line 200
    invoke-virtual {v5, p2}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 201
    invoke-virtual {v5, p2}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 202
    invoke-virtual {v5, v2}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 203
    invoke-virtual {v5}, Lcom/miui/home/launcher/DragView;->setNeedFadeOutIfNoParent()V

    .line 205
    :cond_8
    iget-object p2, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 206
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.miui.home.launcher.ShortcutInfo"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 207
    iget p1, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_9

    goto :goto_3

    :cond_9
    move v4, v3

    :goto_3
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p1

    .line 205
    invoke-virtual {p2, v0, v4, p1}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 209
    new-instance p1, Lcom/miui/home/launcher/folder/FolderIcon2x2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/folder/FolderIcon2x2;)V

    invoke-virtual {v5, p1}, Lcom/miui/home/launcher/DragView;->setOnAnimationEndCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBackAnimPreviewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 394
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 395
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 396
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 398
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 399
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 400
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 401
    iget-object v4, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 402
    iget-object v6, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 403
    invoke-virtual {v2, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 404
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 405
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 406
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 407
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v1
.end method

.method public getCover()Landroid/widget/ImageView;
    .locals 0

    .line 289
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMFolderCover()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public getFolderBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getFolderPreviewIconView()[Lcom/miui/home/launcher/folder/FolderPreviewIconView;
    .locals 1

    .line 280
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 38
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    return-object p0
.end method

.method public getIconColumCount()I
    .locals 0

    .line 283
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIconColumCount:I

    return p0
.end method

.method public getLargeIconNum()I
    .locals 0

    .line 285
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLargeIconNum:I

    return p0
.end method

.method protected final getMDefaultFolderBackground()Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mDefaultFolderBackground:Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    return-object p0
.end method

.method protected final getMFolderCover()Landroid/widget/ImageView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mFolderCover:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mFolderCover"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected final getMIconColumCount()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIconColumCount:I

    return p0
.end method

.method protected final getMImageView()Lcom/miui/home/launcher/LauncherIconImageView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mImageView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected final getMItemsMaxCount()I
    .locals 0

    .line 33
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mItemsMaxCount:I

    return p0
.end method

.method protected final getMLargeIconNum()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLargeIconNum:I

    return p0
.end method

.method public final getMPreViewLastRefreshTime()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreViewLastRefreshTime:J

    return-wide v0
.end method

.method protected final getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mPreviewContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected final getMPreviewIconsContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewIconsContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mPreviewIconsContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getMirrorMenuListener()Lcom/miui/home/library/mirror/MirrorMenuListener;
    .locals 0

    invoke-super {p0}, Lcom/miui/home/library/mirror/MirrorContextView;->getMirrorMenuListener()Lcom/miui/home/library/mirror/MirrorMenuListener;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewArray()[Landroid/widget/ImageView;
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/widget/ImageView;

    .line 38
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getPreviewByComponentName(Landroid/content/ComponentName;IJ)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 10

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 470
    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_1

    .line 477
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v3

    move v4, v1

    move-object v5, v2

    :goto_0
    if-ge v4, v3, :cond_4

    .line 478
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getPreviewIconInfo(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 479
    invoke-virtual {v6}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v8, "componentName"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 482
    invoke-virtual {v6}, Lcom/miui/home/launcher/ItemInfo;->getUserId()I

    move-result v8

    if-ne v8, p2, :cond_1

    .line 483
    iget-wide v8, v6, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long v6, v8, p3

    if-nez v6, :cond_1

    .line 484
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v4, :cond_1

    .line 486
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 488
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    move-object v5, v2

    :cond_4
    if-nez v5, :cond_6

    .line 499
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    :cond_5
    move-object v5, v2

    .line 502
    :cond_6
    check-cast v5, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    return-object v5
.end method

.method public bridge synthetic getPreviewContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewContainerSnapshot()Landroid/graphics/Bitmap;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewCount()I
    .locals 1

    .line 272
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLargeIconNum:I

    add-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getPreviewHeight()F
    .locals 2

    .line 244
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 246
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 247
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getPreviewPosition(Landroid/graphics/Rect;)F

    .line 248
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    sub-float/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPreviewIconHeight()F
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    :goto_0
    return p0
.end method

.method public getPreviewIconView()Lcom/miui/home/launcher/folder/FolderPreviewIconView;
    .locals 7

    .line 71
    new-instance v6, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p0, "context"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public getPreviewItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/folder/FolderPreviewIconView;",
            ">;"
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewPosition(Landroid/graphics/Rect;)F
    .locals 10

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 233
    aget v1, v0, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 235
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewIconsContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v4

    .line 236
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    .line 234
    new-instance v9, Lcom/miui/home/launcher/folder/FolderIcon2x2$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/folder/FolderIcon2x2;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZLjava/util/function/Predicate;)F

    move-result v0

    .line 238
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v1, v1, v3

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v4, v4, v2

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v3, v5, v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 239
    iget-object v5, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v2, v5, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    add-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 238
    invoke-virtual {p1, v1, v4, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method protected final getSTmpCanvas()Landroid/graphics/Canvas;
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->sTmpCanvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method public bridge synthetic getScreenId()J
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getTopPadding(I)I
    .locals 0

    .line 506
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result p0

    return p0
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
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x0

    .line 221
    aput v2, v0, v3

    .line 223
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewIconsContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v0

    .line 224
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    .line 222
    invoke-static {v0, p0, v2, v1, v3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v0, v0, v3

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v2, v2, v1

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    .line 227
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v3, v4, v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 228
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v1, v4, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 226
    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method public invalidatePreviews()V
    .locals 3

    .line 127
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public loadItemIcons(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->loadItemIcons(ZZ)V

    return-void
.end method

.method public loadItemIcons(ZZ)V
    .locals 6

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->createOrRemoveView()V

    .line 154
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const-string p1, "mInfo"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    const-string p1, "mIconCache"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isAppPredictOpen()Z

    move-result v3

    .line 158
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderPreviewSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const-string p0, "mFolderPreviewSerialExecutor"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move v5, p2

    .line 154
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V

    return-void
.end method

.method protected needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBackAnimStart()V
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onBackAnimStop()V
    .locals 1

    .line 384
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->isDropable(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 297
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsDragingEnter:Z

    .line 298
    sget-object v0, Lcom/miui/home/launcher/folder/FolderAnimHelper;->Companion:Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;->scaleEachIcon(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Z)V

    .line 299
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 300
    instance-of v0, p1, Lcom/miui/home/launcher/folder/IFolderContainerAnimationAble;

    if-eqz v0, :cond_0

    .line 301
    check-cast p1, Lcom/miui/home/launcher/folder/IFolderContainerAnimationAble;

    invoke-interface {p1}, Lcom/miui/home/launcher/folder/IFolderContainerAnimationAble;->onDragEnter()V

    .line 304
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOpenFolder:Ljava/lang/Runnable;

    const-wide/16 v0, 0x640

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x96

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    const/4 p1, 0x0

    .line 310
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsDragingEnter:Z

    .line 311
    sget-object v0, Lcom/miui/home/launcher/folder/FolderAnimHelper;->Companion:Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;->scaleEachIcon(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Z)V

    .line 312
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 313
    instance-of v0, p1, Lcom/miui/home/launcher/folder/IFolderContainerAnimationAble;

    if-eqz v0, :cond_0

    .line 314
    check-cast p1, Lcom/miui/home/launcher/folder/IFolderContainerAnimationAble;

    invoke-interface {p1}, Lcom/miui/home/launcher/folder/IFolderContainerAnimationAble;->onDragExit()V

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 318
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOpenFolder:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    const v0, 0x7f0a02de

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.preview_icons_container)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->setMPreviewContainer(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;)V

    .line 47
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onFinishInflate()V

    .line 49
    new-instance v1, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<BaseFolderI\u2026.preview_icons_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->setMPreviewIconsContainer(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;)V

    const-string v0, "folder_cover_grids_four_reserved.png"

    .line 52
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "folder_cover_grids_four_01_reserved.png"

    .line 54
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    :cond_0
    const v1, 0x7f0a0117

    .line 56
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->setMFolderCover(Landroid/widget/ImageView;)V

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMFolderCover()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMFolderCover()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080215

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const v0, 0x7f0a01fd

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.miui.home.launcher.LauncherIconImageView"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->setMImageView(Lcom/miui/home/launcher/LauncherIconImageView;)V

    .line 63
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->adjustsAllIconContainerNotClipChildren()V

    return-void
.end method

.method public onIconRemoved()V
    .locals 4

    .line 414
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 417
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v2

    .line 418
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/FolderIcon;->onIconRemoved(Lcom/miui/home/launcher/ShortcutInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->createOrRemoveView()V

    return-void
.end method

.method public onViewClick(Landroid/view/View;)V
    .locals 4

    .line 433
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1861
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 434
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getPreviewIconInfo(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    .line 436
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    .line 437
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v2, p1}, Lcom/miui/home/launcher/ShortcutInfo;->handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public rebindInfo(Lcom/miui/home/launcher/ItemInfo;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/FolderIcon;->rebindInfo(Lcom/miui/home/launcher/ItemInfo;Landroid/view/ViewGroup;)V

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->createOrRemoveView()V

    return-void
.end method

.method protected refreshBackground()V
    .locals 3

    const/4 v0, 0x0

    .line 362
    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    new-instance v0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;-><init>(Landroid/content/Context;Z)V

    .line 364
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultMiuiIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 367
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    const-string/jumbo v2, "{\n                    ge\u2026awable)\n                }"

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/FolderIcon;->getFolderBgGridFourLight(Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 367
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/FolderIcon;->getFolderBgGridFourIcon(Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 369
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public resetBackAnim()V
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic setClipGridViewChild(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimListener;->setClipGridViewChild(Z)V

    return-void
.end method

.method public bridge synthetic setIgnoreAnimationForOnce(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIgnoreAnimationForOnce(Z)V

    return-void
.end method

.method protected final setMDefaultFolderBackground(Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mDefaultFolderBackground:Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    return-void
.end method

.method protected final setMFolderCover(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mFolderCover:Landroid/widget/ImageView;

    return-void
.end method

.method protected final setMIconColumCount(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIconColumCount:I

    return-void
.end method

.method protected final setMImageView(Lcom/miui/home/launcher/LauncherIconImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    return-void
.end method

.method protected final setMItemsMaxCount(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mItemsMaxCount:I

    return-void
.end method

.method protected final setMLargeIconNum(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLargeIconNum:I

    return-void
.end method

.method public final setMPreViewLastRefreshTime(J)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreViewLastRefreshTime:J

    return-void
.end method

.method protected final setMPreviewContainer(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    return-void
.end method

.method protected final setMPreviewIconsContainer(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewIconsContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    return-void
.end method

.method public showPreview(Z)V
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->getFolderPreviewAlpha(Z)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 255
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 257
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

    .line 99
    new-instance v0, Lcom/miui/home/launcher/folder/FolderIcon2x2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/folder/FolderIcon2x2;)V

    new-instance v1, Lcom/miui/home/launcher/folder/FolderIcon2x2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/folder/FolderIcon2x2;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/FolderIcon;->getIconAsync(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 3

    .line 425
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->updateSizeOnIconSizeChanged()V

    .line 426
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mDefaultFolderBackground:Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->updateSizeOnIconSizeChanged(Landroid/content/Context;)V

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 428
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 429
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMFolderCover()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method
