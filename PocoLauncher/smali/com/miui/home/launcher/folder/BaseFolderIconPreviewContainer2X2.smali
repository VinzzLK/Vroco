.class public abstract Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;
.super Landroid/view/ViewGroup;
.source "BaseFolderIconPreviewContainer2X2.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseFolderIconPreviewContainer2X2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseFolderIconPreviewContainer2X2.kt\ncom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,480:1\n1851#2,2:481\n*S KotlinDebug\n*F\n+ 1 BaseFolderIconPreviewContainer2X2.kt\ncom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2\n*L\n338#1:481,2\n*E\n"
.end annotation


# instance fields
.field private final LAYOUT_DEBUGABLE:Z

.field private final TAG:Ljava/lang/String;

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

.field private mFolderIconPlaceholderDrawable:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

.field private final mFolderIconPreviewAnimDelegate:Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;

.field private mHeightMeasureSpec:I

.field private final mHideAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mItemsMaxCount:I

.field private mLargeIconNum:I

.field private mPvChildList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/folder/FolderPreviewIconView;",
            ">;"
        }
    .end annotation
.end field

.field private mPvItemLocationInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRealPvChildCount:I

.field private final mShowAnimAlphaConfig:Lmiuix/animation/base/AnimSpecialConfig;

.field private final mShowAnimScaleConfig:Lmiuix/animation/base/AnimSpecialConfig;

.field private mWidthMeasureSpec:I

.field private previewPlaceholderShouldAnim:Z


