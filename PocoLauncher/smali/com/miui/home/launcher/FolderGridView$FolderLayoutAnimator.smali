.class Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;
.super Ljava/lang/Object;
.source "FolderGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FolderLayoutAnimator"
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

.field private mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

.field private mLastPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Lcom/miui/home/launcher/FolderGridView$ItemProperties;",
            ">;"
        }
    .end annotation
.end field

.field private mLastView:Landroid/view/View;

.field private mNeedClip:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/FolderGridView;)V
    .locals 0

    .line 997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    return-void
.end method

.method private applyLayoutAnimation()V
    .locals 5

    const/4 v0, 0x0

    .line 1017
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 1018
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1019
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->shouldAnimateView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1020
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1021
    iget-object v3, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/FolderGridView$ItemProperties;

    if-nez v3, :cond_1

    goto :goto_1

    .line 1023
    :cond_1
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderGridView$ItemProperties;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1025
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderGridView$ItemProperties;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 1027
    :cond_2
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    if-eq v3, v4, :cond_7

    .line 1028
    :cond_3
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-direct {p0, v1, v3, v2}, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->startTranslateAnimation(Landroid/view/View;FF)V

    goto :goto_1

    .line 1032
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->getVisibleShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    if-nez v3, :cond_5

    return-void

    .line 1034
    :cond_5
    invoke-direct {p0, v3, v2}, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->calculateRelativeIconPosition(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/Point;

    move-result-object v2

    if-nez v2, :cond_6

    return-void

    .line 1036
    :cond_6
    iget v3, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-direct {p0, v1, v3, v2}, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->startTranslateAnimation(Landroid/view/View;FF)V

    const/4 v1, 0x1

    .line 1038
    iput-boolean v1, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mNeedClip:Z

    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method private calculateFolderItemHorizontalSpacing()I
    .locals 4

    .line 1072
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getWidth()I

    move-result v0

    .line 1073
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellWidth()I

    move-result v1

    .line 1074
    iget-object v2, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v2

    .line 1075
    iget-object v3, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v3

    .line 1076
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result p0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    mul-int/2addr v1, p0

    sub-int/2addr v0, v1

    add-int/lit8 p0, p0, -0x1

    .line 1077
    div-int/2addr v0, p0

    return v0
.end method

.method private calculateRelativeIconPosition(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/Point;
    .locals 6

    .line 1053
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->getGridPosition(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/Point;

    move-result-object p2

    .line 1054
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->getGridPosition(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/Point;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    .line 1056
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderGridView$ItemProperties;

    if-nez p1, :cond_1

    return-object v1

    .line 1058
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderGridView$ItemProperties;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    .line 1060
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellWidth()I

    move-result v1

    .line 1061
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellHeight()I

    move-result v2

    .line 1062
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->calculateFolderItemHorizontalSpacing()I

    move-result v3

    .line 1064
    iget v4, p2, Landroid/graphics/Point;->y:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalSpacing()I

    move-result p0

    add-int/2addr v2, p0

    mul-int/2addr v4, v2

    .line 1065
    iget p0, p2, Landroid/graphics/Point;->x:I

    iget p2, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, p2

    add-int/2addr v1, v3

    mul-int/2addr p0, v1

    .line 1066
    iget p2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v4

    .line 1067
    iget p1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p0

    .line 1068
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method private clipListenerIfNeeded(Landroid/view/animation/Animation;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1105
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->shouldDisableClip()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1107
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    return-void

    .line 1108
    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    .line 1109
    new-instance v1, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator$1;-><init>(Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getGridPosition(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/Point;
    .locals 2

    .line 1082
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderGridView$ItemProperties;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1084
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderGridView$ItemProperties;->getIndex()Ljava/lang/Integer;

    move-result-object p1

    .line 1085
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    div-int/2addr v0, v1

    .line 1086
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result p0

    rem-int/2addr p1, p0

    .line 1087
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method private getVisibleShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 2

    .line 1129
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1130
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderGridView$ItemProperties;

    if-eqz v1, :cond_0

    .line 1131
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderGridView$ItemProperties;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private shouldAnimateView(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1044
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    .line 1046
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldDisableClip()Z
    .locals 1

    .line 1101
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->isFolderRowChange()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mNeedClip:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startTranslateAnimation(Landroid/view/View;FF)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1092
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1093
    iget-object p2, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mLastView:Landroid/view/View;

    if-ne p1, p2, :cond_1

    .line 1094
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->clipListenerIfNeeded(Landroid/view/animation/Animation;)V

    :cond_1
    const-wide/16 p2, 0x15e

    .line 1096
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1097
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public startLayoutAnimation(Lcom/miui/home/launcher/ShortcutsAdapter;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ShortcutsAdapter;",
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Lcom/miui/home/launcher/FolderGridView$ItemProperties;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1003
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1006
    :cond_0
    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mLastPosMap:Ljava/util/HashMap;

    .line 1007
    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    .line 1008
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mLastView:Landroid/view/View;

    .line 1010
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->applyLayoutAnimation()V

    .line 1012
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const/4 p1, 0x0

    .line 1013
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->mNeedClip:Z

    :cond_1
    :goto_0
    return-void
.end method
