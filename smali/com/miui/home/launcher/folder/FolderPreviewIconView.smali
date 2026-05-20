.class public Lcom/miui/home/launcher/folder/FolderPreviewIconView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "FolderPreviewIconView.kt"

# interfaces
.implements Lcom/miui/home/launcher/LauncherAble;
.implements Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
.implements Lcom/miui/home/launcher/folder/IItemDragAnim;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/folder/FolderPreviewIconView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFolderPreviewIconView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderPreviewIconView.kt\ncom/miui/home/launcher/folder/FolderPreviewIconView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,219:1\n1#2:220\n*E\n"
.end annotation


# static fields
.field private static final BIGICONVIEW:I

.field public static final Companion:Lcom/miui/home/launcher/folder/FolderPreviewIconView$Companion;

.field private static final SMALLICONVIEW:I


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

.field private mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

.field private final mClickDelegate:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

.field private mContext:Landroid/content/Context;

.field private mIconViewType:I

.field private final mPreViewTouchDelegate:Lcom/miui/home/launcher/folder/PreViewTouchDelegate;

.field private mShortcutInfoDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/folder/FolderPreviewIconView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/folder/FolderPreviewIconView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->Companion:Lcom/miui/home/launcher/folder/FolderPreviewIconView$Companion;

    const/4 v0, 0x1

    .line 35
    sput v0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->SMALLICONVIEW:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->_$_findViewCache:Ljava/util/Map;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p2, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

    invoke-direct {p2}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mClickDelegate:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

    .line 29
    new-instance p2, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;

    invoke-direct {p2}, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mPreViewTouchDelegate:Lcom/miui/home/launcher/folder/PreViewTouchDelegate;

    .line 44
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mContext:Landroid/content/Context;

    .line 45
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->initTouchAnim(Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 39
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getBIGICONVIEW$cp()I
    .locals 1

    .line 24
    sget v0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->BIGICONVIEW:I

    return v0
.end method

.method public static final synthetic access$getSMALLICONVIEW$cp()I
    .locals 1

    .line 24
    sget v0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->SMALLICONVIEW:I

    return v0
.end method


# virtual methods
.method public final clearData()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    .line 112
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getAnimTargetContainerView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getAnimTargetHeight()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetHeight()I

    move-result p0

    return p0
.end method

.method public getAnimTargetOriginalLocation()Landroid/graphics/Rect;
    .locals 7

    .line 177
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 181
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 179
    invoke-static {p0, v3, v0, v2, v2}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 183
    new-instance v3, Landroid/graphics/Rect;

    aget v4, v0, v2

    float-to-int v4, v4

    aget v5, v0, v1

    float-to-int v5, v5

    aget v2, v0, v2

    .line 186
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v2, v2

    aget v0, v0, v1

    .line 187
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    float-to-int p0, v0

    .line 183
    invoke-direct {v3, v4, v5, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    .line 177
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "DesktopIcon hasn\'t layout"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic getAnimTargetVisibility()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetVisibility()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getAnimTargetWidth()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetWidth()I

    move-result p0

    return p0
.end method

.method public getContentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 192
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_1
    return-object v0
.end method

.method public bridge synthetic getHeightDiffBetweenImageAndImageView()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getHeightDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method public getIconLocation()Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    aget v2, v0, v3

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 54
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    aget v4, v0, v1

    aget v5, v0, v3

    aget v1, v0, v1

    .line 57
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    add-int/2addr v1, v6

    aget v0, v0, v3

    .line 58
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    .line 54
    invoke-direct {v2, v4, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p0, v2

    :goto_0
    return-object p0
.end method

.method public getIconRadius()F
    .locals 1

    .line 116
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultIconRadius(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x40951eb8    # 4.66f

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getIconTransparentEdge()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getMBuddyInfo()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    return-object p0
.end method

.method protected final getMClickDelegate()Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mClickDelegate:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

    return-object p0
.end method

.method protected final getMContext()Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method protected final getMPreViewTouchDelegate()Lcom/miui/home/launcher/folder/PreViewTouchDelegate;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mPreViewTouchDelegate:Lcom/miui/home/launcher/folder/PreViewTouchDelegate;

    return-object p0
.end method

.method public bridge synthetic getWidthDiffBetweenImageAndImageView()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getWidthDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 162
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 163
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mContext:Landroid/content/Context;

    .line 168
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 169
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    const-string v2, "null cannot be cast to non-null type com.miui.home.launcher.progress.ProgressShortcutInfo"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget p0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    .line 165
    invoke-static {v0, p1, v1, p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->drawProgressIcon(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 173
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method public onEnterHomeAnimFinish()V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    .line 76
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mClickDelegate:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

    invoke-virtual {v1, p1, p0}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->onViewTouchEvent(Landroid/view/MotionEvent;Lcom/miui/home/launcher/folder/FolderPreviewIconView;)V

    if-nez v0, :cond_0

    .line 91
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mIconViewType:I

    sget v2, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->BIGICONVIEW:I

    if-ne v1, v2, :cond_0

    .line 92
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v1}, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->preLaunchProcess(Lcom/miui/home/launcher/ShortcutInfo;)Z

    .line 95
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mClickDelegate:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->hasViewClickListeners()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 97
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mPreViewTouchDelegate:Lcom/miui/home/launcher/folder/PreViewTouchDelegate;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->onTouchDown()V

    return v1

    :cond_1
    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mPreViewTouchDelegate:Lcom/miui/home/launcher/folder/PreViewTouchDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->onTouchUp()V

    .line 107
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performPreViewItemHiddenAnim()V
    .locals 2

    .line 140
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    instance-of v1, v0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-eqz v1, :cond_1

    .line 142
    check-cast v0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->isPreviewPlaceholder(Lcom/miui/home/launcher/folder/FolderPreviewIconView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 145
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public performPreViewItemShowAnim()V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 153
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public final refreshIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mShortcutInfoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 207
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mShortcutInfoDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 212
    :goto_1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    .line 214
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 216
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mClickDelegate:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->onSendAccessibilityEvent(ILcom/miui/home/launcher/folder/FolderPreviewIconView;)V

    return-void
.end method

.method public bridge synthetic setAnimTargetAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->setAnimTargetAlpha(F)V

    return-void
.end method

.method public setAnimTargetVisibility(I)V
    .locals 0

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 133
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setAnimTargetAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 135
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setAnimTargetAlpha(F)V

    :goto_0
    return-void
.end method

.method public final setIconViewType(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mIconViewType:I

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->refreshIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setMBuddyInfo(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method

.method protected final setMContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final setViewClickListener(Lcom/miui/home/launcher/folder/ListenerInfo;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mClickDelegate:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->delegateViewClick(Lcom/miui/home/launcher/folder/FolderPreviewIconView;Lcom/miui/home/launcher/folder/ListenerInfo;)V

    return-void
.end method
