.class public final Lcom/miui/home/launcher/CloudShortcutIcon;
.super Lcom/miui/home/launcher/ShortcutIcon;
.source "CloudShortcutIcon.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/CloudShortcutIcon$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/CloudShortcutIcon$Companion;


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

.field private blockSetVisibility:Z

.field private cloudDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/CloudShortcutIcon$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/CloudShortcutIcon$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/CloudShortcutIcon;->Companion:Lcom/miui/home/launcher/CloudShortcutIcon$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/CloudShortcutIcon;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getBlockSetVisibility()Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/miui/home/launcher/CloudShortcutIcon;->blockSetVisibility:Z

    return p0
.end method

.method public final getCloudDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/miui/home/launcher/CloudShortcutIcon;->cloudDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public bridge synthetic getHeightDiffBetweenImageAndImageView()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getHeightDiffBetweenImageAndImageView()I

    move-result p0

    return p0
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

.method public bridge synthetic getWidthDiffBetweenImageAndImageView()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getWidthDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->onDraw(Landroid/graphics/Canvas;)V

    .line 29
    iget-object v0, p0, Lcom/miui/home/launcher/CloudShortcutIcon;->cloudDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 33
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/CloudShortcutIcon;->cloudDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    .line 34
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/CloudShortcutIcon;->cloudDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v2, v2

    .line 32
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/CloudShortcutIcon;->cloudDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 40
    iget-object v4, p0, Lcom/miui/home/launcher/CloudShortcutIcon;->cloudDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 36
    invoke-virtual {v0, v1, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 42
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/CloudShortcutIcon;->cloudDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 43
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 21
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onFinishInflate()V

    .line 22
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080281

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CloudShortcutIcon;->cloudDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public bridge synthetic setAnimTargetAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->setAnimTargetAlpha(F)V

    return-void
.end method

.method public final setBlockSetVisibility(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/miui/home/launcher/CloudShortcutIcon;->blockSetVisibility:Z

    return-void
.end method

.method public final setCloudDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/miui/home/launcher/CloudShortcutIcon;->cloudDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public bridge synthetic setTag(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/IShortcutIcon;->setTag(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/miui/home/launcher/CloudShortcutIcon;->blockSetVisibility:Z

    if-eqz v0, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
