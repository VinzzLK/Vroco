.class public Lmiuix/appcompat/widget/BadgeDrawable;
.super Ljava/lang/Object;
.source "BadgeDrawable.java"


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mGravity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    .line 44
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/widget/BadgeDrawable;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p2}, Lmiuix/appcompat/widget/BadgeDrawable;->setGravity(I)V

    .line 55
    iput-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lmiuix/appcompat/widget/BadgeDrawable;->getBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 132
    iget-object p0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    sget v0, Lmiuix/appcompat/R$attr;->actionBarTabBadgeIcon:I

    invoke-static {p0, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getBadgeRect(Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 8

    const/4 v0, 0x0

    const-string v1, "BadgeDrawable"

    if-nez p1, :cond_0

    const-string p0, "can not attach badge on a null object."

    .line 137
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 140
    :cond_0
    iget-object v2, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    const-string p0, "can not find badge drawable resource."

    .line 141
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 144
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 146
    iget-object v2, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 147
    iget-object v3, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 153
    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    .line 156
    iget p0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p0, :cond_7

    const/4 v7, 0x3

    if-eq p0, v6, :cond_2

    if-eq p0, v4, :cond_7

    if-eq p0, v7, :cond_2

    const-string p0, "invalid gravity value."

    .line 187
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v5

    move p1, p0

    move v3, p1

    goto :goto_4

    .line 178
    :cond_2
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v3

    add-int/2addr v3, p2

    if-nez p1, :cond_3

    if-eq p0, v6, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    if-ne p0, v7, :cond_5

    :cond_4
    move v5, v6

    :cond_5
    if-eqz v5, :cond_6

    .line 183
    iget p0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_6
    iget p0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v2

    :goto_0
    move v5, p0

    add-int p0, v5, v2

    move p1, p0

    move p0, v5

    move v5, p2

    goto :goto_4

    :cond_7
    if-ne p2, v6, :cond_8

    .line 160
    iget v1, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v7, v3, 0x2

    sub-int/2addr v1, v7

    goto :goto_1

    .line 162
    :cond_8
    iget v1, v0, Landroid/graphics/Rect;->top:I

    :goto_1
    add-int/2addr v3, v1

    if-nez p1, :cond_9

    if-eqz p0, :cond_a

    :cond_9
    if-eqz p1, :cond_b

    if-ne p0, v4, :cond_b

    :cond_a
    move v5, v6

    :cond_b
    if-ne p2, v6, :cond_d

    if-eqz v5, :cond_c

    .line 169
    iget p0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_c
    iget p0, v0, Landroid/graphics/Rect;->right:I

    :goto_2
    div-int/lit8 p1, v2, 0x2

    sub-int/2addr p0, p1

    goto :goto_3

    :cond_d
    if-eqz v5, :cond_e

    .line 172
    iget p0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_e
    iget p0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v2

    :goto_3
    move v5, p0

    add-int p0, v5, v2

    move p1, p0

    move p0, v5

    move v5, v1

    .line 194
    :goto_4
    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 195
    iput p0, v0, Landroid/graphics/Rect;->left:I

    .line 196
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 197
    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-object v0
.end method


# virtual methods
.method public attachBadgeDrawable(Landroid/view/View;)V
    .locals 1

    .line 79
    iget v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;I)V

    return-void
.end method

.method public attachBadgeDrawable(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;II)V

    return-void
.end method

.method public attachBadgeDrawable(Landroid/view/View;II)V
    .locals 1

    .line 100
    invoke-virtual {p0, p2}, Lmiuix/appcompat/widget/BadgeDrawable;->setGravity(I)V

    .line 101
    invoke-direct {p0, p1, p3}, Lmiuix/appcompat/widget/BadgeDrawable;->getBadgeRect(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p0, "BadgeDrawable"

    const-string p1, "attach failed."

    .line 103
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 109
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 111
    :cond_1
    iget-object p3, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p2

    iget-object p3, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iput-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mAnchor:Landroid/view/View;

    return-void
.end method

.method public detachBadgeDrawable()V
    .locals 0

    .line 120
    iget-object p0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mAnchor:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewOverlay;->clear()V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 66
    iput p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    return-void

    :cond_0
    const-string p1, "BadgeDrawable"

    const-string v0, "set invalid gravity value."

    .line 69
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 70
    iput p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    return-void
.end method
