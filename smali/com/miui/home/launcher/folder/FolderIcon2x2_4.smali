.class public final Lcom/miui/home/launcher/folder/FolderIcon2x2_4;
.super Lcom/miui/home/launcher/folder/FolderIcon2x2;
.source "FolderIcon2x2_4.kt"


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


# direct methods
.method public static synthetic $r8$lambda$1QEH1mhzkx5mwFX7euvNbRxZ3zw(Lcom/miui/home/launcher/folder/FolderIcon2x2_4;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->getPreviewPosition$lambda-0(Lcom/miui/home/launcher/folder/FolderIcon2x2_4;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/folder/FolderIcon2x2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->setMLargeIconNum(I)V

    const/4 p1, 0x7

    .line 20
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->setMItemsMaxCount(I)V

    const/4 p1, 0x2

    .line 21
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->setMIconColumCount(I)V

    return-void
.end method

.method private static final getPreviewPosition$lambda-0(Lcom/miui/home/launcher/folder/FolderIcon2x2_4;Landroid/view/View;)Z
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_1

    .line 31
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


# virtual methods
.method public bridge synthetic getMirrorMenuListener()Lcom/miui/home/library/mirror/MirrorMenuListener;
    .locals 0

    invoke-super {p0}, Lcom/miui/home/library/mirror/MirrorContextView;->getMirrorMenuListener()Lcom/miui/home/library/mirror/MirrorMenuListener;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewPosition(Landroid/graphics/Rect;)F
    .locals 10

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 26
    aget v1, v0, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 29
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v4

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    .line 28
    new-instance v9, Lcom/miui/home/launcher/folder/FolderIcon2x2_4$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2_4$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/folder/FolderIcon2x2_4;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZLjava/util/function/Predicate;)F

    move-result v0

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v4, 0x2

    int-to-float v5, v4

    div-float/2addr v1, v5

    const/4 v6, 0x3

    int-to-float v6, v6

    mul-float/2addr v1, v6

    mul-float/2addr v1, v0

    .line 34
    iget-object v7, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v7, v7, v2

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/2addr v8, v4

    int-to-float v4, v8

    sub-float/2addr v7, v4

    .line 38
    :cond_0
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v4, v4, v3

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    invoke-static {v7}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    iget-object v8, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v3, v8, v3

    add-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 39
    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v2, v3, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v5

    mul-float/2addr p0, v6

    mul-float/2addr p0, v0

    add-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 38
    invoke-virtual {p1, v4, v7, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

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
