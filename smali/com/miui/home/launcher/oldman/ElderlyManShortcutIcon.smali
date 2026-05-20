.class public Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;
.super Lcom/miui/home/launcher/ShortcutIcon;
.source "ElderlyManShortcutIcon.java"


# instance fields
.field private mQuickCallBg:Landroid/graphics/drawable/Drawable;

.field private mQuickCallBgPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getHeightDiffBetweenImageAndImageView()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getHeightDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method protected getLeftPadding()I
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getLeftPadding()I

    move-result v0

    iget p0, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->mQuickCallBgPadding:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getQuickCallBgRect()Landroid/graphics/Rect;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->mQuickCallBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

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

.method public bridge synthetic getWidthDiffBetweenImageAndImageView()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getWidthDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method public isHintClick(II)Z
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->getQuickCallBgRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isHintClick(Landroid/view/ViewGroup;II)Z
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 44
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempIconBoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->getQuickCallBgRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 45
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempIconBoundRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 46
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempIconBoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method protected isNeedDrawIconMaskOnPress()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->mQuickCallBg:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->mQuickCallBgPadding:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->mQuickCallBgPadding:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->mQuickCallBgPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->mQuickCallBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 37
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 25
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onFinishInflate()V

    .line 26
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08067b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->mQuickCallBg:Landroid/graphics/drawable/Drawable;

    .line 27
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070601

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->mQuickCallBgPadding:I

    .line 28
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->getLeftPadding()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->getLeftPadding()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public bridge synthetic setAnimTargetAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->setAnimTargetAlpha(F)V

    return-void
.end method

.method public bridge synthetic setTag(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/IShortcutIcon;->setTag(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method
