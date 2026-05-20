.class public final Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;
.super Ljava/lang/Object;
.source "FolderAnimHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/folder/FolderAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFolderAnimHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderAnimHelper.kt\ncom/miui/home/launcher/folder/FolderAnimHelper$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1851#2,2:69\n*S KotlinDebug\n*F\n+ 1 FolderAnimHelper.kt\ncom/miui/home/launcher/folder/FolderAnimHelper$Companion\n*L\n51#1:69,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;-><init>()V

    return-void
.end method

.method private final calBgScale(Landroid/view/View;)F
    .locals 2

    const p0, 0x3f866666    # 1.05f

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p0

    :cond_0
    return p0
.end method


# virtual methods
.method public final scaleEachIcon(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Z)V
    .locals 5

    if-eqz p1, :cond_2

    .line 51
    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1851
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 52
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 53
    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    aput-object v3, v1, v2

    const v2, 0x3f828f5c    # 1.02f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v3

    .line 54
    :goto_1
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v0

    const/4 v0, 0x2

    .line 55
    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    aput-object v4, v1, v0

    const/4 v0, 0x3

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    .line 56
    :goto_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    .line 52
    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final scaleIconContainerBg(Landroid/view/View;Z)V
    .locals 4

    const/4 p0, 0x1

    new-array v0, p0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 30
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 32
    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    aput-object v3, v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 34
    sget-object v3, Lcom/miui/home/launcher/folder/FolderAnimHelper;->Companion:Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;

    invoke-direct {v3, p1}, Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;->calBgScale(Landroid/view/View;)F

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v1

    .line 35
    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, p0

    const/4 p0, 0x2

    .line 36
    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    aput-object v3, v2, p0

    const/4 p0, 0x3

    if-eqz p2, :cond_1

    .line 38
    sget-object p2, Lcom/miui/home/launcher/folder/FolderAnimHelper;->Companion:Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;->calBgScale(Landroid/view/View;)F

    move-result v1

    .line 39
    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, p0

    .line 31
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method
