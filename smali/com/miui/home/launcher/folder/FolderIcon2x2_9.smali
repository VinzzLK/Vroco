.class public final Lcom/miui/home/launcher/folder/FolderIcon2x2_9;
.super Lcom/miui/home/launcher/folder/FolderIcon2x2;
.source "FolderIcon2x2_9.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFolderIcon2x2_9.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderIcon2x2_9.kt\ncom/miui/home/launcher/folder/FolderIcon2x2_9\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,33:1\n1291#2,2:34\n*S KotlinDebug\n*F\n+ 1 FolderIcon2x2_9.kt\ncom/miui/home/launcher/folder/FolderIcon2x2_9\n*L\n25#1:34,2\n*E\n"
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_9;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/folder/FolderIcon2x2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 17
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->setMLargeIconNum(I)V

    const/16 p1, 0xc

    .line 18
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->setMItemsMaxCount(I)V

    const/4 p1, 0x3

    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->setMIconColumCount(I)V

    return-void
.end method

.method public static final synthetic access$getFolderPreviewAlpha(Lcom/miui/home/launcher/folder/FolderIcon2x2_9;Z)F
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->getFolderPreviewAlpha(Z)F

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic getMirrorMenuListener()Lcom/miui/home/library/mirror/MirrorMenuListener;
    .locals 0

    invoke-super {p0}, Lcom/miui/home/library/mirror/MirrorContextView;->getMirrorMenuListener()Lcom/miui/home/library/mirror/MirrorMenuListener;

    move-result-object p0

    return-object p0
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

.method public showPlaceHolderIconAnim(Z)V
    .locals 7

    .line 23
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/miui/home/launcher/folder/FolderIcon2x2_9$showPlaceHolderIconAnim$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2_9$showPlaceHolderIconAnim$1;-><init>(Lcom/miui/home/launcher/folder/FolderIcon2x2_9;Z)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 1291
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 26
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-array v3, v0, [Lmiuix/animation/property/FloatProperty;

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v4, v3, v2

    invoke-interface {v1, v3}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    .line 27
    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v3, "end"

    invoke-direct {v1, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const/high16 v3, 0x3f800000    # 1.0f

    new-array v5, v2, [J

    invoke-virtual {v1, v4, v3, v5}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    .line 28
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v5, v0, [F

    const/high16 v6, 0x43960000    # 300.0f

    aput v6, v5, v2

    invoke-virtual {v3, v0, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v5, v0, [Landroid/view/View;

    aput-object p1, v5, v2

    .line 29
    invoke-static {v5}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v5, v0

    invoke-interface {p1, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    aput-object v3, v0, v2

    invoke-interface {p1, v1, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_0
    return-void
.end method
