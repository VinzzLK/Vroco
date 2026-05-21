.class public final Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BadgeDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable$State;
    }
.end annotation


# instance fields
.field private backDrawable:Landroid/graphics/drawable/Drawable;

.field private badgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mState:Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable$State;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->backDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    .line 16
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable$State;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable$State;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->mState:Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable$State;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->backDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final getBackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->backDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->mState:Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable$State;

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->backDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->backDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 24
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->backDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 25
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_1
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->backDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 48
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->backDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 53
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1
    return-void
.end method