# direct methods
.method public static synthetic $r8$lambda$3NthKI8iBIns8BGsafziz4c6sfY(ILcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;ZLjava/lang/Void;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->runLoadAction$lambda-3(ILcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;ZLjava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uHX9VqDDVVyNoTvwz28ZuZnTxPo(Lcom/miui/home/launcher/ShortcutInfo;ILcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->runLoadAction$lambda-1(Lcom/miui/home/launcher/ShortcutInfo;ILcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->TAG:Ljava/lang/String;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    const/4 p1, 0x7

    .line 35
    iput p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    const/4 p1, 0x3

    .line 36
    iput p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mLargeIconNum:I

    .line 39
    new-instance p1, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;

    invoke-direct {p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPreviewAnimDelegate:Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;

    .line 45
    new-instance p1, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    const/4 p2, 0x2

    new-array p3, p2, [F

    .line 46
    fill-array-data p3, :array_0

    const/4 v1, -0x2

    invoke-virtual {p1, v1, p3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type miuix.animation.base.AnimSpecialConfig"

    .line 45
    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lmiuix/animation/base/AnimSpecialConfig;

    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mShowAnimAlphaConfig:Lmiuix/animation/base/AnimSpecialConfig;

    .line 48
    new-instance p1, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    new-array v2, p2, [F

    .line 49
    fill-array-data v2, :array_1

    invoke-virtual {p1, v1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    .line 48
    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lmiuix/animation/base/AnimSpecialConfig;

    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mShowAnimScaleConfig:Lmiuix/animation/base/AnimSpecialConfig;

    .line 51
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array p2, p2, [F

    .line 52
    fill-array-data p2, :array_2

    invoke-virtual {p1, v1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    const-string p2, "AnimConfig()\n        .se\u2026.SPRING_PHY, 0.95f, 0.2f)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mHideAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 64
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 63
    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPlaceholderDrawable:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f266666    # 0.65f
        0x3e99999a    # 0.3f
    .end array-data

    :array_2
    .array-data 4
        0x3f733333    # 0.95f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method private final addPlaceholderInternal()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    if-lt v0, v1, :cond_0

    return-void

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getPlaceholderIcon()Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final executePlaceholderAddAnim(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 160
    iput-boolean v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->previewPlaceholderShouldAnim:Z

    goto :goto_2

    .line 161
    :cond_0
    iget-boolean p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->previewPlaceholderShouldAnim:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    if-ne p1, v1, :cond_1

    .line 165
    iput-boolean v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->previewPlaceholderShouldAnim:Z

    const/4 p1, 0x0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    add-int/lit8 v1, v1, -0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    :try_start_1
    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    iget v2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    :try_start_2
    iget-object v2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    iget v3, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object p1, v2

    goto :goto_1

    :catch_0
    move-object v1, p1

    goto :goto_0

    :catch_1
    move-object v0, p1

    move-object v1, v0

    .line 171
    :catch_2
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->TAG:Ljava/lang/String;

    const-string v3, "an error is occurred on placeholder anim showing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->executePlaceholderAddAnimInternal(Landroid/widget/ImageView;)V

    .line 174
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->executePlaceholderAddAnimInternal(Landroid/widget/ImageView;)V

    .line 175
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->executePlaceholderAddAnimInternal(Landroid/widget/ImageView;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private final executePlaceholderAddAnimInternal(Landroid/widget/ImageView;)V
    .locals 5

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 182
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPlaceholderDrawable:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPlaceholderDrawable:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p0, 0x1

    new-array v1, p0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 185
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v4, v3, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, p0

    invoke-interface {p1, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v4, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 186
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, p0

    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_1
    return-void
.end method

.method private final folderIconPlaceholderDrawableMeasure()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 350
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPlaceholderDrawable:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->calcDrawableParams()V

    :cond_1
    return-void
.end method

.method private final onMeasureChildCustom(II)V
    .locals 1

    .line 298
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->preMeasure2x2(II)V

    .line 307
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->preSetup2x2()V

    .line 308
    iget-boolean p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->LAYOUT_DEBUGABLE:Z

    if-eqz p1, :cond_1

    .line 309
    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPvItemLocationInfoList >>> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPvItemLocationInfoList.size  >>> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->onMeasureChild2x2()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final removePlaceholderIconItem()V
    .locals 2

    .line 408
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mLargeIconNum:I

    if-ne v0, v1, :cond_0

    .line 409
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    if-le v0, v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 411
    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 412
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final runLoadAction$lambda-1(Lcom/miui/home/launcher/ShortcutInfo;ILcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const-string v0, "$si"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2x2 set icon for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " preview drawable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewDisappear"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2x2 drawable alpha: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p3, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 244
    :goto_0
    iget v0, p2, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    if-ge p1, v0, :cond_2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2x2 image view alpha: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getAlpha()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p2, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget-object p3, p2, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setMBuddyInfo(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 248
    iget-object p3, p2, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 249
    iget-object p0, p2, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getMBuddyInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz p0, :cond_2

    .line 250
    iget-object p0, p2, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    return-void
.end method

.method private static final runLoadAction$lambda-3(ILcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;ZLjava/lang/Void;)V
    .locals 4

    const-string/jumbo p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    :try_start_0
    iget-object p3, p1, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    :goto_0
    if-ge p0, p3, :cond_3

    .line 262
    iget v0, p1, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    iget v1, p1, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mLargeIconNum:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 263
    iget-object v0, p1, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 265
    :cond_0
    iget-object v0, p1, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, p1, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPlaceholderDrawable:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    iget-object v1, p1, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPlaceholderDrawable:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setMBuddyInfo(Lcom/miui/home/launcher/ShortcutInfo;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 275
    :catch_0
    iget-object p0, p1, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->TAG:Ljava/lang/String;

    const-string p3, "An IndexOutOfBoundsException occurred when clear Drawable"

    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz p2, :cond_4

    .line 278
    iget-object p0, p1, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPreviewAnimDelegate:Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;

    iget-object p1, p1, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;->showPreviewIcon(Ljava/util/List;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final addPlaceholderIconItem(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 389
    iget p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mLargeIconNum:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 390
    iput-boolean v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->previewPlaceholderShouldAnim:Z

    .line 391
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    if-ge p1, v0, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->addPlaceholderInternal()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addPreView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 373
    instance-of v0, p1, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    if-ge v0, v1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 380
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 381
    iput v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    .line 383
    :cond_1
    check-cast p1, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->addPlaceholderIconItem(Landroid/content/Context;)V

    goto :goto_0

    .line 374
    :cond_2
    new-instance p0, Ljava/lang/IllegalAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " should be a BaseFolderPreviewIconView or a subclass of BaseFolderPreviewIconView!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 354
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getItemInfo(I)Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 444
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;

    return-object p0

    .line 445
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 446
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemsMaxCount()I
    .locals 0

    .line 467
    iget p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    return p0
.end method

.method protected final getLAYOUT_DEBUGABLE()Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->LAYOUT_DEBUGABLE:Z

    return p0
.end method

.method public getLargeIconNum()I
    .locals 0

    .line 471
    iget p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mLargeIconNum:I

    return p0
.end method

.method public final getLastView()Landroid/view/View;
    .locals 1

    .line 418
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    :goto_0
    return-object p0
.end method

.method public final getLastVisibleView()Lcom/miui/home/launcher/folder/FolderPreviewIconView;
    .locals 2

    .line 422
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    .line 423
    iget p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    add-int/lit8 p0, p0, -0x1

    .line 422
    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    :goto_0
    return-object p0
.end method

.method protected final getMFolderIconPlaceholderDrawable()Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPlaceholderDrawable:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    return-object p0
.end method

.method protected final getMFolderIconPreviewAnimDelegate()Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPreviewAnimDelegate:Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;

    return-object p0
.end method

.method protected final getMHideAnimConfig()Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mHideAnimConfig:Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method protected final getMItemsMaxCount()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    return p0
.end method

.method protected final getMLargeIconNum()I
    .locals 0

    .line 36
    iget p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mLargeIconNum:I

    return p0
.end method

.method public final getMPvChildList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/folder/FolderPreviewIconView;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    return-object p0
.end method

.method protected final getMPvItemLocationInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getMRealPvChildCount()I
    .locals 0

    .line 42
    iget p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    return p0
.end method

.method protected final getMShowAnimAlphaConfig()Lmiuix/animation/base/AnimSpecialConfig;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mShowAnimAlphaConfig:Lmiuix/animation/base/AnimSpecialConfig;

    return-object p0
.end method

.method protected final getMShowAnimScaleConfig()Lmiuix/animation/base/AnimSpecialConfig;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mShowAnimScaleConfig:Lmiuix/animation/base/AnimSpecialConfig;

    return-object p0
.end method

.method public final getPlaceholderIcon()Lcom/miui/home/launcher/folder/FolderPreviewIconView;
    .locals 7

    .line 331
    new-instance v6, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

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

.method public getPreAddItemInfo(Z)Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;
    .locals 0

    if-eqz p1, :cond_0

    .line 431
    iget p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getItemInfo(I)Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getPreviewIconInfo(I)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 475
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_0

    .line 476
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getMBuddyInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected final getPreviewPlaceholderShouldAnim()Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->previewPlaceholderShouldAnim:Z

    return p0
.end method

.method protected final getShortcutInfoSafety(Lcom/miui/home/launcher/FolderInfo;I)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 458
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object p0

    .line 459
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public abstract synthetic getSmallItemsRectF()Landroid/graphics/RectF;
.end method

.method protected final getTAG()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public isPreViewContainerOverload()Z
    .locals 1

    .line 439
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    iget p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPreviewPlaceholder(Lcom/miui/home/launcher/folder/FolderPreviewIconView;)Z
    .locals 0

    const-string/jumbo p0, "viewParent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    return p0
.end method

.method public final loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V
    .locals 9

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 143
    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPreviewAnimDelegate:Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;

    .line 145
    iget-object v3, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    .line 143
    invoke-virtual/range {v1 .. v8}, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;->hidePreviewIcon(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Ljava/util/List;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->executePlaceholderAddAnim(Z)V

    .line 154
    invoke-virtual/range {p0 .. p5}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->runLoadAction(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 317
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mWidthMeasureSpec:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mHeightMeasureSpec:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 321
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mWidthMeasureSpec:I

    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mHeightMeasureSpec:I

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->onMeasureChildCustom(II)V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 327
    :cond_2
    invoke-virtual/range {p0 .. p5}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->onLayout2x2(ZIIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onLayout2x2(ZIIII)V
    .locals 3

    const/4 p1, 0x0

    .line 110
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    iget p3, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_1

    .line 111
    iget-object p3, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;

    invoke-virtual {p3}, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->getGroupRect()Landroid/graphics/Rect;

    move-result-object p3

    .line 112
    iget-object p4, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 113
    iget p5, p3, Landroid/graphics/Rect;->left:I

    .line 114
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 115
    iget v1, p3, Landroid/graphics/Rect;->right:I

    .line 116
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 112
    invoke-virtual {p4, p5, v0, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 118
    iget-boolean p4, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->LAYOUT_DEBUGABLE:Z

    if-eqz p4, :cond_0

    .line 120
    iget-object p4, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\nlargeViewLayout2x2 , index = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , layout = ["

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget v0, p3, Landroid/graphics/Rect;->left:I

    .line 120
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 120
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    iget v1, p3, Landroid/graphics/Rect;->right:I

    .line 120
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 120
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x5d

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 119
    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->TAG:Ljava/lang/String;

    const-string p2, "onLayout2x2 indexOutOfBoundsException, This usually occurs when threads are concurrent ~"

    .line 127
    invoke-static {p0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 290
    iput p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mWidthMeasureSpec:I

    .line 291
    iput p2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mHeightMeasureSpec:I

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->onMeasureChildCustom(II)V

    .line 293
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->folderIconPlaceholderDrawableMeasure()V

    .line 294
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method

.method public abstract onMeasureChild2x2()V
.end method

.method public abstract preMeasure2x2(II)V
.end method

.method public abstract preSetup2x2()V
.end method

.method public final removeLastPreView()V
    .locals 3

    .line 358
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getLastView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 360
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    monitor-enter v0

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    iget v2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 362
    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    .line 363
    iget v2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mLargeIconNum:I

    if-le v1, v2, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->addPlaceholderInternal()V

    .line 366
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->removePlaceholderIconItem()V

    .line 367
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final runLoadAction(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    const-string v0, "info"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconCache"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialExecutor"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v10

    if-eqz p3, :cond_1

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/FolderInfo;->getAppPredictList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/FolderInfo;->getAppPredictList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, v6, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v10, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    move/from16 v12, p3

    :goto_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v13, v10, :cond_5

    .line 206
    iget-object v0, v6, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_5

    if-eqz v12, :cond_2

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/FolderInfo;->getAppPredictList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v7, v13}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getShortcutInfoSafety(Lcom/miui/home/launcher/FolderInfo;I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    :goto_2
    move-object v15, v0

    if-nez v15, :cond_3

    return-void

    .line 217
    :cond_3
    iget v0, v15, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    move v4, v0

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 219
    :goto_3
    new-instance v5, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p2

    move-object v11, v5

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;-><init>(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/IconCache;ZI)V

    new-instance v0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$$ExternalSyntheticLambda1;

    invoke-direct {v0, v15, v14, v6}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/ShortcutInfo;ILcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;)V

    invoke-static {v11, v0, v15, v8}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execSerial(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 258
    :cond_5
    new-instance v0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$$ExternalSyntheticLambda0;

    move/from16 v1, p5

    invoke-direct {v0, v14, v6, v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$$ExternalSyntheticLambda0;-><init>(ILcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Z)V

    invoke-static {v0, v8}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->doUIConsumerSerialized(Ljava/util/function/Consumer;Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;)V

    return-void
.end method

.method public final setFolderIconPlaceholderDrawableMatchingWallpaperColor()V
    .locals 3

    .line 337
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 336
    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPlaceholderDrawable:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    .line 338
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 339
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    if-eqz v2, :cond_1

    .line 340
    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_1

    .line 343
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->folderIconPlaceholderDrawableMeasure()V

    return-void
.end method

.method protected final setMFolderIconPlaceholderDrawable(Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPlaceholderDrawable:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    return-void
.end method

.method protected final setMItemsMaxCount(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    return-void
.end method

.method protected final setMLargeIconNum(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mLargeIconNum:I

    return-void
.end method

.method public final setMPvChildList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/folder/FolderPreviewIconView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    return-void
.end method

.method protected final setMPvItemLocationInfoList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    return-void
.end method

.method public final setMRealPvChildCount(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    return-void
.end method

.method protected final setPreviewPlaceholderShouldAnim(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->previewPlaceholderShouldAnim:Z

    return-void
.end method
