.class final Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AlphaBlendingDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlphaBlendingDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AlphaBlendingState"
.end annotation


# instance fields
.field mActivatedAlpha:F

.field mCheckedAlpha:F

.field mFocusedAlpha:F

.field mHoveredAlpha:F

.field mHoveredCheckedAlpha:F

.field mNormalAlpha:F

.field mPressedAlpha:F

.field mRadius:I

.field mTintColor:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method constructor <init>(Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;)V
    .locals 1

    .line 223
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 224
    iget v0, p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mTintColor:I

    iput v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mTintColor:I

    .line 225
    iget v0, p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mRadius:I

    iput v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mRadius:I

    .line 226
    iget v0, p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mNormalAlpha:F

    iput v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mNormalAlpha:F

    .line 227
    iget v0, p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mPressedAlpha:F

    iput v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mPressedAlpha:F

    .line 228
    iget v0, p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mHoveredAlpha:F

    iput v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mHoveredAlpha:F

    .line 229
    iget v0, p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mFocusedAlpha:F

    iput v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mFocusedAlpha:F

    .line 230
    iget v0, p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mActivatedAlpha:F

    iput v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mActivatedAlpha:F

    .line 231
    iget v0, p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mCheckedAlpha:F

    iput v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mCheckedAlpha:F

    .line 232
    iget p1, p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mHoveredCheckedAlpha:F

    iput p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mHoveredCheckedAlpha:F

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 238
    new-instance v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;

    new-instance v1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;-><init>(Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;-><init>(Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 244
    new-instance v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;

    new-instance v1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;-><init>(Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;)V

    invoke-direct {v0, v1, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;-><init>(Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;Landroid/content/res/Resources;)V

    return-object v0
.end method
